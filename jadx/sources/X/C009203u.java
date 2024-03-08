package X;

/* renamed from: X.03u  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C009203u extends Exception {
    public final C02360Ao A00;

    public C009203u(C02360Ao c02360Ao) {
        super("Empty uriString");
        this.A00 = c02360Ao;
    }

    public C009203u(C02360Ao c02360Ao, String str, Throwable th) {
        super(str, th);
        this.A00 = c02360Ao;
    }
}
