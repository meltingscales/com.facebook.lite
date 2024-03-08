package X;

import android.app.ActivityThread;
import android.text.TextUtils;
import android.util.Pair;

/* renamed from: X.06g  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C014406g {
    public static volatile C014406g A02;
    public final C014306f A00;
    public final String A01;

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            String str = this.A01;
            String str2 = ((C014406g) obj).A01;
            if (str == null) {
                return str2 == null;
            }
            return str.equals(str2);
        }
        return true;
    }

    public static C014406g A00() {
        C014406g c014406g;
        C014406g c014406g2 = A02;
        if (c014406g2 != null) {
            return c014406g2;
        }
        synchronized (C014406g.class) {
            c014406g = A02;
            if (c014406g == null) {
                ActivityThread A00 = C06D.A00();
                if (A00 != null) {
                    c014406g = A01(A00.getProcessName());
                    A02 = c014406g;
                    if (TextUtils.isEmpty(c014406g.A01)) {
                        Pair A002 = C06k.A00();
                        if (TextUtils.isEmpty((CharSequence) A002.first)) {
                            c014406g = A02;
                        } else {
                            c014406g = A01((String) A002.first);
                            A02 = c014406g;
                        }
                    }
                } else {
                    c014406g = new C014406g(null, null);
                }
            }
        }
        return c014406g;
    }

    public static C014406g A01(String str) {
        String str2;
        C014306f c014306f;
        if (str == null) {
            return new C014406g(null, null);
        }
        String[] split = str.split(":");
        if (split.length > 1) {
            str2 = split[1];
            if (str2 == null) {
                throw AnonymousClass000.A06("Invalid name");
            }
        } else {
            str2 = "";
        }
        if ("".equals(str2)) {
            c014306f = C014306f.A01;
        } else {
            c014306f = new C014306f(str2);
        }
        return new C014406g(c014306f, str);
    }

    public final int hashCode() {
        String str = this.A01;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    public final String toString() {
        String str = this.A01;
        if (str == null) {
            return "<unknown>";
        }
        return str;
    }

    public C014406g(C014306f c014306f, String str) {
        this.A01 = str;
        this.A00 = c014306f;
    }

    public C014406g() {
        this(null, null);
    }
}
