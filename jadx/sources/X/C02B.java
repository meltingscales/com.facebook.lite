package X;

/* renamed from: X.02B  reason: invalid class name */
/* loaded from: classes.dex */
public final class C02B {
    public final String A00;
    public final boolean A01;

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("[Success State: ");
        if (this.A01) {
            str = "Succeeded";
        } else {
            str = "Failed";
        }
        sb.append(str);
        sb.append(" Err Msg If Present: ");
        String str2 = this.A00;
        if (str2 == null) {
            str2 = "<none>";
        }
        sb.append(str2);
        sb.append("]");
        return sb.toString();
    }

    public C02B(boolean z, String str) {
        this.A01 = z;
        this.A00 = str;
    }
}
