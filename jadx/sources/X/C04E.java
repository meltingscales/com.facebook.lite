package X;

import android.content.ComponentName;
import android.content.Intent;

/* renamed from: X.04E  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C04E {
    public int A00;
    public boolean A01;
    public final ComponentName A02;

    public void A00() {
    }

    public void A01() {
    }

    public void A02() {
    }

    public abstract void A04(Intent intent);

    public final void A03(int i) {
        if (!this.A01) {
            this.A01 = true;
            this.A00 = i;
            return;
        }
        int i2 = this.A00;
        if (i2 == i) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Given job ID ");
        sb.append(i);
        sb.append(" is different than previous ");
        sb.append(i2);
        throw new IllegalArgumentException(sb.toString());
    }

    public C04E(ComponentName componentName) {
        this.A02 = componentName;
    }
}
