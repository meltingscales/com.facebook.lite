package X;

import android.app.ActivityManager;
import android.os.Process;
import android.os.SystemClock;

/* renamed from: X.021  reason: invalid class name */
/* loaded from: classes.dex */
public final class AnonymousClass021 implements AnonymousClass020 {
    public int A00;
    public int A01;
    public int A02;
    public long A03;
    public long A04;
    public long A05;
    public long A06;
    public long A07;
    public long A08;
    public long A09;
    public long A0A;
    public long A0B;
    public ActivityManager.MemoryInfo A0C;
    public AnonymousClass065 A0D;
    public C002601d A0E;
    public C06L A0F;
    public String A0G;
    public boolean A0H;
    public boolean A0I;

    public final void A00() {
        this.A0I = false;
        this.A0H = false;
        this.A02 = -1;
        this.A00 = -1;
        this.A01 = -1;
        this.A0G = "not set";
        this.A07 = -1L;
        this.A0A = -1L;
        this.A09 = -1L;
        this.A08 = -1L;
        this.A0B = -1L;
        this.A03 = -1L;
        this.A04 = -1L;
        this.A05 = -1L;
        this.A0E = null;
        this.A0C = null;
        this.A0D = null;
        this.A0F = null;
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [X.06L] */
    @Override // X.AnonymousClass020
    public final void A7J(int i) {
        int myTid = Process.myTid();
        this.A02 = myTid;
        this.A00 = Process.getThreadPriority(myTid);
        this.A07 = Process.getElapsedCpuTime();
        this.A0A = SystemClock.currentThreadTimeMillis();
        this.A0I = true;
        this.A0H = false;
        long[] A00 = AnonymousClass066.A00("/proc/self/stat");
        this.A09 = A00[0];
        this.A08 = A00[2];
        this.A06 = A00[5];
        int myTid2 = Process.myTid();
        StringBuilder sb = new StringBuilder();
        sb.append("/proc/self/task/");
        sb.append(myTid2);
        sb.append("/stat");
        this.A0B = AnonymousClass066.A00(sb.toString())[2];
        AnonymousClass067 A002 = AnonymousClass068.A00();
        this.A03 = A002.A00;
        this.A04 = A002.A02;
        this.A05 = A002.A03;
        this.A0D = AnonymousClass065.A00();
        final int size = C0B9.A06.size();
        this.A0F = new Object(size) { // from class: X.06L
            public final int A00;

            {
                this.A00 = size;
            }

            public final String toString() {
                StringBuilder A0C = AnonymousClass000.A0C();
                A0C.append("LibStats{loadedLibs=");
                A0C.append(this.A00);
                A0C.append('}');
                return A0C.toString();
            }
        };
        this.A0I = true;
        this.A0H = false;
        this.A01 = -1;
        this.A0I = true;
        this.A0H = false;
    }

    public AnonymousClass021(AnonymousClass020 anonymousClass020) {
        A00();
        AnonymousClass021 anonymousClass021 = (AnonymousClass021) anonymousClass020;
        this.A02 = anonymousClass021.A02;
        this.A00 = anonymousClass021.A00;
        this.A07 = anonymousClass021.A07;
        this.A0A = anonymousClass021.A0A;
        this.A09 = anonymousClass021.A09;
        this.A08 = anonymousClass021.A08;
        this.A0B = anonymousClass021.A0B;
        this.A03 = anonymousClass021.A03;
        this.A04 = anonymousClass021.A04;
        this.A05 = anonymousClass021.A05;
        if (anonymousClass020 instanceof AnonymousClass021) {
            this.A0E = anonymousClass021.A0E;
            this.A0D = anonymousClass021.A0D;
            this.A0F = anonymousClass021.A0F;
        }
        this.A0G = anonymousClass021.A0G;
        this.A0C = anonymousClass021.A0C;
        this.A0I = true;
    }

    public AnonymousClass021() {
        A00();
    }
}
