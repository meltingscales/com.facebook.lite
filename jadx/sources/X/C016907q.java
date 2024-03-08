package X;

import android.content.Context;
import java.io.File;
import java.io.FileFilter;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.Set;

/* renamed from: X.07q  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C016907q {
    public static final List A05 = new ArrayList(2);
    public final Context A00;
    public final Object A01 = new Object();
    public final Map A02 = AnonymousClass000.A0F();
    public final AnonymousClass054 A03;
    public final File A04;

    public static void A00(C016907q c016907q, String str, int i, long j) {
        File[] listFiles = AnonymousClass000.A04(c016907q.A04, "reports").listFiles(new C0BY(str, 0));
        if (listFiles != null) {
            Arrays.sort(listFiles, new C0BW(0));
            long currentTimeMillis = System.currentTimeMillis();
            int i2 = 0;
            while (true) {
                int length = listFiles.length;
                if (i2 < length) {
                    File file = listFiles[i2];
                    if (i2 >= length - i) {
                        try {
                        } catch (IOException e) {
                            AbstractC019608w.A00();
                            C015006s.A0J("lacrima", "Cannot delete report dir: %s", file.getName(), e);
                        }
                        if (file.lastModified() >= currentTimeMillis - j) {
                            i2++;
                        }
                    }
                    c016907q.A03(file);
                    i2++;
                } else {
                    return;
                }
            }
        }
    }

    public static void A01(File file, FileFilter fileFilter, List list, Set set) {
        C06A.A01("buildFiles");
        try {
            File[] listFiles = file.listFiles(fileFilter);
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    try {
                        String canonicalPath = file2.getCanonicalPath();
                        if (file2.isDirectory()) {
                            if (!set.contains(canonicalPath)) {
                                set.add(canonicalPath);
                                A01(file2, fileFilter, list, set);
                            }
                        } else {
                            list.add(file2);
                        }
                    } catch (IOException unused) {
                        AbstractC019608w.A00();
                    }
                }
            }
        } finally {
            C06A.A00();
        }
    }

    public final void A02() {
        C06A.A01("updateRefCounts");
        try {
            synchronized (this.A01) {
                ArrayList A0E = AnonymousClass000.A0E();
                A01(this.A04, new C0BZ(0), A0E, new HashSet());
                Map map = this.A02;
                map.clear();
                Iterator it = A0E.iterator();
                while (it.hasNext()) {
                    File file = (File) it.next();
                    Properties properties = new Properties();
                    try {
                        FileReader fileReader = new FileReader(file);
                        try {
                            properties.load(fileReader);
                            fileReader.close();
                        } catch (Throwable th) {
                            try {
                                fileReader.close();
                            } catch (Throwable unused) {
                            }
                            throw th;
                            break;
                        }
                    } catch (IllegalArgumentException unused2) {
                        AbstractC019608w.A00();
                        C015006s.A07("lacrima", "malformed Unicode present in input, ignoring it.");
                    }
                    for (String str : properties.stringPropertyNames()) {
                        String property = properties.getProperty(str);
                        Integer num = (Integer) map.get(property);
                        if (num == null) {
                            map.put(property, 1);
                        } else {
                            map.put(property, Integer.valueOf(num.intValue() + 1));
                        }
                    }
                }
            }
        } finally {
            C06A.A00();
        }
    }

    public final void A03(File file) {
        synchronized (C016907q.class) {
            Iterator it = A05.iterator();
            if (it.hasNext()) {
                it.next();
                throw AnonymousClass000.A08("onDeleteUnsentReport");
            }
            A04(file, "reports");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00da, code lost:
        if (r4.renameTo(X.AnonymousClass000.A04(r2, X.AnonymousClass000.A0A("_prop.txt", r1))) != false) goto L67;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A04(java.io.File r13, java.lang.String r14) {
        /*
            Method dump skipped, instructions count: 245
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C016907q.A04(java.io.File, java.lang.String):void");
    }

    public C016907q(Context context, AnonymousClass054 anonymousClass054, File file) {
        this.A00 = context;
        this.A04 = file;
        this.A03 = anonymousClass054;
    }
}
