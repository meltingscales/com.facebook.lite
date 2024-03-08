package X;

import android.app.Application;
import java.util.List;

/* renamed from: X.08L  reason: invalid class name */
/* loaded from: classes.dex */
public final class C08L {
    public int A00;
    public C0BP A02;
    public C0BP A03;
    public C0BP A04;
    public C0BP A05;
    public C0BP A06;
    public C0BP A07;
    public C0BP A08;
    public C0BP A09;
    public boolean A0B;
    public final Application A0C;
    public boolean A0A = true;
    public int A01 = 0;
    public final List A0D = AnonymousClass000.A0E();
    public final List A0E = AnonymousClass000.A0E();
    public final List A0F = AnonymousClass000.A0E();
    public final List A0G = AnonymousClass000.A0E();

    public C08L(Application application) {
        this.A0C = application;
    }

    public final void A00(C08G c08g) {
        List list;
        int intValue = c08g.AG4().intValue();
        if (intValue != 0) {
            if (intValue != 1) {
                if (intValue != 2) {
                    if (intValue == 3) {
                        list = this.A0G;
                    } else {
                        return;
                    }
                } else {
                    list = this.A0F;
                }
            } else {
                list = this.A0E;
            }
        } else {
            list = this.A0D;
        }
        list.add(c08g);
    }
}
