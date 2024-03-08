package X;

import com.facebook.common.dextricks.classtracing.logger.ClassTracingLoggerFbLite;

/* renamed from: X.05k  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC012605k {
    public static char A00(Integer num) {
        switch (num.intValue()) {
            case 0:
                return 'r';
            case 1:
                return 'f';
            case 2:
                return 's';
            case 3:
                return 'c';
            case ClassTracingLoggerFbLite.ENCODED_CLASS_NAMES_LENGTH /* 4 */:
                return 'p';
            case 5:
                return 't';
            case 6:
                return 'd';
            case 7:
                return 'b';
            case 8:
                return 'l';
            case 9:
                return 'i';
            default:
                return '?';
        }
    }
}
