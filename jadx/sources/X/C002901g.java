package X;

import android.content.Context;
import android.os.Binder;
import android.os.Build;
import android.os.Process;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* renamed from: X.01g  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C002901g {
    public final Map A00;
    public final Set A01;

    public final boolean A04(C02J c02j, boolean z) {
        C003801p A04;
        if (c02j != null && c02j.A04() != null && (A04 = c02j.A04()) != null) {
            for (C003801p c003801p : this.A01) {
                if (A01(A04, c003801p, z)) {
                    return true;
                }
            }
            Map map = this.A00;
            for (C003801p c003801p2 : map.keySet()) {
                if (A01(A04, c003801p2, z)) {
                    for (Object obj : c02j.A03) {
                        if (((Set) map.get(c003801p2)).contains(obj)) {
                            return true;
                        }
                    }
                    continue;
                }
            }
        }
        return false;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj != this) {
            if (!(obj instanceof C002901g)) {
                return false;
            }
            C002901g c002901g = (C002901g) obj;
            Set set = c002901g.A01;
            Set set2 = this.A01;
            if (set != null) {
                z = set.equals(set2);
            } else {
                z = false;
                if (set2 == null) {
                    z = true;
                }
            }
            Map map = c002901g.A00;
            Map map2 = this.A00;
            if (map != null) {
                z2 = map.equals(map2);
            } else {
                z2 = false;
                if (map2 == null) {
                    z2 = true;
                }
            }
            return z && z2;
        }
        return true;
    }

    @Deprecated
    public final boolean A03(Context context) {
        if (context == null) {
            return false;
        }
        if (Binder.getCallingPid() != Process.myPid()) {
            return A04(A00(context, Binder.getCallingUid()), AnonymousClass023.A03(context));
        }
        throw new IllegalStateException("This method should be called on behalf of an IPC transaction from binder thread.");
    }

    public final int hashCode() {
        int i = Build.VERSION.SDK_INT;
        Object[] objArr = {this.A01, this.A00};
        if (i <= 18) {
            objArr = Arrays.asList(objArr).toArray(new Object[0]);
        }
        return Arrays.hashCode(objArr);
    }

    public C002901g(Map map) {
        HashSet hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        for (Map.Entry entry : map.entrySet()) {
            Object key = entry.getKey();
            Set set = (Set) entry.getValue();
            if (set != null && set.contains("*|all_packages|*")) {
                hashSet.add(key);
            } else {
                if (!hashMap.containsKey(key)) {
                    hashMap.put(key, new HashSet());
                }
                ((Set) hashMap.get(key)).addAll(set);
            }
        }
        this.A01 = Collections.unmodifiableSet(hashSet);
        this.A00 = Collections.unmodifiableMap(hashMap);
    }

    @Deprecated
    public static C02J A00(Context context, int i) {
        List unmodifiableList = Collections.unmodifiableList(Arrays.asList(AnonymousClass023.A05(context, i)));
        return new C02J(null, null, unmodifiableList, Collections.singletonList(AnonymousClass023.A02(context, (String) unmodifiableList.get(0))), i);
    }

    public static boolean A01(C003801p c003801p, C003801p c003801p2, boolean z) {
        if (!c003801p.equals(c003801p2)) {
            if (z) {
                Set set = (Set) AbstractC003701o.A1G.get(c003801p2);
                if (set == null) {
                    set = AbstractC003701o.A00(AbstractC003701o.A0Y);
                }
                if (!set.contains(c003801p)) {
                    return false;
                }
            } else {
                return false;
            }
        }
        return true;
    }

    @Deprecated
    public final void A02(Context context) {
        if (Binder.getCallingPid() != Process.myPid()) {
            if (A04(A00(context, Binder.getCallingUid()), AnonymousClass023.A03(context))) {
                return;
            }
            throw new SecurityException("Access denied.");
        }
        throw new IllegalStateException("This method should be called on behalf of an IPC transaction from binder thread.");
    }
}
