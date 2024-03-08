package X;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* renamed from: X.05o  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C013005o implements C07P {
    public static final Map A03 = Collections.synchronizedMap(AnonymousClass000.A0F());
    public final Object A00 = new Object();
    public final Map A02 = AnonymousClass000.A0F();
    public final Map A01 = AnonymousClass000.A0F();

    public static void A00(C07H c07h) {
        A03.put(c07h.A00, c07h);
    }

    public final void A01(String str, String str2) {
        synchronized (this.A00) {
            if (A03.containsKey(str)) {
                this.A02.put(str, str2);
            }
        }
    }

    @Override // X.C07P
    public final Integer ACC() {
        return AnonymousClass050.A06;
    }

    @Override // X.C07P
    public final void AV8(C006902u c006902u, EnumC006102m enumC006102m) {
        HashMap hashMap;
        HashMap hashMap2;
        final Throwable th = c006902u.A02;
        if (th != null) {
            Object obj = this.A00;
            synchronized (obj) {
                hashMap2 = new HashMap(this.A01);
            }
            for (final Map.Entry entry : hashMap2.entrySet()) {
                final String str = (String) entry.getKey();
                try {
                    String str2 = (String) C017307u.A01().submit(new Callable() { // from class: X.07V
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            Map.Entry entry2 = entry;
                            String str3 = str;
                            try {
                                entry2.getValue();
                                throw AnonymousClass000.A08("getCustomData");
                            } catch (Throwable th2) {
                                C015006s.A0G("lacrima", "Failed to apply lazy supplier: %s", th2, str3);
                                AbstractC019608w.A00();
                                return "";
                            }
                        }
                    }).get(750L, TimeUnit.MILLISECONDS);
                    if (str2 == null) {
                        synchronized (obj) {
                            this.A02.remove(str);
                        }
                    } else {
                        A01(str, str2);
                    }
                } catch (Exception unused) {
                    AbstractC019608w.A00();
                    A01(AnonymousClass000.A0A("_error", AnonymousClass000.A0D(str)), "timeout");
                }
            }
        }
        synchronized (this.A00) {
            hashMap = new HashMap(this.A02);
        }
        for (Map.Entry entry2 : hashMap.entrySet()) {
            c006902u.A06((String) entry2.getKey(), (String) entry2.getValue());
        }
    }
}
