package X;

/* renamed from: X.05B  reason: invalid class name */
/* loaded from: classes.dex */
public final class C05B extends AnonymousClass015 implements InterfaceC002501c {
    public final /* synthetic */ AnonymousClass019 A00;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C05B(AnonymousClass019 anonymousClass019) {
        super(1);
        this.A00 = anonymousClass019;
    }

    @Override // X.InterfaceC002501c
    public final /* bridge */ /* synthetic */ Object AHX(Object obj) {
        if (obj == this.A00) {
            return "(this Collection)";
        }
        return String.valueOf(obj);
    }
}
