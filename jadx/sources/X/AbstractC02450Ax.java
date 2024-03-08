package X;

import android.os.Build;

/* renamed from: X.0Ax  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC02450Ax {
    public static void A00(String str) {
        if (Build.VERSION.SDK_INT <= 25 && str.length() > 23) {
            str.substring(0, 23);
        }
    }
}
