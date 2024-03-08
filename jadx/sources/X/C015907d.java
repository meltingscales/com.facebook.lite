package X;

import com.facebook.systrace.Systrace;

/* renamed from: X.07d  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C015907d extends C04Z {
    public long A00;
    public C08m A01 = new C08m();
    public C010004c A02;
    public String A03;

    @Override // X.C04Z
    public final C04Z A00(Object obj, String str) {
        this.A01.A00(str, String.valueOf(obj));
        return this;
    }

    @Override // X.C04Z
    public final C04Z A01(String str, int i) {
        this.A01.A00(str, Integer.toString(i));
        return this;
    }

    @Override // X.C04Z
    public final void A02() {
        long j = this.A00;
        String str = this.A03;
        C08m c08m = this.A01;
        if (Systrace.A0G(j)) {
            Systrace.A0F(str, c08m.A01, c08m.A00, j);
        }
    }
}
