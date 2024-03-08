package X;

import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* renamed from: X.000  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class AnonymousClass000 {
    public static void A0J(Object obj, Object obj2, Object obj3, Object[] objArr) {
        objArr[2] = obj;
        objArr[3] = obj2;
        objArr[4] = obj3;
    }

    public static boolean A0Q(int i) {
        return i != 0;
    }

    public static Object[] A0S(Object obj, Field field) {
        Object obj2 = field.get(obj);
        Field declaredField = Class.forName("dalvik.system.DexPathList").getDeclaredField("dexElements");
        declaredField.setAccessible(true);
        return (Object[]) declaredField.get(obj2);
    }

    public static C03H A00(C08K c08k) {
        C0BP c0bp = c08k.A08;
        if (c0bp == null) {
            c0bp = new C0BR(c08k, 5);
            c08k.A08 = c0bp;
        }
        return (C03H) c0bp.get();
    }

    public static File A04(File file, String str) {
        return new File(file, str);
    }

    public static IllegalArgumentException A06(String str) {
        return new IllegalArgumentException(str);
    }

    public static IllegalStateException A07(String str) {
        return new IllegalStateException(str);
    }

    public static NullPointerException A08(String str) {
        return new NullPointerException(str);
    }

    public static StringBuilder A0C() {
        return new StringBuilder();
    }

    public static StringBuilder A0D(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        return sb;
    }

    public static ArrayList A0E() {
        return new ArrayList();
    }

    public static HashMap A0F() {
        return new HashMap();
    }

    public static void A0H(Object obj, Object obj2, Object obj3, Object obj4, Object[] objArr) {
        objArr[15] = obj;
        objArr[16] = obj2;
        objArr[17] = obj3;
        objArr[18] = obj4;
    }

    public static void A0I(Object obj, Object obj2, Object obj3, Object obj4, Object[] objArr) {
        objArr[19] = obj;
        objArr[20] = obj2;
        objArr[21] = obj3;
        objArr[22] = obj4;
    }

    public static File A01(Context context) {
        return new File(context.getApplicationInfo().sourceDir);
    }

    public static File A02(Context context, String str) {
        return new File(context.getFilesDir(), str);
    }

    public static File A03(Context context, String str) {
        return new File(new File(context.getApplicationInfo().dataDir), str);
    }

    public static IOException A05(Object obj, String str, StringBuilder sb) {
        sb.append(str);
        sb.append(obj);
        return new IOException(sb.toString());
    }

    public static String A09(String str, String str2, StringBuilder sb) {
        sb.append(str);
        sb.append(str2);
        return sb.toString();
    }

    public static String A0A(String str, StringBuilder sb) {
        sb.append(str);
        return sb.toString();
    }

    public static String A0B(String str, StringBuilder sb, int i) {
        sb.append(str);
        sb.append(i);
        return sb.toString();
    }

    public static Iterator A0G(Map map) {
        return map.entrySet().iterator();
    }

    public static void A0K(Object obj, StringBuilder sb) {
        sb.append(obj.toString());
    }

    public static void A0L(Object obj, Map map, long j) {
        map.put(obj, Long.valueOf(j));
    }

    public static void A0M(String str, String str2, String str3, StringBuilder sb) {
        sb.append(str);
        sb.append(str2);
        sb.append(str3);
    }

    public static void A0N(String str, String str2, StringBuilder sb) {
        sb.append(str);
        Log.e(str2, sb.toString());
    }

    public static void A0O(ReentrantReadWriteLock reentrantReadWriteLock) {
        reentrantReadWriteLock.readLock().unlock();
    }

    public static void A0P(Object[] objArr, int i, int i2) {
        objArr[i2] = Integer.valueOf(i);
    }

    public static AnonymousClass045[] A0R(AtomicReference atomicReference) {
        return (AnonymousClass045[]) atomicReference.get();
    }
}
