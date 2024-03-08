package X;

import android.content.Context;
import android.os.Process;
import java.io.PrintWriter;

/* renamed from: X.00W  reason: invalid class name */
/* loaded from: classes.dex */
public final class C00W {
    public long A00;
    public C00Y A01;
    public Integer A02 = AnonymousClass050.A00;
    public final int A03 = Process.myUid();
    public final int A04;
    public final Context A05;
    public final String A06;

    /* JADX WARN: Code restructure failed: missing block: B:52:0x014c, code lost:
        if (((X.C00U) r20).A03 != false) goto L96;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized void A01(final X.C00V r20, java.lang.Integer r21, java.lang.String r22, java.lang.String r23) {
        /*
            Method dump skipped, instructions count: 750
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C00W.A01(X.00V, java.lang.Integer, java.lang.String, java.lang.String):void");
    }

    public C00W(Context context, String str, int i) {
        this.A05 = context;
        this.A06 = str;
        this.A04 = i;
    }

    public static void A00(PrintWriter printWriter, Thread thread, StackTraceElement[] stackTraceElementArr) {
        printWriter.print(thread);
        printWriter.print(" ");
        printWriter.print(thread.getState());
        printWriter.println(":");
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            printWriter.println(stackTraceElement);
        }
        printWriter.println();
    }
}
