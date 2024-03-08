package X;

import android.content.ClipData;
import android.content.Intent;

/* renamed from: X.01z  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC004801z {
    public static ClipData A00(Intent intent) {
        return intent.getClipData();
    }

    public static void A01(ClipData clipData, Intent intent) {
        intent.setClipData(clipData);
    }
}
