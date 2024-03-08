package X;

/* renamed from: X.00C  reason: invalid class name */
/* loaded from: classes.dex */
public enum C00C {
    YES,
    NO,
    UNSET;

    public final boolean A00() {
        int ordinal = ordinal();
        if (ordinal == 0) {
            return true;
        }
        if (ordinal == 1 || ordinal == 2) {
            return false;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Unrecognized TriState value: ");
        sb.append(this);
        throw new IllegalStateException(sb.toString());
    }
}
