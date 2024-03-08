package X;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: X.0AW  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C0AW {
    public final C0AV A00;

    public abstract boolean A01(Context context, Intent intent, Object obj);

    public boolean A00(Context context, Intent intent, C0AH c0ah, Object obj) {
        C0AS[] AAw;
        int length;
        C0AV c0av = this.A00;
        if (c0av.Ab3()) {
            C0AU[] A9K = c0av.A9K();
            boolean z = false;
            if (A9K != null && (length = A9K.length) > 0) {
                int i = 0;
                while (true) {
                    C0AU c0au = A9K[i];
                    Pattern pattern = c0au.A03;
                    if (pattern == null || pattern.matcher(obj.getClass().getName()).matches()) {
                        try {
                            C02J A00 = AnonymousClass022.A00(context, intent, null, 60000);
                            C0AT c0at = c0au.A00;
                            if (c0at != null) {
                                if (A00 != null) {
                                    JSONObject jSONObject = new JSONObject();
                                    jSONObject.put("caller_uid", A00.A00);
                                    String A05 = A00.A05();
                                    if (A05 != null) {
                                        jSONObject.put("caller_package_name", A05);
                                    }
                                    String str = A00.A02;
                                    if (str != null) {
                                        jSONObject.put("caller_version_name", str);
                                    }
                                    String str2 = A00.A01;
                                    if (str2 != null) {
                                        jSONObject.put("caller_domain", str2);
                                    }
                                    if (!c0at.A01(null, jSONObject)) {
                                    }
                                }
                            }
                            if (c0au.A02(intent)) {
                                z = true;
                                break;
                            }
                        } catch (JSONException unused) {
                        }
                    }
                    i++;
                    if (i >= length) {
                        break;
                    }
                }
            }
            if (!z) {
                for (C0AS c0as : c0av.AAw()) {
                    String str3 = c0as.A02;
                    if (str3 == null || str3.equals(obj.getClass().getName())) {
                        IntentFilter intentFilter = c0as.A01;
                        if (intentFilter != null) {
                            boolean z2 = false;
                            if (intentFilter.match(c0as.A00, intent, false, "TAG") > 0) {
                                z2 = true;
                            }
                            if (c0as.A03) {
                                if (!z2) {
                                }
                            } else if (z2) {
                                return false;
                            }
                        }
                    }
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public C0AW(C0AV c0av) {
        this.A00 = c0av;
    }
}
