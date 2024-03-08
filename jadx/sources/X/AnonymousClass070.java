package X;

import java.security.SecureRandom;
import java.util.UUID;

/* renamed from: X.070  reason: invalid class name */
/* loaded from: classes.dex */
public final class AnonymousClass070 {
    public static String A00;

    public static final synchronized String A00() {
        String str;
        synchronized (AnonymousClass070.class) {
            str = A00;
            if (str == null) {
                SecureRandom secureRandom = new SecureRandom();
                str = new UUID(secureRandom.nextLong() ^ System.currentTimeMillis(), secureRandom.nextLong()).toString();
                C08H.A01(str);
                A00 = str;
            }
            if (str == null) {
                C08H.A07("_processUuid");
                throw new RuntimeException("Redex: Unreachable code after no-return invoke");
            }
        }
        return str;
    }
}
