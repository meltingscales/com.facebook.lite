package X;

import android.app.job.JobParameters;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.Intent;
import android.os.IBinder;

/* renamed from: X.02G  reason: invalid class name */
/* loaded from: classes.dex */
public final class C02G extends JobServiceEngine implements C02F {
    public JobParameters A00;
    public final C04D A01;
    public final Object A02;

    /* JADX WARN: Type inference failed for: r0v4, types: [X.04H] */
    @Override // X.C02F
    public final C04H A5e() {
        synchronized (this.A02) {
            JobParameters jobParameters = this.A00;
            if (jobParameters == null) {
                return null;
            }
            final JobWorkItem dequeueWork = jobParameters.dequeueWork();
            if (dequeueWork == null) {
                return null;
            }
            dequeueWork.getIntent().setExtrasClassLoader(this.A01.getClassLoader());
            return new C04G(dequeueWork, this) { // from class: X.04H
                public final JobWorkItem A00;
                public final /* synthetic */ C02G A01;

                {
                    this.A01 = this;
                    this.A00 = dequeueWork;
                }

                @Override // X.C04G
                public final void A3w() {
                    C02G c02g = this.A01;
                    synchronized (c02g.A02) {
                        JobParameters jobParameters2 = c02g.A00;
                        if (jobParameters2 != null) {
                            jobParameters2.completeWork(this.A00);
                        }
                    }
                }

                @Override // X.C04G
                public final Intent AAv() {
                    return this.A00.getIntent();
                }
            };
        }
    }

    @Override // android.app.job.JobServiceEngine
    public final boolean onStartJob(JobParameters jobParameters) {
        this.A00 = jobParameters;
        this.A01.A04(false);
        return true;
    }

    @Override // android.app.job.JobServiceEngine
    public final boolean onStopJob(JobParameters jobParameters) {
        AsyncTaskC005102c asyncTaskC005102c = this.A01.A03;
        if (asyncTaskC005102c != null) {
            asyncTaskC005102c.cancel(false);
        }
        synchronized (this.A02) {
            this.A00 = null;
        }
        return true;
    }

    public C02G(C04D c04d) {
        super(c04d);
        this.A02 = new Object();
        this.A01 = c04d;
    }

    @Override // X.C02F
    public final IBinder A3v() {
        return getBinder();
    }
}
