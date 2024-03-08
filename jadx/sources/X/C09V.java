package X;

import android.app.Application;
import java.util.List;
import java.util.concurrent.CountDownLatch;

/* renamed from: X.09V  reason: invalid class name */
/* loaded from: classes.dex */
public final class C09V {
    public static C07P A00;
    public static C08K A01;
    public static C08L A02;
    public static boolean A03;
    public static boolean A04;
    public static boolean A05;
    public static boolean A06;
    public static boolean A07;
    public static final CountDownLatch A09 = new CountDownLatch(1);
    public static final Object A08 = new Object();

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:69:0x045b
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    public static void A02(android.app.Application r26, X.C0B6 r27, long r28) {
        /*
            Method dump skipped, instructions count: 1125
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C09V.A02(android.app.Application, X.0B6, long):void");
    }

    public static synchronized C08K A00() {
        C08K c08k;
        synchronized (C09V.class) {
            C08L c08l = A02;
            if (c08l != null) {
                c08k = A01;
                if (c08k == null) {
                    if (c08l.A07 == null) {
                        c08l.A07 = new C012305g(AnonymousClass073.A00());
                    }
                    if (c08l.A04 == null) {
                        C015006s.A07("lacrima", "LacrimaConfigBuilder.setDeviceId not called, using 0");
                        c08l.A04 = new C012305g("0");
                    }
                    if (c08l.A09 == null) {
                        C015006s.A07("lacrima", "LacrimaConfigBuilder.setUserId not called, using 0");
                        c08l.A09 = new C012305g("0");
                    }
                    if (c08l.A03 == null) {
                        C015006s.A07("lacrima", "LacrimaConfigBuilder.setUserIdActorId not called, using 0");
                        c08l.A03 = new C012305g("0");
                    }
                    if (c08l.A02 == null) {
                        C015006s.A07("lacrima", "LacrimaConfigBuilder.setUserIdActingAccountId not called, using 0");
                        c08l.A02 = new C012305g("0");
                    }
                    if (c08l.A06 == null) {
                        C015006s.A07("lacrima", "LacrimaConfigBuilder.setIsEmployee not called, using false");
                        c08l.A06 = new C012305g(false);
                    }
                    if (c08l.A08 == null) {
                        C015006s.A07("lacrima", "LacrimaConfigBuilder.setShortProcessName not called, using \"\"");
                        c08l.A08 = new C012305g("");
                    }
                    if (c08l.A05 == null) {
                        C015006s.A07("lacrima", "LacrimaConfigBuilder.setFullProcessName not called, using \"\"");
                        c08l.A05 = new C012305g("");
                    }
                    if (c08l.A01 <= 0) {
                        c08l.A01 = c08l.A0C.getApplicationInfo().targetSdkVersion;
                    }
                    Application application = c08l.A0C;
                    C0BP c0bp = c08l.A07;
                    C0BP c0bp2 = c08l.A04;
                    C0BP c0bp3 = c08l.A09;
                    C0BP c0bp4 = c08l.A03;
                    C0BP c0bp5 = c08l.A02;
                    C0BP c0bp6 = c08l.A06;
                    c08k = new C08K(application, c08l.A0D, c08l.A0E, c08l.A0F, c08l.A0G, c0bp, c0bp2, c0bp3, c0bp4, c0bp5, c0bp6, c08l.A08, c08l.A05, c08l.A00, c08l.A0A, c08l.A0B);
                    A01 = c08k;
                }
            } else {
                throw AnonymousClass000.A07("Lacrima isn't initialized");
            }
        }
        return c08k;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:68:0x01e1
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:47)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    public static synchronized void A01() {
        /*
            Method dump skipped, instructions count: 505
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C09V.A01():void");
    }

    public static void A04(String str) {
        if (A03) {
            synchronized (C013005o.class) {
            }
            C0AP A002 = C0AP.A00();
            synchronized (C0AP.A03) {
                A002.A02.remove(str);
            }
        }
    }

    public static void A05(String str, String str2) {
        if (A03) {
            synchronized (C013005o.class) {
            }
            C0AP A002 = C0AP.A00();
            synchronized (C0AP.A03) {
                A002.A02.put(str, str2);
            }
        }
    }

    public static void A06(List list, int i) {
        list.add(new C0BS(i));
    }

    public static void A03(C08E c08e, C08L c08l) {
        c08l.A00(c08e.A00());
    }
}
