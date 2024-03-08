package X;

import android.content.Context;
import android.os.StrictMode;
import java.io.File;

/* renamed from: X.08Z  reason: invalid class name */
/* loaded from: classes.dex */
public final class C08Z extends C0BC implements C0B4 {
    public C08V A00;
    public final int A01;

    @Override // X.C0BC
    public final String A05() {
        return "ApplicationSoSource";
    }

    @Override // X.C0BC
    public final File A02(String str) {
        return this.A00.A02(str);
    }

    @Override // X.C0BC
    public final String[] A03(String str) {
        return this.A00.A03(str);
    }

    @Override // X.C0BC
    public final int A04(StrictMode.ThreadPolicy threadPolicy, String str, int i) {
        return this.A00.A04(threadPolicy, str, i);
    }

    @Override // X.C0BC
    public final String A06(String str) {
        return this.A00.A06(str);
    }

    @Override // X.C0BC
    public final void A07(int i) {
        this.A00.A07(i);
    }

    public C08Z(Context context, int i) {
        this.A01 = i;
        this.A00 = new C08V(new File(context.getApplicationInfo().nativeLibraryDir), i);
    }

    @Override // X.C0B4
    public final C0BC AWY(Context context) {
        this.A00 = new C08V(new File(context.getApplicationInfo().nativeLibraryDir), this.A01 | 1);
        return this;
    }

    @Override // X.C0BC
    public final String toString() {
        StringBuilder A0C = AnonymousClass000.A0C();
        A0C.append("ApplicationSoSource");
        A0C.append("[");
        AnonymousClass000.A0K(this.A00, A0C);
        return AnonymousClass000.A0A("]", A0C);
    }
}
