package X;

import android.os.SystemProperties;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/* renamed from: X.07f  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC016107f {
    public static final Map A00 = new HashMap<String, String>() { // from class: X.07e
        {
            put("31", "build.version.extensions.r");
            put("32", "build.version.extensions.s");
            put("33", "build.version.extensions.tiramisu");
        }
    };

    public static JSONObject A00() {
        JSONObject jSONObject = new JSONObject();
        try {
            Map map = (Map) Class.forName("android.os.ext.SdkExtensions").getMethod("getAllExtensionVersions", new Class[0]).invoke(null, new Object[0]);
            if (map != null) {
                Iterator A0G = AnonymousClass000.A0G(map);
                while (A0G.hasNext()) {
                    Map.Entry entry = (Map.Entry) A0G.next();
                    jSONObject.put(((Integer) entry.getKey()).toString(), ((Integer) entry.getValue()).toString());
                }
            }
        } catch (Throwable unused) {
            AbstractC019608w.A00();
        }
        if (jSONObject.length() == 0) {
            jSONObject = new JSONObject();
            try {
                Iterator A0G2 = AnonymousClass000.A0G(A00);
                while (A0G2.hasNext()) {
                    Map.Entry entry2 = (Map.Entry) A0G2.next();
                    String str = SystemProperties.get((String) entry2.getValue(), "");
                    if (str != null && !str.equals("")) {
                        jSONObject.put((String) entry2.getKey(), str);
                    }
                }
            } catch (Throwable unused2) {
                AbstractC019608w.A00();
            }
        }
        return jSONObject;
    }
}
