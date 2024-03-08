package X;

/* renamed from: X.05K  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class C05K implements C0BP {
    public Object A00;

    public abstract Object A00();

    @Override // X.C0BP
    public final synchronized Object get() {
        Object obj;
        obj = this.A00;
        if (obj == null) {
            obj = A00();
            this.A00 = obj;
        }
        return obj;
    }
}
