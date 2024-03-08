package X;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

/* renamed from: X.09g  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C09g {
    public static volatile ConnectivityManager A00;
    public static volatile Object A01 = new Object();

    public static ConnectivityManager A00(Context context) {
        if (A00 == null) {
            synchronized (A01) {
                if (A00 == null) {
                    A00 = (ConnectivityManager) context.getSystemService("connectivity");
                }
            }
        }
        return A00;
    }

    public static AnonymousClass099 A01(Context context) {
        NetworkInfo activeNetworkInfo = A00(context).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return null;
        }
        return new AnonymousClass099(activeNetworkInfo);
    }
}
