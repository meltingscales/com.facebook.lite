package X;

import X.AnonymousClass035;
import X.AnonymousClass050;
import android.app.Activity;
import android.app.Application;
import android.app.Service;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import com.facebook.errorreporting.lacrima.detector.lifecycle.ApplicationLifecycleDetector$ActivityCallbacks;
import com.facebook.errorreporting.lacrima.detector.lifecycle.ApplicationLifecycleDetector$SplashTransition;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.Properties;
import java.util.WeakHashMap;

/* renamed from: X.035  reason: invalid class name */
/* loaded from: classes.dex */
public final class AnonymousClass035 implements InterfaceC019008p {
    public static final Object A0I = new ApplicationLifecycleDetector$SplashTransition();
    public C05J A00;
    public InterfaceC017507w A01;
    public boolean A02;
    public boolean A03;
    public WeakReference A04;
    public final Application A05;
    public final C007402z A06;
    public final C07R A07;
    public final C09B A0A;
    public final AnonymousClass033 A0B;
    public final AnonymousClass030 A0D;
    public final AnonymousClass034 A0E;
    public final AnonymousClass037 A0F = new Object() { // from class: X.037
    };
    public final AnonymousClass038 A0G = new Object() { // from class: X.038
    };
    public final Object A0C = new Object();
    public final AnonymousClass039 A0H = new Object() { // from class: X.039
    };
    public final C03A A08 = new Object() { // from class: X.03A
    };
    public final C03B A09 = new Object() { // from class: X.03B
    };

