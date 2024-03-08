package X;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;

/* renamed from: X.03c  reason: invalid class name */
/* loaded from: classes.dex */
public final class C03c {
    public final File A00;

    public static synchronized C02C A00(C03c c03c, String str, long j) {
        C02C c02c;
        RandomAccessFile randomAccessFile;
        synchronized (c03c) {
            if (j >= 0) {
                File file = c03c.A00;
                if (!file.exists() || file.length() <= j) {
                    return null;
                }
                try {
                    randomAccessFile = new RandomAccessFile(file, "r");
                } catch (IOException e) {
                    AbstractC019608w.A00();
                    C015006s.A0G("lacrima", "Could not read %s due to IO issue", e, str);
                    c02c = new C02C(-536L);
                } catch (NumberFormatException e2) {
                    AbstractC019608w.A00();
                    C015006s.A0G("lacrima", "Could not read %s", e2, str);
                    c02c = new C02C(-647L);
                }
                try {
                    randomAccessFile.seek(j);
                    if (randomAccessFile.readByte() == 1) {
                        c02c = new C02C(-425L);
                    } else {
                        long readLong = randomAccessFile.readLong();
                        if (readLong < 0) {
                            c02c = new C02C(-869L);
                        } else {
                            long readLong2 = randomAccessFile.readLong();
                            if (readLong2 < 0) {
                                c02c = new C02C(-869L);
                            } else {
                                c02c = new C02C(readLong, readLong2);
                            }
                        }
                    }
                    randomAccessFile.close();
                    return c02c;
                } catch (Throwable th) {
                    try {
                        randomAccessFile.close();
                    } catch (Throwable unused) {
                    }
                    throw th;
                }
            }
            throw new IllegalArgumentException();
        }
    }

