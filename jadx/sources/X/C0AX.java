package X;

import java.util.regex.Pattern;
import org.json.JSONObject;

/* renamed from: X.0AX  reason: invalid class name */
/* loaded from: classes.dex */
public final class C0AX {
    public final Pattern A00;
    public final boolean A01;

    public static C0AX A00(Object obj) {
        Pattern compile = Pattern.compile("");
        boolean z = false;
        if (obj instanceof JSONObject) {
            JSONObject jSONObject = (JSONObject) obj;
            if (jSONObject.has("pattern")) {
                compile = Pattern.compile(jSONObject.getString("pattern"), 32);
                if (jSONObject.has("negation") && jSONObject.getString("negation").equalsIgnoreCase("true")) {
                    z = true;
                }
            }
        } else if (obj instanceof String) {
            compile = Pattern.compile((String) obj, 32);
        }
        return new C0AX(compile, z);
    }

    public static boolean A01(C0AX c0ax, CharSequence charSequence) {
        return c0ax.A00.matcher(charSequence).matches() ^ c0ax.A01;
    }

    public C0AX(Pattern pattern, boolean z) {
        this.A00 = pattern;
        this.A01 = z;
    }

    public C0AX() {
        this(Pattern.compile(""), false);
    }
}
