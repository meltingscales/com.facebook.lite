package X;

import android.os.StatFs;

/* renamed from: X.07a  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC015607a {
    public static long A00(StatFs statFs) {
        return statFs.getAvailableBytes();
    }

    public static long A01(StatFs statFs) {
        return statFs.getTotalBytes();
    }
}
