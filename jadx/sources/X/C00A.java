package X;

import android.content.Context;
import android.content.ContextWrapper;

/* renamed from: X.00A  reason: invalid class name */
/* loaded from: classes.dex */
public final class C00A extends ContextWrapper {
    @Override // android.content.ContextWrapper, android.content.Context
    public final Context getApplicationContext() {
        return this;
    }

    public C00A(Context context) {
        super(context);
    }
}
