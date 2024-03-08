package X;

import java.util.List;

/* renamed from: X.04I  reason: invalid class name */
/* loaded from: classes.dex */
public final class C04I {
    public final C020709i A00;
    public final List A01;
    public final boolean A02;

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof C04I)) {
            return false;
        }
        C04I c04i = (C04I) obj;
        return this.A01.equals(c04i.A01) && this.A00.A01.A00(c04i.A00.A01);
    }

    public final int hashCode() {
        int hashCode = (159 + this.A01.hashCode()) * 53;
        C020809j c020809j = this.A00.A01;
        return ((hashCode + c020809j.A00) * 53) + c020809j.A02.hashCode();
    }

    public C04I(C020709i c020709i, List list, boolean z) {
        if (!list.isEmpty()) {
            this.A00 = c020709i;
            this.A01 = list;
            this.A02 = z;
            return;
        }
        throw new IllegalArgumentException();
    }
}
