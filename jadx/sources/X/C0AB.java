package X;

import android.app.Application;

/* renamed from: X.0AB  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C0AB {
    public static String A00;
    public static String A01;

    public static long A00(Application application) {
        try {
            return application.getSharedPreferences(application.getPackageName(), 0).getLong("current_user_id", 0L);
        } catch (IllegalArgumentException unused) {
            return 0L;
        }
    }

    public static void A01(Application application) {
        try {
            String l = Long.toString(A00(application));
            C09U.A00(application, application.getDir("errorreporting", 0), "275254692598279", C0A8.A00(application), l);
            if (C09U.A05 == null) {
                C09U.A00(application, null, null, null, null);
            }
            C09U.A05.A03 = true;
            C09V.A07 = true;
        } catch (Exception e) {
            A02(application, e, "Failed enabling fallback reporter");
        }
    }

    public static void A02(Application application, Exception exc, String str) {
        try {
            C09U.A01(str, "275254692598279", Long.toString(A00(application)), exc);
        } catch (Exception e) {
            C015006s.A0B("EarlyErrorReporting", "Failed sending direct report", e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x007c, code lost:
        if ((java.lang.System.currentTimeMillis() - r0.longValue()) >= 120000) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c6, code lost:
        if ((r2.nextInt() % java.lang.Math.min(1000, 2147483647L)) != 0) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void A03(java.lang.String r18, java.lang.Throwable r19, short r20) {
        /*
            Method dump skipped, instructions count: 447
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C0AB.A03(java.lang.String, java.lang.Throwable, short):void");
    }
}
