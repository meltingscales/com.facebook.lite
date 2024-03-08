package X;

import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* renamed from: X.061  reason: invalid class name */
/* loaded from: classes.dex */
public final class AnonymousClass061 {
    public final Set A00;

    public static void A02(AnonymousClass060 anonymousClass060, List list) {
        String str;
        StringBuilder A0D;
        for (int i = 0; i < list.size(); i++) {
            String str2 = (String) list.get(i);
            if (str2 != null && str2.length() != 0) {
                String str3 = anonymousClass060.A02;
                if (str3 != null && str3.length() != 0) {
                    int indexOf = str2.indexOf(46);
                    if (indexOf == 0) {
                        A0D = AnonymousClass000.A0C();
                    } else if (indexOf >= 0) {
                        list.set(i, str2);
                    } else {
                        A0D = AnonymousClass000.A0D(str3);
                        str3 = ".";
                    }
                    str2 = AnonymousClass000.A09(str3, str2, A0D);
                    list.set(i, str2);
                } else {
                    str = "Package name is empty.";
                }
            } else {
                str = "Empty component name.";
            }
            StringBuilder A0C = AnonymousClass000.A0C();
            A0C.append("Failed to parse AndroidManifest.xml in ");
            A0C.append(anonymousClass060.A01);
            throw new AnonymousClass062(AnonymousClass000.A09(": ", str, A0C));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x035b  */
    /* JADX WARN: Removed duplicated region for block: B:191:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.zip.ZipFile] */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.util.jar.JarFile, java.util.zip.ZipFile] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final X.C05z A03(java.io.File r20) {
        /*
            Method dump skipped, instructions count: 865
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.AnonymousClass061.A03(java.io.File):X.05z");
    }

    public static String A00(AnonymousClass060 anonymousClass060, int i) {
        String str = (String) anonymousClass060.A09.get(Integer.valueOf(i));
        if (str != null) {
            return str;
        }
        throw AnonymousClass000.A07(AnonymousClass000.A0B("String not found: ", AnonymousClass000.A0C(), i));
    }

    public AnonymousClass061() {
        HashSet hashSet = new HashSet();
        hashSet.add("activity");
        hashSet.add("activity-alias");
        hashSet.add("receiver");
        hashSet.add("service");
        hashSet.add("provider");
        this.A00 = Collections.unmodifiableSet(hashSet);
    }

    public static HashMap A01(C013805y c013805y, AnonymousClass060 anonymousClass060, int i) {
        String A00;
        HashMap A0F = AnonymousClass000.A0F();
        for (int i2 = 0; i2 < i; i2++) {
            int A02 = c013805y.A02();
            int A022 = c013805y.A02();
            int A023 = c013805y.A02();
            int i3 = c013805y.A00;
            short A03 = c013805y.A03();
            c013805y.A01();
            c013805y.A01();
            int A024 = c013805y.A02();
            int i4 = A03 - (c013805y.A00 - i3);
            if (i4 > 0) {
                c013805y.A04(i4);
            }
            if (A02 >= 0) {
                A00(anonymousClass060, A02);
            }
            String A002 = A00(anonymousClass060, A022);
            if (A023 < 0) {
                A00 = Integer.toString(A024);
                if (A00 == null) {
                }
            } else {
                A00 = A00(anonymousClass060, A023);
            }
            A0F.put(A002, A00);
        }
        return A0F;
    }
}
