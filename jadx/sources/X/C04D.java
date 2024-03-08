package X;

import android.app.Service;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.app.job.JobWorkItem;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Build;
import android.os.IBinder;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;

@Deprecated
/* renamed from: X.04D  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C04D extends Service {
    public static final Object A05 = new Object();
    public static final HashMap A06 = new HashMap();
    public C02F A00;
    public C04E A01;
    public boolean A02 = false;
    public AsyncTaskC005102c A03;
    public final ArrayList A04;

    public abstract void A05(Intent intent);

    public static void A00(final Context context, Intent intent, Class cls, final int i) {
        final ComponentName componentName = new ComponentName(context, cls);
        synchronized (A05) {
            HashMap hashMap = A06;
            C04E c04e = (C04E) hashMap.get(componentName);
            if (c04e == null) {
                if (Build.VERSION.SDK_INT >= 26) {
                    c04e = new C04E(componentName, context, i) { // from class: X.04F
                        public final JobInfo A00;
                        public final JobScheduler A01;

                        @Override // X.C04E
                        public final void A04(Intent intent2) {
                            this.A01.enqueue(this.A00, new JobWorkItem(intent2));
                        }

                        {
                            A03(i);
                            this.A00 = new JobInfo.Builder(i, this.A02).setOverrideDeadline(0L).build();
                            this.A01 = (JobScheduler) context.getApplicationContext().getSystemService("jobscheduler");
                        }
                    };
                } else {
                    c04e = new C07K(componentName, context);
                }
                hashMap.put(componentName, c04e);
            }
            c04e.A03(i);
            c04e.A04(intent);
        }
    }

    public C04G A02() {
        C02F c02f = this.A00;
        C04G c04g = null;
        if (c02f != null) {
            try {
                return c02f.A5e();
            } catch (SecurityException e) {
                th = e;
                String message = th.getMessage();
                if (message != null && message.contains("Caller no longer running")) {
                    Log.e("JobIntentService", "Captured a \"Caller no longer running\"", th);
                    return null;
                }
            }
        } else {
            ArrayList arrayList = this.A04;
            synchronized (arrayList) {
                try {
                    if (arrayList.size() > 0) {
                        c04g = (C04G) arrayList.remove(0);
                    }
                } catch (Throwable th) {
                    th = th;
                }
            }
            return c04g;
        }
        throw th;
    }

    public final void A03() {
        ArrayList arrayList = this.A04;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.A03 = null;
                if (arrayList.size() > 0) {
                    A04(false);
                } else if (!this.A02) {
                    this.A01.A00();
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [X.02c] */
    public final void A04(boolean z) {
        if (this.A03 == null) {
            this.A03 = new AsyncTask() { // from class: X.02c
                @Override // android.os.AsyncTask
                public final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
                    while (true) {
                        C04D c04d = C04D.this;
                        C04G A02 = c04d.A02();
                        if (A02 != null) {
                            c04d.A05(A02.AAv());
                            try {
                                A02.A3w();
                            } catch (SecurityException e) {
                                String message = e.getMessage();
                                if (message != null && message.contains("Caller no longer running")) {
                                    Log.e("JobIntentService", "Captured a \"Caller no longer running\"", e);
                                } else {
                                    throw e;
                                }
                            }
                        } else {
                            return null;
                        }
                    }
                    throw e;
                }

                @Override // android.os.AsyncTask
                public final /* bridge */ /* synthetic */ void onCancelled(Object obj) {
                    C04D.this.A03();
                }

                @Override // android.os.AsyncTask
                public final /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
                    C04D.this.A03();
                }
            };
            C04E c04e = this.A01;
            if (c04e != null && z) {
                c04e.A01();
            }
            executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        C02F c02f = this.A00;
        if (c02f != null) {
            return c02f.A3v();
        }
        return null;
    }

    @Override // android.app.Service
    public int onStartCommand(final Intent intent, int i, final int i2) {
        ArrayList arrayList = this.A04;
        if (arrayList != null) {
            this.A01.A02();
            synchronized (arrayList) {
                if (intent == null) {
                    intent = new Intent();
                }
                arrayList.add(new C04G(intent, this, i2) { // from class: X.07I
                    public final int A00;
                    public final Intent A01;
                    public final /* synthetic */ C04D A02;

                    {
                        this.A02 = this;
                        this.A01 = intent;
                        this.A00 = i2;
                    }

                    @Override // X.C04G
                    public final void A3w() {
                        this.A02.stopSelf(this.A00);
                    }

                    @Override // X.C04G
                    public final Intent AAv() {
                        return this.A01;
                    }
                });
                A04(true);
            }
            return 3;
        }
        return 2;
    }

    public C04D() {
        ArrayList arrayList;
        if (Build.VERSION.SDK_INT >= 26) {
            arrayList = null;
        } else {
            arrayList = new ArrayList();
        }
        this.A04 = arrayList;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            this.A00 = new C02G(this);
            this.A01 = null;
            return;
        }
        this.A00 = null;
        ComponentName componentName = new ComponentName(this, getClass());
        HashMap hashMap = A06;
        C04E c04e = (C04E) hashMap.get(componentName);
        if (c04e == null) {
            c04e = new C07K(componentName, this);
            hashMap.put(componentName, c04e);
        }
        this.A01 = c04e;
    }

    @Override // android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        ArrayList arrayList = this.A04;
        if (arrayList != null) {
            synchronized (arrayList) {
                this.A02 = true;
                this.A01.A00();
            }
        }
    }
}
