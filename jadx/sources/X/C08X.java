package X;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import java.io.File;
import java.io.IOException;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* renamed from: X.08X  reason: invalid class name */
/* loaded from: classes.dex */
public final class C08X extends C0BC implements C0B4 {
    public final Set A02;
    public final Map A01 = AnonymousClass000.A0F();
    public final Map A00 = AnonymousClass000.A0F();

    @Override // X.C0BC
    public final String A05() {
        return "DirectApkSoSource";
    }

    private void A01() {
        int indexOf;
        int i;
        String str = null;
        for (String str2 : this.A02) {
            if (!TextUtils.isEmpty(str2) && (indexOf = str2.indexOf(33)) >= 0 && (i = indexOf + 2) < str2.length()) {
                str = str2.substring(i);
            }
            if (!TextUtils.isEmpty(str)) {
                ZipFile zipFile = new ZipFile(str2.substring(0, str2.indexOf(33)));
                try {
                    Enumeration<? extends ZipEntry> entries = zipFile.entries();
                    while (entries.hasMoreElements()) {
                        ZipEntry nextElement = entries.nextElement();
                        if (nextElement != null && nextElement.getMethod() == 0 && nextElement.getName().startsWith(str) && nextElement.getName().endsWith(".so")) {
                            String substring = nextElement.getName().substring(str.length() + 1);
                            Map map = this.A01;
                            synchronized (map) {
                                if (!map.containsKey(str2)) {
                                    map.put(str2, new HashSet());
                                }
                                ((Set) map.get(str2)).add(substring);
                            }
                        }
                    }
                    zipFile.close();
                } catch (Throwable th) {
                    try {
                        zipFile.close();
                    } catch (Throwable unused) {
                    }
                    throw th;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00d0, code lost:
        if (r0 != null) goto L86;
     */
    @Override // X.C0BC
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int A04(android.os.StrictMode.ThreadPolicy r19, java.lang.String r20, int r21) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C08X.A04(android.os.StrictMode$ThreadPolicy, java.lang.String, int):int");
    }

    @Override // X.C0BC
    public final String A06(String str) {
        for (String str2 : this.A02) {
            Set set = (Set) this.A01.get(str2);
            if (!TextUtils.isEmpty(str2) && set != null && set.contains(str)) {
                return AnonymousClass000.A09(File.separator, str, AnonymousClass000.A0D(str2));
            }
        }
        return null;
    }

    @Override // X.C0B4
    public final C0BC AWY(Context context) {
        C08X c08x = new C08X(context);
        try {
            c08x.A01();
            return c08x;
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public C08X(Context context) {
        HashSet hashSet = new HashSet();
        String A00 = A00(context.getApplicationInfo().sourceDir);
        if (A00 != null) {
            hashSet.add(A00);
        }
        if (Build.VERSION.SDK_INT >= 21 && context.getApplicationInfo().splitSourceDirs != null) {
            for (String str : context.getApplicationInfo().splitSourceDirs) {
                String A002 = A00(str);
                if (A002 != null) {
                    hashSet.add(A002);
                }
            }
        }
        this.A02 = hashSet;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0032, code lost:
        if (r7 == null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0035, code lost:
        r4 = "empty";
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0040, code lost:
        if (r6 == null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0042, code lost:
        android.util.Log.w("SoLoader", X.AnonymousClass000.A0A(r4, r1));
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0049, code lost:
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String A00(java.lang.String r7) {
        /*
            java.lang.String[] r6 = X.C0BF.A0B()
            r5 = 0
            java.lang.String r4 = "null"
            java.lang.String r3 = "empty"
            java.lang.String r2 = "SoLoader"
            if (r7 == 0) goto L29
            boolean r0 = r7.isEmpty()
            if (r0 != 0) goto L29
            if (r6 == 0) goto L37
            int r0 = r6.length
            if (r0 == 0) goto L37
            java.lang.StringBuilder r1 = X.AnonymousClass000.A0D(r7)
            java.lang.String r0 = "!/lib/"
            r1.append(r0)
            r0 = 0
            r0 = r6[r0]
            java.lang.String r5 = X.AnonymousClass000.A0A(r0, r1)
            return r5
        L29:
            java.lang.StringBuilder r1 = X.AnonymousClass000.A0C()
            java.lang.String r0 = "Cannot compute fallback path, apk path is "
            r1.append(r0)
            if (r7 != 0) goto L35
            goto L42
        L35:
            r4 = r3
            goto L42
        L37:
            java.lang.StringBuilder r1 = X.AnonymousClass000.A0C()
            java.lang.String r0 = "Cannot compute fallback path, supportedAbis is "
            r1.append(r0)
            if (r6 != 0) goto L35
        L42:
            java.lang.String r0 = X.AnonymousClass000.A0A(r4, r1)
            android.util.Log.w(r2, r0)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C08X.A00(java.lang.String):java.lang.String");
    }

    @Override // X.C0BC
    public final String toString() {
        StringBuilder A0C = AnonymousClass000.A0C();
        A0C.append("DirectApkSoSource");
        A0C.append("[root = ");
        AnonymousClass000.A0K(this.A02, A0C);
        A0C.append(']');
        return A0C.toString();
    }

    @Override // X.C0BC
    public final void A07(int i) {
        A01();
    }
}
