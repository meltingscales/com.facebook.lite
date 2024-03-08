package X;

import android.net.Uri;

/* renamed from: X.098  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class AnonymousClass098 {
    public static Uri A00(String... strArr) {
        Uri.Builder authority;
        Uri.Builder scheme = new Uri.Builder().scheme("https");
        if (scheme != null && (authority = scheme.authority("b-www.facebook.com")) != null) {
            int i = 0;
            do {
                authority.appendPath(strArr[i]);
                i++;
            } while (i < 2);
            authority.appendPath("");
            return authority.build();
        }
        return AbstractC008903r.A01("");
    }
}
