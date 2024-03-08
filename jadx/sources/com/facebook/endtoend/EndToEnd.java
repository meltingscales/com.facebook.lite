package com.facebook.endtoend;

import X.AbstractC013305s;
import X.AnonymousClass000;
import X.AnonymousClass063;
import android.util.Log;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class EndToEnd {
    public static Map A00;
    public static JSONObject A01 = new JSONObject();
    public static boolean A02;
    public static boolean A03;
    public static boolean A04;
    public static boolean A05;
    public static boolean A06;
    public static volatile boolean A07;
    public static volatile boolean A08;

    public static String A00(String str, boolean z, boolean z2) {
        if (z2 || isRunningEndToEndTest()) {
            String property = System.getProperty(str);
            if (property == null || property.equals("")) {
                String property2 = System.getProperty(AnonymousClass000.A09("fb.e2e.", str, AnonymousClass000.A0C()));
                if (property2 != null && !property2.equals("")) {
                    return property2;
                }
                if (z) {
                    try {
                        property = AbstractC013305s.A02(str);
                        if (property.equals("")) {
                            if (AnonymousClass000.A09("fb.e2e.", str, AnonymousClass000.A0C()).length() <= 31) {
                                String A022 = AbstractC013305s.A02(AnonymousClass000.A09("fb.e2e.", str, AnonymousClass000.A0C()));
                                if (!A022.equals("")) {
                                    return A022;
                                }
                            }
                        }
                    } catch (IllegalArgumentException unused) {
                    }
                }
                return null;
            }
            return property;
        }
        return null;
    }

    static {
        try {
            synchronized (AnonymousClass063.class) {
                throw AnonymousClass000.A07("ApplicationHolder#set never called");
            }
        } catch (IllegalStateException unused) {
        }
    }

    public static synchronized boolean A01() {
        boolean z;
        synchronized (EndToEnd.class) {
            if (!A05) {
                boolean equals = "true".equals(AbstractC013305s.A02("fb.running_mobilelab"));
                A06 = equals;
                if (equals) {
                    Log.w("Mobilelab", "Is running Mobilelab test");
                }
                A05 = true;
            }
            z = A06;
        }
        return z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001c, code lost:
        if ("true".equals(java.lang.System.getProperty("fb.running_e2e")) != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean isRunningEndToEndTest() {
        /*
            boolean r0 = com.facebook.endtoend.EndToEnd.A07
            if (r0 != 0) goto L2e
            java.lang.String r3 = "fb.running_e2e"
            java.lang.String r0 = X.AbstractC013305s.A02(r3)
            java.lang.String r1 = "true"
            boolean r0 = r1.equals(r0)
            r2 = 1
            if (r0 != 0) goto L1e
            java.lang.String r0 = java.lang.System.getProperty(r3)
            boolean r1 = r1.equals(r0)
            r0 = 0
            if (r1 == 0) goto L1f
        L1e:
            r0 = 1
        L1f:
            com.facebook.endtoend.EndToEnd.A08 = r0
            boolean r0 = com.facebook.endtoend.EndToEnd.A08
            if (r0 == 0) goto L2c
            java.lang.String r1 = "EndToEnd-Test"
            java.lang.String r0 = "Is running E2E test"
            android.util.Log.w(r1, r0)
        L2c:
            com.facebook.endtoend.EndToEnd.A07 = r2
        L2e:
            boolean r0 = com.facebook.endtoend.EndToEnd.A08
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.endtoend.EndToEnd.isRunningEndToEndTest():boolean");
    }
}
