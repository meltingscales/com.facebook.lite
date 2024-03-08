package X;

import android.os.Build;
import com.facebook.common.build.Bit64Mode$LollipopSysdeps;
import com.facebook.common.build.Bit64Mode$MarshmallowSysdeps;

/* renamed from: X.03Y  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C03Y {
    public static final Boolean A00;

    static {
        boolean z;
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            z = Bit64Mode$MarshmallowSysdeps.is64Bit();
        } else if (i >= 21) {
            z = Bit64Mode$LollipopSysdeps.is64Bit();
        } else {
            z = false;
        }
        A00 = Boolean.valueOf(z);
    }
}
