package X;

import android.app.PendingIntent;
import android.content.ClipData;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import java.util.HashSet;
import java.util.Set;

/* renamed from: X.00r  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public class C001400r {
    public AnonymousClass005 A07;
    public ComponentName A03 = null;
    public String A0C = null;
    public String A08 = null;
    public Uri A06 = null;
    public String A09 = null;
    public Rect A05 = null;
    public Intent A04 = null;
    public ClipData A02 = null;
    public Bundle A0B = null;
    public final Set A0D = new HashSet();
    public int A00 = 0;
    public long A01 = 0;
    public boolean A0A = false;

    public final int A00(int i) {
        int i2;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 23) {
            boolean z = false;
            if ((8 & this.A01) != 0) {
                z = true;
            }
            if (!z) {
                if (i3 > 30) {
                    i &= -33554433;
                }
                i2 = 67108864;
            } else {
                i &= -67108865;
                if (i3 <= 30) {
                    return i;
                }
                i2 = 33554432;
            }
            return i | i2;
        }
        return i;
    }

    public Intent A04(Context context) {
        String packageName;
        Intent intent = new Intent();
        intent.setComponent(this.A03);
        intent.setFlags(this.A00);
        if (this.A0A) {
            intent.setComponent(new ComponentName(context, "com.facebook.invalid_class.f4c3b00c"));
            packageName = context.getPackageName();
        } else {
            intent.setAction(this.A08);
            intent.setDataAndType(this.A06, this.A09);
            intent.setSourceBounds(this.A05);
            intent.setSelector(this.A04);
            if (Build.VERSION.SDK_INT >= 16) {
                AbstractC004801z.A01(this.A02, intent);
            }
            for (String str : this.A0D) {
                intent.addCategory(str);
            }
            if (this.A0B != null) {
                intent.setExtrasClassLoader(context.getClassLoader());
                intent.putExtras(this.A0B);
            }
            long j = this.A01;
            if ((1 & j) != 0) {
                if ((4 & j) == 0) {
                    String str2 = this.A0C;
                    if (str2 == null) {
                        str2 = context.getPackageName();
                        this.A0C = str2;
                    }
                    intent.setPackage(str2);
                    if ((2 & this.A01) != 0) {
                        if (!this.A0C.equals(context.getPackageName())) {
                            AnonymousClass005 anonymousClass005 = this.A07;
                            if (anonymousClass005 != null) {
                                anonymousClass005.AXW("SecurePendingIntent is configured to allow only implicit intent going to the same app, but detected intent for a different app.");
                            } else {
                                throw new IllegalArgumentException("Please set reporter for SecurePendingIntent library");
                            }
                        }
                    }
                    if (intent.getAction() != null && !intent.getAction().startsWith("android")) {
                        return intent;
                    }
                    if (intent.getCategories() != null && !intent.getCategories().isEmpty()) {
                        return intent;
                    }
                    AnonymousClass005 anonymousClass0052 = this.A07;
                    if (anonymousClass0052 != null) {
                        anonymousClass0052.AXW("SecurePendingIntent is configured to allow implicit intent with either customized action or categories");
                        return intent;
                    }
                    throw new IllegalArgumentException("Please set reporter for SecurePendingIntent library");
                }
                return intent;
            } else if (intent.getComponent() != null) {
                packageName = intent.getComponent().getPackageName();
            } else {
                throw new SecurityException("Must generate PendingIntent based on an explicit intent.");
            }
        }
        intent.setPackage(packageName);
        return intent;
    }

    public C001400r A06(Bundle bundle, ClassLoader classLoader) {
        Bundle bundle2 = this.A0B;
        if (bundle2 == null) {
            bundle2 = new Bundle();
            this.A0B = bundle2;
        }
        if (classLoader != null) {
            bundle2.setClassLoader(classLoader);
        }
        this.A0B.putAll(bundle);
        return this;
    }

    public final PendingIntent A01(Context context, int i, int i2) {
        return PendingIntent.getActivity(context, i, A04(context), A00(i2));
    }

    public final PendingIntent A02(Context context, int i, int i2) {
        return PendingIntent.getBroadcast(context, i, A04(context), A00(i2));
    }

    public final PendingIntent A03(Context context, int i, int i2) {
        return PendingIntent.getService(context, i, A04(context), A00(i2));
    }

    public C001400r A05(Intent intent, ClassLoader classLoader) {
        this.A03 = intent.getComponent();
        this.A08 = intent.getAction();
        this.A06 = intent.getData();
        this.A09 = intent.getType();
        this.A05 = intent.getSourceBounds();
        this.A04 = intent.getSelector();
        if (Build.VERSION.SDK_INT >= 16) {
            this.A02 = AbstractC004801z.A00(intent);
        }
        Set<String> categories = intent.getCategories();
        if (categories != null) {
            this.A0D.addAll(categories);
        }
        this.A00 = intent.getFlags();
        if (intent.getExtras() != null) {
            if (classLoader != null) {
                intent.setExtrasClassLoader(classLoader);
            }
            A06(intent.getExtras(), classLoader);
        }
        return this;
    }
}
