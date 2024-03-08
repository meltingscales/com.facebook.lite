package X;

import android.content.Context;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: X.08d  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C018108d extends AbstractC02220Aa {
    public static volatile C018108d A03;
    public final Context A00;
    public final AtomicInteger A01 = new AtomicInteger(1);
    public final AtomicReference A02 = new AtomicReference();

    public static C018108d A00(Context context) {
        C018108d c018108d;
        C018108d c018108d2 = A03;
        if (c018108d2 == null) {
            synchronized (AbstractC02220Aa.class) {
                c018108d = A03;
                if (c018108d == null) {
                    c018108d = new C018108d(context);
                    A03 = c018108d;
                }
            }
            return c018108d;
        }
        return c018108d2;
    }

    public C018108d(Context context) {
        this.A00 = context.getApplicationContext();
    }
}
