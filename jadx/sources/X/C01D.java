package X;

/* renamed from: X.01D  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C01D implements Iterable, AnonymousClass018 {
    public final int A00;
    public final int A01;
    public final int A02;

    public C01D(int i, int i2) {
        this.A00 = i;
        if (i < i2) {
            int i3 = i2 % 1;
            int i4 = i % 1;
            int i5 = ((i3 < 0 ? i3 + 1 : i3) - (i4 < 0 ? i4 + 1 : i4)) % 1;
            i2 -= i5 < 0 ? i5 + 1 : i5;
        }
        this.A01 = i2;
        this.A02 = 1;
    }

    @Override // java.lang.Iterable
    /* renamed from: A00 */
    public final C01L iterator() {
        return new C01L(this.A00, this.A01);
    }
}
