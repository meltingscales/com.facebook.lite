package X;

import android.os.Build;
import javax.net.ssl.X509TrustManager;

/* renamed from: X.02V  reason: invalid class name */
/* loaded from: classes.dex */
public class C02V {
    public final X509TrustManager[] A00;

    public C02V(long j) {
        X509TrustManager c04o;
        X509TrustManager[] x509TrustManagerArr = new X509TrustManager[1];
        this.A00 = x509TrustManagerArr;
        if (Build.VERSION.SDK_INT >= 17) {
            c04o = new C04P(j);
        } else {
            c04o = new C04O(j);
        }
        x509TrustManagerArr[0] = c04o;
    }

    public C02V() {
        X509TrustManager c04o;
        X509TrustManager[] x509TrustManagerArr = new X509TrustManager[1];
        this.A00 = x509TrustManagerArr;
        if (Build.VERSION.SDK_INT >= 24) {
            c04o = new C02Y();
        } else {
            c04o = new C04O(0L);
        }
        x509TrustManagerArr[0] = c04o;
    }
}
