package X;

import android.content.Context;
import java.io.File;
import java.io.FileFilter;
import java.io.FileReader;
import java.io.IOException;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Properties;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: X.090  reason: invalid class name */
/* loaded from: classes.dex */
public final class AnonymousClass090 {
    public static int A0E;
    public static boolean A0F;
    public C009503x A00;
    public ScheduledExecutorService A01;
    public final Context A02;
    public final C016907q A03;
    public final C008603o A04;
    public final Runnable A05;
    public final Set A06;
    public final Executor A07;
    public final AtomicInteger A08;
    public final C0BP A09;
    public final C0BP A0A;
    public final C0BP A0B;
    public final C0BP A0C;
    public final C0BP A0D;

    public static final int A00(File file) {
        int length;
        File[] listFiles = file.listFiles(new C02S());
        if (listFiles == null) {
            length = 0;
        } else {
            length = listFiles.length;
        }
        int i = length + 1;
        AnonymousClass000.A04(file, AnonymousClass000.A0B("_attempt", AnonymousClass000.A0C(), i)).createNewFile();
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x011e A[Catch: all -> 0x0216, IOException -> 0x021e, TryCatch #3 {all -> 0x0216, blocks: (B:4:0x0014, B:6:0x0021, B:8:0x0025, B:12:0x002d, B:14:0x003b, B:16:0x0055, B:18:0x0058, B:22:0x005f, B:23:0x0064, B:50:0x00fb, B:44:0x00ed, B:57:0x0111, B:59:0x011e, B:62:0x0135, B:65:0x014a, B:67:0x0151, B:69:0x0158, B:71:0x016b, B:72:0x016e, B:73:0x0175, B:82:0x01ce, B:83:0x01d6, B:85:0x01dc, B:95:0x020b, B:96:0x0212, B:89:0x01ec, B:90:0x01f4, B:92:0x01fa, B:93:0x0206, B:94:0x0207, B:56:0x0109), top: B:110:0x0014 }] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0133  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static void A01(final X.C02N r23, final X.AnonymousClass090 r24, final X.C04A r25, final java.io.File r26) {
        /*
            Method dump skipped, instructions count: 550
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.AnonymousClass090.A01(X.02N, X.090, X.04A, java.io.File):void");
    }

    public final void A02() {
        C06A.A01("cleanupSentReports");
        try {
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            C017307u.A01().execute(new Runnable() { // from class: X.040
                public static final String __redex_internal_original_name = "ReportSender$$ExternalSyntheticLambda4";

                @Override // java.lang.Runnable
                public final void run() {
                    int length;
                    AnonymousClass090 anonymousClass090 = AnonymousClass090.this;
                    CountDownLatch countDownLatch2 = countDownLatch;
                    if (!anonymousClass090.A04.A00("cleanup")) {
                        File file = ((C03H) anonymousClass090.A0C.get()).A01;
                        try {
                            anonymousClass090.A03.A02();
                        } catch (IOException unused) {
                            AbstractC019608w.A00();
                        }
                        File[] listFiles = file.listFiles();
                        if (listFiles != null) {
                            for (File file2 : listFiles) {
                                try {
                                    File[] listFiles2 = file2.listFiles(new C02S());
                                    if (listFiles2 == null) {
                                        length = 0;
                                    } else {
                                        length = listFiles2.length;
                                    }
                                    C016907q c016907q = anonymousClass090.A03;
                                    boolean z = false;
                                    if (length >= 3) {
                                        z = true;
                                        anonymousClass090.A05.run();
                                    }
                                    if (new File(file2, "_sent").exists() || z) {
                                        if (AnonymousClass090.A0F) {
                                            C015006s.A0J("lacrima", "Would have deleted: %s", file2.getPath());
                                        } else if (new File(file2, "_sent").exists()) {
                                            synchronized (C016907q.class) {
                                                Iterator it = C016907q.A05.iterator();
                                                if (it.hasNext()) {
                                                    it.next();
                                                    throw new NullPointerException("onDeleteSentReport");
                                                    break;
                                                }
                                                c016907q.A04(file2, "reports");
                                            }
                                        } else if (z) {
                                            c016907q.A03(file2);
                                        }
                                    }
                                } catch (IOException e) {
                                    C015006s.A0B("lacrima", "Error while deleting report directory", e);
                                    AbstractC019608w.A00();
                                }
                            }
                            countDownLatch2.countDown();
                        }
                    }
                }
            });
        } finally {
            C06A.A00();
        }
    }

    public final void A03(final EnumC006102m enumC006102m) {
        StringBuilder A0C = AnonymousClass000.A0C();
        A0C.append("sendPendingReports.");
        A0C.append(enumC006102m.name());
        C06A.A01(AnonymousClass000.A0A("", A0C));
        try {
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            this.A07.execute(new AbstractRunnableC009603y() { // from class: X.03z
                public static final String __redex_internal_original_name = "ReportSender$2";

                /* JADX WARN: Type inference failed for: r7v0, types: [X.04A] */
                @Override // java.lang.Runnable
                public final void run() {
                    File file;
                    AnonymousClass090 anonymousClass090 = this;
                    final EnumC006102m enumC006102m2 = enumC006102m;
                    StringBuilder sb = new StringBuilder();
                    sb.append("sendPendingReportsInternal.");
                    String name = enumC006102m2.name();
                    sb.append(name);
                    C06A.A01(sb.toString());
                    try {
                        C008603o c008603o = anonymousClass090.A04;
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("send_");
                        sb2.append(name);
                        if (!c008603o.A00(sb2.toString())) {
                            synchronized (c008603o.A00) {
                                try {
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            File[] listFiles = ((C03H) anonymousClass090.A0C.get()).A01.listFiles(new FileFilter() { // from class: X.048
                                @Override // java.io.FileFilter
                                public final boolean accept(File file2) {
                                    EnumC006102m enumC006102m3 = EnumC006102m.this;
                                    if (file2 != null && file2.isDirectory() && file2.getName().startsWith(enumC006102m3.A00)) {
                                        return true;
                                    }
                                    return false;
                                }
                            });
                            if (listFiles != null) {
                                Arrays.sort(listFiles, new Comparator() { // from class: X.049
                                    @Override // java.util.Comparator
                                    public final int compare(Object obj, Object obj2) {
                                        File file2 = (File) obj;
                                        File file3 = (File) obj2;
                                        String name2 = file2.getName();
                                        String name3 = file3.getName();
                                        int lastIndexOf = name2.lastIndexOf(95);
                                        int lastIndexOf2 = name3.lastIndexOf(95);
                                        if (lastIndexOf >= 0 && lastIndexOf2 >= 0 && lastIndexOf < name2.length() - 1 && lastIndexOf2 < name3.length() - 1) {
                                            int indexOf = name2.indexOf(45, lastIndexOf);
                                            int indexOf2 = name3.indexOf(45, lastIndexOf2);
                                            if (indexOf >= 0 && indexOf2 >= 0) {
                                                try {
                                                    return (int) (Long.parseLong(name2.substring(lastIndexOf + 1, indexOf)) - Long.parseLong(name3.substring(lastIndexOf2 + 1, indexOf2)));
                                                } catch (NumberFormatException unused) {
                                                    AbstractC019608w.A00();
                                                }
                                            }
                                        }
                                        return (int) (file2.lastModified() - file3.lastModified());
                                    }
                                });
                                anonymousClass090.A08.getAndIncrement();
                                ?? r7 = new Object() { // from class: X.04A
                                };
                                for (File file2 : listFiles) {
                                    File[] listFiles2 = file2.listFiles(new C04U("_report.txt"));
                                    if (listFiles2 != null && listFiles2.length == 1 && (file = listFiles2[0]) != null) {
                                        try {
                                            Properties properties = new Properties();
                                            FileReader fileReader = new FileReader(file);
                                            try {
                                                properties.load(fileReader);
                                                fileReader.close();
                                                C02O c02o = new C02O(properties);
                                                AnonymousClass090.A0E++;
                                                file2.getName();
                                                if (!file2.exists()) {
                                                    file2.getName();
                                                } else {
                                                    C06A.A01("ReportSender.sendInternal");
                                                    Set set = anonymousClass090.A06;
                                                    synchronized (set) {
                                                        try {
                                                            if (set.contains(file2)) {
                                                                C015006s.A0J("lacrima", "Report sender attempt already in progress: %s", file2.getName());
                                                            } else {
                                                                set.add(file2);
                                                                AnonymousClass090.A01(c02o, anonymousClass090, r7, file2);
                                                                synchronized (set) {
                                                                    try {
                                                                        set.remove(file2);
                                                                    } catch (Throwable th2) {
                                                                        th = th2;
                                                                        throw th;
                                                                    }
                                                                }
                                                            }
                                                        } catch (Throwable th3) {
                                                            th = th3;
                                                        }
                                                    }
                                                    C06A.A00();
                                                }
                                            } catch (Throwable th4) {
                                                try {
                                                    fileReader.close();
                                                } catch (Throwable unused) {
                                                }
                                                throw th4;
                                                break;
                                            }
                                        } catch (IOException unused2) {
                                            AbstractC019608w.A00();
                                        }
                                    }
                                }
                            }
                        }
                        C06A.A00();
                        countDownLatch.countDown();
                    } finally {
                    }
                }
            });
        } finally {
            C06A.A00();
        }
    }

    public AnonymousClass090(Context context, C016907q c016907q, Runnable runnable, Executor executor, C0BP c0bp, C0BP c0bp2, C0BP c0bp3, C0BP c0bp4, C0BP c0bp5, C0BP c0bp6) {
        C008603o c008603o = new C008603o();
        this.A06 = new HashSet();
        this.A08 = new AtomicInteger();
        this.A02 = context;
        this.A0D = c0bp;
        this.A0A = c0bp2;
        this.A09 = c0bp3;
        this.A0B = c0bp4;
        this.A0C = c0bp6;
        this.A03 = c016907q;
        this.A07 = executor;
        this.A05 = runnable;
        this.A04 = c008603o;
        this.A00 = (C009503x) c0bp5.get();
    }
}
