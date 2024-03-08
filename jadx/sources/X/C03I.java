package X;

import android.app.Application;
import java.io.File;
import java.io.FileFilter;
import java.util.ArrayList;
import java.util.Arrays;

/* renamed from: X.03I  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C03I {
    public final Application A00;
    public final C0B6 A01;
    public final C03H A02;

    public abstract C006902u A00(EnumC006102m enumC006102m);

    public abstract EnumC019108q A01();

    public abstract Integer A02();

    public void A03(final EnumC006102m enumC006102m, File file, File file2) {
        File[] listFiles;
        File[] listFiles2;
        File[] listFiles3;
        File[] listFiles4;
        File file3 = file;
        if (A02() == AnonymousClass050.A00) {
            file3 = file2;
        }
        if (file3 != null) {
            C03H c03h = this.A02;
            final EnumC019108q A01 = A01();
            Object obj = C03H.A05;
            synchronized (obj) {
                listFiles = file.listFiles(new FileFilter() { // from class: X.00d
                    @Override // java.io.FileFilter
                    public final boolean accept(File file4) {
                        EnumC006102m enumC006102m2 = EnumC006102m.this;
                        EnumC019108q enumC019108q = A01;
                        if (file4 != null && file4.getName().startsWith(enumC006102m2.A00)) {
                            String name = file4.getName();
                            StringBuilder sb = new StringBuilder();
                            sb.append(enumC019108q.A00);
                            sb.append("_prop.txt");
                            if (name.endsWith(sb.toString())) {
                                return true;
                            }
                        }
                        return false;
                    }
                });
                if (listFiles == null) {
                    listFiles = C03H.A06;
                }
            }
            if (listFiles.length != 0) {
                for (File file4 : listFiles) {
                    if (!C03H.A02(file, file4.getName())) {
                        file4.getName();
                        String name = file4.getName();
                        if (C03H.A04 == null) {
                            C03H.A04 = AnonymousClass073.A00();
                        }
                        StringBuilder sb = new StringBuilder();
                        sb.append(name.replace("_prop.txt", "_"));
                        sb.append(C03H.A04);
                        File file5 = new File(c03h.A01, sb.toString());
                        file5.mkdirs();
                        synchronized (obj) {
                            listFiles2 = file3.listFiles(new FileFilter() { // from class: X.02D
                                @Override // java.io.FileFilter
                                public final boolean accept(File file6) {
                                    EnumC006102m enumC006102m2 = EnumC006102m.this;
                                    if (file6 != null && ((file6.getName().startsWith(enumC006102m2.A00) || enumC006102m2 == EnumC006102m.LARGE_REPORT) && file6.getName().contains("suppl_") && file6.getName().endsWith("_prop.txt"))) {
                                        return true;
                                    }
                                    return false;
                                }
                            });
                            if (listFiles2 == null) {
                                listFiles2 = C03H.A06;
                            }
                        }
                        C006902u A00 = A00(enumC006102m);
                        A00.A02(C07M.A2f, C06F.A00());
                        A00.A02(C07M.A2g, C06F.A01());
                        A00.A01(C07M.A09, true);
                        Application application = this.A00;
                        String installerPackageName = application.getPackageManager().getInstallerPackageName(application.getPackageName());
                        if (installerPackageName != null) {
                            A00.A04(C07M.A8b, installerPackageName);
                        }
                        ArrayList arrayList = new ArrayList(Arrays.asList(listFiles2));
                        if (!arrayList.contains(file4)) {
                            arrayList.add(file4);
                        }
                        ArrayList arrayList2 = new ArrayList();
                        synchronized (obj) {
                            listFiles3 = file3.listFiles(new FileFilter() { // from class: X.02E
                                @Override // java.io.FileFilter
                                public final boolean accept(File file6) {
                                    EnumC006102m enumC006102m2 = EnumC006102m.this;
                                    boolean z = r2;
                                    if (file6 != null && ((file6.getName().startsWith(enumC006102m2.A00) || enumC006102m2 == EnumC006102m.LARGE_REPORT) && ((!z || file6.getName().contains("suppl_")) && file6.getName().endsWith("_attach.txt")))) {
                                        return true;
                                    }
                                    return false;
                                }
                            });
                            if (listFiles3 == null) {
                                listFiles3 = C03H.A06;
                            }
                        }
                        for (File file6 : listFiles3) {
                            if (!C03H.A02(file, file6.getName())) {
                                arrayList2.add(file6);
                            }
                        }
                        synchronized (obj) {
                            listFiles4 = file.listFiles(new FileFilter() { // from class: X.02E
                                @Override // java.io.FileFilter
                                public final boolean accept(File file62) {
                                    EnumC006102m enumC006102m2 = EnumC006102m.this;
                                    boolean z = r2;
                                    if (file62 != null && ((file62.getName().startsWith(enumC006102m2.A00) || enumC006102m2 == EnumC006102m.LARGE_REPORT) && ((!z || file62.getName().contains("suppl_")) && file62.getName().endsWith("_attach.txt")))) {
                                        return true;
                                    }
                                    return false;
                                }
                            });
                            if (listFiles4 == null) {
                                listFiles4 = C03H.A06;
                            }
                        }
                        for (File file7 : listFiles4) {
                            if (!C03H.A02(file, file7.getName())) {
                                arrayList2.add(file7);
                            }
                        }
                        if (!arrayList2.isEmpty()) {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(enumC006102m.A00);
                            StringBuilder sb3 = new StringBuilder();
                            sb3.append(A01.A00);
                            sb3.append("_attach.txt");
                            sb2.append(sb3.toString());
                            c03h.A03(null, file5, sb2.toString(), arrayList2);
                        }
                        arrayList.addAll(arrayList2);
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append(enumC006102m.A00);
                        StringBuilder sb5 = new StringBuilder();
                        sb5.append(A01.A00);
                        sb5.append("_report.txt");
                        sb4.append(sb5.toString());
                        c03h.A03(A00, file5, sb4.toString(), arrayList);
                        C03H.A01(file, file4.getName());
                        C03H.A01(file, file4.getName().replace("_prop.txt", "_attach.txt"));
                    }
                }
            }
        }
    }

    public C03I(Application application, C0B6 c0b6, C03H c03h) {
        this.A00 = application;
        this.A01 = c0b6;
        this.A02 = c03h;
    }
}
