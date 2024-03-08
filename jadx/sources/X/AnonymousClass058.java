package X;

import android.text.format.Time;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.regex.Pattern;

/* renamed from: X.058  reason: invalid class name */
/* loaded from: classes.dex */
public abstract class AnonymousClass058 {
    public static final C06B A00 = new C03T() { // from class: X.06B
        public static final AtomicInteger A08 = new AtomicInteger();
        public static final Pattern A09 = Pattern.compile("^Cmd line: (.*)", 8);
        public static final ReentrantReadWriteLock A07 = new ReentrantReadWriteLock();
        public final ArrayList A02 = AnonymousClass000.A0E();
        public final Set A04 = new HashSet();
        public final Map A03 = AnonymousClass000.A0F();
        public final C011805a A01 = new Object() { // from class: X.05a
            public Queue A00;

            public final synchronized String toString() {
                StringBuilder A0C;
                try {
                    A0C = AnonymousClass000.A0C();
                    Iterator it = this.A00.iterator();
                    if (it.hasNext()) {
                        it.next();
                        throw AnonymousClass000.A08("toString");
                    }
                } catch (Throwable th) {
                    throw th;
                }
                return A0C.toString();
            }

            {
                synchronized (this) {
                    this.A00 = new LinkedList();
                }
            }
        };
        public final Time A00 = new Time();
        public final AtomicReference A06 = new AtomicReference();
        public final AtomicReference A05 = new AtomicReference();

        /* JADX WARN: Type inference failed for: r0v3, types: [X.05a] */
        {
            if (AnonymousClass078.A00 != null) {
                C015006s.A07("ErrorReporter", "ErrorReportingDiagnosticData.setInstance already set.");
                return;
            }
            AnonymousClass078.A00 = new AnonymousClass077() { // from class: X.06l
            };
            InterfaceC005802j interfaceC005802j = new InterfaceC005802j() { // from class: X.06b
                @Override // X.InterfaceC005802j
                public final void AGV(Throwable th) {
                }
            };
            synchronized (C005702i.class) {
                C005702i.A00 = interfaceC005802j;
            }
        }

        @Override // X.C03T
        public final int AGf(InterfaceC010804m interfaceC010804m, Thread thread, Throwable th) {
            throw null;
        }
    };
}
