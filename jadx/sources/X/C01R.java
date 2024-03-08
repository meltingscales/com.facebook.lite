package X;

import android.os.Build;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: X.01R  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C01R {
    public static final long A00;
    public static final Method A01;
    public static final Method A02;
    public static volatile boolean A03;

    public static Object A00(Method method, Object... objArr) {
        Object obj = null;
        try {
            obj = method.invoke(null, objArr);
            return obj;
        } catch (IllegalAccessException unused) {
            A03 = false;
            return obj;
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (!(targetException instanceof RuntimeException) && !(targetException instanceof Error)) {
                return obj;
            }
            throw targetException;
        }
    }

    static {
        C013405t A002;
        if (Build.VERSION.SDK_INT >= 18 && (A002 = C013405t.A00()) != null) {
            A01 = A002.A01;
            A02 = A002.A02;
            A00 = A002.A00;
            A03 = true;
        }
    }
}
