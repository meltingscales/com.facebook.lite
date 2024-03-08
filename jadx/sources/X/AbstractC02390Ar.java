package X;

import android.os.Trace;

/* renamed from: X.0Ar  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC02390Ar {
    public static void A01(String str, String str2, String str3) {
        String A09 = AnonymousClass000.A09(str2, str3, AnonymousClass000.A0D(str));
        if (A09.length() > 127 && str2 != null) {
            A09 = AnonymousClass000.A09(str2.substring(0, (127 - str.length()) - str3.length()), str3, AnonymousClass000.A0D(str));
        }
        Trace.beginSection(A09);
    }

    public static void A00() {
        Trace.endSection();
    }
}
