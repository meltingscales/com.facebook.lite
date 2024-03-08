package X;

import android.content.Context;
import android.content.Intent;

/* renamed from: X.0AR  reason: invalid class name */
/* loaded from: classes.dex */
public final class C0AR {
    public static C0AV A00;
    public static final C0AV A01;
    public static final C0AV A02 = new C0AV() { // from class: X.08i
        @Override // X.C0AV
        public final C0AU[] A9K() {
            return new C0AU[0];
        }

        @Override // X.C0AV
        public final C0AS[] AAw() {
            return new C0AS[0];
        }

        @Override // X.C0AV
        public final boolean Ab3() {
            return false;
        }
    };
    public static final C0AW A03;

    static {
        final C0AV c0av = new C0AV() { // from class: X.08h
            @Override // X.C0AV
            public final C0AU[] A9K() {
                return C0AR.A00().A9K();
            }

            @Override // X.C0AV
            public final C0AS[] AAw() {
                return C0AR.A00().AAw();
            }

            @Override // X.C0AV
            public final boolean Ab3() {
                return C0AR.A00().Ab3();
            }
        };
        A01 = c0av;
        A03 = new C0AW(c0av) { // from class: X.08f
            @Override // X.C0AW
            public final boolean A00(Context context, Intent intent, C0AH c0ah, Object obj) {
                C0AR.A02(context);
                return super.A00(context, intent, null, obj);
            }

            @Override // X.C0AW
            public final boolean A01(Context context, Intent intent, Object obj) {
                C0AR.A02(context);
                return A00(context, intent, null, obj);
            }
        };
    }

    public static synchronized C0AV A00() {
        C0AV c0av;
        synchronized (C0AR.class) {
            c0av = A00;
            if (c0av == null) {
                throw new IllegalStateException();
            }
        }
        return c0av;
    }

    public static synchronized C0AW A01() {
        C0AW c0aw;
        synchronized (C0AR.class) {
            c0aw = A03;
        }
        return c0aw;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0088 A[Catch: IOException | IllegalArgumentException -> 0x00bf, all -> 0x0137, TRY_LEAVE, TryCatch #1 {IOException | IllegalArgumentException -> 0x00bf, blocks: (B:9:0x0028, B:11:0x0033, B:12:0x0037, B:14:0x0042, B:16:0x004a, B:17:0x004f, B:37:0x00a9, B:18:0x0052, B:38:0x00ac, B:42:0x00be, B:30:0x007b, B:31:0x0080, B:36:0x00a3, B:34:0x0088, B:35:0x008d, B:35:0x008d, B:41:0x00b7, B:25:0x0067, B:27:0x006d, B:39:0x00b1), top: B:75:0x0028, outer: #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static synchronized void A02(android.content.Context r17) {
        /*
            Method dump skipped, instructions count: 341
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C0AR.A02(android.content.Context):void");
    }
}
