package X;

import android.content.Context;
import java.util.Arrays;

/* renamed from: X.0Ac  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C02240Ac {
    public final AnonymousClass005 A00;
    public final InterfaceC02280Ag A01;

    public final void A00(Context context, C02J c02j, String str) {
        int i = c02j.A00;
        String[] A05 = AnonymousClass023.A05(context, i);
        for (String str2 : A05) {
            try {
                this.A01.A2s(context, str2, str);
                return;
            } catch (C02310Aj unused) {
            }
        }
        StringBuilder A0C = AnonymousClass000.A0C();
        A0C.append("FBPermission '");
        A0C.append(str);
        A0C.append("' was not granted to UID '");
        A0C.append(i);
        A0C.append("' (packages: '");
        A0C.append(Arrays.toString(A05));
        throw new C02310Aj(AnonymousClass000.A0A("')", A0C));
    }

    public C02240Ac(AnonymousClass005 anonymousClass005, InterfaceC02280Ag interfaceC02280Ag) {
        this.A01 = interfaceC02280Ag;
        this.A00 = anonymousClass005;
    }
}
