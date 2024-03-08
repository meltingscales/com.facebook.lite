package X;

import android.app.Application;
import android.net.Uri;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.X509Certificate;
import java.util.concurrent.Executor;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

/* renamed from: X.03k  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C008203k extends C05K {
    public final /* synthetic */ C08K A00;

    public C008203k(C08K c08k) {
        this.A00 = c08k;
    }

    @Override // X.C05K
    public final /* bridge */ /* synthetic */ Object A00() {
        C04s.A01("ReportSender");
        try {
            final C08K c08k = this.A00;
            Application application = c08k.A0F;
            C0BP c0bp = c08k.A0R;
            C0BP c0bp2 = c08k.A0L;
            C0BP c0bp3 = c08k.A0K;
            C0BP c0bp4 = c08k.A0Q;
            C0BP c0bp5 = c08k.A04;
            if (c0bp5 == null) {
                c0bp5 = new C05K() { // from class: X.03l
                    @Override // X.C05K
                    public final /* bridge */ /* synthetic */ Object A00() {
                        InterfaceC009303v c009403w;
                        final C08K c08k2 = C08K.this;
                        C0BP c0bp6 = c08k2.A09;
                        if (c0bp6 == null) {
                            c0bp6 = new C05K() { // from class: X.03p
                                @Override // X.C05K
                                public final /* bridge */ /* synthetic */ Object A00() {
                                    return new Object() { // from class: X.03q
                                    };
                                }
                            };
                            c08k2.A09 = c0bp6;
                        }
                        C008803q c008803q = (C008803q) c0bp6.get();
                        String str = AbstractC005402f.A00;
                        Uri A01 = AbstractC008903r.A01(C08K.A0V);
                        if (str != null) {
                            A01 = A01.buildUpon().authority(AbstractC005402f.A00).build();
                            c009403w = new InterfaceC009303v() { // from class: X.06U
                                @Override // X.InterfaceC009303v
                                public final HttpURLConnection A8u(URL url) {
                                    HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                                    if (httpURLConnection instanceof HttpsURLConnection) {
                                        try {
                                            SSLContext sSLContext = SSLContext.getInstance("TLS");
                                            sSLContext.init(null, new TrustManager[]{new X509TrustManager() { // from class: X.05c
                                                @Override // javax.net.ssl.X509TrustManager
                                                public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str2) {
                                                }

                                                @Override // javax.net.ssl.X509TrustManager
                                                public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str2) {
                                                }

                                                @Override // javax.net.ssl.X509TrustManager
                                                public final X509Certificate[] getAcceptedIssuers() {
                                                    return null;
                                                }
                                            }}, null);
                                            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
                                            httpsURLConnection.setSSLSocketFactory(sSLContext.getSocketFactory());
                                            httpsURLConnection.setHostnameVerifier(new HostnameVerifier() { // from class: X.05d
                                                @Override // javax.net.ssl.HostnameVerifier
                                                public final boolean verify(String str2, SSLSession sSLSession) {
                                                    return true;
                                                }
                                            });
                                        } catch (KeyManagementException | NoSuchAlgorithmException unused) {
                                        }
                                    }
                                    httpURLConnection.setConnectTimeout(30000);
                                    httpURLConnection.setReadTimeout(30000);
                                    return httpURLConnection;
                                }
                            };
                        } else {
                            c009403w = new C009403w();
                        }
                        return new C009503x(A01, c009403w, c008803q);
                    }
                };
                c08k.A04 = c0bp5;
            }
            C0BP c0bp6 = c08k.A08;
            if (c0bp6 == null) {
                c0bp6 = new C0BR(c08k, 5);
                c08k.A08 = c0bp6;
            }
            C0BP c0bp7 = c08k.A03;
            if (c0bp7 == null) {
                c0bp7 = new C05X(c08k);
                c08k.A03 = c0bp7;
            }
            C016907q c016907q = (C016907q) c0bp7.get();
            C0BP c0bp8 = c08k.A0A;
            if (c0bp8 == null) {
                c0bp8 = new C05K() { // from class: X.03m
                    @Override // X.C05K
                    public final /* bridge */ /* synthetic */ Object A00() {
                        return C017307u.A00();
                    }
                };
                c08k.A0A = c0bp8;
            }
            return new AnonymousClass090(application, c016907q, new Runnable() { // from class: X.03n
                public static final String __redex_internal_original_name = "LacrimaConfig$7$$ExternalSyntheticLambda0";

                @Override // java.lang.Runnable
                public final void run() {
                    C015006s.A07("lacrima", "Deleting report, reached max attempt count");
                }
            }, (Executor) c0bp8.get(), c0bp, c0bp2, c0bp3, c0bp4, c0bp5, c0bp6);
        } finally {
            C04s.A00();
        }
    }
}
