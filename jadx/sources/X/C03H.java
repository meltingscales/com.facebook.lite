package X;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;

/* renamed from: X.03H  reason: invalid class name */
/* loaded from: classes.dex */
public final class C03H {
    public static String A04;
    public final C09B A00;
    public final File A01;
    public final List A02;
    public final C011905b A03;
    public static final File[] A06 = new File[0];
    public static final Object A05 = new Object();

    public static void A00(EnumC006102m enumC006102m, C03H c03h, File file, File file2) {
        StringBuilder sb = new StringBuilder();
        sb.append("maybeAssembleReport.");
        sb.append(enumC006102m.name());
        C06A.A01(sb.toString());
        try {
            synchronized (A05) {
                List<C03I> list = c03h.A02;
                list.size();
                for (C03I c03i : list) {
                    file.getName();
                    if (file2 != null) {
                        file2.getName();
                    }
                    c03i.A03(enumC006102m, file, file2);
                }
                A01(file, "mixers");
            }
        } finally {
            C06A.A00();
        }
    }

    public static final void A01(File file, String str) {
        synchronized (A05) {
            try {
                StringBuilder sb = new StringBuilder();
                sb.append(str);
                sb.append("_done");
                new File(file, sb.toString()).createNewFile();
            } catch (IOException unused) {
                C015006s.A06("lacrima", "Marking session dir failed");
                AbstractC019608w.A00();
            }
        }
    }

    public static final boolean A02(File file, String str) {
        boolean exists;
        synchronized (A05) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("_done");
            exists = new File(file, sb.toString()).exists();
        }
        return exists;
    }

    public final void A03(C006902u c006902u, File file, String str, List list) {
        String str2;
        C06A.A01("combineIntoReport");
        try {
            synchronized (A05) {
                C06A.A01("combineIntoProperties");
                file.getName();
                Collections.sort(list, new Comparator() { // from class: X.08x
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return (int) (((File) obj).lastModified() - ((File) obj2).lastModified());
                    }
                });
                Properties properties = new Properties();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    File file2 = (File) it.next();
                    StringBuilder sb = new StringBuilder();
                    sb.append("include property file: ");
                    sb.append(file2.getName());
                    C06A.A01(sb.toString());
                    Properties properties2 = new Properties();
                    try {
                        FileInputStream fileInputStream = new FileInputStream(file2);
                        try {
                            properties2.load(fileInputStream);
                            properties.putAll(properties2);
                            fileInputStream.close();
                        } catch (Throwable th) {
                            try {
                                fileInputStream.close();
                            } catch (Throwable unused) {
                            }
                            throw th;
                            break;
                        }
                    } catch (IOException | IllegalArgumentException e) {
                        C015006s.A0I("lacrima", "Could not read property file %s", file2.getName(), e);
                        AbstractC019608w.A00();
                    }
                    C06A.A00();
                }
                C06A.A00();
                if (c006902u != null) {
                    properties.put(C07M.A8a.A00, file.getName());
                    c006902u.A07(properties);
                }
                File file3 = new File(file, str);
                try {
                    C011905b c011905b = this.A03;
                    if (!str.startsWith(EnumC006102m.CRITICAL_REPORT.A00) && !str.contains("java")) {
                        str2 = null;
                    } else {
                        str2 = "reports";
                    }
                    c011905b.A02(file3, str2, properties);
                } catch (IOException e2) {
                    C015006s.A0I("lacrima", "Assembling report failed: %s %s", file.getName(), str, e2);
                    AbstractC019608w.A00();
                }
            }
        } finally {
            C06A.A00();
        }
    }

    public C03H(C011905b c011905b, C09B c09b) {
        this.A00 = c09b;
        this.A03 = c011905b;
        File file = new File(c09b.A07, "reports");
        this.A01 = file;
        file.mkdirs();
        this.A02 = new ArrayList();
    }
}
