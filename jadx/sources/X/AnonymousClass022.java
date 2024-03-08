package X;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Base64;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: X.022  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class AnonymousClass022 {
    public static final String A00;

    public static void A02(Context context, Intent intent, String str) {
        String str2;
        try {
            intent.setExtrasClassLoader(context.getClassLoader());
            Bundle extras = intent.getExtras();
            if (extras == null) {
                extras = new Bundle();
            }
            extras.setClassLoader(context.getClassLoader());
            try {
                str2 = C01C.A01(context, context.getPackageName(), 0).A02;
            } catch (PackageManager.NameNotFoundException | RuntimeException unused) {
                str2 = null;
            }
            long currentTimeMillis = System.currentTimeMillis();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            JSONObject jSONObject = new JSONObject();
            String str3 = null;
            try {
                jSONObject.put("t", Long.toString(currentTimeMillis));
                jSONObject.put("r", Long.toString(elapsedRealtime));
                if (str != null) {
                    jSONObject.put("d", str);
                }
                if (str2 != null) {
                    jSONObject.put("v", str2);
                }
                str3 = Base64.encodeToString(jSONObject.toString().getBytes("UTF-8"), 11);
            } catch (UnsupportedEncodingException | JSONException unused2) {
            }
            C001400r c001400r = new C001400r();
            c001400r.A08 = str3;
            c001400r.A03 = new ComponentName(context, "com.facebook.invalid_class.f4c3b00c");
            PendingIntent A01 = c001400r.A01(context, 0, 1140850688);
            if (A01 != null) {
                extras.putParcelable("_ci_", A01);
                intent.putExtras(extras);
                return;
            }
            throw new C001600t("Failed to generate CallerInfo metadata.");
        } catch (Exception e) {
            throw new C001600t(e);
        }
    }

    static {
        StringBuilder sb = new StringBuilder();
        sb.append("Null metadata in caller identity, API=");
        sb.append(Build.VERSION.SDK_INT);
        A00 = sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x014c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x014d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static X.C02J A00(android.content.Context r18, android.content.Intent r19, X.AnonymousClass005 r20, int r21) {
        /*
            Method dump skipped, instructions count: 357
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.AnonymousClass022.A00(android.content.Context, android.content.Intent, X.005, int):X.02J");
    }

    public static void A03(AnonymousClass005 anonymousClass005, String str, Throwable th) {
        if (anonymousClass005 != null) {
            anonymousClass005.AXX("CallerInfoHelper", str, th);
        }
    }

    public static void A01(Context context, Intent intent, AnonymousClass005 anonymousClass005, String str) {
        try {
            A02(context, intent, str);
        } catch (C001600t e) {
            anonymousClass005.AXX("CallerInfoHelper", "Error attaching caller info to Intent.", e);
        }
    }
}
