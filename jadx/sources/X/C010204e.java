package X;

import java.lang.reflect.Method;

/* renamed from: X.04e  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C010204e {
    public static C010204e A04;
    public Class A00;
    public Method A01;
    public Method A02;
    public boolean A03;

    public C010204e() {
        Class<?> cls;
        try {
            try {
                cls = Class.forName("com.android.org.conscrypt.OpenSSLSocketImpl");
                this.A00 = cls;
            } catch (ClassNotFoundException unused) {
                cls = Class.forName("org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl");
                this.A00 = cls;
            }
            this.A02 = cls.getMethod("setUseSessionTickets", Boolean.TYPE);
            this.A01 = this.A00.getMethod("setHostname", String.class);
            this.A03 = true;
        } catch (ClassNotFoundException | NoSuchMethodException unused2) {
        }
    }
}
