package X;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.Enumeration;
import java.util.HashMap;

/* renamed from: X.02Z  reason: invalid class name */
/* loaded from: classes.dex */
public final class C02Z {
    public static C02Z A02;
    public final KeyStore A00;
    public final HashMap A01;

    public C02Z() {
        try {
            KeyStore keyStore = KeyStore.getInstance("AndroidCAStore");
            keyStore.load(null, null);
            try {
                HashMap hashMap = new HashMap();
                Enumeration<String> aliases = keyStore.aliases();
                while (aliases.hasMoreElements()) {
                    X509Certificate x509Certificate = (X509Certificate) keyStore.getCertificate(aliases.nextElement());
                    if (x509Certificate != null) {
                        hashMap.put(x509Certificate.getSubjectX500Principal(), x509Certificate);
                    }
                }
                this.A01 = hashMap;
                this.A00 = keyStore;
            } catch (KeyStoreException e) {
                throw new AssertionError(e);
            }
        } catch (FileNotFoundException e2) {
            throw new AssertionError(e2);
        } catch (IOException e3) {
            throw new AssertionError(e3);
        } catch (KeyStoreException e4) {
            throw new AssertionError(e4);
        } catch (NoSuchAlgorithmException e5) {
            throw new AssertionError(e5);
        } catch (CertificateException e6) {
            throw new AssertionError(e6);
        }
    }
}
