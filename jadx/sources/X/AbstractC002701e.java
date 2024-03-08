package X;

import android.os.ConditionVariable;
import java.util.HashMap;
import java.util.Map;

/* renamed from: X.01e  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC002701e {
    public static final ConditionVariable A00 = new ConditionVariable(true);
    public static final Map A01 = new HashMap();

    public static void A00() {
        String str;
        ConditionVariable conditionVariable = A00;
        Object[] objArr = new Object[1];
        if (conditionVariable.block(-1L)) {
            objArr[0] = Integer.valueOf(conditionVariable.hashCode());
            str = "Not blocking Provider (%s)";
        } else {
            objArr[0] = Integer.valueOf(conditionVariable.hashCode());
            C015006s.A0J("InitStatus", "Blocking Provider (%s)", objArr);
            conditionVariable.block();
            objArr = new Object[]{Integer.valueOf(conditionVariable.hashCode())};
            str = "Unblocked Provider (%s)";
        }
        C015006s.A0J("InitStatus", str, objArr);
    }
}
