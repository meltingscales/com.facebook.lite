package X;

import android.content.Context;
import android.os.StrictMode;

/* renamed from: X.08N  reason: invalid class name */
/* loaded from: classes.dex */
public final class C08N extends C0BC implements InterfaceC02400As, C0B4 {
    public final C0BC A00;

    @Override // X.C0BC
    public final int A04(StrictMode.ThreadPolicy threadPolicy, String str, int i) {
        return 0;
    }

    @Override // X.C0BC
    public final String A05() {
        return "NoLoadSoSourceWrapper";
    }

    @Override // X.C0BC
    public final void A07(int i) {
        this.A00.A07(i);
    }

    @Override // X.C0B4
    public final C0BC AWY(Context context) {
        C0BC c0bc = this.A00;
        if (c0bc instanceof C0B4) {
            return new C08N(((C0B4) c0bc).AWY(context));
        }
        return this;
    }

    @Override // X.InterfaceC02400As
    public final void AdP() {
        C0BC c0bc = this.A00;
        if (c0bc instanceof InterfaceC02400As) {
            ((InterfaceC02400As) c0bc).AdP();
        }
    }

    @Override // X.C0BC
    public final String toString() {
        StringBuilder sb = new StringBuilder("NoLoadSoSourceWrapper");
        sb.append("[");
        AnonymousClass000.A0K(this.A00, sb);
        return AnonymousClass000.A0A("]", sb);
    }

    public C08N(C0BC c0bc) {
        this.A00 = c0bc;
    }
}
