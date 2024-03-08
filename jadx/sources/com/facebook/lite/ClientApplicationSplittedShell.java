package com.facebook.lite;

import X.AnonymousClass000;
import X.AnonymousClass003;
import X.C04s;
import X.C06C;
import X.C08H;
import android.app.Application;
import java.io.File;

/* loaded from: classes.dex */
public class ClientApplicationSplittedShell extends Application {
    public AnonymousClass003 A00;

    @Override // android.content.ContextWrapper, android.content.Context
    public final File getDir(String str, int i) {
        C08H.A04(str, 1);
        if (C06C.A00 && "webview".equals(str)) {
            File A03 = AnonymousClass000.A03(this, "app_browser_proc_webview");
            A03.mkdirs();
            return A03;
        }
        return super.getDir(str, i);
    }

    private void A00() {
        if (this.A00 == null) {
            try {
                this.A00 = (AnonymousClass003) Class.forName("com.facebook.lite.LeanClientApplication").getConstructor(Application.class).newInstance(this);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(18:48|49|(1:51)|52|(14:54|(1:56)|57|58|59|60|(2:62|63)(1:164)|64|65|66|(2:68|(1:158)(34:72|73|(3:75|76|77)|78|(1:80)|81|(3:83|(1:(1:86))(1:88)|87)|89|90|91|92|93|94|95|96|97|(19:99|(1:101)|103|(2:105|106)(1:149)|107|108|109|110|(10:112|113|114|115|116|118|119|120|121|122)|129|(1:131)|132|(1:136)|137|(1:139)|(1:145)|142|143|144)|150|107|108|109|110|(0)|129|(0)|132|(2:134|136)|137|(0)|(0)|145|142|143|144))|160|161|162)|(1:167)|57|58|59|60|(0)(0)|64|65|66|(0)|160|161|162) */
    /* JADX WARN: Can't wrap try/catch for region: R(34:72|73|(3:75|76|77)|78|(1:80)|81|(3:83|(1:(1:86))(1:88)|87)|89|90|91|92|93|94|95|96|97|(19:99|(1:101)|103|(2:105|106)(1:149)|107|108|109|110|(10:112|113|114|115|116|118|119|120|121|122)|129|(1:131)|132|(1:136)|137|(1:139)|(1:145)|142|143|144)|150|107|108|109|110|(0)|129|(0)|132|(2:134|136)|137|(0)|(0)|145|142|143|144) */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x02a9, code lost:
        if (X.C0A2.A05(r13, 10) == false) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0334, code lost:
        r2 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0335, code lost:
        X.C015006s.A0B("SecondaryDexLoader", "No secondary dex manifest file, trying to start anyway", r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x019c, code lost:
        if (r2.contains(":") != false) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01b8, code lost:
        r11 = false;
     */
    /* JADX WARN: Removed duplicated region for block: B:120:0x02f3 A[Catch: all -> 0x0391, TRY_LEAVE, TryCatch #16 {IOException -> 0x0396, blocks: (B:103:0x0291, B:155:0x0384, B:104:0x0298, B:106:0x029c, B:108:0x02a0, B:110:0x02ab, B:115:0x02bf, B:116:0x02cb, B:117:0x02d7, B:118:0x02e0, B:120:0x02f3, B:127:0x0319, B:137:0x032d, B:138:0x0333, B:141:0x033c, B:143:0x0340, B:144:0x0347, B:146:0x0355, B:149:0x0361, B:151:0x0365, B:154:0x0377, B:140:0x0335), top: B:189:0x0291 }] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0340 A[Catch: all -> 0x0391, TryCatch #16 {IOException -> 0x0396, blocks: (B:103:0x0291, B:155:0x0384, B:104:0x0298, B:106:0x029c, B:108:0x02a0, B:110:0x02ab, B:115:0x02bf, B:116:0x02cb, B:117:0x02d7, B:118:0x02e0, B:120:0x02f3, B:127:0x0319, B:137:0x032d, B:138:0x0333, B:141:0x033c, B:143:0x0340, B:144:0x0347, B:146:0x0355, B:149:0x0361, B:151:0x0365, B:154:0x0377, B:140:0x0335), top: B:189:0x0291 }] */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0365 A[Catch: all -> 0x0391, TryCatch #16 {IOException -> 0x0396, blocks: (B:103:0x0291, B:155:0x0384, B:104:0x0298, B:106:0x029c, B:108:0x02a0, B:110:0x02ab, B:115:0x02bf, B:116:0x02cb, B:117:0x02d7, B:118:0x02e0, B:120:0x02f3, B:127:0x0319, B:137:0x032d, B:138:0x0333, B:141:0x033c, B:143:0x0340, B:144:0x0347, B:146:0x0355, B:149:0x0361, B:151:0x0365, B:154:0x0377, B:140:0x0335), top: B:189:0x0291 }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01c8  */
    /* JADX WARN: Type inference failed for: r2v30, types: [X.0B6] */
    @Override // android.content.ContextWrapper
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void attachBaseContext(final android.content.Context r13) {
        /*
            Method dump skipped, instructions count: 965
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.lite.ClientApplicationSplittedShell.attachBaseContext(android.content.Context):void");
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        Object systemService;
        AnonymousClass003 anonymousClass003 = this.A00;
        if (anonymousClass003 != null && (systemService = anonymousClass003.getSystemService(str)) != null) {
            return systemService;
        }
        return super.getSystemService(str);
    }

    public static void A01(String str) {
        C04s.A01(AnonymousClass000.A09("ClientApplicationSplittedShell.", str, AnonymousClass000.A0C()));
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final File getCacheDir() {
        File cacheDir = super.getCacheDir();
        C08H.A04(cacheDir, 1);
        if (C06C.A00) {
            File A03 = AnonymousClass000.A03(this, "cache/browser_proc");
            A03.mkdirs();
            if (A03.isDirectory() || A03.mkdirs()) {
                return A03;
            }
        }
        return cacheDir;
    }

    @Override // android.app.Application
    public final void onCreate() {
        super.onCreate();
        A00();
        this.A00.onCreate();
    }

    @Override // android.app.Application, android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        super.onTrimMemory(i);
        AnonymousClass003 anonymousClass003 = this.A00;
        if (anonymousClass003 != null) {
            anonymousClass003.onTrimMemory(i);
        }
    }
}
