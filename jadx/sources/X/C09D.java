package X;

import android.app.ActivityManager;

/* renamed from: X.09D  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C09D {
    public static boolean A00(ActivityManager.RunningAppProcessInfo runningAppProcessInfo) {
        boolean z;
        synchronized (runningAppProcessInfo) {
            try {
                ActivityManager.getMyMemoryState(runningAppProcessInfo);
                z = true;
            } catch (RuntimeException e) {
                C015006s.A09(AnonymousClass033.__redex_internal_original_name, "Could not get current importance", e);
                z = false;
            }
        }
        return z;
    }
}
