package X;

import java.io.File;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* renamed from: X.08Q  reason: invalid class name */
/* loaded from: classes.dex */
public final class C08Q extends C0BK {
    public C08R[] A00;
    public final C05T A01;
    public final ZipFile A02;
    public final /* synthetic */ C05D A03;

    public C08Q(C05D c05d, C05T c05t) {
        this.A03 = c05d;
        this.A02 = new ZipFile(c05d.A00);
        this.A01 = c05t;
    }

    @Override // X.C0BK
    public final void A01(File file) {
        C08R[] c08rArr = this.A00;
        if (c08rArr == null) {
            c08rArr = A03();
            this.A00 = c08rArr;
        }
        byte[] bArr = new byte[32768];
        for (C08R c08r : c08rArr) {
            InputStream inputStream = this.A02.getInputStream(c08r.A01);
            C0BK.A00(c08r, file, inputStream, bArr);
            inputStream.close();
        }
    }

    @Override // X.C0BK
    public final C0BJ[] A02() {
        C08R[] c08rArr = this.A00;
        if (c08rArr == null) {
            C08R[] A03 = A03();
            this.A00 = A03;
            return A03;
        }
        return c08rArr;
    }

    public final C08R[] A03() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        HashMap A0F = AnonymousClass000.A0F();
        Pattern compile = Pattern.compile(this.A03.A01);
        String[] A0B = C0BF.A0B();
        Enumeration<? extends ZipEntry> entries = this.A02.entries();
        while (entries.hasMoreElements()) {
            ZipEntry nextElement = entries.nextElement();
            Matcher matcher = compile.matcher(nextElement.getName());
            if (matcher.matches()) {
                int groupCount = matcher.groupCount();
                String group = matcher.group(groupCount - 1);
                String group2 = matcher.group(groupCount);
                int i = 0;
                while (true) {
                    if (i >= A0B.length) {
                        break;
                    } else if (A0B[i] != null && group.equals(A0B[i])) {
                        if (i >= 0) {
                            linkedHashSet.add(group);
                            C08R c08r = (C08R) A0F.get(group2);
                            if (c08r == null || i < c08r.A00) {
                                A0F.put(group2, new C08R(group2, nextElement, i));
                            }
                        }
                    } else {
                        i++;
                    }
                }
            }
        }
        this.A01.A00 = (String[]) linkedHashSet.toArray(new String[linkedHashSet.size()]);
        C08R[] c08rArr = (C08R[]) A0F.values().toArray(new C08R[A0F.size()]);
        Arrays.sort(c08rArr);
        return c08rArr;
    }

    @Override // X.C0BK, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.A02.close();
    }
}
