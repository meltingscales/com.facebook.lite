package X;

import android.app.Application;
import android.content.SharedPreferences;

/* renamed from: X.06n  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C014606n {
    public static C014606n A01;
    public final SharedPreferences A00;

    public C014606n(Application application) {
        this.A00 = application.getSharedPreferences("lacrima", 0);
    }
}
