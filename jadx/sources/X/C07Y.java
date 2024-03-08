package X;

import android.content.Context;
import com.facebook.common.dextricks.DexFileLoadNew;
import com.facebook.common.dextricks.DexFileLoadOld;
import dalvik.system.DexFile;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;

/* renamed from: X.07Y  reason: invalid class name */
/* loaded from: classes.dex */
public final class C07Y extends ClassLoader implements AnonymousClass064 {
    public static C07Y A0A;
    public static byte A0B;
    public static final ClassLoader A0C;
    public static final ClassLoader A0D;
    public static final Field A0E;
    public ArrayList A00;
    public boolean A01;
    public boolean A02;
    public DexFile[] A03;
    public DexFile[] A04;
    public final ClassLoader A05;
    public final ConcurrentLinkedQueue A06;
    public final DexFile[] A07;
    public final DexFile[] A08;
    public volatile InterfaceC001300p A09;

    private synchronized void A02() {
        DexFile[] dexFileArr = this.A08;
        int length = dexFileArr.length;
        DexFile[] dexFileArr2 = this.A04;
        int length2 = dexFileArr2.length;
        DexFile[] dexFileArr3 = this.A07;
        int length3 = dexFileArr3.length;
        int i = 1;
        DexFile[] dexFileArr4 = new DexFile[length + length2 + length3 + 1];
        int i2 = 0;
        dexFileArr4[0] = null;
        int i3 = 0;
        while (i3 < length) {
            dexFileArr4[i] = dexFileArr[i3];
            i3++;
            i++;
        }
        int i4 = 0;
        while (i4 < length3) {
            dexFileArr4[i] = dexFileArr3[i4];
            i4++;
            i++;
        }
        while (i2 < length2) {
            dexFileArr4[i] = dexFileArr2[i2];
            i2++;
            i++;
        }
        this.A03 = dexFileArr4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0064, code lost:
        if (r8 >= 8) goto L46;
     */
    /* JADX WARN: Removed duplicated region for block: B:109:0x00fa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:111:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00d1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x00ec A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00f2 A[Catch: RuntimeException -> 0x0101, TryCatch #2 {RuntimeException -> 0x0101, blocks: (B:85:0x00ed, B:91:0x00fa, B:88:0x00f2), top: B:105:0x00ed }] */
    @Override // java.lang.ClassLoader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Class loadClass(java.lang.String r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C07Y.loadClass(java.lang.String, boolean):java.lang.Class");
    }

