package X;

/* renamed from: X.065  reason: invalid class name */
/* loaded from: classes.dex */
public final class AnonymousClass065 {
    public static final String[] A07 = {"rchar:", "wchar:", "syscr:", "syscw:", "read_bytes:", "write_bytes:", "cancelled_write_bytes:"};
    public final long A00;
    public final long A01;
    public final long A02;
    public final long A03;
    public final long A04;
    public final long A05;
    public final long A06;

    public static AnonymousClass065 A00() {
        long[] jArr = new long[7];
        if (C06k.A00.AWR("/proc/self/io", jArr, A07)) {
            return new AnonymousClass065(jArr[0], jArr[1], jArr[2], jArr[3], jArr[4], jArr[5], jArr[6]);
        }
        return null;
    }

    public AnonymousClass065(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
        this.A02 = j;
        this.A05 = j2;
        this.A03 = j3;
        this.A06 = j4;
        this.A01 = j5;
        this.A04 = j6;
        this.A00 = j7;
    }
}
