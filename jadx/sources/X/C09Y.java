package X;

/* renamed from: X.09Y  reason: invalid class name */
/* loaded from: classes.dex */
public enum C09Y {
    /* JADX INFO: Fake field, exist only in values array */
    CREATE(true, true, true),
    /* JADX INFO: Fake field, exist only in values array */
    DO_NOT_CREATE_NOT_MAIN_NOT_FOREGROUND(false, false, false),
    /* JADX INFO: Fake field, exist only in values array */
    DO_NOT_CREATE_BACKGROUND_STARTUP(false, true, false),
    /* JADX INFO: Fake field, exist only in values array */
    DO_NOT_CREATE_NOT_MAIN(false, false, true);
    
    public final boolean A00;
    public final boolean A01;
    public final boolean A02;

    C09Y(boolean z, boolean z2, boolean z3) {
        this.A02 = z;
        this.A01 = z2;
        this.A00 = z3;
    }
}
