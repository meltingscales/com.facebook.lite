package X;

import android.app.ActivityThread;

/* renamed from: X.06D  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C06D {
    public static ActivityThread A00;

    public static ActivityThread A00() {
        ActivityThread activityThread = A00;
        if (activityThread == null) {
            ActivityThread currentActivityThread = ActivityThread.currentActivityThread();
            A00 = currentActivityThread;
            return currentActivityThread;
        }
        return activityThread;
    }
}
