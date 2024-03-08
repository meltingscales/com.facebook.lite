package X;

import java.net.Socket;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.X509ExtendedTrustManager;

/* renamed from: X.02Y  reason: invalid class name */
/* loaded from: classes.dex */
public final class C02Y extends X509ExtendedTrustManager implements C02X {
    public final C04P A00;

    public C02Y() {
        C02Z c02z;
        synchronized (C02Z.class) {
            c02z = C02Z.A02;
            if (c02z == null) {
                c02z = new C02Z();
                C02Z.A02 = c02z;
            }
        }
        this.A00 = new C04P(c02z, 0L);
    }

    @Override // X.C02W
    public final void A3h(String str, String str2, X509Certificate[] x509CertificateArr) {
        this.A00.A3h("ECDHE_ECDSA", str2, x509CertificateArr);
    }

    @Override // X.C02X
    public final void A3i(String str, String str2, X509Certificate[] x509CertificateArr, boolean z) {
        this.A00.A3i("ECDHE_ECDSA", str2, x509CertificateArr, z);
    }

    @Override // javax.net.ssl.X509TrustManager
    public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        throw new CertificateException("Client certificates not supported!");
    }

    @Override // javax.net.ssl.X509TrustManager
    public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        this.A00.checkServerTrusted(x509CertificateArr, str);
    }

    @Override // javax.net.ssl.X509TrustManager
    public final X509Certificate[] getAcceptedIssuers() {
        return this.A00.getAcceptedIssuers();
    }

    @Override // javax.net.ssl.X509ExtendedTrustManager
    public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str, Socket socket) {
        throw new CertificateException("Client certificates not supported!");
    }

    @Override // javax.net.ssl.X509ExtendedTrustManager
    public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str, Socket socket) {
        C04P c04p = this.A00;
        ((X509ExtendedTrustManager) c04p.A02).checkServerTrusted(x509CertificateArr, str, socket);
        c04p.A01(x509CertificateArr);
    }

    @Override // javax.net.ssl.X509ExtendedTrustManager
    public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str, SSLEngine sSLEngine) {
        throw new CertificateException("Client certificates not supported!");
    }

    @Override // javax.net.ssl.X509ExtendedTrustManager
    public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str, SSLEngine sSLEngine) {
        C04P c04p = this.A00;
        ((X509ExtendedTrustManager) c04p.A02).checkServerTrusted(x509CertificateArr, str, sSLEngine);
        c04p.A01(x509CertificateArr);
    }
}
