package X;

import android.util.Base64;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.net.ssl.X509TrustManager;

/* renamed from: X.04O  reason: invalid class name */
/* loaded from: classes.dex */
public class C04O implements X509TrustManager {
    public C02Z A00;
    public final Set A01;
    public final X509TrustManager A02;
    public final long A03;
    public final boolean A04;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public C04O(long r3) {
        /*
            r2 = this;
            java.lang.Class<X.02Z> r1 = X.C02Z.class
            monitor-enter(r1)
            X.02Z r0 = X.C02Z.A02     // Catch: java.lang.Throwable -> L13
            if (r0 != 0) goto Le
            X.02Z r0 = new X.02Z     // Catch: java.lang.Throwable -> L13
            r0.<init>()     // Catch: java.lang.Throwable -> L13
            X.C02Z.A02 = r0     // Catch: java.lang.Throwable -> L13
        Le:
            monitor-exit(r1)
            r2.<init>(r0, r3)
            return
        L13:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C04O.<init>(long):void");
    }

    public final void A00(List list) {
        if (this.A04 && System.currentTimeMillis() > this.A03) {
            return;
        }
        if (!list.isEmpty()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                try {
                    if (this.A01.contains(ByteBuffer.wrap(MessageDigest.getInstance("SHA-256").digest(((Certificate) it.next()).getPublicKey().getEncoded())))) {
                        return;
                    }
                } catch (NoSuchAlgorithmException e) {
                    throw new CertificateException(e);
                }
            }
            StringBuilder sb = new StringBuilder();
            sb.append("pinning error, trusted chain: ");
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                sb.append(Base64.encodeToString(((Certificate) it2.next()).getEncoded(), 0));
                sb.append("\n");
            }
            throw new CertificateException(sb.toString());
        }
        throw new CertificateException("pinning error: certificate chain empty");
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0027, code lost:
        if (r0.getPublicKey().equals(r2.getPublicKey()) == false) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A01(java.security.cert.X509Certificate[] r10) {
        /*
            r9 = this;
            X.02Z r1 = r9.A00
            if (r1 == 0) goto Lb2
            java.util.LinkedList r4 = new java.util.LinkedList
            r4.<init>()
            r0 = 0
            r2 = r10[r0]
            java.util.HashMap r5 = r1.A01
            javax.security.auth.x500.X500Principal r0 = r2.getSubjectX500Principal()
            java.lang.Object r0 = r5.get(r0)
            java.security.cert.Certificate r0 = (java.security.cert.Certificate) r0
            if (r0 == 0) goto L29
            java.security.PublicKey r1 = r0.getPublicKey()
            java.security.PublicKey r0 = r2.getPublicKey()
            boolean r0 = r1.equals(r0)
            r8 = 1
            if (r0 != 0) goto L2a
        L29:
            r8 = 0
        L2a:
            r4.add(r2)
            r7 = 1
            r6 = 1
        L2f:
            int r0 = r10.length
            if (r6 >= r0) goto L6e
            r3 = r10[r6]
            int r0 = r6 + (-1)
            r2 = r10[r0]
            javax.security.auth.x500.X500Principal r0 = r3.getSubjectX500Principal()
            java.lang.Object r0 = r5.get(r0)
            java.security.cert.Certificate r0 = (java.security.cert.Certificate) r0
            if (r0 == 0) goto L53
            java.security.PublicKey r1 = r0.getPublicKey()
            java.security.PublicKey r0 = r3.getPublicKey()
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L53
            r8 = 1
        L53:
            javax.security.auth.x500.X500Principal r1 = r3.getSubjectX500Principal()
            javax.security.auth.x500.X500Principal r0 = r2.getIssuerX500Principal()
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L6e
            java.security.PublicKey r0 = r3.getPublicKey()     // Catch: java.security.GeneralSecurityException -> L6e
            r2.verify(r0)     // Catch: java.security.GeneralSecurityException -> L6e
            r4.add(r3)
            int r6 = r6 + 1
            goto L2f
        L6e:
            int r6 = r6 - r7
            r3 = r10[r6]
            javax.security.auth.x500.X500Principal r0 = r3.getIssuerX500Principal()
            java.lang.Object r2 = r5.get(r0)
            java.security.cert.X509Certificate r2 = (java.security.cert.X509Certificate) r2
            if (r2 == 0) goto L93
            javax.security.auth.x500.X500Principal r1 = r2.getSubjectX500Principal()
            javax.security.auth.x500.X500Principal r0 = r3.getSubjectX500Principal()
            boolean r0 = r1.equals(r0)
            if (r0 != 0) goto L93
            java.security.PublicKey r0 = r2.getPublicKey()     // Catch: java.security.GeneralSecurityException -> L93
            r3.verify(r0)     // Catch: java.security.GeneralSecurityException -> L93
            goto L9d
        L93:
            if (r8 != 0) goto La0
            java.lang.String r1 = "Didn't find a trust anchor in chain cleanup!"
            java.security.cert.CertificateException r0 = new java.security.cert.CertificateException
            r0.<init>(r1)
            throw r0
        L9d:
            r4.add(r2)
        La0:
            int r0 = r4.size()
            java.security.cert.X509Certificate[] r0 = new java.security.cert.X509Certificate[r0]
            java.lang.Object[] r0 = r4.toArray(r0)
            java.util.List r0 = java.util.Arrays.asList(r0)
            r9.A00(r0)
            return
        Lb2:
            java.lang.String r1 = "SystemKeystore is not intialized."
            java.security.cert.CertificateException r0 = new java.security.cert.CertificateException
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C04O.A01(java.security.cert.X509Certificate[]):void");
    }

    @Override // javax.net.ssl.X509TrustManager
    public final void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
        throw new CertificateException("Client certificates not supported!");
    }

    @Override // javax.net.ssl.X509TrustManager
    public final void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
        this.A02.checkServerTrusted(x509CertificateArr, str);
        A01(x509CertificateArr);
    }

    @Override // javax.net.ssl.X509TrustManager
    public final X509Certificate[] getAcceptedIssuers() {
        return this.A02.getAcceptedIssuers();
    }

    public C04O(C02Z c02z, long j) {
        X509TrustManager A01;
        this.A01 = new HashSet();
        this.A00 = c02z;
        try {
            A01 = C04Q.A00();
        } catch (NullPointerException unused) {
            A01 = C04Q.A01();
        }
        this.A02 = A01;
        this.A04 = j > 0;
        this.A03 = j + 31536000000L;
        String[] strArr = C04R.A00;
        int i = 0;
        do {
            this.A01.add(ByteBuffer.wrap(Base64.decode(strArr[i], 0)));
            i++;
        } while (i < 18);
    }
}
