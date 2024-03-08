package X;

import android.app.Application;
import android.content.Context;

/* renamed from: X.009  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class AnonymousClass009 {
    public static volatile Application A00;
    public static volatile Context A01;

    public static Application A00() {
        Application application = A00;
        if (application != null) {
            return application;
        }
        throw new IllegalStateException("AppContext.set has not been invoked");
    }

    public static Context A01() {
        Context context = A01;
        if (context != null) {
            return context;
        }
        throw new IllegalStateException("AppContext.set has not been invoked");
    }
}
