package X;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.SystemClock;
import com.facebook.common.dextricks.classtracing.logger.ClassTracingLoggerFbLite;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: X.0BR  reason: invalid class name */
/* loaded from: classes.dex */
public class C0BR extends C05K {
    public Object A00;
    public final int A01;

    public C0BR(C08K c08k, int i) {
        this.A01 = i;
        this.A00 = c08k;
    }

    @Override // X.C05K
    public final /* bridge */ /* synthetic */ Object A00() {
        switch (this.A01) {
            case 0:
                return new C014606n(((C08K) this.A00).A0F);
            case 1:
                C09B c09b = ((C08K) this.A00).A01;
                AbstractC005602h.A02(c09b, "Did you call earlyInit()?");
                C05J c05j = c09b.A04;
                AbstractC005602h.A02(c05j, "Did you call SessionManager.init()?");
                return new AnonymousClass030(c05j.A01.A01);
            case 2:
                C08K c08k = (C08K) this.A00;
                return new Runnable(c08k.A0F, (String) c08k.A0N.get()) { // from class: X.033
                    public static final String __redex_internal_original_name = "ProcessImportanceProvider";
                    public final ActivityManager.RunningAppProcessInfo A00;
                    public final Context A01;
                    public final String A03;
                    public final Object A02 = new Object();
                    public final List A04 = new CopyOnWriteArrayList();

                    @Override // java.lang.Runnable
                    public final void run() {
                        int i;
                        boolean z;
                        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
                        int i2;
                        Iterator it;
                        while (true) {
                            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = this.A00;
                            synchronized (runningAppProcessInfo) {
                                i = runningAppProcessInfo.importance;
                                if (Build.VERSION.SDK_INT >= 16) {
                                    z = C09D.A00(runningAppProcessInfo);
                                } else {
                                    z = false;
                                    ActivityManager activityManager = (ActivityManager) this.A01.getSystemService("activity");
                                    if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
                                        for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo2 : runningAppProcesses) {
                                            String str = runningAppProcessInfo2.processName;
                                            if (str != null && str.equals(this.A03)) {
                                                runningAppProcessInfo.importance = runningAppProcessInfo2.importance;
                                                z = true;
                                            }
                                        }
                                    }
                                    i2 = i;
                                }
                                if (z) {
                                    SystemClock.uptimeMillis();
                                    i2 = runningAppProcessInfo.importance;
                                }
                                i2 = i;
                            }
                            synchronized (this.A02) {
                            }
                            if (z && i != i2) {
                                it = this.A04.iterator();
                                if (it.hasNext()) {
                                    break;
                                }
                            }
                            try {
                                Thread.sleep(0);
                            } catch (InterruptedException unused) {
                            }
                        }
                        it.next();
                        throw new NullPointerException("onImportanceChanged");
                    }

                    {
                        this.A01 = r3;
                        this.A03 = r4;
                        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
                        this.A00 = runningAppProcessInfo;
                        runningAppProcessInfo.importance = 0;
                    }
                };
            case 3:
                C08K c08k2 = (C08K) this.A00;
                C0BP c0bp = c08k2.A05;
                if (c0bp == null) {
                    c0bp = new C0BR(c08k2, 4);
                    c08k2.A05 = c0bp;
                }
                return new C011905b((AnonymousClass057) c0bp.get());
            case ClassTracingLoggerFbLite.ENCODED_CLASS_NAMES_LENGTH /* 4 */:
                return new AnonymousClass057(this);
            default:
                C04s.A01("ReportAssembler");
                try {
                    C08K c08k3 = (C08K) this.A00;
                    C09B c09b2 = c08k3.A01;
                    AbstractC005602h.A02(c09b2, "Did you call earlyInit()?");
                    C0BP c0bp2 = c08k3.A07;
                    if (c0bp2 == null) {
                        c0bp2 = new C0BR(c08k3, 3);
                        c08k3.A07 = c0bp2;
                    }
                    return new C03H((C011905b) c0bp2.get(), c09b2);
                } finally {
                    C04s.A00();
                }
        }
    }
}
