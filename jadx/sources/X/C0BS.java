package X;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.facebook.common.dextricks.classtracing.logger.ClassTracingLoggerFbLite;
import java.io.File;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Random;

/* renamed from: X.0BS  reason: invalid class name */
/* loaded from: classes.dex */
public class C0BS implements C08D {
    public final int A00;

    public C0BS(int i) {
        this.A00 = i;
    }

    @Override // X.C08D
    public final Object A4O(final C08K c08k) {
        String str;
        final File file;
        InterfaceC005802j interfaceC005802j;
        C007402z c007402z;
        switch (this.A00) {
            case 0:
            case 15:
                C09B c09b = c08k.A01;
                AbstractC005602h.A02(c09b, "Did you call earlyInit()?");
                C09B c09b2 = c08k.A01;
                AbstractC005602h.A02(c09b2, "Did you call earlyInit()?");
                File A01 = c09b.A01(c09b2.A08);
                if (A01 == null) {
                    return null;
                }
                return new C07B(A01);
            case 1:
            case 14:
            case 17:
            default:
                C09B c09b3 = c08k.A01;
                str = "Did you call earlyInit()?";
                AbstractC005602h.A02(c09b3, "Did you call earlyInit()?");
                C09B c09b4 = c08k.A01;
                AbstractC005602h.A02(c09b4, "Did you call earlyInit()?");
                file = c09b3.A01(c09b4.A08);
                if (file == null) {
                    return null;
                }
                break;
            case 2:
            case 13:
            case 16:
                final Application application = c08k.A0F;
                return new C07P(application) { // from class: X.03N
                    public Application A00;

                    @Override // X.C07P
                    public final Integer ACC() {
                        return AnonymousClass050.A0W;
                    }

                    @Override // X.C07P
                    public final void AV8(C006902u c006902u, EnumC006102m enumC006102m) {
                        Application application2 = this.A00;
                        if (C014606n.A01 == null) {
                            synchronized (C014606n.class) {
                                if (C014606n.A01 == null) {
                                    C014606n.A01 = new C014606n(application2);
                                }
                            }
                        }
                        C014606n c014606n = C014606n.A01;
                        c006902u.A03(C07M.A1k, Long.valueOf((Calendar.getInstance().getTimeInMillis() - SystemClock.elapsedRealtime()) / 1000));
                        C012805m c012805m = C07M.A1j;
                        String str2 = "0";
                        String str3 = "0";
                        try {
                            str3 = c014606n.A00.getString(c012805m.A00, "0");
                        } catch (Exception unused) {
                            C015006s.A06("lacrima", "Failed to read from SharedPreferences");
                            AbstractC019608w.A00();
                        }
                        if (str3 != null) {
                            c006902u.A03(c012805m, Long.valueOf(Long.parseLong(str3)));
                        }
                        C012805m c012805m2 = C07M.A1l;
                        try {
                            str2 = c014606n.A00.getString(c012805m2.A00, "0");
                        } catch (Exception unused2) {
                            C015006s.A06("lacrima", "Failed to read from SharedPreferences");
                            AbstractC019608w.A00();
                        }
                        if (str2 != null) {
                            c006902u.A03(c012805m2, Long.valueOf(Long.parseLong(str2)));
                        }
                    }

                    {
                        this.A00 = application;
                    }
                };
            case 3:
            case ClassTracingLoggerFbLite.ENCODED_CLASS_NAMES_LENGTH /* 4 */:
            case 6:
                C09B c09b5 = c08k.A01;
                str = "Did you call earlyInit()?";
                AbstractC005602h.A02(c09b5, "Did you call earlyInit()?");
                file = c09b5.A06;
                AbstractC005602h.A02(file, "Did you call SessionManager.init()?");
                break;
            case 5:
                final Application application2 = c08k.A0F;
                final C09B c09b6 = c08k.A01;
                final C07R A00 = AbstractC005602h.A00(c08k, c09b6);
                return new InterfaceC019008p(application2, A00, c09b6) { // from class: X.03j
                    public final Application A00;
                    public final C07R A01;
                    public final C09B A02;

                    @Override // X.InterfaceC019008p
                    public final /* synthetic */ AnonymousClass034 ABM() {
                        return null;
                    }

                    @Override // X.InterfaceC019008p
                    public final EnumC019108q ACB() {
                        return EnumC019108q.A0C;
                    }

                    @Override // X.InterfaceC019008p
                    public final void start() {
                        String A02 = AbstractC013305s.A02("fb.report_source");
                        if (A02.equals("")) {
                            A02 = System.getProperty("fb.report_source");
                        }
                        C006902u c006902u = new C006902u(null);
                        if (!TextUtils.isEmpty(A02)) {
                            c006902u.A04(C07M.A8c, A02);
                            String A022 = AbstractC013305s.A02("fb.test_name");
                            String A023 = AbstractC013305s.A02("fb.test_execution_uuid");
                            if (TextUtils.isEmpty(A022) && TextUtils.isEmpty(A023)) {
                                File file2 = new File(this.A02.A07, "report_source");
                                file2.mkdir();
                                c006902u.A05(C07N.A0E, EnumC006102m.CRITICAL_REPORT, new File(file2, "report_source_ref.txt"));
                            } else {
                                StringBuilder sb = new StringBuilder();
                                sb.append('{');
                                sb.append("\"test_name\":");
                                sb.append('\"');
                                sb.append(A022);
                                sb.append("\",");
                                sb.append("\"test_execution_uuid\":");
                                sb.append('\"');
                                sb.append(A023);
                                sb.append('\"');
                                sb.append('}');
                                c006902u.A04(C07M.A8e, sb.toString());
                            }
                        }
                        String A024 = AbstractC013305s.A02("fb.testing.build_target");
                        if (!A024.equals("")) {
                            c006902u.A04(C07M.A6r, A024);
                        }
                        String A025 = AbstractC013305s.A02("fb.fury_stacktraces_filename");
                        if (!TextUtils.isEmpty(A025)) {
                            c006902u.A05(C07N.A09, EnumC006102m.CRITICAL_REPORT, new File(this.A00.getFilesDir(), A025));
                        }
                        String A026 = AbstractC013305s.A02("ig.ig_server_rev_hash");
                        if ((!A026.equals("") || (A026 = System.getProperty("ig.ig_server_rev_hash")) != null) && !A026.equals("")) {
                            c006902u.A04(C07M.A5f, A026);
                        }
                        C07R c07r = this.A01;
                        c07r.A06(c006902u, EnumC006102m.CRITICAL_REPORT, this);
                        c07r.A06(c006902u, EnumC006102m.LARGE_REPORT, this);
                    }

                    {
                        this.A00 = application2;
                        this.A02 = c09b6;
                        this.A01 = A00;
                    }
                };
            case 7:
                C09B c09b7 = c08k.A01;
                return new C007903h(AbstractC005602h.A00(c08k, c09b7), new C03g(new Random()), c09b7);
            case 8:
                return new C006502q(c08k.A0F, c08k, this);
            case 9:
                synchronized (C005702i.class) {
                    interfaceC005802j = C005702i.A00;
                }
                if (interfaceC005802j == null) {
                    InterfaceC005802j interfaceC005802j2 = new InterfaceC005802j() { // from class: X.02k
                        @Override // X.InterfaceC005802j
                        public final void AGV(Throwable th) {
                            C08K c08k2 = c08k;
                            AbstractC016607l.A00((String) c08k2.A0R.get(), (String) c08k2.A0L.get(), (String) c08k2.A0K.get(), (String) c08k2.A0Q.get(), th, new HashMap());
                        }
                    };
                    synchronized (C005702i.class) {
                        C005702i.A00 = interfaceC005802j2;
                    }
                }
                final C09B c09b8 = c08k.A01;
                final C07R A002 = AbstractC005602h.A00(c08k, c09b8);
                return new InterfaceC019008p(A002, c09b8) { // from class: X.02l
                    public final C07R A00;
                    public final C09B A01;

                    @Override // X.InterfaceC019008p
                    public final void start() {
                        C006902u c006902u = new C006902u(null);
                        c006902u.A04(C07M.A4F, this.A01.A09);
                        C07R c07r = this.A00;
                        c07r.A06(c006902u, EnumC006102m.CRITICAL_REPORT, this);
                        c07r.A06(c006902u, EnumC006102m.LARGE_REPORT, this);
                    }

                    @Override // X.InterfaceC019008p
                    public final /* synthetic */ AnonymousClass034 ABM() {
                        return null;
                    }

                    @Override // X.InterfaceC019008p
                    public final EnumC019108q ACB() {
                        return EnumC019108q.A0E;
                    }

                    {
                        this.A01 = c09b8;
                        this.A00 = A002;
                    }
                };
            case 10:
                Application application3 = c08k.A0F;
                C09B c09b9 = c08k.A01;
                C07R A003 = AbstractC005602h.A00(c08k, c09b9);
                synchronized (C007402z.class) {
                    c007402z = C007402z.A08;
                    if (c007402z == null) {
                        c007402z = new C007402z();
                        C007402z.A08 = c007402z;
                    }
                }
                C0BP c0bp = c08k.A02;
                if (c0bp == null) {
                    c0bp = new C0BR(c08k, 1);
                    c08k.A02 = c0bp;
                }
                AnonymousClass030 anonymousClass030 = (AnonymousClass030) c0bp.get();
                InterfaceC017507w interfaceC017507w = new InterfaceC017507w() { // from class: X.032
                    @Override // X.InterfaceC017507w
                    public final void AOB(boolean z) {
                        for (InterfaceC017507w interfaceC017507w2 : AbstractC018808n.A00) {
                            interfaceC017507w2.AOB(z);
                        }
                    }
                };
                C0BP c0bp2 = c08k.A06;
                if (c0bp2 == null) {
                    c0bp2 = new C0BR(c08k, 2);
                    c08k.A06 = c0bp2;
                }
                return new AnonymousClass035(application3, c007402z, anonymousClass030, A003, interfaceC017507w, new AnonymousClass034(), c09b9, (AnonymousClass033) c0bp2.get());
            case 11:
                C09B c09b10 = c08k.A01;
                return new C007102w(AbstractC005602h.A00(c08k, c09b10), c09b10);
            case 12:
                final Application application4 = c08k.A0F;
                return new C07P(application4) { // from class: X.02r
                    public Context A00;

                    @Override // X.C07P
                    public final Integer ACC() {
                        return AnonymousClass050.A0K;
                    }

                    @Override // X.C07P
                    public final void AV8(C006902u c006902u, EnumC006102m enumC006102m) {
                        ActivityManager activityManager = (ActivityManager) this.A00.getSystemService("activity");
                        if (activityManager != null) {
                            c006902u.A02(C07M.A25, activityManager.getMemoryClass());
                            c006902u.A02(C07M.A1i, activityManager.getLargeMemoryClass());
                        }
                    }

                    {
                        this.A00 = application4;
                    }
                };
            case 18:
                return new C03S();
            case 19:
                C0BP c0bp3 = c08k.A0D;
                if (c0bp3 == null) {
                    c0bp3 = new C006702s(c08k);
                    c08k.A0D = c0bp3;
                }
                return c0bp3.get();
            case 20:
                return new C07P() { // from class: X.03O
                    @Override // X.C07P
                    public final Integer ACC() {
                        return AnonymousClass050.A08;
                    }

                    @Override // X.C07P
                    public final void AV8(C006902u c006902u, EnumC006102m enumC006102m) {
                        c006902u.A03(C07M.A1b, Long.valueOf(C015707b.A00()));
                        c006902u.A03(C07M.A3A, Long.valueOf(C015707b.A01()));
                    }
                };
            case 21:
                return C0AP.A00();
            case 22:
                C09B c09b11 = c08k.A01;
                AbstractC005602h.A02(c09b11, "Did you call earlyInit()?");
                File file2 = c09b11.A06;
                AbstractC005602h.A02(file2, "Did you call SessionManager.init()?");
                return new C03S(AnonymousClass000.A04(file2, "logcat.txt"));
            case 23:
                return C09V.A00;
            case 24:
                return null;
        }
        final C09B c09b12 = c08k.A01;
        AbstractC005602h.A02(c09b12, str);
        return new C07P(c09b12, file) { // from class: X.03M
            public final C09B A00;
            public final File A01;

            @Override // X.C07P
            public final Integer ACC() {
                return AnonymousClass050.A0v;
            }

            {
                this.A01 = file;
                this.A00 = c09b12;
            }

            /* JADX WARN: Code restructure failed: missing block: B:271:0x0461, code lost:
                if (r10 != 'i') goto L181;
             */
            /* JADX WARN: Removed duplicated region for block: B:160:0x02b0 A[Catch: all -> 0x0885, TRY_ENTER, TryCatch #56 {, blocks: (B:6:0x004f, B:8:0x0057, B:10:0x0061, B:13:0x0071, B:15:0x0083, B:27:0x00a5, B:29:0x00ab, B:31:0x00b5, B:33:0x00c4, B:43:0x00e5, B:45:0x00eb, B:47:0x00f5, B:51:0x010a, B:63:0x0127, B:65:0x012d, B:67:0x0137, B:69:0x0147, B:79:0x0176, B:81:0x017c, B:83:0x0186, B:87:0x019b, B:99:0x01c8, B:101:0x01ce, B:103:0x01d8, B:108:0x01f5, B:118:0x0212, B:119:0x0217, B:136:0x025b, B:137:0x025c, B:138:0x025f, B:155:0x02a1, B:156:0x02a2, B:160:0x02b0, B:162:0x02b6, B:164:0x02c0, B:169:0x02df, B:179:0x02fc, B:181:0x0302, B:183:0x030c, B:185:0x031a, B:197:0x033c, B:199:0x0342, B:201:0x034c, B:205:0x035f, B:218:0x0383, B:220:0x0389, B:222:0x0393, B:229:0x03b3, B:273:0x0464, B:275:0x046a, B:277:0x0474, B:279:0x0483, B:291:0x04a5, B:293:0x04ab, B:295:0x04b5, B:298:0x04c5, B:300:0x04d7, B:312:0x04f9, B:314:0x04ff, B:316:0x0509, B:320:0x051e, B:333:0x0543, B:335:0x0549, B:337:0x0553, B:343:0x056b, B:355:0x0592, B:357:0x0598, B:359:0x05a2, B:363:0x05b5, B:421:0x06fb, B:423:0x0701, B:425:0x070b, B:429:0x071e, B:443:0x0743, B:445:0x0749, B:447:0x0753, B:449:0x0763, B:459:0x0784, B:461:0x078a, B:463:0x0794, B:468:0x07b3, B:471:0x07bb, B:473:0x07bd, B:452:0x076b, B:454:0x076d, B:478:0x07d2, B:480:0x07d8, B:482:0x07e2, B:484:0x07f0, B:495:0x080e, B:497:0x0814, B:499:0x081e, B:501:0x082c, B:513:0x084e, B:515:0x0854, B:517:0x085e, B:519:0x086c, B:524:0x0875, B:526:0x0877, B:506:0x0835, B:508:0x0837, B:487:0x07f8, B:489:0x07fa, B:434:0x0727, B:436:0x0729, B:368:0x05be, B:370:0x05c0, B:346:0x0573, B:348:0x0575, B:349:0x057f, B:325:0x0527, B:327:0x0529, B:305:0x04e0, B:307:0x04e2, B:284:0x048c, B:286:0x048e, B:232:0x03bb, B:234:0x03bd, B:210:0x0368, B:212:0x036a, B:190:0x0323, B:192:0x0325, B:172:0x02e7, B:174:0x02e9, B:111:0x01fd, B:113:0x01ff, B:92:0x01a4, B:94:0x01a6, B:72:0x014f, B:74:0x0151, B:56:0x0113, B:58:0x0115, B:36:0x00cc, B:38:0x00ce, B:20:0x008c, B:22:0x008e, B:120:0x0218, B:122:0x021e, B:124:0x0228, B:129:0x0245, B:139:0x0260, B:141:0x0266, B:143:0x0270, B:148:0x028c, B:151:0x0294, B:153:0x0296, B:132:0x024d, B:134:0x024f), top: B:655:0x004f, inners: #0, #6, #7, #10, #11, #19, #22, #27, #30, #31, #32, #33, #36, #39, #51, #53, #54, #59, #62, #65, #68 }] */
            /* JADX WARN: Removed duplicated region for block: B:273:0x0464 A[Catch: all -> 0x0885, TRY_ENTER, TryCatch #56 {, blocks: (B:6:0x004f, B:8:0x0057, B:10:0x0061, B:13:0x0071, B:15:0x0083, B:27:0x00a5, B:29:0x00ab, B:31:0x00b5, B:33:0x00c4, B:43:0x00e5, B:45:0x00eb, B:47:0x00f5, B:51:0x010a, B:63:0x0127, B:65:0x012d, B:67:0x0137, B:69:0x0147, B:79:0x0176, B:81:0x017c, B:83:0x0186, B:87:0x019b, B:99:0x01c8, B:101:0x01ce, B:103:0x01d8, B:108:0x01f5, B:118:0x0212, B:119:0x0217, B:136:0x025b, B:137:0x025c, B:138:0x025f, B:155:0x02a1, B:156:0x02a2, B:160:0x02b0, B:162:0x02b6, B:164:0x02c0, B:169:0x02df, B:179:0x02fc, B:181:0x0302, B:183:0x030c, B:185:0x031a, B:197:0x033c, B:199:0x0342, B:201:0x034c, B:205:0x035f, B:218:0x0383, B:220:0x0389, B:222:0x0393, B:229:0x03b3, B:273:0x0464, B:275:0x046a, B:277:0x0474, B:279:0x0483, B:291:0x04a5, B:293:0x04ab, B:295:0x04b5, B:298:0x04c5, B:300:0x04d7, B:312:0x04f9, B:314:0x04ff, B:316:0x0509, B:320:0x051e, B:333:0x0543, B:335:0x0549, B:337:0x0553, B:343:0x056b, B:355:0x0592, B:357:0x0598, B:359:0x05a2, B:363:0x05b5, B:421:0x06fb, B:423:0x0701, B:425:0x070b, B:429:0x071e, B:443:0x0743, B:445:0x0749, B:447:0x0753, B:449:0x0763, B:459:0x0784, B:461:0x078a, B:463:0x0794, B:468:0x07b3, B:471:0x07bb, B:473:0x07bd, B:452:0x076b, B:454:0x076d, B:478:0x07d2, B:480:0x07d8, B:482:0x07e2, B:484:0x07f0, B:495:0x080e, B:497:0x0814, B:499:0x081e, B:501:0x082c, B:513:0x084e, B:515:0x0854, B:517:0x085e, B:519:0x086c, B:524:0x0875, B:526:0x0877, B:506:0x0835, B:508:0x0837, B:487:0x07f8, B:489:0x07fa, B:434:0x0727, B:436:0x0729, B:368:0x05be, B:370:0x05c0, B:346:0x0573, B:348:0x0575, B:349:0x057f, B:325:0x0527, B:327:0x0529, B:305:0x04e0, B:307:0x04e2, B:284:0x048c, B:286:0x048e, B:232:0x03bb, B:234:0x03bd, B:210:0x0368, B:212:0x036a, B:190:0x0323, B:192:0x0325, B:172:0x02e7, B:174:0x02e9, B:111:0x01fd, B:113:0x01ff, B:92:0x01a4, B:94:0x01a6, B:72:0x014f, B:74:0x0151, B:56:0x0113, B:58:0x0115, B:36:0x00cc, B:38:0x00ce, B:20:0x008c, B:22:0x008e, B:120:0x0218, B:122:0x021e, B:124:0x0228, B:129:0x0245, B:139:0x0260, B:141:0x0266, B:143:0x0270, B:148:0x028c, B:151:0x0294, B:153:0x0296, B:132:0x024d, B:134:0x024f), top: B:655:0x004f, inners: #0, #6, #7, #10, #11, #19, #22, #27, #30, #31, #32, #33, #36, #39, #51, #53, #54, #59, #62, #65, #68 }] */
            @Override // X.C07P
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final void AV8(X.C006902u r15, X.EnumC006102m r16) {
                /*
                    Method dump skipped, instructions count: 2206
                    To view this dump change 'Code comments level' option to 'DEBUG'
                */
                throw new UnsupportedOperationException("Method not decompiled: X.C03M.AV8(X.02u, X.02m):void");
            }
        };
    }
}