    static {
        try {
            ClassLoader classLoader = C07Y.class.getClassLoader();
            A0C = classLoader;
            Field declaredField = ClassLoader.class.getDeclaredField("parent");
            A0E = declaredField;
            declaredField.setAccessible(true);
            A0D = (ClassLoader) declaredField.get(classLoader);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public C07Y(Context context, boolean z) {
        super(A0D);
        this.A01 = false;
        this.A02 = false;
        this.A09 = null;
        this.A06 = new ConcurrentLinkedQueue();
        this.A00 = AnonymousClass000.A0E();
        this.A04 = new DexFile[0];
        this.A05 = A0C;
        ArrayList A0E2 = AnonymousClass000.A0E();
        ArrayList A0E3 = AnonymousClass000.A0E();
        try {
            try {
                Field declaredField = Class.forName("dalvik.system.BaseDexClassLoader").getDeclaredField("pathList");
                declaredField.setAccessible(true);
                Object[] A0S = AnonymousClass000.A0S(this.A05, declaredField);
                Field declaredField2 = Class.forName("dalvik.system.DexPathList$Element").getDeclaredField("dexFile");
                declaredField2.setAccessible(true);
                String str = context.getApplicationInfo().sourceDir;
                for (Object obj : A0S) {
                    DexFile dexFile = (DexFile) declaredField2.get(obj);
                    if (!z || dexFile != null) {
                        if (str.equals(dexFile.getName())) {
                            A0E2.add(dexFile);
                        } else {
                            A0E3.add(dexFile);
                        }
                    }
                }
            } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
                throw new RuntimeException(e);
            }
        } catch (Exception e2) {
            C015006s.A0B("ClassLoaderWithDexPromotion", "Failed to locate primary/auxiliary dex files, expect a perf loss: ", e2);
        }
        this.A08 = (DexFile[]) A0E2.toArray(new DexFile[A0E2.size()]);
        this.A07 = (DexFile[]) A0E3.toArray(new DexFile[A0E3.size()]);
        A02();
    }

    public static synchronized C07Y A00(Context context) {
        C07Y c07y;
        synchronized (C07Y.class) {
            A03(context, false);
            c07y = A0A;
        }
        return c07y;
    }

    public static Class A01(DexFile dexFile, ClassLoader classLoader, String str) {
        byte b = A0B;
        if (b != 0) {
            if (b != 1) {
                if (b != 2) {
                    return dexFile.loadClass(str, classLoader);
                }
                return DexFileLoadOld.A00(dexFile, classLoader, str);
            }
            return DexFileLoadNew.A00(dexFile, classLoader, str);
        }
        try {
            try {
                Class A00 = DexFileLoadNew.A00(dexFile, classLoader, str);
                A0B = (byte) 1;
                return A00;
            } catch (NoSuchMethodError unused) {
                Class loadClass = dexFile.loadClass(str, classLoader);
                A0B = (byte) 3;
                return loadClass;
            }
        } catch (NoSuchMethodError unused2) {
            Class A002 = DexFileLoadOld.A00(dexFile, classLoader, str);
            A0B = (byte) 2;
            return A002;
        }
    }

    public static synchronized void A03(Context context, boolean z) {
        synchronized (C07Y.class) {
            if (A0A == null) {
                try {
                    Class.forName("com.facebook.common.dextricks.DexFileLoadOld");
                    Class.forName("com.facebook.common.dextricks.DexFileLoadNew");
                    C07Y c07y = new C07Y(context, z);
                    try {
                        A0E.set(c07y.A05, c07y);
                        A0A = c07y;
                    } catch (IllegalAccessException e) {
                        throw new RuntimeException(e);
                    }
                } catch (ClassNotFoundException e2) {
                }
            }
        }
    }

    public final void A04(DexFile dexFile) {
        DexFile[] dexFileArr = this.A04;
        ArrayList arrayList = new ArrayList(dexFileArr.length + 1);
        for (DexFile dexFile2 : dexFileArr) {
            arrayList.add(dexFile2);
        }
        arrayList.add(dexFile);
        this.A04 = (DexFile[]) arrayList.toArray(new DexFile[arrayList.size()]);
        A02();
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0019, code lost:
        if (r6.getCanonicalPath().contains("app_modules") != false) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
        r4 = dalvik.system.DexFile.class.getClassLoader();
     */
    @Override // X.AnonymousClass064
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void A23(java.io.File r6, java.io.File r7) {
        /*
            r5 = this;
            int r2 = android.os.Build.VERSION.SDK_INT
            r1 = 0
            r0 = 34
            if (r2 < r0) goto La
            r6.setWritable(r1)
        La:
            r4 = 0
            boolean r0 = r5.A01
            java.lang.String r1 = "app_modules"
            if (r0 == 0) goto L31
            java.lang.String r0 = r6.getCanonicalPath()
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L21
        L1b:
            java.lang.Class<dalvik.system.DexFile> r0 = dalvik.system.DexFile.class
            java.lang.ClassLoader r4 = r0.getClassLoader()
        L21:
            java.lang.String r1 = r6.getAbsolutePath()
            java.lang.String r0 = r7.getAbsolutePath()
            dalvik.system.DexFile r0 = X.AbstractC001000m.A00(r4, r1, r0)
            r5.A04(r0)
            return
        L31:
            boolean r0 = r5.A02
            if (r0 == 0) goto L21
            java.lang.String r3 = r6.getCanonicalPath()
            boolean r0 = r3.contains(r1)
            if (r0 == 0) goto L21
            r2 = 0
        L40:
            java.util.ArrayList r1 = r5.A00
            int r0 = r1.size()
            if (r2 >= r0) goto L21
            java.lang.Object r0 = r1.get(r2)
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0
            boolean r0 = r3.contains(r0)
            if (r0 != 0) goto L1b
            int r2 = r2 + 1
            goto L40
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C07Y.A23(java.io.File, java.io.File):void");
    }

    @Override // java.lang.ClassLoader
    public final Class findClass(String str) {
        Class cls;
        DexFile[] dexFileArr = this.A03;
        ConcurrentLinkedQueue concurrentLinkedQueue = this.A06;
        Iterator it = concurrentLinkedQueue.iterator();
        while (it.hasNext()) {
            ((AnonymousClass055) it.next()).A3l(str);
        }
        DexFile dexFile = dexFileArr[0];
        if (dexFile == null || (cls = A01(dexFile, this.A05, str)) == null) {
            int i = 1;
            while (true) {
                if (i < dexFileArr.length) {
                    DexFile dexFile2 = dexFileArr[i];
                    cls = A01(dexFile2, this.A05, str);
                    if (cls != null) {
                        if (i > 1) {
                            synchronized (this) {
                                DexFile[] dexFileArr2 = this.A03;
                                if (dexFileArr2[i] == dexFile2) {
                                    dexFileArr2[0] = dexFile2;
                                    while (i >= 1) {
                                        dexFileArr2[i] = dexFileArr2[i - 1];
                                        i--;
                                    }
                                    dexFileArr2[0] = null;
                                }
                            }
                        }
                    } else {
                        i++;
                    }
                } else {
                    DexFile[] dexFileArr3 = this.A08;
                    int i2 = 0;
                    while (true) {
                        if (i2 < dexFileArr3.length) {
                            cls = A01(dexFileArr3[i2], this.A05, str);
                            if (cls != null) {
                                break;
                            }
                            i2++;
                        } else {
                            cls = null;
                            break;
                        }
                    }
                    if (cls == null) {
                        DexFile[] dexFileArr4 = this.A07;
                        int i3 = 0;
                        while (true) {
                            if (i3 < dexFileArr4.length) {
                                cls = A01(dexFileArr4[i3], this.A05, str);
                                if (cls != null) {
                                    break;
                                }
                                i3++;
                            } else {
                                cls = null;
                                break;
                            }
                        }
                        if (cls == null) {
                            DexFile[] dexFileArr5 = this.A04;
                            int i4 = 0;
                            while (true) {
                                if (i4 < dexFileArr5.length) {
                                    cls = A01(dexFileArr5[i4], this.A05, str);
                                    if (cls != null) {
                                        break;
                                    }
                                    i4++;
                                } else {
                                    cls = null;
                                    break;
                                }
                            }
                            if (cls == null) {
                                Iterator it2 = concurrentLinkedQueue.iterator();
                                while (it2.hasNext()) {
                                    ((AnonymousClass055) it2.next()).A3k();
                                }
                                throw new ClassNotFoundException(AnonymousClass000.A09("ClassLoaderWithDexPromotion didn't find ", str, AnonymousClass000.A0C()));
                            }
                        }
                    }
                }
            }
        }
        Iterator it3 = concurrentLinkedQueue.iterator();
        while (it3.hasNext()) {
            ((AnonymousClass055) it3.next()).A3j(cls);
        }
        return cls;
    }
}
