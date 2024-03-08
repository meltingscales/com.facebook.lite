package X;

import android.os.Trace;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* renamed from: X.05t  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C013405t {
    public final long A00;
    public final Method A01;
    public final Method A02;

    public static C013405t A00() {
        try {
            Method method = Trace.class.getMethod("isTagEnabled", Long.TYPE);
            Method method2 = Trace.class.getMethod("setAppTracingAllowed", Boolean.TYPE);
            Field field = Trace.class.getField("TRACE_TAG_APP");
            if (field.getType() != Long.TYPE) {
                return null;
            }
            return new C013405t(method, method2, field.getLong(null));
        } catch (IllegalAccessException | NoSuchFieldException | NoSuchMethodException unused) {
            return null;
        }
    }

    public C013405t(Method method, Method method2, long j) {
        this.A01 = method;
        this.A02 = method2;
        this.A00 = j;
    }
}
