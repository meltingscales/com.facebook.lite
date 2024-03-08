package X;

import android.os.Build;

/* renamed from: X.06A  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C06A {
    public static final void A01(String str) {
        C08H.A04(str, 0);
        if (Build.VERSION.SDK_INT >= 18) {
            AnonymousClass069.A01(str);
        }
    }

    public static final void A00() {
        if (Build.VERSION.SDK_INT >= 18) {
            AnonymousClass069.A00();
        }
    }
}
