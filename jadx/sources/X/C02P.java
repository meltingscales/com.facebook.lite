package X;

import java.util.List;
import java.util.Properties;

/* renamed from: X.02P  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C02P implements C02N {
    public final C02N A00;

    public abstract boolean A00(C02U c02u);

    @Override // X.C02N
    public final boolean ACL(C02U c02u) {
        while (this.A00.ACL(c02u)) {
            if (A00(c02u)) {
                return true;
            }
        }
        return false;
    }

    @Override // X.C02N
    public final void A29(Properties properties) {
        this.A00.A29(properties);
    }

    @Override // X.C02N
    public final String[] ADT(List list) {
        String str;
        String[] ADT = this.A00.ADT(list);
        C02U c02u = new C02U();
        for (int i = 0; i < ADT.length; i++) {
            c02u.A00 = (String) list.get(i);
            c02u.A01 = ADT[i];
            if (!A00(c02u)) {
                str = null;
            } else {
                str = c02u.A01;
            }
            ADT[i] = str;
        }
        reset();
        return ADT;
    }

    @Override // X.C02N
    public final void reset() {
        this.A00.reset();
    }

    public C02P(C02N c02n) {
        this.A00 = c02n;
    }
}
