package X;

import java.util.Arrays;

/* renamed from: X.0Af  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C02270Af {
    public final String A00;
    public final String A01;

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C02270Af c02270Af = (C02270Af) obj;
            if (!this.A00.equals(c02270Af.A00) || !this.A01.equals(c02270Af.A01)) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.A00, this.A01});
    }

    public C02270Af(String str, String str2) {
        this.A00 = str;
        this.A01 = str2;
    }
}
