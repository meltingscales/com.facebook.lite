package X;

import android.content.Context;
import android.os.Process;
import java.util.Random;

/* renamed from: X.0AD  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C0AD {
    public static final Random A00 = new Random();

    public static void A00(final Context context, final String str, final Throwable th, int i) {
        if (i == 1 || A00.nextInt(i) == 0) {
            A01(str, th);
            new Thread(new Runnable() { // from class: X.0AC
                public static final String __redex_internal_original_name = "EarlySoftErrorReporting$1";

                @Override // java.lang.Runnable
                public final void run() {
                    C0AD.A02(str, th);
                }
            }, "primaryDexError").start();
        }
    }

    public static void A01(String str, Throwable th) {
        Object[] objArr = {str};
        if (th != null) {
            C015006s.A0F("EarlySoftErrorReporting", "SOFT ERROR %s", th, objArr);
        } else {
            C015006s.A0I("EarlySoftErrorReporting", "SOFT ERROR %s", objArr);
        }
    }

    public static void A02(String str, Throwable th) {
        Throwable th2;
        try {
            Process.setThreadPriority(10);
            if (th != null) {
                th2 = th;
            } else {
                th2 = AnonymousClass000.A07(str);
            }
            C0AB.A03(str, th2, (short) 756);
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
            C015006s.A0B("EarlySoftErrorReporting", "Unable to report soft error", th);
        }
    }
}
