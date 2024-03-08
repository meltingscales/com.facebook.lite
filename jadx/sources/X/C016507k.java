package X;

import android.app.Application;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* renamed from: X.07k  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C016507k {
    public static String A03 = "0";
    public static String A04 = "0";
    public static String A05 = "0";
    public static C016507k A06;
    public static Application A07;
    public static File A08;
    public static Callable A09;
    public static Callable A0A;
    public static Callable A0B;
    public static boolean A0C;
    public static final Object A0D = new Object();
    public C009503x A00 = null;
    public String A01;
    public Executor A02;

    public final synchronized void A06(final String str, final Map map) {
        Executor executor = this.A02;
        if (executor == null) {
            executor = C017307u.A00();
            this.A02 = executor;
        }
        executor.execute(new AbstractRunnableC009603y() { // from class: X.05G
            public static final String __redex_internal_original_name = "DirectReportInternal$2";

            @Override // java.lang.Runnable
            public final void run() {
                try {
                    C016507k c016507k = C016507k.this;
                    if (c016507k.A00 == null) {
                        c016507k.A00 = new C009503x(AbstractC008903r.A01(c016507k.A01), new C009403w(), null);
                    }
                    Application application = C016507k.A07;
                    if (application != null && !C02R.A00(application)) {
                        return;
                    }
                    String str2 = str;
                    Map map2 = map;
                    Properties properties = new Properties();
                    properties.putAll(map2);
                    properties.put(C07M.A6X.A00, str2);
                    C016507k.A01();
                    try {
                        File file = C016507k.A08;
                        String A02 = AbstractC013305s.A02("ig.ig_server_rev_hash");
                        if ((!A02.equals("") || (A02 = System.getProperty("ig.ig_server_rev_hash")) != null) && !A02.equals("")) {
                            properties.put(C07M.A5f.A00, A02);
                        }
                        String A022 = AbstractC013305s.A02("fb.report_source");
                        if ((!A022.equals("") || (A022 = System.getProperty("fb.report_source")) != null) && !A022.equals("")) {
                            properties.put(C07M.A8c.A00, A022);
                            if (file != null) {
                                File A042 = AnonymousClass000.A04(AnonymousClass000.A04(file, "report_source"), "report_source_ref.txt");
                                if (A042.exists()) {
                                    StringBuilder A0C2 = AnonymousClass000.A0C();
                                    BufferedReader bufferedReader = new BufferedReader(new FileReader(A042));
                                    while (true) {
                                        try {
                                            String readLine = bufferedReader.readLine();
                                            if (readLine == null) {
                                                break;
                                            }
                                            A0C2.append(readLine);
                                            A0C2.append('\n');
                                        } catch (Throwable th) {
                                            try {
                                                bufferedReader.close();
                                            } catch (Throwable unused) {
                                            }
                                            throw th;
                                        }
                                    }
                                    String obj = A0C2.toString();
                                    bufferedReader.close();
                                    if (obj != null) {
                                        properties.put(C07M.A8e.A00, obj);
                                    }
                                }
                            }
                            String A023 = AbstractC013305s.A02("fb.testing.build_target");
                            if (!A023.equals("")) {
                                properties.put("mobile_build_target", A023);
                            }
                        }
                    } catch (IOException e) {
                        AbstractC019608w.A00();
                        C015006s.A0C("lacrima", "Failed to read report source ref", e);
                    }
                    HashMap A0F = AnonymousClass000.A0F();
                    c016507k.A00.A01(new C02O(properties), A0F, 1);
                    for (C05Y c05y : A0F.values()) {
                        c05y.A01.close();
                    }
                } catch (Exception e2) {
                    AbstractC019608w.A00();
                    C015006s.A09("lacrima", "Failed to send direct report", e2);
                }
            }
        });
    }

    public static C016507k A00() {
        C016507k c016507k;
        synchronized (A0D) {
            c016507k = A06;
            if (c016507k == null) {
                c016507k = new C016507k(AnonymousClass098.A00("mobile", "reliability_event_log_upload").toString());
                A06 = c016507k;
            }
        }
        return c016507k;
    }

    public static void A01() {
        synchronized (A0D) {
            if (!A0C) {
                try {
                    Callable callable = A09;
                    if (callable != null) {
                        String str = (String) callable.call();
                        if (str == null) {
                            str = A04;
                        }
                        A04 = str;
                    }
                    Callable callable2 = A0B;
                    if (callable2 != null) {
                        String str2 = (String) callable2.call();
                        if (str2 == null) {
                            str2 = A05;
                        }
                        A05 = str2;
                    }
                    Callable callable3 = A0A;
                    if (callable3 != null) {
                        A08 = (File) callable3.call();
                    }
                } catch (Exception e) {
                    AbstractC019608w.A00();
                    C015006s.A09("lacrima", "Error lazy initializing DirectReportInternal", e);
                }
                A0C = true;
            }
        }
    }

    public static void A02(C07H c07h, String str, Map map) {
        synchronized (A0D) {
            if (TextUtils.isEmpty(str)) {
                map.remove(c07h.A00);
            } else {
                String str2 = c07h.A00;
                if (TextUtils.isEmpty((CharSequence) map.get(str2))) {
                    map.put(str2, str);
                }
            }
        }
    }

    public static void A04(String str, String str2, Map map) {
        A02(C07M.A4g, "soft_error", map);
        A02(C07M.A4A, "i", map);
        A02(C07M.A8w, str, map);
        A02(C07M.A8x, str2, map);
        synchronized (A0D) {
            if (TextUtils.isEmpty((CharSequence) map.get("cause"))) {
                A02(C07M.A4h, C07F.A01(new RuntimeException(AnonymousClass000.A09(" | ", str2, AnonymousClass000.A0D(str)), null)), map);
            }
        }
    }

    public static void A05(Map map) {
        C012705l c012705l = C07M.A6S;
        C0BQ c0bq = new C0BQ(0);
        synchronized (A0D) {
            A02(c012705l, (String) c0bq.get(), map);
        }
    }

    public C016507k(String str) {
        this.A01 = str;
    }

    public static void A03(String str, String str2, String str3, String str4, Map map) {
        C012705l c012705l;
        A01();
        C012805m c012805m = C07M.A33;
        String l = Long.toString(System.currentTimeMillis() / 1000);
        A02(c012805m, l, map);
        A02(C07M.A1O, l, map);
        if (str != null) {
            A02(C07M.A9Q, str, map);
        } else {
            C015006s.A07("lacrima", "User Id missing. Direct reports use 0 as user id.");
            A02(C07M.A9Q, "0", map);
        }
        if (str2 != null) {
            c012705l = C07M.A3N;
        } else {
            C015006s.A07("lacrima", "ACTOR_ID missing. Direct reports use 0 as id.");
            c012705l = C07M.A3N;
            str2 = "-6";
        }
        A02(c012705l, str2, map);
        if (str3 != null) {
            A02(C07M.A3K, str3, map);
        } else {
            C015006s.A07("lacrima", "ACTING_ACCOUNT_ID missing. Direct reports use 0 as id.");
            A02(C07M.A3K, "0", map);
        }
        A02(C07M.A5F, "lacrima_direct_report", map);
        A02(C07M.A4M, "lacrima_direct_report", map);
        A02(C07M.A8i, "lacrima_direct_report", map);
        A02(C07M.A3A, Long.toString(C015707b.A01()), map);
        A02(C07M.A1b, Long.toString(C015707b.A00()), map);
        A02(C07M.A48, "r", map);
        A02(C07M.A2g, Long.toString(C06F.A01()), map);
        synchronized (A0D) {
            A02(C07M.A3v, A03, map);
            A02(C07M.A52, A04, map);
            A02(C07M.A4F, A05, map);
            Application application = A07;
            if (application != null) {
                String packageName = application.getPackageName();
                if (str4 == null) {
                    str4 = "";
                }
                C012705l c012705l2 = C07M.A40;
                StringBuilder A0D2 = AnonymousClass000.A0D(packageName);
                String str5 = "";
                if (!"".equals(str4)) {
                    str5 = AnonymousClass000.A09(":", str4, AnonymousClass000.A0C());
                }
                A02(c012705l2, AnonymousClass000.A0A(str5, A0D2), map);
                C012705l c012705l3 = C07M.A9E;
                ApplicationInfo applicationInfo = A07.getApplicationInfo();
                A02(c012705l3, applicationInfo == null ? "n/a" : Integer.toString(applicationInfo.targetSdkVersion), map);
            }
        }
        A02(C07M.A0E, Boolean.toString(C06F.A02()), map);
        A02(C07M.A2Q, Long.toString(Process.myPid()), map);
        A02(C07M.A0N, Boolean.toString(C06F.A03()), map);
        A02(C07M.A54, Build.MODEL, map);
        A02(C07M.A55, Build.DEVICE, map);
        A02(C07M.A50, Build.BRAND, map);
        A02(C07M.A57, Build.VERSION.RELEASE, map);
        A02(C07M.A5A, "true", map);
        if (Build.VERSION.SDK_INT >= 30) {
            JSONObject A00 = AbstractC016107f.A00();
            if (A00.length() > 0) {
                A02(C07M.A8o, A00.toString(), map);
            }
        }
        C012705l c012705l4 = C07M.A8a;
        StringBuilder A0C2 = AnonymousClass000.A0C();
        A0C2.append(Math.random());
        A0C2.append("-");
        A0C2.append(System.currentTimeMillis());
        A02(c012705l4, A0C2.toString(), map);
        long A01 = C06F.A01();
        C012805m c012805m2 = C07M.A1L;
        String l2 = Long.toString(A01);
        A02(c012805m2, l2, map);
        A02(C07M.A2A, l2, map);
        A02(C07M.A6q, "397.0.0.11.117", map);
        A02(C07M.A09, Boolean.toString(true), map);
    }
}
