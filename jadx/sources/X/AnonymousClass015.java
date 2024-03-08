package X;

import java.io.Serializable;

/* renamed from: X.015  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class AnonymousClass015 implements AnonymousClass014, Serializable {
    public final int A00;

    @Override // X.AnonymousClass014
    public final int A80() {
        return this.A00;
    }

    public AnonymousClass015(int i) {
        this.A00 = i;
    }

    public final String toString() {
        String obj = getClass().getGenericInterfaces()[0].toString();
        if (obj.startsWith("kotlin.jvm.functions.")) {
            obj = obj.substring(21);
        }
        C08H.A01(obj);
        return obj;
    }
}
