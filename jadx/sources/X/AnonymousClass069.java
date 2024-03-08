package X;

import android.os.Trace;
import java.lang.reflect.Method;

/* renamed from: X.069  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class AnonymousClass069 {
    static {
        if (C01R.A03) {
            Method method = C01R.A02;
            AbstractC007302y.A00(method);
            C01R.A00(method, true);
        }
    }

    public static final void A01(String str) {
        C08H.A04(str, 0);
        if (str.length() > 127) {
            str = str.substring(0, 127);
            C08H.A01(str);
        }
        Trace.beginSection(str);
    }

    public static final void A00() {
        Trace.endSection();
    }
}
