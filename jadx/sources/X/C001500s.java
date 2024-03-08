package X;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

/* renamed from: X.00s  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C001500s extends C001400r {
    public boolean A01 = false;
    public C002901g A00 = null;

    @Override // X.C001400r
    public final /* bridge */ /* synthetic */ C001400r A05(Intent intent, ClassLoader classLoader) {
        super.A05(intent, null);
        return this;
    }

    public final void A07() {
        super.A01 |= 1;
    }

    @Override // X.C001400r
    public final Intent A04(Context context) {
        String str;
        Intent A04 = super.A04(context);
        if (this.A01) {
            boolean z = false;
            if ((4 & super.A01) == 0 && (str = A04.getPackage()) != null) {
                if (str.equals(context.getPackageName())) {
                    z = true;
                } else if (this.A00 != null) {
                    try {
                        z = this.A00.A04(C02J.A03(AnonymousClass023.A01(context, str), false), AnonymousClass023.A03(context));
                    } catch (Exception e) {
                        AnonymousClass005 anonymousClass005 = this.A07;
                        if (anonymousClass005 != null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append("Exception checking identity of package=");
                            sb.append(str);
                            sb.append(": ");
                            sb.append(e.toString());
                            anonymousClass005.AXW(sb.toString());
                        }
                    }
                }
            }
            if (z) {
                AnonymousClass005 anonymousClass0052 = this.A07;
                if (anonymousClass0052 != null) {
                    AnonymousClass022.A01(context, A04, anonymousClass0052, null);
                } else {
                    try {
                        AnonymousClass022.A02(context, A04, null);
                        return A04;
                    } catch (C001600t unused) {
                    }
                }
            }
        }
        return A04;
    }

    @Override // X.C001400r
    public final /* bridge */ /* synthetic */ C001400r A06(Bundle bundle, ClassLoader classLoader) {
        super.A06(bundle, classLoader);
        return this;
    }

    public final void A08(Intent intent, ClassLoader classLoader) {
        super.A05(intent, classLoader);
    }
}
