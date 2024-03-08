package X;

import android.content.Context;
import android.os.Build;

/* renamed from: X.06z  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C015506z {
    public C015406y A00 = null;
    public boolean A01 = false;
    public final Context A02;

    public final C015406y A00(int i) {
        C015406y c015406y;
        if (this.A01) {
            return this.A00;
        }
        synchronized (this) {
            if (!this.A01) {
                this.A01 = true;
                if (Build.VERSION.SDK_INT >= 30) {
                    this.A00 = C015406y.A00(this.A02, i);
                } else {
                    c015406y = null;
                }
            }
            c015406y = this.A00;
        }
        return c015406y;
    }

    public C015506z(Context context) {
        this.A02 = context;
    }
}
