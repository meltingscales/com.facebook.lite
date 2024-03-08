package X;

import com.facebook.breakpad.BreakpadManager;
import com.facebook.errorreporting.lacrima.detector.javacrash.JavaCrashDetector;
import java.util.HashMap;

/* renamed from: X.0Ba  reason: invalid class name */
/* loaded from: classes.dex */
public class C0Ba implements C08G {
    public final int A00;

    public C0Ba(int i) {
        this.A00 = i;
    }

    @Override // X.C08G
    public final Integer AG4() {
        switch (this.A00) {
            case 0:
                return AnonymousClass050.A0C;
            case 1:
                return AnonymousClass050.A00;
            default:
                return AnonymousClass050.A01;
        }
    }

    @Override // X.C08G
    public final void AH8(C08K c08k) {
        EnumC006102m enumC006102m;
        C07R c07r;
        C0AP A00;
        InterfaceC019008p A03;
        HashMap A0F;
        String str;
        switch (this.A00) {
            case 0:
                C04s.A01("NativeJvmStreamConfig.jvmStreamEnabled");
                try {
                    try {
                        BreakpadManager.setJvmStreamEnabled(true);
                    } catch (Exception | UnsatisfiedLinkError e) {
                        C015006s.A0B("lacrima", "Error enabling jvm stream", e);
                        AbstractC019608w.A00();
                    }
                    return;
                } finally {
                    C04s.A00();
                }
            case 1:
                synchronized (C013005o.class) {
                }
                C07R c07r2 = c08k.A00;
                AbstractC005602h.A02(c07r2, "Did you call earlyInit()?");
                C0AP A002 = C0AP.A00();
                enumC006102m = EnumC006102m.LARGE_REPORT;
                InterfaceC019008p A032 = c07r2.A03(JavaCrashDetector.class);
                if (A032 == null) {
                    HashMap A0F2 = AnonymousClass000.A0F();
                    A0F2.put("CollectorName", AbstractC007202x.A00(AnonymousClass050.A06));
                    A0F2.put("ReportCategory", enumC006102m.A00);
                    AbstractC019608w.A00();
                    C015006s.A07("lacrima", "Cannot find registered detector");
                } else {
                    c07r2.A04(A002, enumC006102m, A032);
                }
                c07r = c08k.A00;
                AbstractC005602h.A02(c07r, "Did you call earlyInit()?");
                A00 = C0AP.A00();
                A03 = c07r.A03(C007903h.class);
                if (A03 == null) {
                    A0F = AnonymousClass000.A0F();
                    A0F.put("CollectorName", AbstractC007202x.A00(AnonymousClass050.A06));
                    str = enumC006102m.A00;
                    A0F.put("ReportCategory", str);
                    AbstractC019608w.A00();
                    C015006s.A07("lacrima", "Cannot find registered detector");
                    return;
                }
                c07r.A04(A00, enumC006102m, A03);
                return;
            default:
                synchronized (C013005o.class) {
                }
                c07r = c08k.A00;
                AbstractC005602h.A02(c07r, "Did you call earlyInit()?");
                A00 = C0AP.A00();
                enumC006102m = EnumC006102m.LARGE_REPORT;
                A03 = c07r.A03(C003501m.class);
                if (A03 == null) {
                    A0F = AnonymousClass000.A0F();
                    A0F.put("CollectorName", AbstractC007202x.A00(AnonymousClass050.A06));
                    str = enumC006102m.A00;
                    A0F.put("ReportCategory", str);
                    AbstractC019608w.A00();
                    C015006s.A07("lacrima", "Cannot find registered detector");
                    return;
                }
                c07r.A04(A00, enumC006102m, A03);
                return;
        }
    }
}
