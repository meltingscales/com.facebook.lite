package X;

import android.os.Build;
import android.os.Process;
import com.facebook.systrace.Systrace;

/* renamed from: X.07y  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC017707y {
    static {
        C00E.A00(new C00I() { // from class: X.07c
            @Override // X.C00I
            public final void ATZ() {
                if ((64 & C00E.A01) != 0) {
                    Systrace.A0D("thread_name", Process.myTid(), Thread.currentThread().getName());
                }
                if ((1 & C00E.A01) != 0) {
                    StringBuilder sb = new StringBuilder(127);
                    sb.append("Android trace tags: ");
                    sb.append(AbstractC013305s.A00("debug.atrace.tags.enableflags"));
                    sb.append(", Facebook trace tags: ");
                    sb.append(C00E.A01);
                    Systrace.A0D("process_labels", 0, sb.toString());
                }
                if ((64 & C00E.A01) != 0) {
                    Systrace.A0D("process_name", 0, AnonymousClass097.A00());
                    String A02 = AbstractC013305s.A02("dalvik.vm.heapgrowthlimit");
                    String A022 = AbstractC013305s.A02("dalvik.vm.heapmaxfree");
                    String A023 = AbstractC013305s.A02("dalvik.vm.heapminfree");
                    String A024 = AbstractC013305s.A02("dalvik.vm.heapstartsize");
                    String A025 = AbstractC013305s.A02("dalvik.vm.heaptargetutilization");
                    Object[] objArr = new Object[6];
                    objArr[0] = Build.MODEL;
                    objArr[1] = A02;
                    AnonymousClass000.A0J(A024, A022, A023, objArr);
                    objArr[5] = A025;
                    Systrace.A0D("process_labels", 0, String.format("device=%s,heapgrowthlimit=%s,heapstartsize=%s,heapminfree=%s,heapmaxfree=%s,heaptargetutilization=%s", objArr));
                }
            }

            @Override // X.C00I
            public final void ATb() {
            }
        });
    }
}
