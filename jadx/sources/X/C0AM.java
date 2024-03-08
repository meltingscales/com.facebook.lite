package X;

import android.os.StrictMode;
import android.system.ErrnoException;
import android.system.Os;
import java.io.FileDescriptor;
import java.io.InterruptedIOException;
import java.util.HashSet;
import java.util.Set;

/* renamed from: X.0AM  reason: invalid class name */
/* loaded from: classes.dex */
public final class C0AM implements C06j {
    public final Set A00 = new HashSet();

    private int A00(String str, byte[] bArr) {
        Set set = this.A00;
        if (!set.contains(str)) {
            StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
            try {
                int length = bArr.length;
                try {
                    FileDescriptor open = Os.open(str, 0, 0);
                    try {
                        int read = Os.read(open, bArr, 0, length - 1);
                        try {
                            Os.close(open);
                        } catch (ErrnoException unused) {
                        }
                        if (read != -2147483647) {
                            return read;
                        }
                    } catch (ErrnoException | InterruptedIOException unused2) {
                        Os.close(open);
                    } catch (Throwable th) {
                        try {
                            Os.close(open);
                        } catch (ErrnoException unused3) {
                        }
                        throw th;
                    }
                } catch (ErrnoException unused4) {
                }
                set.add(str);
                if (allowThreadDiskReads != null) {
                    StrictMode.setThreadPolicy(allowThreadDiskReads);
                    return -1;
                }
            } finally {
                if (allowThreadDiskReads != null) {
                    StrictMode.setThreadPolicy(allowThreadDiskReads);
                }
            }
        }
        return -1;
    }

    public static C0AM A01() {
        return new C0AM();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0048 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x00dd A[SYNTHETIC] */
    @Override // X.C06j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int AWQ(java.lang.String r22, float[] r23, int[] r24, long[] r25, java.lang.String[] r26) {
        /*
            Method dump skipped, instructions count: 232
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C0AM.AWQ(java.lang.String, float[], int[], long[], java.lang.String[]):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0083, code lost:
        if (r7[r3] != 10) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0086, code lost:
        if (r3 < 2048) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x008a, code lost:
        if (r7[r3] == 0) goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x008c, code lost:
        r7[r3] = 0;
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0090, code lost:
        r20[r12] = X.C06i.A00(r7, r1);
        r5 = r5 + 1;
        r1 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0099, code lost:
        if (r2 == false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00b2, code lost:
        if (r6 < 2048) goto L10;
     */
    @Override // X.C06j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean AWR(java.lang.String r19, long[] r20, java.lang.String[] r21) {
        /*
            r18 = this;
            r10 = r21
            int r9 = r10.length
            r11 = r20
            int r0 = r11.length
            if (r9 > r0) goto Lb7
            r17 = 0
            r2 = 0
        Lb:
            if (r2 >= r9) goto L14
            r0 = 0
            r20[r2] = r0
            int r2 = r2 + 1
            goto Lb
        L14:
            r8 = 2048(0x800, float:2.87E-42)
            byte[] r7 = new byte[r8]
            r1 = r18
            r0 = r19
            int r6 = r1.A00(r0, r7)
            if (r6 >= 0) goto Lb0
            r16 = 0
            r6 = 0
        L25:
            r7[r6] = r17
        L27:
            r1 = 0
            r5 = 0
        L29:
            if (r1 >= r6) goto Lb6
            r0 = r7[r1]
            if (r0 == 0) goto Lb6
            if (r5 >= r9) goto Lb6
            r12 = 0
        L32:
            r4 = 10
            if (r12 >= r9) goto L9b
            r15 = r21[r12]
            r14 = r1
            int r13 = r15.length()
            r3 = 0
        L3e:
            if (r14 >= r8) goto L4f
            if (r3 >= r13) goto L4f
            r2 = r7[r14]
            char r0 = r15.charAt(r3)
            if (r2 != r0) goto L7d
            int r14 = r14 + 1
            int r3 = r3 + 1
            goto L3e
        L4f:
            if (r3 != r13) goto L7d
            int r0 = r15.length()
            int r1 = r1 + r0
        L56:
            if (r1 >= r8) goto L6b
            r0 = r7[r1]
            if (r0 == 0) goto L68
            r2 = r7[r1]
            r0 = 32
            if (r2 == r0) goto L68
            r2 = r7[r1]
            r0 = 9
            if (r2 != r0) goto L6b
        L68:
            int r1 = r1 + 1
            goto L56
        L6b:
            r3 = r1
        L6c:
            if (r3 >= r8) goto L85
            r2 = r7[r3]
            r0 = 48
            if (r2 < r0) goto L80
            r2 = r7[r3]
            r0 = 57
            if (r2 > r0) goto L80
            int r3 = r3 + 1
            goto L6c
        L7d:
            int r12 = r12 + 1
            goto L32
        L80:
            r0 = r7[r3]
            r2 = 0
            if (r0 == r4) goto L88
        L85:
            r2 = 1
            if (r3 >= r8) goto L90
        L88:
            r0 = r7[r3]
            if (r0 == 0) goto L90
            r7[r3] = r17
            int r3 = r3 + 1
        L90:
            long r0 = X.C06i.A00(r7, r1)
            r20[r12] = r0
            int r5 = r5 + 1
            r1 = r3
            if (r2 == 0) goto L29
        L9b:
            if (r1 >= r6) goto La6
            r0 = r7[r1]
            if (r0 == 0) goto La6
            if (r0 == r4) goto La6
            int r1 = r1 + 1
            goto L9b
        La6:
            if (r1 >= r8) goto L29
            r0 = r7[r1]
            if (r0 != r4) goto L29
            int r1 = r1 + 1
            goto L29
        Lb0:
            r16 = 1
            if (r6 >= r8) goto L27
            goto L25
        Lb6:
            return r16
        Lb7:
            java.lang.String r0 = "Array lengths differ"
            java.lang.IllegalArgumentException r0 = X.AnonymousClass000.A06(r0)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C0AM.AWR(java.lang.String, long[], java.lang.String[]):boolean");
    }
}
