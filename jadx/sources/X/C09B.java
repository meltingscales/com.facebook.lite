package X;

import android.os.SystemClock;
import java.io.File;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

/* renamed from: X.09B  reason: invalid class name */
/* loaded from: classes.dex */
public final class C09B {
    public static C09B A0A;
    public long A00;
    public long A01;
    public C010304f A02;
    public final int A03;
    public final C05J A04;
    public final C016907q A05;
    public final File A06;
    public final File A07;
    public final String A08;
    public final String A09;
    public static final List A0C = AnonymousClass000.A0E();
    public static final Object A0B = new Object();

    public C09B(C016907q c016907q, AnonymousClass057 anonymousClass057, File file, String str, String str2) {
        this.A08 = str2;
        this.A07 = file;
        this.A09 = str;
        StringBuilder A0C2 = AnonymousClass000.A0C();
        StringBuilder A0C3 = AnonymousClass000.A0C();
        A0C3.append("sess_");
        A0C3.append(str2);
        A0C2.append(AnonymousClass000.A0A("_", A0C3));
        File[] A03 = A03(str2);
        int length = A03.length;
        String valueOf = String.valueOf(length >= 1 ? 1 + A00(A03[length - 1], str2) : 1L);
        StringBuffer stringBuffer = new StringBuffer(AnonymousClass000.A09("000000000", valueOf, AnonymousClass000.A0C()).substring(valueOf.length()));
        stringBuffer.append("-");
        stringBuffer.append(str);
        File A04 = AnonymousClass000.A04(file, AnonymousClass000.A0A(stringBuffer.toString(), A0C2));
        this.A06 = A04;
        A04.mkdirs();
        this.A05 = c016907q;
        this.A02 = null;
        this.A03 = 3;
        File A042 = AnonymousClass000.A04(A04, "state.txt");
        C07W A00 = anonymousClass057.A00(A042);
        this.A04 = new C05J(A00 == null ? new C07W(A042) : A00);
        long uptimeMillis = SystemClock.uptimeMillis();
        this.A01 = uptimeMillis;
        this.A00 = uptimeMillis;
        C021009m c021009m = C07C.A04;
        if (c021009m != null) {
            c021009m.A02 = str;
            c021009m.A07 = A04;
        }
        List list = A0C;
        synchronized (list) {
            A0A = this;
            Iterator it = list.iterator();
            if (it.hasNext()) {
                it.next();
                throw AnonymousClass000.A08("onSetInstance");
            }
            list.clear();
        }
    }

    public final HashSet A02() {
        HashSet hashSet = new HashSet();
        File[] listFiles = this.A07.listFiles(new C0BZ(1));
        if (listFiles != null) {
            for (File file : listFiles) {
                String replaceFirst = file.getName().replaceFirst("session_", "").replaceFirst("sess_", "");
                int lastIndexOf = replaceFirst.lastIndexOf("_");
                if (lastIndexOf != -1) {
                    hashSet.add(replaceFirst.substring(0, lastIndexOf));
                }
            }
        }
        return hashSet;
    }

    public static long A00(File file, String str) {
        String name = file.getName();
        StringBuilder A0C2 = AnonymousClass000.A0C();
        A0C2.append("sess_");
        A0C2.append(str);
        String replace = name.replace(AnonymousClass000.A0A("_", A0C2), "");
        int indexOf = replace.indexOf(45);
        if (indexOf != -1) {
            replace = replace.substring(0, indexOf);
        }
        try {
            return Long.parseLong(replace);
        } catch (NumberFormatException unused) {
            AbstractC019608w.A00();
            return 0L;
        }
    }

    public final File A01(String str) {
        File[] A03 = A03(str);
        int length = A03.length;
        if (length < 2) {
            return null;
        }
        return A03[length - 2];
    }

    public final File[] A03(String str) {
        C06A.A01(AnonymousClass000.A09("getOrderedSessionDirs.", str, AnonymousClass000.A0C()));
        try {
            File[] listFiles = this.A07.listFiles(new C0BY(str, 1));
            if (listFiles == null) {
                listFiles = new File[0];
            } else {
                Arrays.sort(listFiles, new C0BW(1));
            }
            return listFiles;
        } finally {
            C06A.A00();
        }
    }
}
