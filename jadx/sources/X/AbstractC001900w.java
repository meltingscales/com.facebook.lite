package X;

/* renamed from: X.00w  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC001900w {
    public static void A00(Boolean bool) {
        if (bool != null && !bool.booleanValue()) {
            throw new IllegalArgumentException();
        }
    }

    public static void A01(Object obj, Object obj2) {
        if (obj != null) {
            return;
        }
        throw new NullPointerException(String.valueOf(obj2));
    }

    public static void A02(boolean z) {
        if (z) {
            return;
        }
        throw new IllegalStateException();
    }

    public static void A03(boolean z, String str, Object... objArr) {
        if (z) {
            return;
        }
        String valueOf = String.valueOf(str);
        int length = valueOf.length();
        int length2 = objArr.length;
        StringBuilder sb = new StringBuilder(length + (length2 * 16));
        int i = 0;
        int i2 = 0;
        while (i < length2) {
            int indexOf = valueOf.indexOf("%s", i2);
            if (indexOf == -1) {
                break;
            }
            sb.append(valueOf.substring(i2, indexOf));
            sb.append(objArr[i]);
            i2 = indexOf + 2;
            i++;
        }
        sb.append(valueOf.substring(i2));
        if (i < length2) {
            sb.append(" [");
            sb.append(objArr[i]);
            for (int i3 = i + 1; i3 < length2; i3++) {
                sb.append(", ");
                sb.append(objArr[i3]);
            }
            sb.append(']');
        }
        throw new IllegalArgumentException(sb.toString());
    }
}
