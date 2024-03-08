package X;

import android.os.Build;
import android.os.Environment;
import android.os.StatFs;

/* renamed from: X.07b  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C015707b {
    public static long A00 = 1;

    public static synchronized long A01() {
        long j;
        synchronized (C015707b.class) {
            j = A00;
            if (j == 1) {
                StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
                if (Build.VERSION.SDK_INT >= 18) {
                    j = AbstractC015607a.A01(statFs);
                } else {
                    j = statFs.getBlockSize() * statFs.getBlockCount();
                }
                A00 = j;
            }
        }
        return j;
    }

    public static long A00() {
        long availableBlocks;
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        if (Build.VERSION.SDK_INT >= 18) {
            availableBlocks = AbstractC015607a.A00(statFs);
        } else {
            availableBlocks = statFs.getAvailableBlocks() * statFs.getBlockSize();
        }
        return Math.max(0L, availableBlocks);
    }
}
