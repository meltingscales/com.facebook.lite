package X;

import android.content.Context;

/* renamed from: X.09Q  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C09Q {
    public static C020709i A00(C02420Au c02420Au) {
        String string;
        int i;
        Context context = c02420Au.A00;
        String str = c02420Au.A01;
        int i2 = context.getSharedPreferences(str, 0).getInt("early_connection_default_timeout_mills", 0);
        if (i2 == 0 || i2 < 0 || (string = context.getSharedPreferences(str, 0).getString("early_socket_connection_host", null)) == null || (i = context.getSharedPreferences(str, 0).getInt("early_socket_connection_port", -1)) == -1) {
            return null;
        }
        return new C020709i(new C020809j(string, i), i2);
    }
}
