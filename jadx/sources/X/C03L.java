package X;

import java.io.File;

/* renamed from: X.03L  reason: invalid class name */
/* loaded from: classes.dex */
public final /* synthetic */ class C03L implements C03K {
    public final /* synthetic */ C08K A00;
    public final /* synthetic */ boolean A01;

    public /* synthetic */ C03L(C08K c08k, boolean z) {
        this.A00 = c08k;
        this.A01 = z;
    }

    @Override // X.C03K
    public final void APi(EnumC006102m enumC006102m, InterfaceC019008p interfaceC019008p) {
        File file;
        C08K c08k = this.A00;
        boolean z = this.A01;
        C0BP c0bp = c08k.A08;
        if (c0bp == null) {
            c0bp = new C0BR(c08k, 5);
            c08k.A08 = c0bp;
        }
        C03H c03h = (C03H) c0bp.get();
        C09B c09b = c08k.A01;
        AbstractC005602h.A02(c09b, "Did you call earlyInit()?");
        String str = c09b.A08;
        StringBuilder sb = new StringBuilder();
        sb.append("processCurrentSession.");
        sb.append(enumC006102m.name());
        sb.append(".");
        sb.append(str);
        C06A.A01(sb.toString());
        try {
            synchronized (C03H.A05) {
                File[] A03 = c03h.A00.A03(str);
                int length = A03.length - 1;
                if (length >= 0) {
                    File file2 = A03[length];
                    if (length > 0) {
                        file = A03[length - 1];
                    } else {
                        file = null;
                    }
                    C03H.A00(enumC006102m, c03h, file2, file);
                }
            }
            if (z) {
                C0BP c0bp2 = c08k.A0B;
                if (c0bp2 == null) {
                    c0bp2 = new C008203k(c08k);
                    c08k.A0B = c0bp2;
                }
                ((AnonymousClass090) c0bp2.get()).A03(enumC006102m);
            }
        } finally {
            C06A.A00();
        }
    }
}
