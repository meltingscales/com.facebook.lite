package X;

/* renamed from: X.03V  reason: invalid class name */
/* loaded from: classes.dex */
public final class C03V implements Comparable {
    public final C03T A00;
    public final int A01;

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        int i = this.A01;
        int i2 = ((C03V) obj).A01;
        if (i == i2) {
            return 0;
        }
        if (i <= i2) {
            return -1;
        }
        return 1;
    }

    public C03V(C03T c03t, int i) {
        this.A00 = c03t;
        this.A01 = i;
    }
}
