package X;

/* renamed from: X.01T  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C01T extends C01S {
    public static final void A01(int i, int i2) {
        if (0 <= i2) {
            if (i2 <= i) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("toIndex (");
            sb.append(i2);
            sb.append(") is greater than size (");
            sb.append(i);
            sb.append(").");
            throw new IndexOutOfBoundsException(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("fromIndex (");
        sb2.append(0);
        sb2.append(") is greater than toIndex (");
        sb2.append(i2);
        sb2.append(").");
        throw new IllegalArgumentException(sb2.toString());
    }

    public static final void A00() {
        throw new ArithmeticException("Index overflow has happened.");
    }
}
