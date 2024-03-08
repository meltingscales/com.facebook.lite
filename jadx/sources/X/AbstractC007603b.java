package X;

import android.content.Context;
import android.content.pm.PackageManager;

/* renamed from: X.03b  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC007603b {
    public static void A00(Context context, C006902u c006902u) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            c006902u.A01(C07M.A06, packageManager.hasSystemFeature("android.hardware.ram.low"));
        }
    }
}
