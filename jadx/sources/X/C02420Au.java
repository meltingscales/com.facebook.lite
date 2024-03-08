package X;

import android.content.Context;

/* renamed from: X.0Au  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C02420Au {
    public static C02420Au A02;
    public static boolean A03;
    public final Context A00;
    public final String A01;

    public final long A00() {
        return this.A00.getSharedPreferences(this.A01, 0).getLong("current_user_id", 0L);
    }

    public C02420Au(Context context, String str) {
        this.A00 = context;
        this.A01 = str;
    }
}
