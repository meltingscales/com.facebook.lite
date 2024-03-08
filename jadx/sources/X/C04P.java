package X;

import android.net.http.X509TrustManagerExtensions;
import java.security.cert.X509Certificate;
import java.util.List;

/* renamed from: X.04P  reason: invalid class name */
/* loaded from: classes.dex */
public final class C04P extends C04O implements C02X {
    public final X509TrustManagerExtensions A00;

    public C04P(long j) {
        this(null, j);
    }

    @Override // X.C02W
    public final void A3h(String str, String str2, X509Certificate[] x509CertificateArr) {
        A00(this.A00.checkServerTrusted(x509CertificateArr, "ECDHE_ECDSA", str2));
    }

    @Override // X.C02X
    public final void A3i(String str, String str2, X509Certificate[] x509CertificateArr, boolean z) {
        List<X509Certificate> checkServerTrusted = this.A00.checkServerTrusted(x509CertificateArr, "ECDHE_ECDSA", str2);
        if (z) {
            A00(checkServerTrusted);
        }
    }

    public C04P(C02Z c02z, long j) {
        super(c02z, j);
        this.A00 = new X509TrustManagerExtensions(this.A02);
    }
}
