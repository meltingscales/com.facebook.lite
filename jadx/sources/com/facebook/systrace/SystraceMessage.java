package com.facebook.systrace;

import X.C010004c;
import X.C015907d;
import X.C04Z;
import X.C08m;

/* loaded from: classes.dex */
public abstract class SystraceMessage {
    public static final C04Z A00 = new C04Z() { // from class: X.04a
        @Override // X.C04Z
        public final C04Z A00(Object obj, String str) {
            return this;
        }

        @Override // X.C04Z
        public final C04Z A01(String str, int i) {
            return this;
        }

        @Override // X.C04Z
        public final void A02() {
        }
    };
    public static final ThreadLocal A01 = new ThreadLocal() { // from class: X.04b
        @Override // java.lang.ThreadLocal
        public final /* bridge */ /* synthetic */ Object initialValue() {
            return new C015907d();
        }
    };
    public static final C010004c A02 = new Object() { // from class: X.04c
    };

    public static C04Z A00(String str) {
        C010004c c010004c = A02;
        if (!Systrace.A0G(281474976710656L)) {
            return A00;
        }
        C015907d c015907d = (C015907d) A01.get();
        c015907d.A00 = 281474976710656L;
        c015907d.A02 = c010004c;
        c015907d.A03 = str;
        C08m c08m = c015907d.A01;
        for (int i = 0; i < c08m.A00; i++) {
            c08m.A01[i] = null;
        }
        c08m.A00 = 0;
        return c015907d;
    }
}
