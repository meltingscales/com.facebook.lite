package X;

/* renamed from: X.06f  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C014306f {
    public static final C014306f A01 = new C014306f("");
    public final String A00;

    public final boolean equals(Object obj) {
        return this == obj || (obj != null && getClass() == obj.getClass() && this.A00.equals(((C014306f) obj).A00));
    }

    public final int hashCode() {
        return this.A00.hashCode();
    }

    public final String toString() {
        return this.A00;
    }

    public C014306f(String str) {
        if (!str.contains(":")) {
            this.A00 = str;
            return;
        }
        throw AnonymousClass000.A06("Invalid name");
    }
}
