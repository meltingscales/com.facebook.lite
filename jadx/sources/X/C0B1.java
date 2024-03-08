package X;

import android.content.Context;
import com.facebook.soloader.MinElf$ElfError;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* renamed from: X.0B1  reason: invalid class name */
/* loaded from: classes.dex */
public final class C0B1 {
    public static List A00;
    public static Map A01;
    public static byte[] A02;
    public static final ReentrantReadWriteLock A03 = new ReentrantReadWriteLock();
    public static volatile boolean A04;

    public static long A00(AnonymousClass046 anonymousClass046, ByteBuffer byteBuffer, long j) {
        A03(anonymousClass046, byteBuffer, 4, j);
        return byteBuffer.getInt() & 4294967295L;
    }

    public static void A03(AnonymousClass046 anonymousClass046, ByteBuffer byteBuffer, int i, long j) {
        int AWF;
        byteBuffer.position(0);
        byteBuffer.limit(i);
        while (byteBuffer.remaining() > 0 && (AWF = anonymousClass046.AWF(byteBuffer, j)) != -1) {
            j += AWF;
        }
        if (byteBuffer.remaining() <= 0) {
            byteBuffer.position(0);
            return;
        }
        throw new MinElf$ElfError("ELF file truncated");
    }

    public static String A01(int i) {
        byte[] bArr;
        if (i >= A00.size()) {
            return null;
        }
        int intValue = ((Number) A00.get(i)).intValue();
        int i2 = intValue;
        while (true) {
            bArr = A02;
            if (i2 >= bArr.length || bArr[i2] <= 32) {
                break;
            }
            i2++;
        }
        int i3 = (i2 - intValue) + 6;
        char[] cArr = new char[i3];
        cArr[0] = 'l';
        cArr[1] = 'i';
        cArr[2] = 'b';
        for (int i4 = 0; i4 < i3 - 6; i4++) {
            cArr[i4 + 3] = (char) bArr[intValue + i4];
        }
        cArr[i3 - 3] = '.';
        cArr[i3 - 2] = 's';
        cArr[i3 - 1] = 'o';
        return new String(cArr);
    }

    public static void A02(int i, int i2) {
        List list = A00;
        Integer valueOf = Integer.valueOf(i2);
        list.add(valueOf);
        Map map = A01;
        Integer valueOf2 = Integer.valueOf(i);
        List list2 = (List) map.get(valueOf2);
        if (list2 == null) {
            list2 = AnonymousClass000.A0E();
            A01.put(valueOf2, list2);
        }
        list2.add(valueOf);
    }

    public static void A04(File file, byte b) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(AnonymousClass000.A04(file, "state"), "rw");
        try {
            randomAccessFile.seek(0L);
            randomAccessFile.write(b);
            randomAccessFile.setLength(randomAccessFile.getFilePointer());
            randomAccessFile.getFD().sync();
            randomAccessFile.close();
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    public static boolean A05(Context context) {
        int i;
        int length;
        byte b;
        int length2;
        if (A04) {
            synchronized (C0B1.class) {
                if (A04) {
                    throw AnonymousClass000.A07("Trying to initialize NativeDeps but it was already initialized");
                }
            }
        }
        byte[] A0A = C0BF.A0A(context, AnonymousClass000.A01(context));
        File A042 = AnonymousClass000.A04(new File(context.getApplicationInfo().dataDir, "native_deps"), "deps");
        FileInputStream fileInputStream = new FileInputStream(A042);
        try {
            byte[] A06 = A06(fileInputStream, (int) A042.length());
            fileInputStream.close();
            if (A0A != null) {
                int length3 = A0A.length;
                if (length3 != 0 && (length2 = A06.length) >= (i = length3 + 4) && length2 == ByteBuffer.wrap(A06, length3, 4).getInt() + i) {
                    int i2 = 0;
                    while (A0A[i2] == A06[i2]) {
                        i2++;
                        if (i2 >= length3) {
                            if (i == -1) {
                                return false;
                            }
                        }
                    }
                    return false;
                }
                return false;
            }
            i = 0;
            int i3 = i;
            while (true) {
                length = A06.length;
                if (i3 >= length || A06[i3] == 10) {
                    break;
                }
                i3++;
            }
            if (i3 < length) {
                i3++;
            }
            if (i3 >= length) {
                return false;
            }
            try {
                int parseInt = Integer.parseInt(new String(A06, i, (i3 - i) - 1));
                if (parseInt <= 0) {
                    return false;
                }
                A01 = new HashMap(((int) (parseInt / 1.0f)) + 1, 1.0f);
                A00 = new ArrayList(parseInt);
                while (true) {
                    int i4 = 5381;
                    int i5 = i3;
                    while (true) {
                        try {
                            b = A06[i5];
                            if (b <= 32) {
                                break;
                            }
                            i4 = (i4 << 5) + i4 + b;
                            i5++;
                        } catch (IndexOutOfBoundsException unused) {
                            if (i3 != length) {
                                A02(i4, i3);
                            }
                        }
                    }
                    A02(i4, i3);
                    boolean z = false;
                    if (b != 32) {
                        z = true;
                    }
                    while (true) {
                        i3 = i5 + 1;
                        if (z) {
                            break;
                        }
                        while (A06[i3] != 10) {
                            try {
                                i3++;
                            } catch (IndexOutOfBoundsException unused2) {
                                if (A00.size() != parseInt) {
                                    return false;
                                }
                                A02 = A06;
                                A04 = true;
                                return true;
                            }
                        }
                        z = true;
                        i5 = i3;
                    }
                }
            } catch (NumberFormatException unused3) {
                return false;
            }
        } catch (Throwable th) {
            try {
                fileInputStream.close();
            } catch (Throwable unused4) {
            }
            throw th;
        }
    }

    public static byte[] A06(InputStream inputStream, int i) {
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int read = inputStream.read(bArr, i2, i - i2);
            if (read != -1) {
                i2 += read;
                if (i2 > i) {
                    throw AnonymousClass000.A07("Read more bytes than expected");
                }
            } else {
                throw new EOFException("EOF found unexpectedly");
            }
        }
        return bArr;
    }

