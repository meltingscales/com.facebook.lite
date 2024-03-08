package X;

import android.util.Base64;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.zip.GZIPOutputStream;

/* renamed from: X.00P  reason: invalid class name */
/* loaded from: classes.dex */
public final class C00P {
    public int A00;
    public long A02;
    public long A03;
    public long A04;
    public long A05;
    public long A06;
    public long A07;
    public long A08;
    public File A09;
    public String A0A;
    public String A0B;
    public String A0C;
    public String A0D;
    public String A0E;
    public String A0F;
    public String A0G;
    public boolean A0H;
    public boolean A0I;
    public boolean A0J;
    public boolean A0K;
    public final C09B A0L;
    public final C0BP A0N;
    public final C0BP A0O;
    public final C0BP A0P;
    public final List A0M = new ArrayList();
    public int A01 = 0;

    public static void A00(C00P c00p) {
        C006902u c006902u = new C006902u(null);
        try {
            String str = c00p.A0F;
            if (str == null) {
                String str2 = c00p.A0C;
                if (str2 != null) {
                    c00p.A0F = str2;
                    str = str2;
                } else if (c00p.A0H) {
                    c00p.A09 = null;
                    return;
                }
            }
            C09B c09b = c00p.A0L;
            File file = c09b.A06;
            AbstractC005602h.A02(file, "Did you call SessionManager.init()?");
            StringBuilder sb = new StringBuilder();
            sb.append("anr_report_");
            sb.append(c00p.A01);
            sb.append(".dmp");
            c00p.A09 = new File(file, sb.toString());
            if (!c00p.A0H) {
                c006902u.A04(C07M.A8D, "true");
            }
            if (str != null) {
                C012705l c012705l = C07M.A8t;
                String str3 = null;
                if (str.length() != 0) {
                    try {
                        Charset charset = StandardCharsets.UTF_8;
                        C08H.A02(charset);
                        byte[] bytes = str.getBytes(charset);
                        C08H.A01(bytes);
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                        gZIPOutputStream.write(bytes);
                        gZIPOutputStream.close();
                        str3 = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
                    } catch (IOException e) {
                        C015006s.A0A("ReportFieldHelper", "Failed to compress string", e);
                    }
                }
                c006902u.A04(c012705l, str3);
            }
            c006902u.A04(C07M.A3s, "0");
            long j = c00p.A03;
            long j2 = j - c09b.A01;
            c006902u.A03(C07M.A0f, Long.valueOf(j));
            c006902u.A03(C07M.A0k, Long.valueOf(j2));
            c006902u.A04(C07M.A3V, Boolean.toString(c00p.A0K));
            c006902u.A02(C07M.A0h, c00p.A00);
            c006902u.A03(C07M.A0i, 0L);
            c006902u.A01(C07M.A00, c00p.A0I);
            c006902u.A01(C07M.A01, c00p.A0J);
            C012805m c012805m = C07M.A0n;
            Map map = c006902u.A08;
            map.remove(c012805m);
            map.remove(C07M.A0m);
            map.remove(C07M.A0v);
            map.remove(C07M.A0u);
            c006902u.A04(C07M.A3l, c00p.A0E);
            c006902u.A04(C07M.A3k, c00p.A0D);
            c006902u.A03(C07M.A0c, Long.valueOf(c00p.A02));
            c006902u.A03(C07M.A0r, Long.valueOf(c00p.A07));
            c006902u.A03(C07M.A0q, Long.valueOf(0));
            c006902u.A03(C07M.A0s, 0L);
            c006902u.A03(C07M.A0l, Long.valueOf(c00p.A04));
            c006902u.A03(C07M.A0p, Long.valueOf(c00p.A06));
            c006902u.A03(C07M.A0o, Long.valueOf(c00p.A05));
            c006902u.A04(C07M.A9Q, c00p.A0G);
            c006902u.A04(C07M.A3N, c00p.A0B);
            c006902u.A04(C07M.A3K, c00p.A0A);
            c006902u.A04(C07M.A4Q, null);
            c006902u.A04(C07M.A6Y, null);
            c006902u.A03(C07M.A0t, Long.valueOf(c00p.A08));
            int i = 0;
            for (String str4 : c00p.A0M) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(C07M.A3b.A00);
                sb2.append(i);
                c006902u.A06(sb2.toString(), str4);
                i++;
            }
        } catch (Throwable th) {
            AbstractC019608w.A00();
            c006902u.A04(C07M.A5k, th.getMessage());
        }
        if (c00p.A09 != null) {
            try {
                Properties properties = new Properties();
                c006902u.A07(properties);
                FileOutputStream fileOutputStream = new FileOutputStream(c00p.A09);
                properties.store(fileOutputStream, "no pool");
                fileOutputStream.close();
            } catch (IOException e2) {
                C015006s.A0B("lacrima", "Could not save ANR report file", e2);
                AbstractC019608w.A00();
            }
        }
    }

    public C00P(C09B c09b, C0BP c0bp, C0BP c0bp2, C0BP c0bp3) {
        this.A0L = c09b;
        this.A0P = c0bp;
        this.A0O = c0bp2;
        this.A0N = c0bp3;
        File file = c09b.A06;
        AbstractC005602h.A02(file, "Did you call SessionManager.init()?");
        StringBuilder sb = new StringBuilder();
        sb.append("anr_report_");
        sb.append(0);
        sb.append(".dmp");
        this.A09 = new File(file, sb.toString());
    }
}
