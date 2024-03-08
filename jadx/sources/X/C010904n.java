package X;

/* renamed from: X.04n  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C010904n {
    public final int A00;
    public final InterfaceC003201j A01;

    public final void A00(Integer num, String str, int i) {
        String str2;
        if (this.A00 != 0 && str != null && !str.startsWith("com.facebook.lite")) {
            for (Object obj : C02K.A04) {
                if (str.equals(obj)) {
                    return;
                }
            }
            for (String str3 : C02K.A03) {
                if (str.startsWith(str3)) {
                    return;
                }
            }
            InterfaceC003201j interfaceC003201j = this.A01;
            if (num.intValue() != 0) {
                str2 = "QUERY";
            } else {
                str2 = "ACQUIRE_CONTENT_PROVIDER_CLIENT";
            }
            StringBuilder sb = new StringBuilder();
            sb.append("xapp comm to ");
            sb.append(str);
            interfaceC003201j.AXk(str2, str, sb.toString(), i);
        }
    }

    public C010904n(InterfaceC003201j interfaceC003201j, int i) {
        this.A01 = interfaceC003201j;
        this.A00 = i;
    }
}
