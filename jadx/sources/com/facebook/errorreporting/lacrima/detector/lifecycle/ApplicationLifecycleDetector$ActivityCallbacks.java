package com.facebook.errorreporting.lacrima.detector.lifecycle;

import X.AnonymousClass035;
import X.AnonymousClass050;
import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;

/* loaded from: classes.dex */
public class ApplicationLifecycleDetector$ActivityCallbacks implements Application.ActivityLifecycleCallbacks {
    public final /* synthetic */ AnonymousClass035 A00;

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public ApplicationLifecycleDetector$ActivityCallbacks(AnonymousClass035 anonymousClass035) {
        this.A00 = anonymousClass035;
    }

    public final void A00(Activity activity, Integer num) {
        AnonymousClass035 anonymousClass035 = this.A00;
        synchronized (anonymousClass035.A0C) {
            if (Build.VERSION.SDK_INT < 29 || num.equals(AnonymousClass050.A01)) {
                AnonymousClass035.A00(anonymousClass035);
                anonymousClass035.A06.A00(AnonymousClass050.A0N, activity);
            }
            AnonymousClass035.A01(anonymousClass035, num, false);
        }
        synchronized (AnonymousClass035.A0I) {
        }
    }

    public final void A01(Activity activity, Integer num) {
        AnonymousClass035 anonymousClass035 = this.A00;
        synchronized (anonymousClass035.A0C) {
            if (Build.VERSION.SDK_INT < 29 || num.equals(AnonymousClass050.A01)) {
                AnonymousClass035.A00(anonymousClass035);
                anonymousClass035.A06.A00(AnonymousClass050.A0l, activity);
            }
            AnonymousClass035.A01(anonymousClass035, num, true);
        }
    }

    public final void A02(Activity activity, Integer num) {
        AnonymousClass035 anonymousClass035 = this.A00;
        synchronized (anonymousClass035.A0C) {
            if (Build.VERSION.SDK_INT < 29 || num.equals(AnonymousClass050.A01)) {
                AnonymousClass035.A00(anonymousClass035);
                anonymousClass035.A06.A00(AnonymousClass050.A0V, activity);
            }
            AnonymousClass035.A01(anonymousClass035, num, activity.isFinishing());
        }
    }

    public final void A03(Activity activity, Integer num) {
        AnonymousClass035 anonymousClass035 = this.A00;
        synchronized (anonymousClass035.A0C) {
            if (Build.VERSION.SDK_INT < 29 || num.equals(AnonymousClass050.A01)) {
                AnonymousClass035.A00(anonymousClass035);
                anonymousClass035.A06.A00(AnonymousClass050.A00, activity);
            }
            AnonymousClass035.A01(anonymousClass035, num, false);
        }
    }

    public final void A04(Activity activity, Integer num) {
        AnonymousClass035 anonymousClass035 = this.A00;
        synchronized (anonymousClass035.A0C) {
            if (Build.VERSION.SDK_INT < 29 || num.equals(AnonymousClass050.A01)) {
                AnonymousClass035.A00(anonymousClass035);
                anonymousClass035.A06.A00(AnonymousClass050.A0C, activity);
            }
            AnonymousClass035.A01(anonymousClass035, num, false);
        }
    }

    public final void A05(Activity activity, Integer num) {
        AnonymousClass035 anonymousClass035 = this.A00;
        synchronized (anonymousClass035.A0C) {
            if (Build.VERSION.SDK_INT < 29 || num.equals(AnonymousClass050.A01)) {
                AnonymousClass035.A00(anonymousClass035);
                anonymousClass035.A06.A00(AnonymousClass050.A0c, activity);
            }
            AnonymousClass035.A01(anonymousClass035, num, activity.isFinishing());
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        A00(activity, AnonymousClass050.A0C);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        A01(activity, AnonymousClass050.A0C);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        A02(activity, AnonymousClass050.A0C);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        A03(activity, AnonymousClass050.A0C);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        A04(activity, AnonymousClass050.A0C);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        A05(activity, AnonymousClass050.A0C);
    }
}
