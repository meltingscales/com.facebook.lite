package X;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.MappedByteBuffer;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: X.05b  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C011905b {
    public static final byte[] A02 = new byte[100];
    public static final char[] A03 = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public final AnonymousClass057 A00;
    public final Map A01;

    public static void A01(File file, String str, String str2, Properties properties) {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            properties.store(fileOutputStream, AnonymousClass000.A09(str2, str, AnonymousClass000.A0C()));
            fileOutputStream.close();
        } catch (Throwable th) {
            try {
                fileOutputStream.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Throwable, boolean] */
    public final void A02(File file, String str, Properties properties) {
        long j;
        ?? equals = "perf".equals(str);
        try {
            if (equals != 0) {
                Map map = this.A01;
                C07W c07w = (C07W) map.get(file.getPath());
                if (c07w == null) {
                    c07w = this.A00.A00(file);
                    AbstractC007302y.A00(c07w);
                    map.put(file.getPath(), c07w);
                }
                MappedByteBuffer mappedByteBuffer = c07w.A00;
                mappedByteBuffer.clear();
                for (Map.Entry entry : properties.entrySet()) {
                    String obj = entry.getKey().toString();
                    String obj2 = entry.getValue().toString();
                    mappedByteBuffer.put(A00(obj, true).getBytes("Ascii"));
                    mappedByteBuffer.put("=".getBytes("Ascii"));
                    mappedByteBuffer.put(A00(obj2, false).getBytes("Ascii"));
                    mappedByteBuffer.put("\n".getBytes("Ascii"));
                }
                mappedByteBuffer.put("#".getBytes("Ascii"));
                return;
            }
            StringBuilder A0C = AnonymousClass000.A0C();
            A0C.append(file.getPath());
            File file2 = new File(AnonymousClass000.A0A("_tmp", A0C));
            if (str != null) {
                C017407v A00 = C017407v.A00(str);
                synchronized (A00.A03) {
                    File file3 = A00.A02;
                    StringBuilder A0C2 = AnonymousClass000.A0C();
                    A0C2.append("Did you call FixedLengthFiles.init()? - pool: ");
                    AbstractC005602h.A02(file3, AnonymousClass000.A0A(A00.A04, A0C2));
                    boolean z = false;
                    if (!file3.getPath().equals(file2.getParent())) {
                        z = true;
                    }
                    AbstractC005602h.A03("Destination file cannot be in the pool directory", z);
                    File[] listFiles = A00.A02.listFiles();
                    if (listFiles != null && listFiles.length > 0 && listFiles[0].renameTo(file2)) {
                        try {
                            RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "rw");
                            randomAccessFile.write("# ".getBytes("Ascii"));
                            randomAccessFile.write(str.getBytes("Ascii"));
                            randomAccessFile.write("\n".getBytes("Ascii"));
                            Iterator it = properties.entrySet().iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    Map.Entry entry2 = (Map.Entry) it.next();
                                    String obj3 = entry2.getKey().toString();
                                    String obj4 = entry2.getValue().toString();
                                    byte[] bytes = A00(obj3, true).getBytes("Ascii");
                                    byte[] bytes2 = A00(obj4, false).getBytes("Ascii");
                                    if (randomAccessFile.getFilePointer() + bytes.length + bytes2.length + 25 > randomAccessFile.length()) {
                                        randomAccessFile.write("trimmed_report=true\n#".getBytes("Ascii"));
                                        randomAccessFile.close();
                                        A01(file2, str, " store (too large) ", properties);
                                        break;
                                    }
                                    randomAccessFile.write(bytes);
                                    randomAccessFile.write("=".getBytes("Ascii"));
                                    randomAccessFile.write(bytes2);
                                    randomAccessFile.write("\n".getBytes("Ascii"));
                                } else {
                                    byte[] bytes3 = "# ".getBytes("Ascii");
                                    while (true) {
                                        randomAccessFile.write(bytes3);
                                        long filePointer = randomAccessFile.getFilePointer();
                                        bytes3 = A02;
                                        j = 100;
                                        if (filePointer + j >= randomAccessFile.length()) {
                                            break;
                                        }
                                    }
                                    while (randomAccessFile.getFilePointer() + j < randomAccessFile.length()) {
                                        randomAccessFile.writeByte(0);
                                    }
                                    randomAccessFile.close();
                                }
                            }
                            randomAccessFile.close();
                        } catch (FileNotFoundException e) {
                            AbstractC019608w.A00();
                            C015006s.A0B("lacrima", "Cannot reserve file", e);
                        }
                    }
                    A01(file2, str, " store (reserve)", properties);
                }
            } else {
                A01(file2, "", "no pool", properties);
            }
            if (!file2.renameTo(file)) {
                StringBuilder A0C3 = AnonymousClass000.A0C();
                A0C3.append("Could not rename file: ");
                throw new IOException(AnonymousClass000.A0A(file.getName(), A0C3));
            }
        } catch (Throwable unused) {
            throw equals;
        }
    }

    public C011905b(AnonymousClass057 anonymousClass057) {
        this.A01 = new ConcurrentHashMap();
        this.A00 = anonymousClass057;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001c, code lost:
        if (r2 < r4) goto L7;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0046 -> B:8:0x001c). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String A00(java.lang.String r7, boolean r8) {
        /*
            int r4 = r7.length()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>(r4)
            r2 = 0
            r1 = 32
            if (r8 != 0) goto L1c
            if (r4 <= 0) goto L85
            char r0 = r7.charAt(r2)
            if (r0 != r1) goto L1e
            java.lang.String r0 = "\\ "
            r3.append(r0)
            r2 = 1
        L1c:
            if (r2 >= r4) goto L85
        L1e:
            char r5 = r7.charAt(r2)
            switch(r5) {
                case 9: goto L76;
                case 10: goto L79;
                case 11: goto L25;
                case 12: goto L7c;
                case 13: goto L7f;
                default: goto L25;
            }
        L25:
            r6 = 92
            if (r8 == 0) goto L2b
            if (r5 == r1) goto L72
        L2b:
            if (r5 == r6) goto L72
            r0 = 35
            if (r5 == r0) goto L72
            r0 = 33
            if (r5 == r0) goto L72
            r0 = 58
            if (r5 == r0) goto L72
            r0 = 61
            if (r5 == r0) goto L72
            if (r5 < r1) goto L49
            r0 = 126(0x7e, float:1.77E-43)
            if (r5 > r0) goto L49
        L43:
            r3.append(r5)
        L46:
            int r2 = r2 + 1
            goto L1c
        L49:
            java.lang.String r0 = "\\u"
            r3.append(r0)
            char[] r6 = X.C011905b.A03
            int r0 = r5 >>> 12
            r0 = r0 & 15
            char r0 = r6[r0]
            r3.append(r0)
            int r0 = r5 >>> 8
            r0 = r0 & 15
            char r0 = r6[r0]
            r3.append(r0)
            int r0 = r5 >>> 4
            r0 = r0 & 15
            char r0 = r6[r0]
            r3.append(r0)
            int r0 = r5 >>> 0
            r0 = r0 & 15
            char r5 = r6[r0]
            goto L43
        L72:
            r3.append(r6)
            goto L43
        L76:
            java.lang.String r0 = "\\t"
            goto L81
        L79:
            java.lang.String r0 = "\\n"
            goto L81
        L7c:
            java.lang.String r0 = "\\f"
            goto L81
        L7f:
            java.lang.String r0 = "\\r"
        L81:
            r3.append(r0)
            goto L46
        L85:
            java.lang.String r0 = r3.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C011905b.A00(java.lang.String, boolean):java.lang.String");
    }

    public C011905b() {
    }
}
