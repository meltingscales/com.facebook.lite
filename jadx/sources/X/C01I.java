package X;

import java.io.Serializable;

/* renamed from: X.01I  reason: invalid class name */
/* loaded from: classes.dex */
public final class C01I implements Serializable {
    public final Object A00;
    public final Object A01;

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof C01I) {
                C01I c01i = (C01I) obj;
                if (!C08H.A09(this.A00, c01i.A00) || !C08H.A09(this.A01, c01i.A01)) {
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        Object obj = this.A00;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.A01;
        return hashCode + (obj2 != null ? obj2.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('(');
        sb.append(this.A00);
        sb.append(", ");
        sb.append(this.A01);
        sb.append(')');
        return sb.toString();
    }

    public C01I(Object obj, Object obj2) {
        this.A00 = obj;
        this.A01 = obj2;
    }
}
