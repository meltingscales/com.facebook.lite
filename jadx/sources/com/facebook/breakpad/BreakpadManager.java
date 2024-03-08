package com.facebook.breakpad;

import X.C015006s;
import X.C06F;
import X.C0B9;
import android.content.Context;
import android.os.Build;
import android.util.Log;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.Formatter;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class BreakpadManager {
    public static volatile File mCrashDirectory;
    public static String mNativeLibraryName;

    public static native void addMappingInfo(String str, byte[] bArr, int i, long j, long j2, long j3);

    public static native void crashProcessByAssert(String str);

    public static native void crashThisProcess();

    public static native void crashThisProcessAsan();

    public static native void crashThisProcessGWPAsan();

    public static native boolean disableCoreDumpingImpl();

    public static native boolean enableCoreDumpingImpl(String str);

    public static native long getMinidumpFlags();

    public static native void install(String str, String str2, String str3, int i, int i2);

    public static native boolean isCoreResourceHardUnlimited();

    public static native boolean isPrivacyModeEnabled();

    public static native boolean nativeContainsKey(String str);

    public static native String nativeGetCustomData(String str);

    public static native void nativeGetCustomDataSnapshot(TreeMap treeMap);

    public static native void nativeRemoveCustomData(String str);

    public static native void nativeSetCustomData(String str, String str2);

    public static native boolean nativeSetJvmStreamEnabled(boolean z, boolean z2);

    public static native void setMinidumpFlags(long j);

    public static native void setVersionInfo(int i, String str, String str2);

    public static native boolean simulateSignalDelivery(int i, String str);

    public static native void uninstall();

    public static boolean containsKey(String str) {
        boolean nativeContainsKey;
        boolean z = false;
        if (mCrashDirectory != null) {
            z = true;
        }
        if (!z) {
            C015006s.A07("BreakpadManager", "Breakpad is not active (containsKey).");
        } else if ((getMinidumpFlags() & 32768) != 32768) {
            synchronized (BreakpadManager.class) {
                nativeContainsKey = nativeContainsKey(str);
            }
            return nativeContainsKey;
        }
        return false;
    }

    public static boolean enableCoreDumping(Context context) {
        if (mNativeLibraryName == null) {
            C0B9.A09("breakpad");
            mNativeLibraryName = "breakpad";
        }
        if (Build.VERSION.SDK_INT < 24) {
            File file = null;
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(new File("/proc/sys/kernel/core_pattern")));
                try {
                    file = new File(bufferedReader.readLine());
                } catch (IOException e) {
                    Log.e("BreakpadManager", "There was a problem reading core pattern file", e);
                }
                try {
                    bufferedReader.close();
                } catch (IOException e2) {
                    Log.e("BreakpadManager", "There was a problem closing core pattern file", e2);
                }
                if (file != null) {
                    File parentFile = file.getParentFile();
                    if (file.isAbsolute() && parentFile != null && !parentFile.canWrite()) {
                        return false;
                    }
                }
            } catch (FileNotFoundException e3) {
                StringBuilder sb = new StringBuilder();
                sb.append("Core pattern file not found or blocked by SELinux");
                sb.append(e3.getMessage());
                Log.w("BreakpadManager", sb.toString());
            }
        }
        if (isCoreResourceHardUnlimited()) {
            return enableCoreDumpingImpl(context.getApplicationInfo().dataDir);
        }
        return false;
    }

    public static File getCrashDirectory() {
        if (mCrashDirectory != null) {
            return mCrashDirectory;
        }
        throw new RuntimeException("Breakpad not installed");
    }

    public static String getCustomData(String str) {
        String nativeGetCustomData;
        boolean z = false;
        if (mCrashDirectory != null) {
            z = true;
        }
        if (!z) {
            C015006s.A07("BreakpadManager", "Breakpad is not active (getCustomData).");
            return "";
        }
        boolean z2 = false;
        if ((getMinidumpFlags() & 32768) != 32768) {
            z2 = true;
        }
        if (!z2) {
            return "";
        }
        synchronized (BreakpadManager.class) {
            nativeGetCustomData = nativeGetCustomData(str);
        }
        return nativeGetCustomData;
    }

    public static boolean isActive() {
        if (mCrashDirectory == null) {
            return false;
        }
        return true;
    }

    public static void removeCustomData(String str) {
        if (mCrashDirectory != null) {
            if ((getMinidumpFlags() & 32768) != 32768) {
                synchronized (BreakpadManager.class) {
                    nativeRemoveCustomData(str);
                }
                return;
            }
            return;
        }
        C015006s.A07("BreakpadManager", "Breakpad is not active (removeCustomData).");
    }

    public static void setCustomData(String str, String str2, Object... objArr) {
        if (mCrashDirectory != null) {
            if ((getMinidumpFlags() & 32768) != 32768) {
                synchronized (BreakpadManager.class) {
                    if (objArr.length > 0 && str2 != null) {
                        StringBuilder sb = new StringBuilder();
                        Formatter formatter = new Formatter(sb);
                        formatter.format(str2, objArr);
                        formatter.close();
                        str2 = sb.toString();
                    }
                    nativeSetCustomData(str, str2);
                }
                return;
            }
            return;
        }
        C015006s.A07("BreakpadManager", "Breakpad is not active (setCustomData).");
    }

    public static synchronized void setJvmStreamEnabled(boolean z) {
        boolean z2;
        synchronized (BreakpadManager.class) {
            String property = System.getProperty("java.vm.version");
            if (property != null && !property.startsWith("1.") && !property.startsWith("0.")) {
                z2 = true;
                if (z) {
                    C0B9.A09("breakpad_cpp_helper");
                }
            } else {
                z2 = false;
            }
            nativeSetJvmStreamEnabled(z2, z);
        }
    }

    public static void start(Context context) {
        start(context, 0L, 1536000, null, null);
    }

    public static synchronized void start(Context context, long j, int i, String str, String str2) {
        synchronized (BreakpadManager.class) {
            boolean z = (Long.MIN_VALUE & j) != 0;
            if (mNativeLibraryName == null) {
                String str3 = z ? "breakpad_static" : "breakpad";
                C0B9.A09(str3);
                mNativeLibraryName = str3;
            }
            if (mCrashDirectory == null) {
                File file = new File(new File(context.getApplicationInfo().dataDir), "app_minidumps");
                file.mkdirs();
                install(file.getAbsolutePath(), "", null, 1536000, Build.VERSION.SDK_INT);
                mCrashDirectory = file;
                setMinidumpFlags(j | getMinidumpFlags() | 2 | 4);
                int A01 = C06F.A01();
                String str4 = Build.FINGERPRINT;
                setVersionInfo(A01, "397.0.0.11.117", str4);
                setCustomData("Fingerprint", str4, new Object[0]);
            }
        }
    }
}
