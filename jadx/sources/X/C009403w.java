package X;

import java.net.HttpURLConnection;
import java.net.URL;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;

/* renamed from: X.03w  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C009403w implements InterfaceC009303v {
    public C02V A00;

    @Override // X.InterfaceC009303v
    public final HttpURLConnection A8u(URL url) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        if (httpURLConnection instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
            C02V c02v = this.A00;
            if (c02v == null) {
                c02v = new C02V();
                this.A00 = c02v;
            }
            try {
                SSLContext sSLContext = SSLContext.getInstance("TLS");
                sSLContext.init(null, c02v.A00, null);
                httpsURLConnection.setSSLSocketFactory(sSLContext.getSocketFactory());
            } catch (KeyManagementException | NoSuchAlgorithmException e) {
                C015006s.A0B("lacrima", "Pinning failed", e);
                AbstractC019608w.A00();
            }
        }
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(30000);
        return httpURLConnection;
    }
}
