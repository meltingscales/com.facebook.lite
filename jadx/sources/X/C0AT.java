package X;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: X.0AT  reason: invalid class name */
/* loaded from: classes.dex */
public final class C0AT {
    public final Map A00;
    public final C0AY A01;
    public final C0AU[] A02;

    public static C0AT A00(JSONObject jSONObject) {
        String string;
        if (jSONObject == null) {
            return null;
        }
        HashMap A0F = AnonymousClass000.A0F();
        C0AU[] c0auArr = new C0AU[0];
        try {
            Iterator<String> keys = jSONObject.keys();
            C0AY c0ay = null;
            while (keys.hasNext()) {
                String next = keys.next();
                if (!next.equals("selector_config")) {
                    if (next.equals("clip_data")) {
                        c0ay = C0AY.A00(jSONObject.getJSONObject("clip_data"));
                    } else if (jSONObject.has(next)) {
                        A0F.put(next, C0AX.A00(jSONObject.get(next)));
                    }
                }
            }
            if (jSONObject.has("selector_config") && (string = jSONObject.getString("selector_config")) != null) {
                c0auArr = C0AU.A01(string);
            }
            if (A0F.isEmpty()) {
                return null;
            }
            if (c0auArr.length > 0) {
                return new C0AT(c0ay, A0F, c0auArr);
            }
            return new C0AT(c0ay, A0F, null);
        } catch (IllegalArgumentException | JSONException unused) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:139:?, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:?, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0101, code lost:
        r6 = r13.A01;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0103, code lost:
        if (r6 == null) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0109, code lost:
        if (r15.has("clip_data") == false) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x010b, code lost:
        r7 = r15.getJSONArray("clip_data");
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x010f, code lost:
        if (r7 == null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0111, code lost:
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0116, code lost:
        if (r5 >= r7.length()) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0118, code lost:
        r4 = r7.getJSONObject(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x011c, code lost:
        r3 = X.AnonymousClass000.A0G(r6.A00);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0126, code lost:
        if (r3.hasNext() == false) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0128, code lost:
        r0 = (java.util.Map.Entry) r3.next();
        r2 = (java.lang.String) r0.getKey();
        r1 = (X.C0AX) r0.getValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x013e, code lost:
        if (r4.has(r2) == false) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0148, code lost:
        if (X.C0AX.A01(r1, r4.getString(r2)) != false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x014d, code lost:
        r3 = r13.A02;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x014f, code lost:
        if (r3 == null) goto L137;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0151, code lost:
        r2 = r3.length;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0152, code lost:
        if (r2 <= 0) goto L136;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0154, code lost:
        if (r14 == null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0156, code lost:
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x015d, code lost:
        if (r3[r1].A02(r14) == false) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x015f, code lost:
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0161, code lost:
        if (r1 >= r2) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0167, code lost:
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean A01(android.content.Intent r14, org.json.JSONObject r15) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C0AT.A01(android.content.Intent, org.json.JSONObject):boolean");
    }

    public C0AT(C0AY c0ay, Map map, C0AU[] c0auArr) {
        this.A00 = map;
        this.A02 = c0auArr;
        this.A01 = c0ay;
    }
}
