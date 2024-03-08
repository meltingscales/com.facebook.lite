package X;

/* renamed from: X.09j  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C020809j {
    public final int A00;
    public final C00J A01;
    public final String A02;
    public final String A03;

    public final boolean A00(C020809j c020809j) {
        String str = this.A02;
        if (c020809j != null && str.equals(c020809j.A02) && this.A00 == c020809j.A00) {
            return true;
        }
        return false;
    }

    public C020809j(String str, int i) {
        String str2;
        String substring;
        String str3 = str;
        int indexOf = str.indexOf("@");
        this.A03 = indexOf != -1 ? str.substring(indexOf + 1) : str3;
        this.A00 = i;
        if (indexOf != -1 && indexOf != 0) {
            str2 = str.substring(0, indexOf);
        } else {
            str2 = null;
        }
        C00J c00j = null;
        if (str2 != null) {
            C00J[] values = C00J.values();
            int length = values.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    break;
                }
                C00J c00j2 = values[i2];
                if (c00j2.A00.equals(str2)) {
                    c00j = c00j2;
                    break;
                }
                i2++;
            }
        }
        this.A01 = c00j;
        this.A02 = str;
        if (c00j == null && indexOf != -1 && indexOf != 0 && (substring = str.substring(0, indexOf)) != null) {
            AnonymousClass012.A01("UnresolvedSocketAddress", "Unknown VIP: {}", substring);
        }
    }

    public final String toString() {
        StringBuilder A0C = AnonymousClass000.A0C();
        A0C.append(this.A02);
        A0C.append(":");
        A0C.append(this.A00);
        return A0C.toString();
    }

    public C020809j(C00J c00j, String str, int i) {
        String str2;
        int indexOf = str.indexOf("@");
        str = indexOf != -1 ? str.substring(indexOf + 1) : str;
        this.A03 = str;
        this.A00 = i;
        this.A01 = c00j;
        if (c00j != null) {
            str2 = c00j.A00;
        } else {
            str2 = null;
        }
        this.A02 = str2 != null ? AnonymousClass000.A09("@", str, AnonymousClass000.A0D(str2)) : str;
    }
}