    public static String[] A07(AnonymousClass046 anonymousClass046) {
        long j;
        short s;
        long j2;
        long j3;
        long j4;
        long j5;
        long j6;
        long j7;
        long j8;
        long j9;
        long j10;
        long j11;
        long j12;
        long j13;
        long j14;
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        long A002 = A00(anonymousClass046, allocate, 0L);
        if (A002 == 1179403647) {
            A03(anonymousClass046, allocate, 1, 4L);
            boolean z = true;
            if (((short) (allocate.get() & 255)) != 1) {
                z = false;
            }
            A03(anonymousClass046, allocate, 1, 5L);
            if (((short) (allocate.get() & 255)) == 2) {
                allocate.order(ByteOrder.BIG_ENDIAN);
            }
            if (z) {
                j = A00(anonymousClass046, allocate, 28L);
                A03(anonymousClass046, allocate, 2, 44L);
                s = 65535;
                j2 = allocate.getShort() & 65535;
                j3 = 42;
            } else {
                A03(anonymousClass046, allocate, 8, 32L);
                j = allocate.getLong();
                A03(anonymousClass046, allocate, 2, 56L);
                s = 65535;
                j2 = allocate.getShort() & 65535;
                j3 = 54;
            }
            A03(anonymousClass046, allocate, 2, j3);
            int i = allocate.getShort() & s;
            if (j2 == 65535) {
                if (z) {
                    j14 = A00(anonymousClass046, allocate, 32L) + 28;
                } else {
                    A03(anonymousClass046, allocate, 8, 40L);
                    j14 = allocate.getLong() + 44;
                }
                j2 = A00(anonymousClass046, allocate, j14);
            }
            long j15 = j;
            long j16 = 0;
            while (true) {
                if (j16 >= j2) {
                    break;
                } else if (A00(anonymousClass046, allocate, j15 + 0) == 2) {
                    if (z) {
                        j4 = A00(anonymousClass046, allocate, j15 + 4);
                    } else {
                        A03(anonymousClass046, allocate, 8, j15 + 8);
                        j4 = allocate.getLong();
                    }
                    if (j4 != 0) {
                        long j17 = j4;
                        long j18 = 0;
                        int i2 = 0;
                        do {
                            long j19 = j17 + 0;
                            if (z) {
                                j5 = A00(anonymousClass046, allocate, j19);
                            } else {
                                A03(anonymousClass046, allocate, 8, j19);
                                j5 = allocate.getLong();
                            }
                            if (j5 == 1) {
                                if (i2 != Integer.MAX_VALUE) {
                                    i2++;
                                } else {
                                    throw new MinElf$ElfError("malformed DT_NEEDED section");
                                }
                            } else if (j5 == 5) {
                                if (z) {
                                    j18 = A00(anonymousClass046, allocate, j17 + 4);
                                } else {
                                    A03(anonymousClass046, allocate, 8, j17 + 8);
                                    j18 = allocate.getLong();
                                }
                            }
                            j6 = 16;
                            if (z) {
                                j7 = 8;
                            } else {
                                j7 = 16;
                            }
                            j17 += j7;
                        } while (j5 != 0);
                        if (j18 != 0) {
                            int i3 = 0;
                            while (true) {
                                if (i3 >= j2) {
                                    break;
                                }
                                if (A00(anonymousClass046, allocate, j + 0) == 1) {
                                    if (z) {
                                        j8 = A00(anonymousClass046, allocate, j + 8);
                                        j9 = A00(anonymousClass046, allocate, j + 20);
                                    } else {
                                        A03(anonymousClass046, allocate, 8, j + j6);
                                        j8 = allocate.getLong();
                                        A03(anonymousClass046, allocate, 8, j + 40);
                                        j9 = allocate.getLong();
                                    }
                                    if (j8 <= j18 && j18 < j9 + j8) {
                                        if (z) {
                                            j10 = A00(anonymousClass046, allocate, j + 4);
                                        } else {
                                            A03(anonymousClass046, allocate, 8, j + 8);
                                            j10 = allocate.getLong();
                                        }
                                        long j20 = j10 + (j18 - j8);
                                        if (j20 != 0) {
                                            String[] strArr = new String[i2];
                                            int i4 = 0;
                                            do {
                                                long j21 = j4 + 0;
                                                if (z) {
                                                    j11 = A00(anonymousClass046, allocate, j21);
                                                } else {
                                                    A03(anonymousClass046, allocate, 8, j21);
                                                    j11 = allocate.getLong();
                                                }
                                                if (j11 == 1) {
                                                    if (z) {
                                                        j13 = A00(anonymousClass046, allocate, j4 + 4);
                                                    } else {
                                                        A03(anonymousClass046, allocate, 8, j4 + 8);
                                                        j13 = allocate.getLong();
                                                    }
                                                    long j22 = j13 + j20;
                                                    StringBuilder A0C = AnonymousClass000.A0C();
                                                    while (true) {
                                                        long j23 = 1 + j22;
                                                        A03(anonymousClass046, allocate, 1, j22);
                                                        short s2 = (short) (allocate.get() & 255);
                                                        if (s2 == 0) {
                                                            break;
                                                        }
                                                        A0C.append((char) s2);
                                                        j22 = j23;
                                                    }
                                                    strArr[i4] = A0C.toString();
                                                    if (i4 != Integer.MAX_VALUE) {
                                                        i4++;
                                                    } else {
                                                        throw new MinElf$ElfError("malformed DT_NEEDED section");
                                                    }
                                                }
                                                if (z) {
                                                    j12 = 8;
                                                } else {
                                                    j12 = 16;
                                                }
                                                j4 += j12;
                                            } while (j11 != 0);
                                            if (i4 == i2) {
                                                return strArr;
                                            }
                                            throw new MinElf$ElfError("malformed DT_NEEDED section");
                                        }
                                    }
                                }
                                j += i;
                                i3++;
                                j6 = 16;
                            }
                            throw new MinElf$ElfError("did not find file offset of DT_STRTAB table");
                        }
                        throw new MinElf$ElfError("Dynamic section string-table not found");
                    }
                } else {
                    j15 += i;
                    j16++;
                }
            }
            throw new MinElf$ElfError("ELF file does not contain dynamic linking information");
        }
        StringBuilder A0C2 = AnonymousClass000.A0C();
        A0C2.append("file is not ELF: magic is 0x");
        A0C2.append(Long.toHexString(A002));
        A0C2.append(", it should be ");
        throw new MinElf$ElfError(AnonymousClass000.A0A(Long.toHexString(1179403647L), A0C2));
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0080, code lost:
        if (r6 == (-1)) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0082, code lost:
        r4 = X.AnonymousClass000.A0E();
        r6 = (r6 + r7) - 6;
        r1 = 0;
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x008a, code lost:
        r3 = X.C0B1.A02;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x008d, code lost:
        if (r6 >= r3.length) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x008f, code lost:
        r3 = r3[r6];
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0093, code lost:
        if (r3 == 10) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0097, code lost:
        if (r3 != 32) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0099, code lost:
        if (r5 == false) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x009b, code lost:
        r0 = A01(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x009f, code lost:
        if (r0 == null) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00a1, code lost:
        r4.add(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00a7, code lost:
        if (r3 < 48) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ab, code lost:
        if (r3 > 57) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00ad, code lost:
        r1 = (r1 * 10) + (r3 - 48);
        r5 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00b4, code lost:
        r1 = 0;
        r5 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00b6, code lost:
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00b9, code lost:
        if (r5 == false) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00bb, code lost:
        r0 = A01(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00bf, code lost:
        if (r0 == null) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00c1, code lost:
        r4.add(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00c8, code lost:
        if (r4.isEmpty() != false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00ca, code lost:
        r2 = (java.lang.String[]) r4.toArray(new java.lang.String[r4.size()]);
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x00d8 A[EDGE_INSN: B:101:0x00d8->B:62:0x00d8 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0059 A[Catch: Error | RuntimeException -> 0x0122, MinElf$ElfError -> 0x0124, all -> 0x012a, TryCatch #0 {MinElf$ElfError -> 0x0124, blocks: (B:11:0x001e, B:13:0x0022, B:15:0x0027, B:18:0x0031, B:20:0x0036, B:21:0x0041, B:23:0x004f, B:24:0x0053, B:26:0x0059, B:28:0x0067, B:30:0x006c, B:32:0x0078, B:36:0x0082, B:37:0x008a, B:39:0x008f, B:44:0x009b, B:46:0x00a1, B:53:0x00b6, B:51:0x00ad, B:55:0x00bb, B:57:0x00c1, B:58:0x00c4, B:60:0x00ca, B:63:0x00da, B:65:0x00de, B:66:0x00e1, B:70:0x00ec, B:71:0x0106, B:72:0x0107), top: B:97:0x001e, outer: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String[] A08(X.AnonymousClass046 r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C0B1.A08(X.046, java.lang.String):java.lang.String[]");
    }
}
