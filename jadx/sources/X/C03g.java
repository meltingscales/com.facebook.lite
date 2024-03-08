package X;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

/* renamed from: X.03g  reason: invalid class name */
/* loaded from: classes.dex */
public final class C03g {
    public final Random A04;
    public final Map A01 = Collections.synchronizedMap(new HashMap());
    public final Map A00 = Collections.synchronizedMap(new HashMap());
    public final Map A03 = Collections.synchronizedMap(new HashMap());
    public final Map A02 = Collections.synchronizedMap(new HashMap());

    public C03g(Random random) {
        this.A04 = random;
    }
}
