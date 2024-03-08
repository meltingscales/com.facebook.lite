package X;

import android.os.Build;
import android.os.Trace;
import java.lang.reflect.Method;

@Deprecated
/* renamed from: X.04s  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C04s {
    public static Method A00;
    public static Method A01;
    public static Method A02;
    public static Method A03;

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 18 && i < 29) {
            try {
                Trace.class.getField("TRACE_TAG_APP").getLong(null);
                Class cls = Long.TYPE;
                A02 = Trace.class.getMethod("isTagEnabled", cls);
                A00 = Trace.class.getMethod("asyncTraceBegin", cls, String.class, Integer.TYPE);
                Class cls2 = Long.TYPE;
                Class cls3 = Integer.TYPE;
                A01 = Trace.class.getMethod("asyncTraceEnd", cls, String.class, cls3);
                A03 = Trace.class.getMethod("traceCounter", Long.TYPE, String.class, cls3);
            } catch (Exception unused) {
            }
        }
    }

    public static void A00() {
        if (Build.VERSION.SDK_INT >= 18) {
            AbstractC011204r.A00();
        }
    }

    public static void A01(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            AbstractC011204r.A01(str);
        }
    }
}
