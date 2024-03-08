package X;

import com.facebook.common.stringformat.StringFormatUtil;
import java.util.regex.Matcher;

/* renamed from: X.01h  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC003001h {
    public static String A00(String str, Object... objArr) {
        String str2;
        for (Object obj : objArr) {
            if (obj != null) {
                str2 = Matcher.quoteReplacement(obj.toString());
            } else {
                str2 = StringFormatUtil.NULL_STRING;
            }
            str = str.replaceFirst("\\{\\}", str2);
        }
        return str;
    }
}
