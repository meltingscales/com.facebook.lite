package X;

/* renamed from: X.02g  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C005502g {
    public static C005502g A03;
    public C09B A01;
    public int A00 = 0;
    public boolean A02 = false;

    public static synchronized void A00(C09B c09b) {
        synchronized (C005502g.class) {
            if (A03 == null) {
                A03 = new C005502g(c09b);
            }
        }
    }

    public C005502g(C09B c09b) {
        this.A01 = c09b;
    }
}
