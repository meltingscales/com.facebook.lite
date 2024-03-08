package X;

import android.app.Application;
import java.io.File;
import java.util.HashMap;
import java.util.concurrent.Callable;

/* renamed from: X.09U  reason: invalid class name */
/* loaded from: classes.dex */
public final class C09U {
    public static final Object A04 = new Object();
    public static volatile C09U A05;
    public Application A00;
    public String A01;
    public String A02;
    public boolean A03 = false;

    public C09U(Application application, File file, String str, String str2, final String str3) {
        String str4;
        try {
            this.A00 = application;
            this.A01 = str2;
            if (str3 != null) {
                str4 = str3;
            } else {
                str4 = "unknown";
            }
            this.A02 = str4;
            str = str == null ? "" : str;
            Callable callable = new Callable() { // from class: X.09S
                @Override // java.util.concurrent.Callable
                public final /* bridge */ /* synthetic */ Object call() {
                    String str5 = str3;
                    if (str5 == null) {
                        return "unknown";
                    }
                    return str5;
                }
            };
            Callable callable2 = new Callable() { // from class: X.09T
                @Override // java.util.concurrent.Callable
                public final /* bridge */ /* synthetic */ Object call() {
                    return AnonymousClass073.A00();
                }
            };
            C0BV c0bv = new C0BV(1, file, this);
            synchronized (C016507k.A0D) {
                C016507k.A07 = application;
                C016507k.A03 = str;
                C016507k.A09 = callable;
                C016507k.A0B = callable2;
                C016507k.A0A = c0bv;
                C016507k.A0C = false;
            }
            Thread.setDefaultUncaughtExceptionHandler(new C0BX(1, this, Thread.getDefaultUncaughtExceptionHandler()));
            C015006s.A07("EarlyExceptionHandler", "Early UncaughtException handler initialized");
        } catch (Exception e) {
            C015006s.A0C("EarlyExceptionHandler", "Failed to setup Early UncaughtException handler", e);
        }
    }

    public static void A00(Application application, File file, String str, String str2, String str3) {
        if (A05 == null) {
            synchronized (A04) {
                if (A05 == null) {
                    A05 = new C09U(application, file, str, str2, str3);
                }
            }
        }
    }

    public static void A01(String str, String str2, String str3, Throwable th) {
        try {
            HashMap A0F = AnonymousClass000.A0F();
            if (str2 != null) {
                A0F.put("app_id", str2);
            }
            if (th != null) {
                A0F.put("cause", C07F.A01(th));
            }
            A0F.put("free_internal_disk_space_bytes", Long.toString(C015707b.A00()));
            HashMap A0F2 = AnonymousClass000.A0F();
            A0F2.putAll(A0F);
            C016507k.A03(str3, null, null, null, A0F2);
            C016507k.A04("fallback_reporter", str, A0F2);
            C016507k.A05(A0F2);
            C016507k.A00().A06("android_large_soft_error", A0F2);
        } catch (Exception e) {
            C015006s.A0A("EarlyExceptionHandler", "Failed sending director soft error report", e);
        }
    }
}
