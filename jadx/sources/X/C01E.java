package X;

/* renamed from: X.01E  reason: invalid class name */
/* loaded from: classes.dex */
public final class C01E extends C01D {
    public static final C01E A00 = new C01E(1, 0);

    public final boolean equals(Object obj) {
        if (obj instanceof C01E) {
            int i = this.A00;
            int i2 = this.A01;
            if (i > i2) {
                C01D c01d = (C01D) obj;
                if (c01d.A00 > c01d.A01) {
                    return true;
                }
            }
            C01D c01d2 = (C01D) obj;
            if (i == c01d2.A00 && i2 == c01d2.A01) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.A00;
        int i2 = this.A01;
        if (i > i2) {
            return -1;
        }
        return (i * 31) + i2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.A00);
        sb.append("..");
        sb.append(this.A01);
        return sb.toString();
    }

    public C01E(int i, int i2) {
        super(i, i2);
    }
}
