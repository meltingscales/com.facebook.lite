package X;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: X.0AY  reason: invalid class name */
/* loaded from: classes.dex */
public final class C0AY {
    public static final List A01 = Collections.unmodifiableList(Arrays.asList("scheme", "authority", "path", "query"));
    public final Map A00;

    public static C0AY A00(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                HashMap A0F = AnonymousClass000.A0F();
                for (String str : A01) {
                    if (jSONObject.has(str)) {
                        A0F.put(str, C0AX.A00(jSONObject.get(str)));
                    }
                }
                if (!A0F.isEmpty()) {
                    return new C0AY(A0F);
                }
            } catch (JSONException unused) {
                return null;
            }
        }
        return null;
    }

    public C0AY(Map map) {
        this.A00 = map;
    }
}