    /* JADX WARN: Type inference failed for: r0v0, types: [X.037] */
    /* JADX WARN: Type inference failed for: r0v1, types: [X.038] */
    /* JADX WARN: Type inference failed for: r0v3, types: [X.039] */
    /* JADX WARN: Type inference failed for: r0v4, types: [X.03A] */
    /* JADX WARN: Type inference failed for: r0v5, types: [X.03B] */
    public AnonymousClass035(Application application, C007402z c007402z, AnonymousClass030 anonymousClass030, C07R c07r, InterfaceC017507w interfaceC017507w, AnonymousClass034 anonymousClass034, C09B c09b, AnonymousClass033 anonymousClass033) {
        this.A05 = application;
        this.A0A = c09b;
        this.A07 = c07r;
        this.A06 = c007402z;
        this.A0D = anonymousClass030;
        this.A01 = interfaceC017507w;
        this.A0B = anonymousClass033;
        this.A0E = anonymousClass034;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [X.03E] */
    @Override // X.InterfaceC019008p
    public final void start() {
        ApplicationLifecycleDetector$ActivityCallbacks applicationLifecycleDetector$ActivityCallbacks;
        synchronized (this.A0C) {
            if (this.A03) {
                return;
            }
            this.A03 = true;
            C05J c05j = this.A0A.A04;
            AbstractC005602h.A02(c05j, "Did you call SessionManager.init()?");
            this.A00 = c05j;
            c05j.A02(EnumC016407i.A06);
            if (Build.VERSION.SDK_INT >= 29) {
                applicationLifecycleDetector$ActivityCallbacks = new ApplicationLifecycleDetector$ActivityCallbacks() { // from class: com.facebook.errorreporting.lacrima.detector.lifecycle.ApplicationLifecycleDetector$ActivityCallbacksApi29
                    {
                        super(AnonymousClass035.this);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityPostCreated(Activity activity, Bundle bundle) {
                        A00(activity, AnonymousClass050.A0N);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityPostDestroyed(Activity activity) {
                        A01(activity, AnonymousClass050.A0N);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityPostPaused(Activity activity) {
                        A02(activity, AnonymousClass050.A0N);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityPostResumed(Activity activity) {
                        A03(activity, AnonymousClass050.A0N);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityPostStarted(Activity activity) {
                        A04(activity, AnonymousClass050.A0N);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityPostStopped(Activity activity) {
                        A05(activity, AnonymousClass050.A0N);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityPreCreated(Activity activity, Bundle bundle) {
                        A00(activity, AnonymousClass050.A01);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityPreDestroyed(Activity activity) {
                        A01(activity, AnonymousClass050.A01);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityPrePaused(Activity activity) {
                        A02(activity, AnonymousClass050.A01);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityPreResumed(Activity activity) {
                        A03(activity, AnonymousClass050.A01);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityPreStarted(Activity activity) {
                        A04(activity, AnonymousClass050.A01);
                    }

                    @Override // android.app.Application.ActivityLifecycleCallbacks
                    public final void onActivityPreStopped(Activity activity) {
                        A05(activity, AnonymousClass050.A01);
                    }
                };
            } else {
                applicationLifecycleDetector$ActivityCallbacks = new ApplicationLifecycleDetector$ActivityCallbacks(this);
            }
            ?? r2 = new Object() { // from class: X.03E
            };
            this.A05.registerActivityLifecycleCallbacks(applicationLifecycleDetector$ActivityCallbacks);
            synchronized (C03F.A02) {
                C03F.A00 = r2;
            }
            C007402z c007402z = this.A06;
            C03A c03a = this.A08;
            synchronized (c007402z.A05) {
                c007402z.A01 = c03a;
            }
        }
    }

    public static void A00(AnonymousClass035 anonymousClass035) {
        C05J c05j;
        if (!anonymousClass035.A02 && (c05j = anonymousClass035.A00) != null) {
            anonymousClass035.A02 = true;
            long uptimeMillis = SystemClock.uptimeMillis() - anonymousClass035.A0A.A01;
            synchronized (c05j.A02) {
                c05j.A03(Long.toString(uptimeMillis), 167, 10);
                c05j.A01.A00.put(178, (byte) 48);
                C05J.A00(c05j);
            }
        }
    }

    public static void A01(AnonymousClass035 anonymousClass035, Integer num, boolean z) {
        C007402z c007402z;
        Integer num2;
        String str;
        Object obj;
        char c;
        char c2;
        int i;
        int size;
        final AnonymousClass030 anonymousClass030;
        Object obj2;
        C002000x c002000x;
        if (anonymousClass035.A00 == null) {
            C015006s.A07("lacrima", "ApplicationLifecycleDetector.start() wasn't called?");
            return;
        }
        C07R c07r = anonymousClass035.A07;
        EnumC006102m enumC006102m = EnumC006102m.CRITICAL_REPORT;
        if (c07r.A0B) {
            return;
        }
        EnumC006102m enumC006102m2 = EnumC006102m.LARGE_REPORT;
        if (c07r.A0C) {
            return;
        }
        synchronized (anonymousClass035) {
            c007402z = anonymousClass035.A06;
            synchronized (c007402z) {
                if (c007402z.A03) {
                    num2 = AnonymousClass050.A0l;
                } else {
                    num2 = AnonymousClass050.A0v;
                }
                str = null;
                obj = null;
                WeakReference weakReference = c007402z.A02;
                if (weakReference != null && (obj2 = weakReference.get()) != null && (c002000x = (C002000x) c007402z.A07.get(obj2)) != null) {
                    obj = obj2;
                    num2 = c002000x.A00;
                    if (!(obj2 instanceof Activity) && !(obj2 instanceof Service)) {
                        str = obj2.toString();
                    } else {
                        str = obj2.getClass().getSimpleName();
                    }
                } else {
                    for (Map.Entry entry : c007402z.A07.entrySet()) {
                        if (((C002000x) entry.getValue()).A00.compareTo(num2) < 0) {
                            obj = entry.getKey();
                            num2 = ((C002000x) entry.getValue()).A00;
                            if (!(obj instanceof Activity) && !(obj instanceof Service)) {
                                str = obj.toString();
                            } else {
                                str = obj.getClass().getSimpleName();
                            }
                            entry.getValue();
                            entry.getValue();
                        }
                    }
                }
            }
        }
        if (str != null && (anonymousClass030 = anonymousClass035.A0D) != null) {
            synchronized (anonymousClass030) {
                Properties properties = anonymousClass030.A03;
                String property = properties.getProperty(str);
                if (TextUtils.isEmpty(property)) {
                    synchronized (anonymousClass030) {
                        char c3 = anonymousClass030.A00;
                        if (c3 == '~') {
                            c = '!';
                        } else {
                            char c4 = (char) (c3 + 1);
                            anonymousClass030.A00 = c4;
                            properties.setProperty(str, Character.toString(c4));
                            anonymousClass030.A01.post(new Runnable() { // from class: X.00y
                                public static final String __redex_internal_original_name = "ForegroundEntityMapper$$ExternalSyntheticLambda0";

                                @Override // java.lang.Runnable
                                public final void run() {
                                    String str2;
                                    String str3;
                                    AnonymousClass030 anonymousClass0302 = AnonymousClass030.this;
                                    StringBuilder sb = new StringBuilder();
                                    sb.append(anonymousClass0302.A02);
                                    sb.append("_entity");
                                    try {
                                        FileOutputStream fileOutputStream = new FileOutputStream(new File(sb.toString()));
                                        try {
                                            Properties properties2 = new Properties();
                                            synchronized (anonymousClass0302) {
                                                properties2.putAll(anonymousClass0302.A03);
                                            }
                                            properties2.store(fileOutputStream, (String) null);
                                            fileOutputStream.close();
                                        } catch (Throwable th) {
                                            try {
                                                fileOutputStream.close();
                                            } catch (Throwable unused) {
                                            }
                                            throw th;
                                        }
                                    } catch (IOException e) {
                                        e = e;
                                        str2 = "ForegroundEntityMapper";
                                        str3 = "Error saving entity map";
                                        C015006s.A09(str2, str3, e);
                                    } catch (AssertionError e2) {
                                        e = e2;
                                        str2 = "ForegroundEntityMapper";
                                        str3 = "Error storing properties";
                                        C015006s.A09(str2, str3, e);
                                    }
                                }
                            });
                            c = anonymousClass030.A00;
                        }
                    }
                } else {
                    c = property.charAt(0);
                }
            }
        } else {
            c = ' ';
        }
        anonymousClass035.A04 = new WeakReference(obj);
        C05J c05j = anonymousClass035.A00;
        switch (num.intValue()) {
            case 1:
                c2 = '1';
                break;
            case 2:
                c2 = '2';
                break;
            default:
                c2 = '3';
                break;
        }
        synchronized (c007402z) {
            i = c007402z.A00;
        }
        Integer valueOf = Integer.valueOf(i);
        synchronized (c007402z) {
            size = ((WeakHashMap) c007402z.A06.get(5)).size();
        }
        C05J.A01(c05j, num2, valueOf, Integer.valueOf(size), c, c2, z, false);
        if (Build.VERSION.SDK_INT < 29 || num.equals(AnonymousClass050.A01) || num.equals(AnonymousClass050.A00)) {
            boolean A00 = AbstractC007703e.A00(AbstractC012605k.A00(num2));
            InterfaceC017507w interfaceC017507w = anonymousClass035.A01;
            if (interfaceC017507w != null) {
                interfaceC017507w.AOB(A00);
            }
        }
        C006902u c006902u = new C006902u(null);
        c07r.A06(c006902u, enumC006102m, anonymousClass035);
        c07r.A06(c006902u, enumC006102m2, anonymousClass035);
    }

    @Override // X.InterfaceC019008p
    public final AnonymousClass034 ABM() {
        return this.A0E;
    }

    @Override // X.InterfaceC019008p
    public final EnumC019108q ACB() {
        return EnumC019108q.A05;
    }
}
