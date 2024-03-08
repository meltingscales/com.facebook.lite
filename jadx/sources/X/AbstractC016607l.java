package X;

import java.util.HashMap;
import java.util.Map;

/* renamed from: X.07l  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC016607l {
    public static void A00(String str, String str2, String str3, String str4, Throwable th, Map map) {
        HashMap A0F = AnonymousClass000.A0F();
        A0F.putAll(map);
        C016507k.A03(str, str2, str3, str4, A0F);
        C016507k.A02(C07M.A4A, "j", A0F);
        if (th != null) {
            C016507k.A02(C07M.A5x, C07F.A01(th), A0F);
        }
        C016507k.A00().A06("android_critical_java", A0F);
        C016507k.A05(A0F);
        C016507k.A00().A06("android_large_java", A0F);
    }
}
