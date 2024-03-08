package X;

import android.content.Context;
import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.util.Arrays;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

/* renamed from: X.00c  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC000100c implements Runnable {
    public static final String __redex_internal_original_name = "LacrimaConfig$$ExternalSyntheticLambda1";
    public final /* synthetic */ C08K A00;

    @Override // java.lang.Runnable
    public final void run() {
        Map map;
        int length;
        File file;
        C08K c08k = this.A00;
        C04s.A01("recoverOldSessions");
        try {
            C0BP c0bp = c08k.A08;
            if (c0bp == null) {
                c0bp = new C0BR(c08k, 5);
                c08k.A08 = c0bp;
            }
            C03H c03h = (C03H) c0bp.get();
            C09B c09b = c08k.A01;
            AbstractC005602h.A02(c09b, "Did you call earlyInit()?");
            HashSet A02 = c09b.A02();
            Iterator it = A02.iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                StringBuilder sb = new StringBuilder();
                sb.append("processOldSessions.");
                sb.append(str);
                C06A.A01(sb.toString());
                synchronized (C03H.A05) {
                    try {
                        File[] A03 = c03h.A00.A03(str);
                        int i = 0;
                        while (true) {
                            length = A03.length - 1;
                            File file2 = null;
                            if (i >= length) {
                                break;
                            }
                            File file3 = A03[i];
                            if (i > 0) {
                                file2 = A03[i - 1];
                            }
                            C03H.A00(EnumC006102m.CRITICAL_REPORT, c03h, file3, file2);
                            i++;
                        }
                        for (int i2 = 0; i2 < length; i2++) {
                            File file4 = A03[i2];
                            if (i2 > 0) {
                                file = A03[i2 - 1];
                            } else {
                                file = null;
                            }
                            C03H.A00(EnumC006102m.LARGE_REPORT, c03h, file4, file);
                        }
                    } catch (Throwable th) {
                        th = th;
                        throw th;
                    }
                }
                C06A.A00();
            }
            C0BP c0bp2 = c08k.A0B;
            if (c0bp2 == null) {
                c0bp2 = new C008203k(c08k);
                c08k.A0B = c0bp2;
            }
            AnonymousClass090 anonymousClass090 = (AnonymousClass090) c0bp2.get();
            anonymousClass090.A03(EnumC006102m.CRITICAL_REPORT);
            anonymousClass090.A03(EnumC006102m.LARGE_REPORT);
            Iterator it2 = A02.iterator();
            loop3: while (it2.hasNext()) {
                String str2 = (String) it2.next();
                C09B c09b2 = c08k.A01;
                AbstractC005602h.A02(c09b2, "Did you call earlyInit()?");
                int i3 = c09b2.A03;
                StringBuilder sb2 = new StringBuilder();
                sb2.append("cleanupOldSessions.");
                sb2.append(str2);
                C06A.A01(sb2.toString());
                try {
                    c09b2.A05.A02();
                } catch (IOException unused) {
                    AbstractC019608w.A00();
                }
                synchronized (C09B.A0B) {
                    try {
                        File[] A032 = c09b2.A03(str2);
                        for (int i4 = 0; i4 < A032.length - i3; i4++) {
                            File file5 = A032[i4];
                            file5.getName();
                            try {
                                C016907q c016907q = c09b2.A05;
                                synchronized (C016907q.class) {
                                    C06A.A01("deleteSessionDir");
                                    Iterator it3 = C016907q.A05.iterator();
                                    if (it3.hasNext()) {
                                        it3.next();
                                        throw new NullPointerException("onDeleteSession");
                                        break loop3;
                                    }
                                    c016907q.A04(file5, "collector");
                                    C06A.A00();
                                }
                            } catch (IOException e) {
                                C015006s.A0B("lacrima", "Failed to delete session dir", e);
                                AbstractC019608w.A00();
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        throw th;
                    }
                }
                C06A.A00();
            }
            anonymousClass090.A02();
            C09B c09b3 = c08k.A01;
            AbstractC005602h.A02(c09b3, "Did you call earlyInit()?");
            C016907q c016907q2 = c09b3.A05;
            long currentTimeMillis = System.currentTimeMillis();
            Context context = c016907q2.A00;
            File file6 = new File(context.getApplicationInfo().dataDir, "core");
            Object obj = c016907q2.A01;
            synchronized (obj) {
                try {
                    File file7 = new File(file6.getPath());
                    map = c016907q2.A02;
                    if ((map.get(file6.getPath()) == null || file7.lastModified() < currentTimeMillis - 259200000) && (!file7.getPath().startsWith("/system/"))) {
                        file7.delete();
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
            File[] listFiles = context.getDir("minidumps", 0).listFiles(new FileFilter() { // from class: X.00n
                @Override // java.io.FileFilter
                public final boolean accept(File file8) {
                    AbstractC007302y.A00(file8);
                    return file8.getName().endsWith(".dmp");
                }
            });
            if (listFiles != null) {
                final HashMap hashMap = new HashMap();
                int length2 = listFiles.length;
                for (File file8 : listFiles) {
                    hashMap.put(file8, Long.valueOf(file8.lastModified()));
                }
                Arrays.sort(listFiles, new Comparator() { // from class: X.00o
                    @Override // java.util.Comparator
                    public final int compare(Object obj2, Object obj3) {
                        Map map2 = hashMap;
                        return (int) (((Number) map2.get(obj2)).longValue() - ((Number) map2.get(obj3)).longValue());
                    }
                });
                for (int i5 = 0; i5 < length2 - 3; i5++) {
                    File file9 = listFiles[i5];
                    if (file9.lastModified() == ((Long) hashMap.get(file9)).longValue()) {
                        synchronized (obj) {
                            try {
                                if ((file9.lastModified() < currentTimeMillis - 259200000 || map.get(file9.getPath()) == null) && (!file9.getPath().startsWith("/system/"))) {
                                    file9.delete();
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                throw th;
                            }
                        }
                    }
                }
            }
            C016907q.A00(c016907q2, "large_", 12, 259200000L);
            C016907q.A00(c016907q2, "critical_", 8, 604800000L);
        } finally {
            C04s.A00();
        }
    }
}
