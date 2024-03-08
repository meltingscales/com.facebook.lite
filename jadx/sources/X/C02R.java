package X;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.SystemClock;

/* renamed from: X.02R  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C02R {
    public static long A00;
    public static boolean A01;

    public static boolean A00(Context context) {
        boolean z;
        NetworkInfo activeNetworkInfo;
        if (SystemClock.uptimeMillis() - A00 < 5000) {
            return A01;
        }
        boolean z2 = false;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isAvailable()) {
                if (activeNetworkInfo.isConnected()) {
                    z2 = true;
                }
            }
            z = z2;
        } catch (Throwable th) {
            C015006s.A09("lacrima", "Connectivity check failed", th);
            AbstractC019608w.A00();
            z = false;
        }
        A01 = z2;
        A00 = SystemClock.uptimeMillis();
        return z;
    }
}
