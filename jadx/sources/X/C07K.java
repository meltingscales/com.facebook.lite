package X;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;

/* renamed from: X.07K  reason: invalid class name */
/* loaded from: classes.dex */
public final class C07K extends C04E {
    public boolean A00;
    public boolean A01;
    public final Context A02;
    public final PowerManager.WakeLock A03;
    public final PowerManager.WakeLock A04;

    @Override // X.C04E
    public final void A00() {
        synchronized (this) {
            if (this.A01) {
                if (this.A00) {
                    this.A03.acquire(60000L);
                }
                this.A01 = false;
                this.A04.release();
            }
        }
    }

    @Override // X.C04E
    public final void A01() {
        synchronized (this) {
            if (!this.A01) {
                this.A01 = true;
                this.A04.acquire(600000L);
                this.A03.release();
            }
        }
    }

    @Override // X.C04E
    public final void A02() {
        synchronized (this) {
            this.A00 = false;
        }
    }

    @Override // X.C04E
    public final void A04(Intent intent) {
        Intent intent2 = new Intent(intent);
        intent2.setComponent(super.A02);
        if (this.A02.startService(intent2) != null) {
            synchronized (this) {
                if (!this.A00) {
                    this.A00 = true;
                    if (!this.A01) {
                        this.A03.acquire(60000L);
                    }
                }
            }
        }
    }

    public C07K(ComponentName componentName, Context context) {
        super(componentName);
        this.A02 = context.getApplicationContext();
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        StringBuilder A0C = AnonymousClass000.A0C();
        A0C.append(componentName.getClassName());
        PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, AnonymousClass000.A0A(":launch", A0C));
        this.A03 = newWakeLock;
        newWakeLock.setReferenceCounted(false);
        StringBuilder A0C2 = AnonymousClass000.A0C();
        A0C2.append(componentName.getClassName());
        PowerManager.WakeLock newWakeLock2 = powerManager.newWakeLock(1, AnonymousClass000.A0A(":run", A0C2));
        this.A04 = newWakeLock2;
        newWakeLock2.setReferenceCounted(false);
    }
}
