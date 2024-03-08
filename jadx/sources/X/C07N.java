package X;

import java.util.HashSet;
import java.util.Set;

/* renamed from: X.07N  reason: invalid class name */
/* loaded from: classes.dex */
public final class C07N {
    public final String A00;
    public final String A01;
    public static final Set A0G = new HashSet();
    public static final C07N A02 = new C07N("anr_report_file", false, "__");
    public static final C07N A0B = new C07N("minidump_file", false, "");
    public static final C07N A03 = new C07N("APP_PROCESS_FILE", true, "");
    public static final C07N A04 = new C07N("black_box_trace_file", true, "_r_");
    public static final C07N A06 = new C07N("bluetooth_secure_traffic_file", true, "");
    public static final C07N A05 = new C07N("bluetooth_insecure_traffic_file", true, "");
    public static final C07N A07 = new C07N("CORE_DUMP", true, "");
    public static final C07N A08 = new C07N("FAT_MINIDUMP", true, "");
    public static final C07N A09 = new C07N("fury_traces_file", true, "_r_");
    public static final C07N A0A = new C07N("logcat_file", true, "");
    public static final C07N A0C = new C07N("msys_crash_reporter_file", true, "");
    public static final C07N A0D = new C07N("properties_file", true, "");
    public static final C07N A0E = new C07N("report_source_file", true, "");
    public static final C07N A0F = new C07N("system_health_file", true, "");

    public final String toString() {
        return this.A00;
    }

    public C07N(String str, boolean z, String str2) {
        this.A00 = str;
        this.A01 = str2;
        if (!z) {
            A0G.add(str);
        }
    }
}
