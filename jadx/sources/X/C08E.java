package X;

import com.facebook.common.dextricks.classtracing.logger.ClassTracingLoggerFbLite;
import java.util.HashMap;

/* renamed from: X.08E  reason: invalid class name */
/* loaded from: classes.dex */
public final class C08E {
    public C08D A01;
    public final Integer A05;
    public C08D A00 = new C0BU(this, 0);
    public final C08C A04 = new C08C();
    public Integer A02 = AnonymousClass050.A00;
    public boolean A03 = true;

    /* JADX WARN: Type inference failed for: r0v0, types: [X.06Q] */
    public final C06Q A00() {
        C08D c08d = this.A00;
        Integer num = this.A02;
        Integer num2 = this.A05;
        boolean z = this.A03;
        return new C08G(this.A04, c08d, this.A01, num, num2, z) { // from class: X.06Q
            public final Integer A00;
            public final C08C A01;
            public final C08D A02;
            public final C08D A03;
            public final Integer A04;
            public final boolean A05;

            @Override // X.C08G
            public final Integer AG4() {
                return this.A04;
            }

            @Override // X.C08G
            public final void AH8(final C08K c08k) {
                final C07R c07r = c08k.A00;
                AbstractC005602h.A02(c07r, "Did you call earlyInit()?");
                InterfaceC019008p interfaceC019008p = (InterfaceC019008p) this.A02.A4O(c08k);
                if (interfaceC019008p == null) {
                    A00("Detector is null");
                    C015006s.A0J("lacrima", "DetectorConfig.init failed (detector): %s", getClass().getSimpleName());
                    return;
                }
                StringBuilder A0C = AnonymousClass000.A0C();
                A0C.append("init.");
                C04s.A01(AnonymousClass000.A0A(interfaceC019008p.ACB().A00, A0C));
                try {
                    synchronized (c07r.A03) {
                        try {
                            c07r.A08.add(interfaceC019008p);
                        } catch (Throwable th) {
                            th = th;
                        }
                    }
                    C08D c08d2 = this.A03;
                    if (c08d2 != null) {
                        C03H A00 = AnonymousClass000.A00(c08k);
                        C03I c03i = (C03I) c08d2.A4O(c08k);
                        if (c03i == null) {
                            A00("Mixer is null");
                            C015006s.A0J("lacrima", "DetectorConfig.init failed (mixer): %s", getClass().getSimpleName());
                        }
                        synchronized (C03H.A05) {
                            try {
                                A00.A02.add(c03i);
                            } catch (Throwable th2) {
                                th = th2;
                                throw th;
                            }
                        }
                        EnumC006102m enumC006102m = EnumC006102m.CRITICAL_REPORT;
                        boolean z2 = this.A05;
                        c07r.A08(new C03L(c08k, z2), enumC006102m, interfaceC019008p);
                        c07r.A08(new C03L(c08k, z2), EnumC006102m.LARGE_REPORT, interfaceC019008p);
                    }
                    final C08C c08c = this.A01;
                    for (C07P c07p : c08c.A03) {
                        c07r.A04(c07p, EnumC006102m.CRITICAL_REPORT, interfaceC019008p);
                    }
                    for (C08D c08d3 : c08c.A02) {
                        C07P c07p2 = (C07P) c08d3.A4O(c08k);
                        if (c07p2 != null) {
                            c07r.A04(c07p2, EnumC006102m.CRITICAL_REPORT, interfaceC019008p);
                        }
                    }
                    for (final C08D c08d4 : c08c.A04) {
                        EnumC006102m enumC006102m2 = EnumC006102m.CRITICAL_REPORT;
                        final C03K c03k = new C03K() { // from class: X.03Q
                            @Override // X.C03K
                            public final void APi(EnumC006102m enumC006102m3, InterfaceC019008p interfaceC019008p2) {
                                C07P c07p3 = (C07P) c08d4.A4O(c08k);
                                if (c07p3 != null) {
                                    c07r.A04(c07p3, EnumC006102m.CRITICAL_REPORT, interfaceC019008p2);
                                }
                            }
                        };
                        c07r.A09(new C03K(c03k) { // from class: X.03R
                            public boolean A00;
                            public final C03K A01;

                            @Override // X.C03K
                            public final void APi(EnumC006102m enumC006102m3, InterfaceC019008p interfaceC019008p2) {
                                if (!this.A00) {
                                    this.A00 = true;
                                    this.A01.APi(enumC006102m3, interfaceC019008p2);
                                }
                            }

                            {
                                this.A01 = c03k;
                            }
                        }, enumC006102m2, interfaceC019008p);
                    }
                    for (C07P c07p3 : c08c.A08) {
                        c07r.A04(c07p3, EnumC006102m.LARGE_REPORT, interfaceC019008p);
                    }
                    for (C08D c08d5 : c08c.A07) {
                        C07P c07p4 = (C07P) c08d5.A4O(c08k);
                        if (c07p4 != null) {
                            c07r.A04(c07p4, EnumC006102m.LARGE_REPORT, interfaceC019008p);
                        }
                    }
                    for (final C08D c08d6 : c08c.A09) {
                        EnumC006102m enumC006102m3 = EnumC006102m.LARGE_REPORT;
                        final C03K c03k2 = new C03K() { // from class: X.03Z
                            @Override // X.C03K
                            public final void APi(EnumC006102m enumC006102m4, InterfaceC019008p interfaceC019008p2) {
                                C07P c07p5 = (C07P) c08d6.A4O(c08k);
                                if (c07p5 != null) {
                                    c07r.A04(c07p5, EnumC006102m.LARGE_REPORT, interfaceC019008p2);
                                }
                            }
                        };
                        c07r.A09(new C03K(c03k2) { // from class: X.03R
                            public boolean A00;
                            public final C03K A01;

                            @Override // X.C03K
                            public final void APi(EnumC006102m enumC006102m32, InterfaceC019008p interfaceC019008p2) {
                                if (!this.A00) {
                                    this.A00 = true;
                                    this.A01.APi(enumC006102m32, interfaceC019008p2);
                                }
                            }

                            {
                                this.A01 = c03k2;
                            }
                        }, enumC006102m3, interfaceC019008p);
                    }
                    for (C08D c08d7 : c08c.A01) {
                        C03K c03k3 = (C03K) c08d7.A4O(c08k);
                        if (c03k3 != null) {
                            c07r.A09(c03k3, EnumC006102m.CRITICAL_REPORT, interfaceC019008p);
                        }
                    }
                    for (C08D c08d8 : c08c.A00) {
                        C03K c03k4 = (C03K) c08d8.A4O(c08k);
                        if (c03k4 != null) {
                            c07r.A08(c03k4, EnumC006102m.CRITICAL_REPORT, interfaceC019008p);
                        }
                    }
                    for (C08D c08d9 : c08c.A06) {
                        C03K c03k5 = (C03K) c08d9.A4O(c08k);
                        if (c03k5 != null) {
                            c07r.A09(c03k5, EnumC006102m.LARGE_REPORT, interfaceC019008p);
                        }
                    }
                    for (C08D c08d10 : c08c.A05) {
                        C03K c03k6 = (C03K) c08d10.A4O(c08k);
                        if (c03k6 != null) {
                            c07r.A08(c03k6, EnumC006102m.LARGE_REPORT, interfaceC019008p);
                        }
                    }
                    interfaceC019008p.start();
                } finally {
                    C04s.A00();
                }
            }

            {
                this.A02 = c08d;
                this.A04 = num;
                this.A00 = num2;
                this.A05 = z;
                this.A03 = r3;
                this.A01 = r1;
            }

            private void A00(String str) {
                String str2;
                HashMap A0F = AnonymousClass000.A0F();
                A0F.put("Message", str);
                switch (this.A00.intValue()) {
                    case 1:
                        str2 = "AfterStartup";
                        break;
                    case 2:
                        str2 = "AMA";
                        break;
                    case 3:
                        str2 = "Anr";
                        break;
                    case ClassTracingLoggerFbLite.ENCODED_CLASS_NAMES_LENGTH /* 4 */:
                        str2 = "AnrAppDeath";
                        break;
                    case 5:
                        str2 = "Battery";
                        break;
                    case 6:
                        str2 = "Bizapp";
                        break;
                    case 7:
                        str2 = "BreakpadEarlyNative";
                        break;
                    case 8:
                        str2 = "BreakpadLater";
                        break;
                    case 9:
                        str2 = "BugReport";
                        break;
                    case 10:
                        str2 = "ExtraCollection";
                        break;
                    case 11:
                        str2 = "ExtraStartupActivityManagerListener";
                        break;
                    case 12:
                        str2 = "ExtraStartupActivityThreadMessageListener";
                        break;
                    case 13:
                        str2 = "ExtraStartupBinderListener";
                        break;
                    case 14:
                        str2 = "ExtraStartupBootShutdownBroadcastReceiver";
                        break;
                    case 15:
                        str2 = "ExtraStartupBroadcastReceiver";
                        break;
                    case 16:
                        str2 = "ExtraStartupContentProvider";
                        break;
                    case 17:
                        str2 = "ExtraStartupOomPolling";
                        break;
                    case 18:
                        str2 = "ExtraStartupPauseReqRecv";
                        break;
                    case 19:
                        str2 = "ExtraStartupPauseReqStartExe";
                        break;
                    case 20:
                        str2 = "ExtraStartupThreadData";
                        break;
                    case 21:
                        str2 = "Helium";
                        break;
                    case 22:
                        str2 = "IgExtraLog";
                        break;
                    case 23:
                        str2 = "Java";
                        break;
                    case 24:
                        str2 = "Javascript";
                        break;
                    case 25:
                        str2 = "JavaAppDeath";
                        break;
                    case 26:
                        str2 = "LateStartup";
                        break;
                    case 27:
                        str2 = "LiteCustomEarlyJava";
                        break;
                    case 28:
                        str2 = "LiteCustomEarlyNative";
                        break;
                    case 29:
                        str2 = "LiteNativeJvmStream";
                        break;
                    case 30:
                        str2 = "LogcatInterceptor";
                        break;
                    case 31:
                        str2 = "Lyra";
                        break;
                    case 32:
                        str2 = "MemoryPeriodic";
                        break;
                    case 33:
                        str2 = "MemoryTrim";
                        break;
                    case 34:
                        str2 = "MessageQueueDoctor";
                        break;
                    case 35:
                        str2 = "MobileConfig";
                        break;
                    case 36:
                        str2 = "Native";
                        break;
                    case 37:
                        str2 = "NativeAsl";
                        break;
                    case 38:
                        str2 = "NativeExtraTombstone";
                        break;
                    case 39:
                        str2 = "NativeExtraUnwind";
                        break;
                    case 40:
                        str2 = "NativeExtraUnwindElf";
                        break;
                    case 41:
                        str2 = "NativeJvmStream";
                        break;
                    case 42:
                        str2 = "NativeOomScore";
                        break;
                    case 43:
                        str2 = "Nightwatch";
                        break;
                    case 44:
                        str2 = "OculusPresence";
                        break;
                    case 45:
                        str2 = "OrangeBox";
                        break;
                    case 46:
                        str2 = "Parcelable";
                        break;
                    case 47:
                        str2 = "ParseJavaExceptionHandersLog";
                        break;
                    case 48:
                        str2 = "ProcessMonitorAnr";
                        break;
                    case 49:
                        str2 = "ReportSource";
                        break;
                    case 50:
                        str2 = "SoftError";
                        break;
                    case 51:
                        str2 = "SoftErrorCustom";
                        break;
                    case 52:
                        str2 = "Startup";
                        break;
                    case 53:
                        str2 = "StartupAttributionId";
                        break;
                    case 54:
                        str2 = "StartupBackground";
                        break;
                    case 55:
                        str2 = "StartupCustom";
                        break;
                    case 56:
                        str2 = "StartupForeground";
                        break;
                    case 57:
                        str2 = "StartupGlobalProperties";
                        break;
                    case 58:
                        str2 = "StartupLifecycle";
                        break;
                    case 59:
                        str2 = "StartupNavigation";
                        break;
                    case 60:
                        str2 = "StartupUserPerceptible";
                        break;
                    case 61:
                        str2 = "StaticNative";
                        break;
                    case 62:
                        str2 = "StaticNativeBreakpad";
                        break;
                    case 63:
                        str2 = "Test";
                        break;
                    case 64:
                        str2 = "Unexplained";
                        break;
                    case 65:
                        str2 = "UserChange";
                        break;
                    default:
                        str2 = "AbortHooks";
                        break;
                }
                A0F.put("ConfigName", str2);
                AbstractC019608w.A00();
            }
        };
    }

    public C08E(Integer num) {
        this.A05 = num;
    }
}
