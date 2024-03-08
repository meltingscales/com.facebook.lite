package X;

import java.io.Serializable;
import java.util.Arrays;

/* renamed from: X.01p  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C003801p implements Serializable {
    public String A00;
    public String A01;

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.A01});
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C003801p)) {
            return false;
        }
        return this.A01.equals(((C003801p) obj).A01);
    }

    public C003801p(String str) {
        if (str.length() == 43) {
            this.A01 = str;
            return;
        }
        throw new SecurityException("Invalid SHA256 key hash - should be 256-bit.");
    }

    public C003801p(String str, String str2) {
        this.A00 = str;
        if (str2.length() == 43) {
            this.A01 = str2;
            return;
        }
        throw new SecurityException("Invalid SHA256 key hash - should be 256-bit.");
    }
}
