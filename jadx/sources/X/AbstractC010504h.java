package X;

import java.util.Collections;
import java.util.Map;

/* renamed from: X.04h  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC010504h extends AbstractC010404g {
    public static final int A00(int i) {
        if (i >= 0) {
            if (i < 3) {
                return i + 1;
            }
            if (i < 1073741824) {
                return (int) ((i / 0.75f) + 1.0f);
            }
            return Integer.MAX_VALUE;
        }
        return i;
    }

    public static final Map A01(C01I c01i) {
        C08H.A04(c01i, 0);
        Map singletonMap = Collections.singletonMap(c01i.A00, c01i.A01);
        C08H.A01(singletonMap);
        return singletonMap;
    }

    public static final C003101i A02(Map map) {
        C003101i c003101i = (C003101i) map;
        c003101i.A05();
        c003101i.A08 = true;
        if (c003101i.size() <= 0) {
            C003101i c003101i2 = C003101i.A0D;
            C08H.A05(c003101i2, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.builders.MapBuilder, V of kotlin.collections.builders.MapBuilder>");
            return c003101i2;
        }
        return c003101i;
    }
}
