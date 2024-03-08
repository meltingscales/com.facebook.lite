package com.facebook.soloader;

import X.AbstractC02450Ax;
import X.AnonymousClass000;
import android.util.Log;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class SoLoaderULErrorFactory {
    public static boolean corruptedLibName(String str) {
        Matcher matcher = Pattern.compile("\\P{ASCII}+").matcher(str);
        if (matcher.find()) {
            Log.w("SoLoader", AnonymousClass000.A09("Library name is corrupted, contains non-ASCII characters ", matcher.group(), AnonymousClass000.A0C()));
            return true;
        }
        return false;
    }

    public static SoLoaderULError create(String str, UnsatisfiedLinkError unsatisfiedLinkError) {
        SoLoaderULError soLoaderULError;
        if (unsatisfiedLinkError.getMessage() != null && unsatisfiedLinkError.getMessage().contains("ELF")) {
            AbstractC02450Ax.A00("SoLoader");
            soLoaderULError = new SoLoaderCorruptedLibFileError(str, unsatisfiedLinkError.toString());
        } else if (corruptedLibName(str)) {
            AbstractC02450Ax.A00("SoLoader");
            StringBuilder A0C = AnonymousClass000.A0C();
            A0C.append("corrupted lib name: ");
            soLoaderULError = new SoLoaderCorruptedLibNameError(str, AnonymousClass000.A0A(unsatisfiedLinkError.toString(), A0C));
        } else {
            soLoaderULError = new SoLoaderULError(str, unsatisfiedLinkError.toString());
        }
        soLoaderULError.initCause(unsatisfiedLinkError);
        return soLoaderULError;
    }
}
