package X;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.facebook.common.dextricks.storer.Storer;
import dalvik.system.BaseDexClassLoader;
import dalvik.system.DexFile;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.file.Files;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* renamed from: X.08v  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C019508v implements InterfaceC021309p {
    public static boolean A06;
    public static final Map A07 = AnonymousClass000.A0F();
    public static final AtomicBoolean A08 = new AtomicBoolean();
    public Context A00;
    public final InterfaceC020909k A01;
    public final C021709t A02;
    public final File A03;
    public final File A04;
    public final boolean A05;

    public static boolean A06(Context context) {
        Class cls;
        String str;
        String str2;
        try {
            cls = new DexFile(context.getApplicationInfo().publicSourceDir).loadClass("com.facebook.lite.splitdex.MegazipDexStorage$PerformSecondaryDexOptHackR$PerformSecondaryDexOptHackRInternal", null);
        } catch (IOException e) {
            C015006s.A09("MegazipDexStorage", "Failed to load perform secondary dexopt class", e);
            cls = null;
        }
        boolean z = false;
        if (cls == null) {
            C015006s.A06("MegazipDexStorage", "Failed to find perform secondary dexopt class");
        } else {
            try {
                Method declaredMethod = cls.getDeclaredMethod("apply", Context.class, PackageManager.class);
                if (declaredMethod != null) {
                    declaredMethod.setAccessible(true);
                    try {
                        z = ((Boolean) declaredMethod.invoke(null, context, context.getPackageManager())).booleanValue();
                        return z;
                    } catch (Exception e2) {
                        e = e2;
                        str = "MegazipDexStorage";
                        str2 = "Failed to invoke perform secondary dexopt method ";
                        C015006s.A09(str, str2, e);
                        return z;
                    }
                }
            } catch (NoSuchMethodException e3) {
                e = e3;
                str = "MegazipDexStorage";
                str2 = "Failed to perform secondary dexopt method";
            }
        }
        return false;
    }

    private String A00() {
        Context context = this.A00;
        File file = new File(context.getApplicationInfo().dataDir, "dex");
        StringBuilder A0C = AnonymousClass000.A0C();
        A0C.append("p-");
        A0C.append(A01(context));
        File A04 = AnonymousClass000.A04(file, AnonymousClass000.A0A(".zip", A0C));
        if (!A04.exists()) {
            File A042 = AnonymousClass000.A04(new File(context.getApplicationInfo().dataDir, "dex"), "tmp_decoyzip.zip");
            Files.deleteIfExists(A042.toPath());
            long open = Storer.open(A042.getPath(), 420);
            Storer.start(open, "classes.dex", 4);
            ZipFile zipFile = new ZipFile(context.getApplicationInfo().publicSourceDir);
            try {
                InputStream inputStream = zipFile.getInputStream(new ZipEntry("classes.dex"));
                byte[] bArr = new byte[32768];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read < 0) {
                        break;
                    }
                    Storer.write(open, bArr, read);
                }
                inputStream.close();
                zipFile.close();
                Storer.finish(open);
                Storer.cleanup(open);
                AbstractC022009w.A03(A042, A04);
            } catch (Throwable th) {
                try {
                    zipFile.close();
                } catch (Throwable unused) {
                }
                throw th;
            }
        }
        return A04.getPath();
    }

    public static String A02(File file) {
        if (file != null && file.exists()) {
            StringBuilder A0C = AnonymousClass000.A0C();
            try {
                BufferedReader bufferedReader = new BufferedReader(new FileReader(file));
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    A0C.append(readLine);
                    A0C.append('\n');
                }
                bufferedReader.close();
            } catch (IOException unused) {
            }
            return A0C.toString();
        }
        return "";
    }

    private void A03() {
        String A0A;
        File file = this.A04;
        if (!file.exists()) {
            C021709t c021709t = this.A02;
            if ("dex".equals(c021709t.A00)) {
                C0A4.A04 = true;
            }
            if (!file.getName().endsWith(".zip")) {
                List list = c021709t.A01;
                if (list.size() == 1 && Build.VERSION.SDK_INT >= 30) {
                    AbstractC021909v.A05(this.A01, (C021609s) list.get(0), c021709t, this.A03, file);
                    return;
                }
            }
            File file2 = new File(this.A03.getAbsolutePath(), "tmp_megazip.zip");
            Files.deleteIfExists(file2.toPath());
            List list2 = c021709t.A01;
            long open = Storer.open(file2.getPath(), 420);
            for (int i = 0; i < list2.size(); i++) {
                if (i == 0) {
                    A0A = "classes.dex";
                } else {
                    StringBuilder A0C = AnonymousClass000.A0C();
                    A0C.append("classes");
                    A0C.append(i + 1);
                    A0A = AnonymousClass000.A0A(".dex", A0C);
                }
                Storer.start(open, A0A, 4);
                InputStream A01 = AbstractC021909v.A01(this.A01, AbstractC021909v.A03((C021609s) list2.get(i), c021709t));
                try {
                    byte[] bArr = new byte[32768];
                    while (true) {
                        int read = A01.read(bArr);
                        if (read >= 0) {
                            Storer.write(open, bArr, read);
                        }
                    }
                    AbstractC022009w.A01(A01);
                    Storer.finish(open);
                } catch (Throwable th) {
                    AbstractC022009w.A01(A01);
                    throw th;
                }
            }
            Storer.cleanup(open);
            AbstractC022009w.A03(file2, file);
        }
    }

    public static void A04() {
        if (!A06) {
            A06 = true;
            Method declaredMethod = Class.class.getDeclaredMethod("forName", String.class);
            Method declaredMethod2 = Class.class.getDeclaredMethod("getDeclaredMethod", String.class, Class[].class);
            Object invoke = declaredMethod.invoke(null, "dalvik.system.VMRuntime");
            Method method = (Method) declaredMethod2.invoke(invoke, "getRuntime", null);
            Method method2 = (Method) declaredMethod2.invoke(invoke, "setHiddenApiExemptions", new Class[]{String[].class});
            if (method != null && method2 != null) {
                method2.invoke(method.invoke(null, new Object[0]), new String[]{"L"});
                return;
            }
            throw new NoSuchMethodException();
        }
    }

    @Override // X.InterfaceC021309p
    public final void A3o() {
        File file = this.A04;
        if (!file.exists()) {
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(AbstractC021909v.A04(file.getName()));
            StringBuilder A0C = AnonymousClass000.A0C();
            A0C.append("p-");
            A0C.append(A01(this.A00));
            arrayList.add(AbstractC021909v.A04(AnonymousClass000.A0A(".zip", A0C)));
            AbstractC021909v.A06(this.A03, arrayList);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:170:0x0493, code lost:
        if (r6 != 31) goto L61;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // X.InterfaceC021309p
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void AHP(final android.content.Context r22, java.util.concurrent.Executor r23, boolean r24) {
        /*
            Method dump skipped, instructions count: 1236
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C019508v.AHP(android.content.Context, java.util.concurrent.Executor, boolean):void");
    }

    public C019508v(Context context, InterfaceC020909k interfaceC020909k, C021709t c021709t, File file) {
        String A0A;
        this.A00 = context;
        this.A01 = interfaceC020909k;
        this.A02 = c021709t;
        this.A03 = file;
        List list = c021709t.A01;
        if (list.size() == 1 && Build.VERSION.SDK_INT >= 30) {
            A0A = AbstractC021909v.A02((C021609s) list.get(0));
        } else {
            StringBuilder sb = new StringBuilder(46);
            sb.append("z-");
            Context context2 = this.A00;
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA");
                messageDigest.update(A01(context2).getBytes());
                for (C021609s c021609s : this.A02.A01) {
                    messageDigest.update(c021609s.A01.getBytes());
                }
                byte[] digest = messageDigest.digest();
                StringBuilder A0C = AnonymousClass000.A0C();
                char[] charArray = "0123456789abcdef".toCharArray();
                for (byte b : digest) {
                    A0C.append(charArray[(b >> 4) & 15]);
                    A0C.append(charArray[b & 15]);
                }
                AnonymousClass000.A0K(A0C, sb);
                A0A = AnonymousClass000.A0A(".zip", sb);
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(e);
            }
        }
        this.A04 = AnonymousClass000.A04(file, A0A);
        boolean z = false;
        if (Build.VERSION.SDK_INT == 29) {
            try {
                A04();
                if (Class.forName("android.content.pm.IPackageManager").getDeclaredMethod("notifyDexLoadWithStatus", String.class, List.class, List.class, String.class, int[].class) != null) {
                    z = true;
                }
            } catch (ClassNotFoundException | IllegalAccessException | InvocationTargetException e2) {
                C015006s.A09("MegazipDexStorage", "Failed to detect if device has notifyDexLoadWithStatus:", e2);
            } catch (NoSuchMethodException unused) {
            }
        }
        this.A05 = z;
    }

    public static String A01(Context context) {
        long crc;
        File file = new File(context.getApplicationInfo().publicSourceDir);
        int A01 = C06F.A01();
        if (A01 > 1) {
            C015006s.A07("MegazipDexStorage", "Build id used for apk identification");
            crc = A01;
        } else {
            try {
                ZipFile zipFile = new ZipFile(file);
                ZipEntry entry = zipFile.getEntry("classes.dex");
                if (entry != null) {
                    C015006s.A07("MegazipDexStorage", "CRC used for apk identification");
                    crc = entry.getCrc();
                    zipFile.close();
                } else {
                    zipFile.close();
                    StringBuilder A0C = AnonymousClass000.A0C();
                    A0C.append("No usable identifier for apk ");
                    throw new RuntimeException(AnonymousClass000.A0A(file.getPath(), A0C));
                }
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
        return String.valueOf(crc);
    }

    public static void A05(Object obj) {
        try {
            A04();
            BaseDexClassLoader.class.getDeclaredMethod("setReporter", Class.forName("dalvik.system.BaseDexClassLoader$Reporter")).invoke(null, obj);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            C015006s.A0B("MegazipDexStorage", "Failed to set reporter object: ", e);
        }
    }

    public static boolean A07(Context context, C019508v c019508v, boolean z) {
        int i;
        String[] strArr = {"cmd", "package", "compile", "-m", "speed", "-f", "--secondary-dex", context.getPackageName()};
        ProcessBuilder processBuilder = new ProcessBuilder(strArr);
        File file = new File(c019508v.A04.getParent(), "oat/opt_log.txt");
        try {
            Files.deleteIfExists(file.toPath());
            file.createNewFile();
            processBuilder.redirectOutput(file).redirectError(file);
        } catch (IOException unused) {
            file = null;
        }
        try {
            i = processBuilder.start().waitFor();
            e = null;
        } catch (IOException | InterruptedException e) {
            e = e;
            i = -1;
        }
        boolean A0Q = AnonymousClass000.A0Q(i);
        if (z && i == 255 && A02(file).contains("UPDATE_DEVICE_STATS")) {
            return A07(context, c019508v, false);
        }
        if (A0Q && (!A06(context)) && (!z || (!A06(context)))) {
            C0A2.A02();
            int A00 = C0A2.A00(context, 50, 100);
            if (A00 == 0 || new Random().nextInt(A00) == 0) {
                String A02 = A02(file);
                String substring = A02.substring(0, Math.min(A02.length(), 2048));
                StringBuilder A0C = AnonymousClass000.A0C();
                A0C.append("eagerDexOpt (ret=");
                A0C.append(i);
                A0C.append(") failed to execCmdInProcess ");
                StringBuilder A0C2 = AnonymousClass000.A0C();
                A0C2.append((CharSequence) strArr[0]);
                int i2 = 1;
                do {
                    A0C2.append((CharSequence) " ");
                    A0C2.append((CharSequence) strArr[i2]);
                    i2++;
                } while (i2 < 8);
                AnonymousClass000.A0K(A0C2, A0C);
                String A09 = AnonymousClass000.A09(" ", substring, A0C);
                C0AD.A01(A09, e);
                C0AD.A02(A09, e);
            }
        }
        if (file != null) {
            try {
                Files.deleteIfExists(file.toPath());
            } catch (IOException e2) {
                C015006s.A0C("MegazipDexStorage", "Failed to delete log file", e2);
            }
        }
        if (A0Q) {
            if (i == 1) {
                C0A2.A02();
                if (!C0A2.A05(c019508v.A00.getApplicationContext(), 49)) {
                    return false;
                }
            } else {
                return false;
            }
        }
        return true;
    }
}