    public static synchronized C02B A01(C03c c03c, int i, int i2) {
        String str;
        boolean z;
        RandomAccessFile randomAccessFile;
        synchronized (c03c) {
            File file = c03c.A00;
            if (file.exists()) {
                long j = i;
                if (file.length() > j) {
                    long j2 = i2;
                    if (file.length() > j2) {
                        boolean z2 = false;
                        try {
                            randomAccessFile = new RandomAccessFile(file, "r");
                            try {
                                randomAccessFile.seek(j);
                                z = false;
                                if (randomAccessFile.readByte() != 0) {
                                    z = true;
                                }
                            } catch (Throwable th) {
                                th = th;
                            }
                            try {
                                randomAccessFile.seek(j2);
                                int readByte = randomAccessFile.readByte();
                                if (readByte != 0) {
                                    byte[] bArr = new byte[readByte];
                                    randomAccessFile.readFully(bArr, 0, readByte);
                                    str = new String(bArr);
                                } else {
                                    str = null;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                z2 = z;
                                try {
                                    randomAccessFile.close();
                                } catch (Throwable unused) {
                                }
                                throw th;
                            }
                        } catch (IOException e) {
                            e = e;
                            str = null;
                        }
                        try {
                            randomAccessFile.close();
                        } catch (IOException e2) {
                            e = e2;
                            z2 = z;
                            AbstractC019608w.A00();
                            e.getMessage();
                            z = z2;
                            return new C02B(z, str);
                        }
                        return new C02B(z, str);
                    }
                }
            }
            return null;
        }
    }

    public final synchronized char A02() {
        char c;
        RandomAccessFile randomAccessFile;
        File file = this.A00;
        if (file.exists() && file.length() > 1) {
            try {
                randomAccessFile = new RandomAccessFile(file, "r");
            } catch (IOException e) {
                AbstractC019608w.A00();
                C015006s.A0B("lacrima", "Could not read activity state", e);
            }
            try {
                randomAccessFile.seek(1L);
                c = (char) randomAccessFile.readByte();
                randomAccessFile.close();
            } catch (Throwable th) {
                try {
                    randomAccessFile.close();
                } catch (Throwable unused) {
                }
                throw th;
            }
        }
        c = '?';
        return c;
    }

    public final synchronized char A03() {
        char c;
        RandomAccessFile randomAccessFile;
        File file = this.A00;
        if (file.exists() && file.length() > 0) {
            try {
                randomAccessFile = new RandomAccessFile(file, "r");
            } catch (IOException e) {
                AbstractC019608w.A00();
                C015006s.A0B("lacrima", "Could not read status", e);
            }
            try {
                randomAccessFile.seek(0L);
                c = (char) randomAccessFile.readByte();
                randomAccessFile.close();
            } catch (Throwable th) {
                try {
                    randomAccessFile.close();
                } catch (Throwable unused) {
                }
                throw th;
            }
        }
        c = '0';
        return c;
    }

    public final synchronized int A04(boolean z) {
        byte b;
        RandomAccessFile randomAccessFile;
        int i = 204;
        if (z) {
            i = 203;
        }
        File file = this.A00;
        if (file.exists()) {
            long j = i;
            if (file.length() > j) {
                try {
                    randomAccessFile = new RandomAccessFile(file, "r");
                } catch (IOException e) {
                    AbstractC019608w.A00();
                    C015006s.A0B("lacrima", "Could not read number of activities byte", e);
                }
                try {
                    randomAccessFile.seek(j);
                    b = randomAccessFile.readByte();
                    randomAccessFile.close();
                } catch (Throwable th) {
                    try {
                        randomAccessFile.close();
                    } catch (Throwable unused) {
                    }
                    throw th;
                }
            }
        }
        b = 0;
        return b;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized java.lang.String A05() {
        /*
            r10 = this;
            r9 = r10
            monitor-enter(r9)
            java.io.File r8 = r10.A00     // Catch: java.io.IOException -> La5 java.lang.Throwable -> Lac
            java.lang.String r5 = r8.getCanonicalPath()     // Catch: java.io.IOException -> La5 java.lang.Throwable -> Lac
            r4 = 32
            boolean r0 = r8.exists()     // Catch: java.lang.Throwable -> La3
            if (r0 == 0) goto L3d
            long r6 = r8.length()     // Catch: java.lang.Throwable -> La3
            r2 = 2
            int r0 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1))
            if (r0 <= 0) goto L3d
            java.lang.String r0 = "r"
            java.io.RandomAccessFile r1 = new java.io.RandomAccessFile     // Catch: java.io.IOException -> L32 java.lang.Throwable -> La3
            r1.<init>(r8, r0)     // Catch: java.io.IOException -> L32 java.lang.Throwable -> La3
            r1.seek(r2)     // Catch: java.lang.Throwable -> L2d
            byte r0 = r1.readByte()     // Catch: java.lang.Throwable -> L2d
            char r6 = (char) r0     // Catch: java.lang.Throwable -> L2d
            r1.close()     // Catch: java.io.IOException -> L32 java.lang.Throwable -> La3
            goto L3f
        L2d:
            r0 = move-exception
            r1.close()     // Catch: java.lang.Throwable -> L31
        L31:
            throw r0     // Catch: java.io.IOException -> L32 java.lang.Throwable -> La3
        L32:
            r2 = move-exception
            X.AbstractC019608w.A00()     // Catch: java.lang.Throwable -> La3
            java.lang.String r1 = "lacrima"
            java.lang.String r0 = "Could not read foreground entity"
            X.C015006s.A0B(r1, r0, r2)     // Catch: java.lang.Throwable -> La3
        L3d:
            r6 = 32
        L3f:
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lac
            r1.<init>()     // Catch: java.lang.Throwable -> Lac
            r1.append(r5)     // Catch: java.lang.Throwable -> Lac
            java.lang.String r0 = "_entity"
            r1.append(r0)     // Catch: java.lang.Throwable -> Lac
            java.lang.String r0 = r1.toString()     // Catch: java.lang.Throwable -> Lac
            java.io.File r2 = new java.io.File     // Catch: java.lang.Throwable -> Lac
            r2.<init>(r0)     // Catch: java.lang.Throwable -> Lac
            if (r6 != r4) goto L5a
            java.lang.String r5 = "NONE"
            goto L9e
        L5a:
            r0 = 33
            if (r6 != r0) goto L61
            java.lang.String r5 = "OTHERS"
            goto L9e
        L61:
            java.util.Properties r4 = new java.util.Properties     // Catch: java.lang.Throwable -> Lac
            r4.<init>()     // Catch: java.lang.Throwable -> Lac
            r5 = 0
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.io.IOException -> L9e java.lang.Throwable -> Lac
            r1.<init>(r2)     // Catch: java.io.IOException -> L9e java.lang.Throwable -> Lac
            r4.load(r1)     // Catch: java.lang.Throwable -> L98
            r1.close()     // Catch: java.io.IOException -> L9e java.lang.Throwable -> Lac
            java.util.Set r0 = r4.stringPropertyNames()     // Catch: java.lang.Throwable -> Lac
            java.util.Iterator r3 = r0.iterator()     // Catch: java.lang.Throwable -> Lac
        L7a:
            boolean r0 = r3.hasNext()     // Catch: java.lang.Throwable -> Lac
            if (r0 == 0) goto L9e
            java.lang.Object r2 = r3.next()     // Catch: java.lang.Throwable -> Lac
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Throwable -> Lac
            java.lang.String r1 = r4.getProperty(r2)     // Catch: java.lang.Throwable -> Lac
            boolean r0 = android.text.TextUtils.isEmpty(r1)     // Catch: java.lang.Throwable -> Lac
            if (r0 != 0) goto L7a
            r0 = 0
            char r0 = r1.charAt(r0)     // Catch: java.lang.Throwable -> Lac
            if (r6 != r0) goto L7a
            goto L9d
        L98:
            r0 = move-exception
            r1.close()     // Catch: java.lang.Throwable -> L9c
        L9c:
            throw r0     // Catch: java.io.IOException -> L9e java.lang.Throwable -> Lac
        L9d:
            r5 = r2
        L9e:
            if (r5 != 0) goto Laa
            java.lang.String r5 = ""
            goto Laa
        La3:
            r0 = move-exception
            throw r0     // Catch: java.lang.Throwable -> Lac
        La5:
            X.AbstractC019608w.A00()     // Catch: java.lang.Throwable -> Lac
            java.lang.String r5 = ""
        Laa:
            monitor-exit(r9)
            return r5
        Lac:
            r0 = move-exception
            monitor-exit(r9)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C03c.A05():java.lang.String");
    }

    public C03c(File file) {
        this.A00 = file;
    }

    public C03c(File file, boolean z) {
        this.A00 = file;
    }
}
