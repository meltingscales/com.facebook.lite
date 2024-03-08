package X;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Parcel;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.soloader.SysUtil$LollipopSysdeps;
import dalvik.system.BaseDexClassLoader;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Stack;

/* renamed from: X.0BF  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C0BF {
    public static C02440Aw A00(File file, File file2) {
        try {
            return new C02440Aw(file2);
        } catch (FileNotFoundException e) {
            try {
                if (file.setWritable(true)) {
                    C02440Aw c02440Aw = new C02440Aw(file2);
                    if (!file.setWritable(false)) {
                        Log.w("SysUtil", AnonymousClass000.A09(file.getCanonicalPath(), " write permission", AnonymousClass000.A0D("error removing ")));
                    }
                    return c02440Aw;
                }
                throw e;
            } finally {
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static String A01() {
        ClassLoader classLoader = C0B9.class.getClassLoader();
        if (classLoader != null && !(classLoader instanceof BaseDexClassLoader)) {
            StringBuilder sb = new StringBuilder();
            sb.append("ClassLoader ");
            sb.append(classLoader.getClass().getName());
            sb.append(" should be of type BaseDexClassLoader");
            throw new IllegalStateException(sb.toString());
        }
        try {
            return (String) BaseDexClassLoader.class.getMethod("getLdLibraryPath", new Class[0]).invoke((BaseDexClassLoader) classLoader, new Object[0]);
        } catch (Exception e) {
            Log.e("SysUtil", "Cannot call getLdLibraryPath", e);
            return null;
        }
    }

    public static String A02(String str) {
        if (str == null) {
            return null;
        }
        String[] split = str.split(":");
        ArrayList arrayList = new ArrayList(split.length);
        for (String str2 : split) {
            if (!str2.contains("!")) {
                arrayList.add(str2);
            }
        }
        return TextUtils.join(":", arrayList);
    }

    public static Method A03() {
        int i = Build.VERSION.SDK_INT;
        if (i < 23 || i > 27) {
            return null;
        }
        try {
            Method declaredMethod = Runtime.class.getDeclaredMethod("nativeLoad", String.class, ClassLoader.class, String.class);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Exception e) {
            Log.w("SysUtil", "Cannot get nativeLoad method", e);
            return null;
        }
    }

    public static void A05(File file) {
        Stack stack = new Stack();
        stack.push(file);
        ArrayList A0E = AnonymousClass000.A0E();
        while (!stack.isEmpty()) {
            File file2 = (File) stack.pop();
            if (!file2.isDirectory()) {
                A04(file2);
            } else {
                A0E.add(file2);
                File[] listFiles = file2.listFiles();
                if (listFiles != null) {
                    for (File file3 : listFiles) {
                        stack.push(file3);
                    }
                }
            }
        }
        int size = A0E.size();
        while (true) {
            size--;
            if (size >= 0) {
                A04((File) A0E.get(size));
            } else {
                return;
            }
        }
    }

    public static void A06(File file) {
        Stack stack = new Stack();
        stack.push(file);
        while (!stack.isEmpty()) {
            File file2 = (File) stack.pop();
            if (file2.isDirectory()) {
                File[] listFiles = file2.listFiles();
                if (listFiles != null) {
                    for (File file3 : listFiles) {
                        stack.push(file3);
                    }
                } else {
                    throw AnonymousClass000.A05(file2, "cannot list directory ", AnonymousClass000.A0C());
                }
            } else if (!file2.getPath().endsWith("_lock")) {
                try {
                    RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "r");
                    randomAccessFile.getFD().sync();
                    randomAccessFile.close();
                } catch (IOException e) {
                    StringBuilder A0C = AnonymousClass000.A0C();
                    A0C.append("Syncing failed for ");
                    A0C.append(file2);
                    A0C.append(": ");
                    Log.e("SysUtil", AnonymousClass000.A0A(e.getMessage(), A0C));
                }
            }
        }
    }

    public static void A07(FileDescriptor fileDescriptor, long j) {
        if (Build.VERSION.SDK_INT >= 21) {
            SysUtil$LollipopSysdeps.fallocateIfSupported(fileDescriptor, j);
        }
    }

    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v2, types: [boolean] */
    public static boolean A08() {
        int i = Build.VERSION.SDK_INT;
        ?? r3 = 0;
        if (i >= 23) {
            return C0BE.A00();
        }
        if (i < 21) {
            return false;
        }
        try {
            r3 = SysUtil$LollipopSysdeps.is64Bit();
            return r3;
        } catch (Exception e) {
            Object[] objArr = new Object[1];
            objArr[r3] = e.getMessage();
            Log.e("SysUtil", String.format("Could not read /proc/self/exe. Err msg: %s", objArr));
            return r3;
        }
    }

    public static boolean A09(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            return C0BE.A01(context, i);
        }
        return false;
    }

    public static String[] A0B() {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            return C0BE.A02();
        }
        return i >= 21 ? SysUtil$LollipopSysdeps.getSupportedAbis() : new String[]{Build.CPU_ABI, Build.CPU_ABI2};
    }

    public static void A04(File file) {
        File parentFile = file.getParentFile();
        if (parentFile != null && !parentFile.canWrite() && !parentFile.setWritable(true)) {
            StringBuilder A0C = AnonymousClass000.A0C();
            A0C.append("Enable write permission failed: ");
            A0C.append(parentFile);
            Log.e("SysUtil", A0C.toString());
        }
        if (!file.delete() && file.exists()) {
            throw AnonymousClass000.A05(file, "Could not delete file ", AnonymousClass000.A0C());
        }
    }

    public static byte[] A0A(Context context, File file) {
        File canonicalFile = file.getCanonicalFile();
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeByte((byte) 1);
            obtain.writeString(canonicalFile.getPath());
            obtain.writeLong(canonicalFile.lastModified());
            PackageManager packageManager = context.getPackageManager();
            int i = 0;
            if (packageManager != null) {
                try {
                    i = packageManager.getPackageInfo(context.getPackageName(), 0).versionCode;
                } catch (PackageManager.NameNotFoundException | RuntimeException unused) {
                }
            }
            obtain.writeInt(i);
            return obtain.marshall();
        } finally {
            obtain.recycle();
        }
    }
}
