package X;

import android.app.ActivityManager;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* renamed from: X.07C  reason: invalid class name */
/* loaded from: classes.dex */
public final class C07C {
    public static volatile C021009m A04;
    public static volatile String A05;
    public static volatile boolean A06;
    public static final ExecutorService A03 = Executors.newSingleThreadExecutor();
    public static final Set A02 = new HashSet();
    public static final Set A01 = new HashSet();
    public static final List A00 = AnonymousClass000.A0E();

    public static void A00(C07H c07h, String str) {
        if (A04 != null) {
            AnonymousClass085.A00(new C012505j(c07h, EnumC006102m.CRITICAL_REPORT, str));
        }
    }

    public static boolean A01() {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(runningAppProcessInfo);
        if (runningAppProcessInfo.importance != 100) {
            return false;
        }
        return true;
    }
}
