package X;

import android.app.Application;
import com.facebook.breakpad.BreakpadManager;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.Map;

/* renamed from: X.06P  reason: invalid class name */
/* loaded from: classes.dex */
public class C06P implements C08G {
    public Object A00;
    public final int A01;

    public C06P(Application application) {
        this.A01 = 0;
        this.A00 = application;
    }

    @Override // X.C08G
    public final Integer AG4() {
        if (this.A01 != 0) {
            return ((C08G) this.A00).AG4();
        }
        return AnonymousClass050.A01;
    }

    @Override // X.C08G
    public final void AH8(C08K c08k) {
        boolean exists;
        FileInputStream openFileInput;
        try {
            if (this.A01 != 0) {
                C08G c08g = (C08G) this.A00;
                if (c08g.AG4() == AnonymousClass050.A0C) {
                    C04s.A01("LacrimaInit.jvmStreamEnabled");
                    try {
                        String property = System.getProperty("java.vm.version");
                        if (property != null && !property.startsWith("1.") && !property.startsWith("0.")) {
                            C0B9.A09("android_aware_dlopen");
                            C0B9.A09("force_dlopen");
                        }
                        c08g.AH8(c08k);
                    } catch (Exception | UnsatisfiedLinkError e) {
                        C015006s.A0B("LacrimaInit", "Error enabling jvm stream", e);
                    }
                } else {
                    c08g.AH8(c08k);
                }
            } else {
                C06T.A00();
                C04s.A01("BreakpadManager.start");
                long j = 0;
                Application application = (Application) this.A00;
                int i = 1;
                Map map = AnonymousClass041.A00;
                Integer num = (Integer) map.get("breakpad_write_only_crash_thread");
                if (num != null) {
                    i = num.intValue();
                } else {
                    try {
                        exists = AnonymousClass000.A04(AnonymousClass000.A04(application.getFilesDir(), "GkBootstrap"), "breakpad_write_only_crash_thread").exists();
                    } catch (IOException unused) {
                    }
                    try {
                        if (!exists) {
                            if (AnonymousClass000.A02(application, "breakpad_write_only_crash_thread").exists()) {
                                openFileInput = application.openFileInput("breakpad_write_only_crash_thread");
                            }
                            map.put("breakpad_write_only_crash_thread", Integer.valueOf(i));
                        } else {
                            openFileInput = new FileInputStream(AnonymousClass000.A04(AnonymousClass000.A02(application, "GkBootstrap"), "breakpad_write_only_crash_thread"));
                        }
                        DataInputStream dataInputStream = new DataInputStream(openFileInput);
                        int readInt = dataInputStream.readInt();
                        if (!exists) {
                            AnonymousClass041.A00(application, readInt);
                        }
                        dataInputStream.close();
                        if (!exists) {
                            try {
                                application.deleteFile("breakpad_write_only_crash_thread");
                            } catch (SecurityException unused2) {
                            }
                        }
                        i = readInt;
                        map.put("breakpad_write_only_crash_thread", Integer.valueOf(i));
                    } catch (Throwable th) {
                        if (!exists) {
                            try {
                                application.deleteFile("breakpad_write_only_crash_thread");
                            } catch (SecurityException unused3) {
                            }
                        }
                        throw th;
                    }
                }
                if (i != 1) {
                    j = 1;
                }
                BreakpadManager.start(application, j, 1536000, null, null);
                BreakpadManager.setCustomData(C07M.A4F.A00, (String) c08k.A0P.get(), new Object[0]);
            }
        } finally {
            C04s.A00();
        }
    }

    public C06P() {
        this.A01 = 1;
        this.A00 = new C0Ba(0);
    }
}
