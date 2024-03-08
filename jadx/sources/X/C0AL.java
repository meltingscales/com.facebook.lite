package X;

import android.text.TextUtils;
import java.util.Collections;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: X.0AL  reason: invalid class name */
/* loaded from: classes.dex */
public final class C0AL {
    public static final C0AO A04 = new C0AO(Collections.emptyList(), AnonymousClass000.A0E(), false, false);
    public final String A00;
    public final String A01;
    public final String A02;
    public final String A03;

    public final JSONObject A01() {
        JSONObject jSONObject = new JSONObject();
        try {
            String str = this.A03;
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put("scheme", str);
            }
            String str2 = this.A00;
            if (!TextUtils.isEmpty(str2)) {
                jSONObject.put("authority", str2);
            }
            String str3 = this.A01;
            if (!TextUtils.isEmpty(str3)) {
                jSONObject.put("path", str3);
            }
            String str4 = this.A02;
            if (!TextUtils.isEmpty(str4)) {
                jSONObject.put("query", str4);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public C0AL(String str, String str2, String str3, String str4) {
        this.A03 = str;
        this.A00 = str2;
        this.A01 = str3;
        this.A02 = str4;
    }

    public final String A00() {
        StringBuilder A0C = AnonymousClass000.A0C();
        String str = this.A03;
        if (!TextUtils.isEmpty(str)) {
            A0C.append(str);
            A0C.append(':');
        }
        String str2 = this.A00;
        if (!TextUtils.isEmpty(str2)) {
            A0C.append("//");
            A0C.append(str2);
        }
        String str3 = this.A01;
        if (!TextUtils.isEmpty(str3)) {
            A0C.append(str3);
        }
        String str4 = this.A02;
        if (!TextUtils.isEmpty(str4)) {
            A0C.append('?');
            A0C.append(str4);
        }
        return A0C.toString();
    }
}
