package X;

import android.os.Build;
import android.os.Process;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* renamed from: X.0AI  reason: invalid class name */
/* loaded from: classes.dex */
public final class C0AI implements C06j {
    public static volatile Method A00;
    public static volatile boolean A01;
    public static volatile Method A02;
    public static volatile Method A03;
    public static volatile boolean A04;
    public static volatile boolean A05;

    @Override // X.C06j
    public final int AWQ(String str, float[] fArr, int[] iArr, long[] jArr, String[] strArr) {
        Object A012 = A01(A02(), str, iArr, strArr, jArr, null);
        if (A012 == null) {
            return 2;
        }
        if (((Boolean) A012).booleanValue()) {
            return 0;
        }
        return 3;
    }

    public static C0AI A00() {
        if (Build.VERSION.SDK_INT <= 25) {
            if (!A01) {
                Class cls = Integer.TYPE;
                A00 = A04("parseProcLine", byte[].class, cls, cls, int[].class, String[].class, long[].class, float[].class);
                A01 = true;
            }
            if (A00 != null && A02() != null && A03() != null) {
                return new C0AI();
            }
            return null;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v12, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v13 */
    public static Object A01(Method method, Object... objArr) {
        if (method != null) {
            int i = 6;
            i = 6;
            try {
                i = method.invoke(null, objArr);
                return i;
            } catch (IllegalAccessException e) {
                if (Log.isLoggable("OldProcReader", i)) {
                    Log.e("OldProcReader", AnonymousClass000.A09(e.getLocalizedMessage(), ")", new StringBuilder("Error (IllegalAccessException - ")), e);
                }
            } catch (InvocationTargetException e2) {
                if (Log.isLoggable("OldProcReader", i)) {
                    Log.e("OldProcReader", AnonymousClass000.A09(e2.getLocalizedMessage(), ")", new StringBuilder("Error (InvocationTargetException - ")), e2);
                }
            }
        }
        return Boolean.FALSE;
    }

    public static Method A02() {
        if (!A04) {
            A02 = A04("readProcFile", String.class, int[].class, String[].class, long[].class, float[].class);
            A04 = true;
        }
        return A02;
    }

    public static Method A03() {
        if (!A05) {
            A03 = A04("readProcLines", String.class, String[].class, long[].class);
            A05 = true;
        }
        return A03;
    }

    public static Method A04(String str, Class... clsArr) {
        try {
            return Process.class.getMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            if (Log.isLoggable("OldProcReader", 5)) {
                Log.w("OldProcReader", AnonymousClass000.A0A(str, new StringBuilder("Warning! Could not get access to JNI method - ")), e);
                return null;
            }
            return null;
        }
    }

    @Override // X.C06j
    public final boolean AWR(String str, long[] jArr, String[] strArr) {
        return !Boolean.FALSE.equals(A01(A03(), str, strArr, jArr));
    }
}
