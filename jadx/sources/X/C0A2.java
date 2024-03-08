package X;

import android.content.Context;
import android.content.SharedPreferences;

/* renamed from: X.0A2  reason: invalid class name */
/* loaded from: classes.dex */
public final class C0A2 {
    public static final Object A00 = new Object();
    public static volatile SharedPreferences A01;
    public static volatile C0A2 A02;

    public static boolean A05(Context context, int i) {
        return A01(context).getBoolean(AnonymousClass000.A0B("primary_dex_feature_key_", AnonymousClass000.A0C(), i), false);
    }

    public static SharedPreferences A01(Context context) {
        if (A01 == null) {
            synchronized (A00) {
                if (A01 == null) {
                    A01 = context.getSharedPreferences("primary_dex_features", 0);
                }
            }
        }
        return A01;
    }

    public static void A02() {
        if (A02 == null) {
            synchronized (A00) {
                if (A02 == null) {
                    A02 = new C0A2();
                }
            }
        }
    }

    public static final int A00(Context context, int i, int i2) {
        return A01(context).getInt(AnonymousClass000.A0B("primary_dex_feature_key_", AnonymousClass000.A0C(), i), i2);
    }

    public static final void A03(Context context, int i, int i2) {
        A01(context).edit().putInt(AnonymousClass000.A0B("primary_dex_feature_key_", AnonymousClass000.A0C(), i), i2).apply();
    }

    public static final void A04(Context context, int i, boolean z) {
        A01(context).edit().putBoolean(AnonymousClass000.A0B("primary_dex_feature_key_", AnonymousClass000.A0C(), i), z).apply();
    }
}
