package X;

import dalvik.system.BaseDexClassLoader;
import dalvik.system.DexFile;
import dalvik.system.InMemoryDexClassLoader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* renamed from: X.09v  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC021909v {
    public static DexFile A00(String str) {
        FileInputStream fileInputStream = new FileInputStream(str);
        try {
            FileChannel channel = fileInputStream.getChannel();
            MappedByteBuffer map = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
            map.order(ByteOrder.nativeOrder());
            channel.close();
            fileInputStream.close();
            InMemoryDexClassLoader inMemoryDexClassLoader = new InMemoryDexClassLoader(map, DexFile.class.getClassLoader());
            Field declaredField = BaseDexClassLoader.class.getDeclaredField("pathList");
            declaredField.setAccessible(true);
            Object[] A0S = AnonymousClass000.A0S(inMemoryDexClassLoader, declaredField);
            Field declaredField2 = Class.forName("dalvik.system.DexPathList$Element").getDeclaredField("dexFile");
            declaredField2.setAccessible(true);
            return (DexFile) declaredField2.get(A0S[0]);
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x005f A[Catch: all -> 0x0095, TRY_LEAVE, TryCatch #0 {all -> 0x0095, blocks: (B:21:0x0057, B:23:0x005f, B:30:0x007e, B:33:0x0085, B:34:0x0094, B:20:0x0053), top: B:46:0x0053 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0084 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0085 A[Catch: all -> 0x0095, TryCatch #0 {all -> 0x0095, blocks: (B:21:0x0057, B:23:0x005f, B:30:0x007e, B:33:0x0085, B:34:0x0094, B:20:0x0053), top: B:46:0x0053 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.io.InputStream A01(X.InterfaceC020909k r6, java.lang.String r7) {
        /*
            java.lang.String r1 = "spo"
            java.lang.String r2 = ".dex"
            boolean r0 = r7.endsWith(r2)
            if (r0 == 0) goto Lf
            java.io.InputStream r3 = r6.AUl(r7)
            goto L13
        Lf:
            java.io.InputStream r3 = r6.AUk(r7)
        L13:
            java.lang.String r0 = ".spo"
            boolean r0 = r7.endsWith(r0)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lbe
            java.lang.String r6 = "classes.dex"
            if (r0 == 0) goto L2a
            java.lang.Runtime r0 = java.lang.Runtime.getRuntime()     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lbe
            int r0 = r0.availableProcessors()     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lbe
            com.facebook.superpack.SuperpackFileInputStream r5 = com.facebook.superpack.SuperpackFileInputStream.createFromSingletonArchiveInputStream(r3, r1, r0)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lbe
            goto L39
        L2a:
            java.lang.String r0 = ".spk.xz"
            boolean r0 = r7.endsWith(r0)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lbe
            if (r0 == 0) goto L3b
            java.lang.String r1 = "xz"
            r0 = 1
            com.facebook.superpack.SuperpackFileInputStream r5 = com.facebook.superpack.SuperpackFileInputStream.createFromSingletonArchiveInputStream(r3, r1, r0)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lbe
        L39:
            r4 = r6
            goto L57
        L3b:
            java.lang.String r0 = ".xzs"
            boolean r0 = r7.endsWith(r0)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lbe
            if (r0 != 0) goto L4e
            java.lang.String r0 = ".xz"
            boolean r0 = r7.endsWith(r0)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lbe
            if (r0 != 0) goto L4e
            r5 = r3
            r4 = r7
            goto L57
        L4e:
            com.facebook.xzdecoder.XzInputStream r5 = new com.facebook.xzdecoder.XzInputStream     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lbe
            r5.<init>(r3)     // Catch: java.lang.Exception -> L9b java.lang.Throwable -> Lbe
            java.lang.String r4 = A04(r7)     // Catch: java.lang.Throwable -> L95 java.lang.Exception -> L98
        L57:
            java.lang.String r0 = ".jar"
            boolean r0 = r4.endsWith(r0)     // Catch: java.lang.Throwable -> L95
            if (r0 == 0) goto L7e
            java.util.zip.ZipInputStream r3 = new java.util.zip.ZipInputStream     // Catch: java.lang.Throwable -> L95
            r3.<init>(r5)     // Catch: java.lang.Throwable -> L95
        L64:
            java.util.zip.ZipEntry r1 = r3.getNextEntry()     // Catch: java.lang.Throwable -> Lbe
            if (r1 == 0) goto L77
            r1.getName()     // Catch: java.lang.Throwable -> Lbe
            java.lang.String r0 = r1.getName()     // Catch: java.lang.Throwable -> Lbe
            boolean r0 = r0.equals(r6)     // Catch: java.lang.Throwable -> Lbe
            if (r0 == 0) goto L64
        L77:
            if (r1 == 0) goto Lac
            java.lang.String r4 = A04(r4)     // Catch: java.lang.Throwable -> Lbe
            r5 = r3
        L7e:
            boolean r0 = r4.endsWith(r2)     // Catch: java.lang.Throwable -> L95
            if (r0 == 0) goto L85
            return r5
        L85:
            java.lang.StringBuilder r1 = X.AnonymousClass000.A0C()     // Catch: java.lang.Throwable -> L95
            java.lang.String r0 = "malformed dex asset name: "
            java.lang.String r1 = X.AnonymousClass000.A09(r0, r7, r1)     // Catch: java.lang.Throwable -> L95
            X.09u r0 = new X.09u     // Catch: java.lang.Throwable -> L95
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L95
            throw r0     // Catch: java.lang.Throwable -> L95
        L95:
            r0 = move-exception
            r3 = r5
            goto Lbf
        L98:
            r2 = move-exception
            r3 = r5
            goto L9c
        L9b:
            r2 = move-exception
        L9c:
            java.lang.StringBuilder r1 = X.AnonymousClass000.A0C()     // Catch: java.lang.Throwable -> Lbe
            java.lang.String r0 = "Could not access archive from "
            java.lang.String r1 = X.AnonymousClass000.A09(r0, r7, r1)     // Catch: java.lang.Throwable -> Lbe
            java.lang.RuntimeException r0 = new java.lang.RuntimeException     // Catch: java.lang.Throwable -> Lbe
            r0.<init>(r1, r2)     // Catch: java.lang.Throwable -> Lbe
            goto Lbd
        Lac:
            java.lang.String r2 = "zip file %s did not contain a classes.dex"
            r0 = 1
            java.lang.Object[] r1 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> Lbe
            r0 = 0
            r1[r0] = r4     // Catch: java.lang.Throwable -> Lbe
            java.lang.String r1 = java.lang.String.format(r2, r1)     // Catch: java.lang.Throwable -> Lbe
            java.io.IOException r0 = new java.io.IOException     // Catch: java.lang.Throwable -> Lbe
            r0.<init>(r1)     // Catch: java.lang.Throwable -> Lbe
        Lbd:
            throw r0     // Catch: java.lang.Throwable -> Lbe
        Lbe:
            r0 = move-exception
        Lbf:
            X.AbstractC022009w.A01(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: X.AbstractC021909v.A01(X.09k, java.lang.String):java.io.InputStream");
    }

    public static String A03(C021609s c021609s, C021709t c021709t) {
        String str = c021609s.A00;
        String str2 = c021609s.A02;
        if (str2 != null) {
            if ("spo".equals(str2)) {
                return "store-0.dex.spo";
            }
            return AnonymousClass000.A09("store-0.dex.spk.", str2, AnonymousClass000.A0C());
        } else if (!str.endsWith(".xzs.tmp~")) {
            return str;
        } else {
            String str3 = c021709t.A00;
            if ("dex".equals(str3)) {
                return "secondary.dex.jar.xzs";
            }
            return str3.concat(".dex.jar.xzs");
        }
    }

    public static String A04(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf != -1) {
            return str.substring(0, lastIndexOf);
        }
        return str;
    }

    public static String A02(C021609s c021609s) {
        StringBuilder A0C = AnonymousClass000.A0C();
        A0C.append("prog-");
        A0C.append(c021609s.A01);
        return AnonymousClass000.A0A(".dex", A0C);
    }

    public static void A05(InterfaceC020909k interfaceC020909k, C021609s c021609s, C021709t c021709t, File file, File file2) {
        C0A4.A03 = AnonymousClass000.A0F();
        C0A4.A00 = System.nanoTime();
        try {
            String A03 = A03(c021609s, c021709t);
            long nanoTime = System.nanoTime();
            File A04 = AnonymousClass000.A04(file, "tmp_dex.dex");
            C0A4.A04 = true;
            InputStream A01 = A01(interfaceC020909k, A03);
            FileOutputStream fileOutputStream = new FileOutputStream(A04);
            try {
                byte[] bArr = new byte[32768];
                int i = 0;
                while (true) {
                    int min = Math.min(32768, Integer.MAX_VALUE - i);
                    int i2 = 0;
                    while (true) {
                        if (i2 >= min) {
                            break;
                        }
                        int read = A01.read(bArr, i2, min - i2);
                        if (read >= 0) {
                            i2 += read;
                        } else if (read == -1 && i2 == 0) {
                            break;
                        }
                    }
                    if (i2 == -1) {
                        break;
                    }
                    try {
                        fileOutputStream.write(bArr, 0, i2);
                        i += i2;
                        if (i >= Integer.MAX_VALUE) {
                            break;
                        }
                    } catch (IOException e) {
                        Object[] objArr = new Object[2];
                        AnonymousClass000.A0P(objArr, i, 0);
                        AnonymousClass000.A0P(objArr, i2, 1);
                        C015006s.A0F("DexStore", "failed to write file (after writing %d and reading %d bytes)", e, objArr);
                        throw e;
                    }
                }
                AbstractC022009w.A01(fileOutputStream);
                AbstractC022009w.A01(A01);
                TimeUnit timeUnit = TimeUnit.NANOSECONDS;
                AnonymousClass000.A0L("extract_dex", C0A4.A03, timeUnit.toMillis(System.nanoTime() - nanoTime));
                AbstractC022009w.A03(A04, file2);
                C0A4.A03.put("total_time", Long.valueOf(timeUnit.toMillis(System.nanoTime() - C0A4.A00)));
            } catch (IOException e2) {
                C015006s.A0I("DexStoreUtils", "failed to extract secondary dex, available space: %s", e2, Long.valueOf(AbstractC022009w.A00(A04.getPath())));
                throw e2;
            }
        } catch (Throwable th) {
            C0A4.A03.put("total_time", Long.valueOf(TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - C0A4.A00)));
            throw th;
        }
    }

    public static void A06(File file, List list) {
        File[] listFiles = file.getCanonicalFile().listFiles();
        if (listFiles == null) {
            C015006s.A06("DexStoreUtils", "Failed to list files in dex store root");
            return;
        }
        for (File file2 : listFiles) {
            if (!file2.getName().equals("dex_lock") && !list.contains(A04(file2.getName()))) {
                AbstractC022009w.A02(file2);
            }
        }
    }
}
