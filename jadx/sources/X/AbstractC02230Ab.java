package X;

import android.app.PendingIntent;

/* renamed from: X.0Ab  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC02230Ab {
    public static int A00(PendingIntent pendingIntent) {
        return pendingIntent.getCreatorUid();
    }

    public static String A01(PendingIntent pendingIntent) {
        return pendingIntent.getCreatorPackage();
    }
}
