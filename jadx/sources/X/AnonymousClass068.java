package X;

/* renamed from: X.068  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class AnonymousClass068 {
    public static final String[] A00;

    static {
        A00 = r2;
        String[] strArr = {"pgpgin", "pgpgout", "pgmajfault", "allocstall", "allocstall_high", "allocstall_dma", "allocstall_dma32", "allocstall_normal", "allocstall_movable", "pgsteal_kswapd_normal", "pgsteal_kswapd_high", "pgsteal_kswapd_movable", "pgsteal_direct_normal", "pgsteal_direct_high", "pgsteal_direct_movable"};
    }

    public static final AnonymousClass067 A00() {
        long[] jArr = new long[15];
        C06k.A00.AWR("/proc/vmstat", jArr, A00);
        AnonymousClass067 anonymousClass067 = new AnonymousClass067();
        long j = jArr[0];
        anonymousClass067.A02 = j;
        long j2 = jArr[1];
        anonymousClass067.A03 = j2;
        long j3 = jArr[2];
        long j4 = anonymousClass067.A00 + jArr[3];
        anonymousClass067.A00 = j4;
        long j5 = j4 + jArr[4];
        anonymousClass067.A00 = j5;
        long j6 = j5 + jArr[5];
        anonymousClass067.A00 = j6;
        long j7 = j6 + jArr[6];
        anonymousClass067.A00 = j7;
        long j8 = j7 + jArr[7];
        anonymousClass067.A00 = j8;
        long j9 = j8 + jArr[8];
        anonymousClass067.A00 = j9;
        long j10 = anonymousClass067.A01 + jArr[9];
        anonymousClass067.A01 = j10;
        long j11 = j10 + jArr[10];
        anonymousClass067.A01 = j11;
        long j12 = j11 + jArr[11];
        anonymousClass067.A01 = j12;
        long j13 = j12 + jArr[12];
        anonymousClass067.A01 = j13;
        long j14 = j13 + jArr[13];
        anonymousClass067.A01 = j14;
        long j15 = j14 + jArr[14];
        anonymousClass067.A01 = j15;
        if (j == 0 && j2 == 0 && j3 == 0 && j9 == 0 && j15 == 0) {
            return new AnonymousClass067(-1);
        }
        return anonymousClass067;
    }
}
