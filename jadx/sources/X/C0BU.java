package X;

import android.app.Application;
import android.os.Build;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

/* renamed from: X.0BU  reason: invalid class name */
/* loaded from: classes.dex */
public class C0BU implements C08D {
    public Object A00;
    public final int A01;

    public C0BU(Object obj, int i) {
        this.A01 = i;
        this.A00 = obj;
    }

    @Override // X.C08D
    public final /* bridge */ /* synthetic */ Object A4O(final C08K c08k) {
        switch (this.A01) {
            case 0:
                throw AnonymousClass000.A07("Missing ConfigFactory<Detector> implementation");
            case 1:
                final C09B c09b = c08k.A01;
                final C07R A00 = AbstractC005602h.A00(c08k, c09b);
                final C0BP c0bp = (C0BP) this.A00;
                return new InterfaceC019008p(A00, c09b, c0bp) { // from class: X.01k
                    public final C07R A00;
                    public final C09B A01;
                    public final C0BP A02;

                    /* JADX WARN: Code restructure failed: missing block: B:40:0x011e, code lost:
                        if (r0 != false) goto L49;
                     */
                    /* JADX WARN: Removed duplicated region for block: B:35:0x00fb  */
                    /* JADX WARN: Removed duplicated region for block: B:53:? A[RETURN, SYNTHETIC] */
                    @Override // X.InterfaceC019008p
                    /*
                        Code decompiled incorrectly, please refer to instructions dump.
                        To view partially-correct code enable 'Show inconsistent code' option in preferences
                    */
                    public final void start() {
                        /*
                            Method dump skipped, instructions count: 296
                            To view this dump change 'Code comments level' option to 'DEBUG'
                        */
                        throw new UnsupportedOperationException("Method not decompiled: X.C003301k.start():void");
                    }

                    public static Properties A00(File file) {
                        Properties properties = new Properties();
                        if (file != null) {
                            try {
                                FileInputStream fileInputStream = new FileInputStream(file);
                                properties.load(fileInputStream);
                                fileInputStream.close();
                                return properties;
                            } catch (IOException e) {
                                C015006s.A0B("lacrima", "Error while reading Anr report", e);
                                AbstractC019608w.A00();
                            }
                        }
                        return properties;
                    }

                    @Override // X.InterfaceC019008p
                    public final /* synthetic */ AnonymousClass034 ABM() {
                        return null;
                    }

                    @Override // X.InterfaceC019008p
                    public final EnumC019108q ACB() {
                        return EnumC019108q.A04;
                    }

                    {
                        this.A01 = c09b;
                        this.A00 = A00;
                        this.A02 = c0bp;
                    }
                };
            case 2:
                C09B c09b2 = c08k.A01;
                C0BP c0bp2 = c08k.A0R;
                C0BP c0bp3 = c08k.A0L;
                C0BP c0bp4 = c08k.A0K;
                return new C00O(new C03L(c08k, true), AbstractC005602h.A00(c08k, c09b2), new C00N((Application) this.A00), c09b2, (String) c08k.A0N.get(), c0bp2, c0bp3, c0bp4);
            case 3:
                final Application application = (Application) this.A00;
                final C09B c09b3 = c08k.A01;
                AbstractC005602h.A02(c09b3, "Did you call earlyInit()?");
                C0BP c0bp5 = c08k.A0C;
                if (c0bp5 == null) {
                    c0bp5 = new C0BR(c08k, 0);
                    c08k.A0C = c0bp5;
                }
                final C014606n c014606n = (C014606n) c0bp5.get();
                return new AbstractC006202n(application, c014606n, c09b3) { // from class: X.02o
                };
            default:
                final C015506z c015506z = (C015506z) this.A00;
                return new C07P(c015506z) { // from class: X.03P
                    public final int A00;
                    public final C015506z A01;

                    @Override // X.C07P
                    public final Integer ACC() {
                        return AnonymousClass050.A0q;
                    }

                    @Override // X.C07P
                    public final void AV8(C006902u c006902u, EnumC006102m enumC006102m) {
                        int i;
                        C015406y A002;
                        if (Build.VERSION.SDK_INT >= 30 && (i = this.A00) != 0 && (A002 = this.A01.A00(i)) != null) {
                            c006902u.A02(C07M.A1R, A002.A03());
                            c006902u.A02(C07M.A1Q, A002.A02());
                            c006902u.A04(C07M.A5H, A002.A09());
                            c006902u.A02(C07M.A1T, A002.A04());
                            c006902u.A02(C07M.A1V, A002.A05());
                            c006902u.A03(C07M.A1W, Long.valueOf(A002.A08()));
                            c006902u.A04(C07M.A5J, C015406y.A01());
                            c006902u.A01(C07M.A0S, A002.A0B());
                            c006902u.A04(C07M.A5I, A002.A0A());
                            c006902u.A03(C07M.A1S, Long.valueOf(A002.A06()));
                            c006902u.A03(C07M.A1U, Long.valueOf(A002.A07()));
                        }
                    }

                    {
                        int i;
                        File A01;
                        C005502g c005502g = C005502g.A03;
                        if (c005502g != null) {
                            if (c005502g.A02) {
                                i = c005502g.A00;
                            } else {
                                synchronized (c005502g) {
                                    if (c005502g.A02) {
                                        i = c005502g.A00;
                                    } else {
                                        c005502g.A02 = true;
                                        C09B c09b4 = c005502g.A01;
                                        if (c09b4 != null && (A01 = c09b4.A01(c09b4.A08)) != null) {
                                            File file = new File(A01, "critical_suppl_startup_prop.txt");
                                            Properties properties = new Properties();
                                            try {
                                                BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                                                try {
                                                    properties.load(bufferedInputStream);
                                                    String property = properties.getProperty("pid");
                                                    i = property != null ? Integer.parseInt(property) : 0;
                                                    bufferedInputStream.close();
                                                } catch (Throwable th) {
                                                    try {
                                                        bufferedInputStream.close();
                                                    } catch (Throwable unused) {
                                                    }
                                                    throw th;
                                                }
                                            } catch (IOException | NumberFormatException e) {
                                                AbstractC019608w.A00();
                                                C015006s.A0B("lacrima", "Error getting previous process id", e);
                                            }
                                        }
                                        c005502g.A00 = i;
                                    }
                                }
                            }
                            this.A00 = i;
                            this.A01 = c015506z;
                            return;
                        }
                        throw new IllegalStateException("Did you call PreviousSessionHelper.init?");
                    }
                };
        }
    }
}
