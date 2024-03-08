package X;

import android.app.Application;
import java.util.HashMap;
import java.util.List;

/* renamed from: X.08K  reason: invalid class name */
/* loaded from: classes.dex */
public final class C08K {
    public static C08K A0U;
    public static final String A0V = AnonymousClass098.A00("mobile", "reliability_event_log_upload").toString();
    public C07R A00;
    public C09B A01;
    public C0BP A02;
    public C0BP A03;
    public C0BP A06;
    public C0BP A07;
    public C0BP A08;
    public C0BP A0D;
    public final int A0E;
    public final Application A0F;
    public final List A0G;
    public final List A0H;
    public final List A0I;
    public final List A0J;
    public final C0BP A0K;
    public final C0BP A0L;
    public final C0BP A0M;
    public final C0BP A0N;
    public final C0BP A0O;
    public final C0BP A0P;
    public final C0BP A0Q;
    public final C0BP A0R;
    public final boolean A0S;
    public final boolean A0T;
    public C0BP A0C = null;
    public C0BP A0B = null;
    public C0BP A04 = null;
    public C0BP A09 = null;
    public C0BP A0A = null;
    public C0BP A05 = null;

    public static void A00(C08K c08k, String str, Throwable th) {
        C04s.A01("maybeReportSoftError");
        try {
            if (Math.random() < 0.001d) {
                HashMap A0F = AnonymousClass000.A0F();
                C016507k.A02(C07M.A4h, C07F.A01(th), A0F);
                C016507k.A03((String) c08k.A0R.get(), (String) c08k.A0L.get(), (String) c08k.A0K.get(), (String) c08k.A0Q.get(), A0F);
                C016507k.A04("lacrima", str, A0F);
                C016507k.A00().A06("android_large_soft_error", A0F);
            }
        } finally {
            C04s.A00();
        }
    }

    public C08K(Application application, List list, List list2, List list3, List list4, C0BP c0bp, C0BP c0bp2, C0BP c0bp3, C0BP c0bp4, C0BP c0bp5, C0BP c0bp6, C0BP c0bp7, C0BP c0bp8, int i, boolean z, boolean z2) {
        this.A0F = application;
        this.A0M = c0bp2;
        this.A0R = c0bp3;
        this.A0L = c0bp4;
        this.A0K = c0bp5;
        this.A0O = c0bp6;
        this.A0G = list;
        this.A0H = list2;
        this.A0I = list3;
        this.A0J = list4;
        this.A0Q = c0bp7;
        this.A0N = c0bp8;
        this.A0P = c0bp;
        this.A0S = z;
        this.A0E = i;
        this.A0T = z2;
        A0U = this;
        AbstractC019608w.A00();
        c0bp.get();
    }
}
