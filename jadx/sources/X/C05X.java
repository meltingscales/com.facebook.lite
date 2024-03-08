package X;

import android.app.Application;

/* renamed from: X.05X  reason: invalid class name */
/* loaded from: classes.dex */
public final class C05X extends C05K {
    public final /* synthetic */ C08K A00;

    public C05X(C08K c08k) {
        this.A00 = c08k;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [X.054] */
    @Override // X.C05K
    public final /* bridge */ /* synthetic */ Object A00() {
        C04s.A01("GlobalCleanup");
        try {
            Application application = this.A00.A0F;
            return new C016907q(application, new Object() { // from class: X.054
            }, application.getDir("errorreporting", 0));
        } finally {
            C04s.A00();
        }
    }
}
