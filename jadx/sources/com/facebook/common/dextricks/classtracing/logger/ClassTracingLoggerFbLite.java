package com.facebook.common.dextricks.classtracing.logger;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.concurrent.ConcurrentLinkedQueue;

/* loaded from: classes.dex */
public class ClassTracingLoggerFbLite {
    public static final int ENCODED_CLASS_NAMES_LENGTH = 4;
    public static final int ENCODED_CLASS_NAMES_TAG = 1672139416;
    public static final int ENCODED_LONG_CLASS_NAMES_TAG = 616140157;
    public static final ConcurrentLinkedQueue sClassIds = new ConcurrentLinkedQueue();
    public static volatile boolean sEnabled;

    public static void beginClassLoad(String str) {
    }

    public static long getFauxClassId(int i, int i2) {
        return (i2 << 32) | (i & 4294967295L);
    }

    public static void initialize() {
        sEnabled = true;
    }

    public static void classLoaded(Class cls) {
        if (sEnabled) {
            logClassNameInTrace(cls);
        }
    }

    public static void classNotFound() {
        if (sEnabled) {
            sClassIds.add(-1L);
        }
    }

    public static long[] getLoadedClassIds() {
        Long[] lArr = (Long[]) sClassIds.toArray(new Long[0]);
        int length = lArr.length;
        long[] jArr = new long[length];
        for (int i = 0; i < length; i++) {
            jArr[i] = lArr[i].longValue();
        }
        return jArr;
    }

    public static void logClassNameInTrace(Class cls) {
        byte[] copyOfRange;
        int i;
        String name = cls.getName();
        String simpleName = cls.getSimpleName();
        if (!simpleName.isEmpty() && !name.isEmpty()) {
            boolean startsWith = name.startsWith("X.");
            if (simpleName.length() <= 4 && startsWith) {
                i = ENCODED_CLASS_NAMES_TAG;
                copyOfRange = simpleName.getBytes();
            } else {
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                    messageDigest.update(name.getBytes());
                    byte[] digest = messageDigest.digest();
                    int length = digest.length;
                    copyOfRange = Arrays.copyOfRange(digest, length - 4, length);
                    i = ENCODED_LONG_CLASS_NAMES_TAG;
                } catch (NoSuchAlgorithmException unused) {
                    return;
                }
            }
            int i2 = 0;
            for (byte b : copyOfRange) {
                i2 = (i2 << 8) + (b & 255);
            }
            logNonClassLoad(i, i2);
        }
    }

    public static void logNonClassLoad(int i, int i2) {
        sClassIds.add(Long.valueOf(getFauxClassId(i, i2)));
    }
}
