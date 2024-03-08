package X;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: X.05s  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC013305s {
    public static final Method A00;
    public static final Method A01;
    public static final Method A02;
    public static final Method A03;
    public static final Method A04;
    public static final Method A05;
    public static volatile boolean A06;

    public static Object A01(Method method, Object... objArr) {
        Object obj = null;
        if (method != null) {
            try {
                obj = method.invoke(null, objArr);
                return obj;
            } catch (IllegalAccessException unused) {
                A06 = false;
            } catch (InvocationTargetException e) {
                Throwable targetException = e.getTargetException();
                if (!(targetException instanceof RuntimeException) && !(targetException instanceof Error)) {
                    return obj;
                }
                throw targetException;
            }
        }
        return obj;
    }

    public static long A00(String str) {
        Number number;
        if (!A06 || (number = (Number) A01(A04, str, 0L)) == null) {
            return 0L;
        }
        return number.longValue();
    }

    public static String A02(String str) {
        String str2;
        if (!A06 || (str2 = (String) A01(A03, str)) == null) {
            return "";
        }
        return str2;
    }

    static {
        boolean z;
        C013205r A002 = C013205r.A00();
        if (A002 != null) {
            A00 = A002.A00;
            A03 = A002.A02;
            A02 = A002.A01;
            A01 = A002.A03;
            A04 = A002.A04;
            A05 = A002.A05;
            z = true;
        } else {
            z = false;
        }
        A06 = z;
    }
}
