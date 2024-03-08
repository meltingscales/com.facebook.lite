package X;

import android.content.ClipData;
import android.content.ComponentName;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.os.BadParcelableException;
import android.os.Build;
import android.os.Bundle;
import android.webkit.URLUtil;
import java.util.ArrayList;
import java.util.Set;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: X.0AU  reason: invalid class name */
/* loaded from: classes.dex */
public final class C0AU {
    public final C0AT A00;
    public final C0AT A01;
    public final C0AY A02;
    public final Pattern A03;

    public static C0AH A00(Intent intent) {
        ClipData A00;
        Uri uri;
        JSONObject jSONObject = new JSONObject();
        ArrayList A0E = AnonymousClass000.A0E();
        jSONObject.put("action", intent.getAction());
        jSONObject.put("package", intent.getPackage());
        jSONObject.put("type", intent.getType());
        Uri data = intent.getData();
        if (data != null) {
            A0E.add(data);
            jSONObject.put("data", AbstractC018508j.A00(data, null).A01());
        }
        if (Build.VERSION.SDK_INT >= 16 && (A00 = C0AG.A00(intent)) != null) {
            JSONArray jSONArray = new JSONArray();
            for (int i = 0; i < A00.getItemCount(); i++) {
                ClipData.Item itemAt = A00.getItemAt(i);
                if (itemAt != null && (uri = itemAt.getUri()) != null) {
                    A0E.add(uri);
                    jSONArray.put(AbstractC018508j.A00(uri, null).A01());
                }
            }
            jSONObject.put("clip_data", jSONArray);
        }
        Set<String> categories = intent.getCategories();
        if (categories != null && !categories.isEmpty()) {
            JSONArray jSONArray2 = new JSONArray();
            for (String str : categories) {
                jSONArray2.put(str);
            }
            jSONObject.put("categories", jSONArray2);
        }
        ComponentName component = intent.getComponent();
        if (component != null) {
            jSONObject.put("component_name", component.toString());
        }
        Rect sourceBounds = intent.getSourceBounds();
        if (sourceBounds != null) {
            jSONObject.put("source_bounds", sourceBounds.toString());
        }
        Bundle extras = intent.getExtras();
        if (extras != null && extras.size() > 0) {
            JSONArray jSONArray3 = new JSONArray();
            for (String str2 : extras.keySet()) {
                JSONObject jSONObject2 = new JSONObject();
                Object obj = null;
                try {
                    obj = extras.get(str2);
                } catch (BadParcelableException unused) {
                }
                String str3 = "";
                if (obj != null) {
                    str3 = obj.getClass().getCanonicalName();
                }
                jSONObject2.put("name", str2);
                jSONObject2.put("value_type", str3);
                if (obj != null) {
                    URLUtil.isValidUrl(obj.toString());
                }
                jSONArray3.put(jSONObject2);
            }
            jSONObject.put("extra_names", jSONArray3);
        }
        Intent selector = intent.getSelector();
        if (selector != null) {
            jSONObject.put("selector", A00(selector).A01);
        }
        if (intent.getFlags() > 0) {
            jSONObject.put("flags", intent.getFlags());
        }
        return new C0AH(A0E, jSONObject);
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x0017, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0017, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0017, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0017, code lost:
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0017, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean A02(android.content.Intent r10) {
        /*
            r9 = this;
            r8 = 0
            if (r10 == 0) goto L99
            X.0AH r4 = A00(r10)     // Catch: org.json.JSONException -> L98
            java.util.List r1 = r4.A00     // Catch: org.json.JSONException -> L98
            X.0AY r3 = r9.A02     // Catch: org.json.JSONException -> L98
            if (r3 == 0) goto L85
            boolean r0 = r1.isEmpty()     // Catch: org.json.JSONException -> L98
            if (r0 != 0) goto L99
            java.util.Iterator r7 = r1.iterator()     // Catch: org.json.JSONException -> L98
        L17:
            boolean r0 = r7.hasNext()     // Catch: org.json.JSONException -> L98
            if (r0 == 0) goto L99
            java.lang.Object r2 = r7.next()     // Catch: org.json.JSONException -> L98
            android.net.Uri r2 = (android.net.Uri) r2     // Catch: org.json.JSONException -> L98
            java.util.Map r0 = r3.A00     // Catch: org.json.JSONException -> L98
            java.util.Iterator r6 = X.AnonymousClass000.A0G(r0)     // Catch: org.json.JSONException -> L98
        L29:
            boolean r0 = r6.hasNext()     // Catch: org.json.JSONException -> L98
            if (r0 == 0) goto L85
            java.lang.Object r5 = r6.next()     // Catch: org.json.JSONException -> L98
            java.util.Map$Entry r5 = (java.util.Map.Entry) r5     // Catch: org.json.JSONException -> L98
            java.lang.Object r1 = r5.getKey()     // Catch: org.json.JSONException -> L98
            java.lang.String r1 = (java.lang.String) r1     // Catch: org.json.JSONException -> L98
            int r0 = r1.hashCode()     // Catch: org.json.JSONException -> L98
            switch(r0) {
                case -907987547: goto L6a;
                case 3433509: goto L5d;
                case 107944136: goto L50;
                case 1475610435: goto L43;
                default: goto L42;
            }     // Catch: org.json.JSONException -> L98
        L42:
            goto L17
        L43:
            java.lang.String r0 = "authority"
            boolean r0 = r1.equals(r0)     // Catch: org.json.JSONException -> L98
            if (r0 == 0) goto L17
            java.lang.String r1 = r2.getAuthority()     // Catch: org.json.JSONException -> L98
            goto L76
        L50:
            java.lang.String r0 = "query"
            boolean r0 = r1.equals(r0)     // Catch: org.json.JSONException -> L98
            if (r0 == 0) goto L17
            java.lang.String r1 = r2.getQuery()     // Catch: org.json.JSONException -> L98
            goto L76
        L5d:
            java.lang.String r0 = "path"
            boolean r0 = r1.equals(r0)     // Catch: org.json.JSONException -> L98
            if (r0 == 0) goto L17
            java.lang.String r1 = r2.getPath()     // Catch: org.json.JSONException -> L98
            goto L76
        L6a:
            java.lang.String r0 = "scheme"
            boolean r0 = r1.equals(r0)     // Catch: org.json.JSONException -> L98
            if (r0 == 0) goto L17
            java.lang.String r1 = r2.getScheme()     // Catch: org.json.JSONException -> L98
        L76:
            if (r1 == 0) goto L17
            java.lang.Object r0 = r5.getValue()     // Catch: org.json.JSONException -> L98
            X.0AX r0 = (X.C0AX) r0     // Catch: org.json.JSONException -> L98
            boolean r0 = X.C0AX.A01(r0, r1)     // Catch: org.json.JSONException -> L98
            if (r0 != 0) goto L29
            goto L17
        L85:
            org.json.JSONObject r2 = r4.A01     // Catch: org.json.JSONException -> L98
            android.content.Intent r1 = r10.getSelector()     // Catch: org.json.JSONException -> L98
            X.0AT r0 = r9.A01     // Catch: org.json.JSONException -> L98
            if (r0 == 0) goto L96
            boolean r0 = r0.A01(r1, r2)     // Catch: org.json.JSONException -> L98
            if (r0 != 0) goto L96
            return r8
        L96:
            r8 = 1
            return r8
        L98:
            return r8
        L99:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C0AU.A02(android.content.Intent):boolean");
    }

    public static C0AU[] A01(String str) {
        String str2;
        C0AT c0at;
        C0AY c0ay;
        try {
            JSONArray jSONArray = new JSONArray(str);
            if (jSONArray.length() > 0) {
                C0AU[] c0auArr = new C0AU[jSONArray.length()];
                for (int i = 0; i < jSONArray.length(); i++) {
                    JSONObject jSONObject = jSONArray.getJSONObject(i);
                    C0AT c0at2 = null;
                    if (jSONObject.has("endpoint_name")) {
                        str2 = jSONObject.getString("endpoint_name");
                    } else {
                        str2 = null;
                    }
                    if (jSONObject.has("caller_info")) {
                        c0at = C0AT.A00(jSONObject.getJSONObject("caller_info"));
                    } else {
                        c0at = null;
                    }
                    if (jSONObject.has("uri_component")) {
                        c0ay = C0AY.A00(jSONObject.getJSONObject("uri_component"));
                    } else {
                        c0ay = null;
                    }
                    if (jSONObject.has("intent_field")) {
                        c0at2 = C0AT.A00(jSONObject.getJSONObject("intent_field"));
                    }
                    c0auArr[i] = new C0AU(c0at, c0at2, c0ay, str2);
                }
                return c0auArr;
            }
        } catch (JSONException unused) {
        }
        return new C0AU[0];
    }

    public C0AU(C0AT c0at, C0AT c0at2, C0AY c0ay, String str) {
        Pattern compile;
        if (str == null) {
            compile = null;
        } else {
            compile = Pattern.compile(str, 32);
        }
        this.A03 = compile;
        this.A01 = c0at2;
        this.A00 = c0at;
        this.A02 = c0ay;
    }
}
