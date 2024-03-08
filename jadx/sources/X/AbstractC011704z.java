package X;

import java.util.LinkedHashSet;

/* renamed from: X.04z  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC011704z extends C05R {
    public static final LinkedHashSet A00(Object[] objArr) {
        int length = objArr.length;
        LinkedHashSet linkedHashSet = new LinkedHashSet(AbstractC010504h.A00(length));
        int i = 0;
        do {
            linkedHashSet.add(objArr[i]);
            i++;
        } while (i < length);
        return linkedHashSet;
    }
}
