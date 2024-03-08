package X;

import java.lang.reflect.Method;

/* renamed from: X.01n  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC003601n {
    public static boolean A00() {
        long j = C01R.A00;
        if (!C01R.A03) {
            return false;
        }
        Method method = C01R.A01;
        AbstractC007302y.A00(method);
        Boolean bool = (Boolean) C01R.A00(method, Long.valueOf(j));
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }
}
