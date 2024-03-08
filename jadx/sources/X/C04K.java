package X;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorCompletionService;
import java.util.concurrent.Future;

/* renamed from: X.04K  reason: invalid class name */
/* loaded from: classes.dex */
public class C04K {
    public static final C04L A04 = new Object() { // from class: X.04L
    };
    public final C04M A00;
    public final C04L A01;
    public final InterfaceC020209c A02;
    public final Executor A03;

    /* JADX WARN: Type inference failed for: r0v0, types: [X.04M] */
    public C04K(InterfaceC020209c interfaceC020209c, Executor executor) {
        C04L c04l = A04;
        this.A00 = new Object() { // from class: X.04M
        };
        this.A02 = interfaceC020209c;
        this.A03 = executor;
        this.A01 = c04l;
    }

    public AnonymousClass029 A00(C04J c04j) {
        return this.A02.AKV(c04j.A01);
    }

    public final AnonymousClass029 A01(List list) {
        final Object obj;
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        final long j = 0;
        boolean z = true;
        while (it.hasNext()) {
            final C04J c04j = (C04J) it.next();
            if (!z) {
                j += c04j.A00;
            }
            arrayList.add(new Callable() { // from class: X.04N
                @Override // java.util.concurrent.Callable
                public final /* bridge */ /* synthetic */ Object call() {
                    long j2 = j;
                    if (j2 > 0) {
                        Thread.sleep(j2);
                    }
                    C04K c04k = C04K.this;
                    C04J c04j2 = c04j;
                    AnonymousClass029 A00 = c04k.A00(c04j2);
                    if (A00 == null) {
                        return null;
                    }
                    if (!c04j2.A02) {
                        return A00;
                    }
                    if (A00.isConnected() && !A00.isClosed()) {
                        return A00;
                    }
                    throw new IOException();
                }
            });
            z = false;
        }
        Executor executor = this.A03;
        final C04M c04m = this.A00;
        ExecutorCompletionService executorCompletionService = new ExecutorCompletionService(executor);
        final ArrayList arrayList2 = new ArrayList(arrayList.size());
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList2.add(executorCompletionService.submit((Callable) it2.next()));
        }
        int i = 0;
        while (true) {
            if (i < arrayList.size()) {
                try {
                    obj = executorCompletionService.take().get();
                } catch (ExecutionException unused) {
                }
                if (obj == null) {
                    i++;
                } else {
                    executor.execute(new Runnable() { // from class: X.01K
                        public static final String __redex_internal_original_name = "ConcurrentSocketConnector$3";

                        @Override // java.lang.Runnable
                        public final void run() {
                            AnonymousClass029 anonymousClass029;
                            for (Future future : arrayList2) {
                                try {
                                    Object obj2 = future.get();
                                    if (obj2 != null && obj2 != obj && (anonymousClass029 = (AnonymousClass029) obj2) != null) {
                                        anonymousClass029.close();
                                    }
                                } catch (IOException | InterruptedException | ExecutionException unused2) {
                                }
                            }
                        }
                    });
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        AnonymousClass029 anonymousClass029 = (AnonymousClass029) obj;
        if (anonymousClass029 != null) {
            return anonymousClass029;
        }
        throw new IOException();
    }
}
