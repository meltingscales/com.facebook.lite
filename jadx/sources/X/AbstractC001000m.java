package X;

/* renamed from: X.00m  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC001000m {
    /* JADX WARN: Removed duplicated region for block: B:18:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static dalvik.system.DexFile A00(java.lang.ClassLoader r8, java.lang.String r9, java.lang.String r10) {
        /*
            r5 = 0
            r4 = 0
            if (r8 == 0) goto L4c
            java.lang.Class<dalvik.system.DexFile> r0 = dalvik.system.DexFile.class
            java.lang.reflect.Method[] r7 = r0.getDeclaredMethods()     // Catch: java.lang.Throwable -> L4c
            int r3 = r7.length     // Catch: java.lang.Throwable -> L4c
            r2 = 0
        Lc:
            if (r2 >= r3) goto L2c
            r6 = r7[r2]     // Catch: java.lang.Throwable -> L4c
            java.lang.String r1 = r6.getName()     // Catch: java.lang.Throwable -> L4c
            java.lang.String r0 = "loadDex"
            boolean r0 = r1.equals(r0)     // Catch: java.lang.Throwable -> L4c
            if (r0 == 0) goto L29
            java.lang.Class[] r0 = r6.getParameterTypes()     // Catch: java.lang.Throwable -> L4c
            int r1 = r0.length     // Catch: java.lang.Throwable -> L4c
            r0 = 5
            if (r1 < r0) goto L29
            r0 = 1
            r6.setAccessible(r0)     // Catch: java.lang.Throwable -> L4c
            goto L2d
        L29:
            int r2 = r2 + 1
            goto Lc
        L2c:
            r6 = 0
        L2d:
            r3 = 1
            if (r6 == 0) goto L4c
            r0 = 5
            java.lang.Object[] r2 = new java.lang.Object[r0]     // Catch: java.lang.Throwable -> L4c
            r2[r4] = r9     // Catch: java.lang.Throwable -> L4c
            r2[r3] = r10     // Catch: java.lang.Throwable -> L4c
            r1 = 2
            java.lang.Integer r0 = java.lang.Integer.valueOf(r4)     // Catch: java.lang.Throwable -> L4c
            r2[r1] = r0     // Catch: java.lang.Throwable -> L4c
            r0 = 3
            r2[r0] = r8     // Catch: java.lang.Throwable -> L4c
            r0 = 4
            r2[r0] = r5     // Catch: java.lang.Throwable -> L4c
            java.lang.Object r0 = r6.invoke(r5, r2)     // Catch: java.lang.Throwable -> L4c
            dalvik.system.DexFile r0 = (dalvik.system.DexFile) r0     // Catch: java.lang.Throwable -> L4c
            r5 = r0
            goto L4d
        L4c:
            r3 = 0
        L4d:
            if (r3 != 0) goto L53
            dalvik.system.DexFile r5 = dalvik.system.DexFile.loadDex(r9, r10, r4)
        L53:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: X.AbstractC001000m.A00(java.lang.ClassLoader, java.lang.String, java.lang.String):dalvik.system.DexFile");
    }
}
