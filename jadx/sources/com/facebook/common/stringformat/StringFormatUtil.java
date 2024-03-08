package com.facebook.common.stringformat;

import X.AnonymousClass000;
import java.util.Formatter;
import java.util.MissingFormatArgumentException;
import java.util.UnknownFormatConversionException;

/* loaded from: classes.dex */
public class StringFormatUtil {
    public static final int APPENDED_TO_OUTPUT = -3;
    public static final int FALLBACK_TO_SYSTEM = -1;
    public static final int INVALID_FORMAT_PERCENT = -101;
    public static final int NEXT_SEG_RESULT_FINISHED = -200;
    public static final int NEXT_SEG_RESULT_FINISHED_PERCENT = -201;
    public static final int NO_FORMATTING_REQUIRED = -2;
    public static final String NULL_STRING = "null";
    public static final Object[] SINGLE_ITEM_NULL_OBJECT_ARRAY = {null};
    public static final int VALID_FORMAT_PERCENT = -100;

    public static void appendFormatStrLocaleSafe(StringBuilder sb, String str, Object... objArr) {
        int doFormatArray = doFormatArray(null, str, objArr);
        if (doFormatArray == -1) {
            new Formatter(sb).format(null, str, objArr);
        } else if (doFormatArray == -2) {
            sb.append(str);
        } else {
            sb.ensureCapacity(doFormatArray);
            doFormatArray(sb, str, objArr);
        }
    }

    public static int appendIntTypeArg(StringBuilder sb, Object obj) {
        if (obj == null) {
            if (sb == null) {
                return 4;
            }
            sb.append(NULL_STRING);
        } else {
            if (obj instanceof Integer) {
                if (sb == null) {
                    return 11;
                }
            } else if (obj instanceof Short) {
                if (sb == null) {
                    return 6;
                }
            } else if (obj instanceof Byte) {
                if (sb == null) {
                    return 4;
                }
            } else if (obj instanceof Long) {
                if (sb == null) {
                    return 20;
                }
                sb.append(((Number) obj).longValue());
            } else if (sb == null) {
                return -1;
            } else {
                throw new AssertionError();
            }
            sb.append(((Number) obj).intValue());
        }
        return -3;
    }

    public static int doDryRun(String str) {
        return doFormatArgs(null, str, 0, null, null, null, null);
    }

    public static String doFallbackToSystem(String str, Object... objArr) {
        try {
            return String.format(null, str, objArr);
        } catch (MissingFormatArgumentException | UnknownFormatConversionException e) {
            StringBuilder A0C = AnonymousClass000.A0C();
            A0C.append(e.getMessage());
            throw new RuntimeException(AnonymousClass000.A09(": ", str, A0C));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x002d, code lost:
        return -3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int doFormatArgs(java.lang.StringBuilder r12, java.lang.String r13, int r14, java.lang.Object r15, java.lang.Object r16, java.lang.Object r17, java.lang.Object r18) {
        /*
            r4 = 0
            r5 = r12
            if (r12 != 0) goto L5
            r4 = 1
        L5:
            r3 = -1
            r2 = 0
            if (r14 != 0) goto La
            r2 = -1
        La:
            r12 = r2
            r7 = 0
            r1 = 0
        Ld:
            r6 = r13
            if (r12 >= r14) goto L3d
            r8 = r15
            r9 = r16
            r10 = r17
            r11 = r18
            int r0 = appendSegmentFormatArgs(r5, r6, r7, r8, r9, r10, r11, r12)
            if (r0 == r3) goto L2e
            if (r4 == 0) goto L20
            int r1 = r1 + r0
        L20:
            int r7 = getNextFormatSegmentIndex(r13, r7)
            r0 = -200(0xffffffffffffff38, float:NaN)
            if (r12 != r2) goto L2f
            if (r7 != r0) goto L2f
            r3 = -2
            if (r4 != 0) goto L2e
        L2d:
            r3 = -3
        L2e:
            return r3
        L2f:
            if (r7 >= 0) goto L3a
            if (r7 == r0) goto L37
            r0 = -201(0xffffffffffffff37, float:NaN)
            if (r7 != r0) goto L3d
        L37:
            if (r4 == 0) goto L2d
            return r1
        L3a:
            int r12 = r12 + 1
            goto Ld
        L3d:
            int r3 = processRemainingString(r5, r13, r7, r1, r4)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.common.stringformat.StringFormatUtil.doFormatArgs(java.lang.StringBuilder, java.lang.String, int, java.lang.Object, java.lang.Object, java.lang.Object, java.lang.Object):int");
    }

    public static int doFormatArray(StringBuilder sb, String str, Object... objArr) {
        boolean z;
        boolean z2 = true;
        int i = 0;
        boolean z3 = false;
        if (sb == null) {
            z3 = true;
        }
        if (objArr != null && objArr.length != 0) {
            z = false;
        } else {
            objArr = SINGLE_ITEM_NULL_OBJECT_ARRAY;
            z = true;
        }
        int length = objArr.length;
        int i2 = 0;
        int i3 = 0;
        boolean z4 = false;
        while (i < length) {
            int appendSegmentFormat = appendSegmentFormat(sb, str, i2, objArr[i], !z);
            if (appendSegmentFormat == -1) {
                return -1;
            }
            if (z3) {
                i3 += appendSegmentFormat;
            }
            i2 = getNextFormatSegmentIndex(str, i2);
            if (i2 == -200) {
                break;
            } else if (i2 == -201) {
                break;
            } else {
                i++;
                z4 = true;
            }
        }
        z2 = z4;
        if (z3 && !z2) {
            return -2;
        }
        if (i2 != -200 && i2 != -201) {
            return processRemainingString(sb, str, i2, i3, z3);
        }
        if (z3) {
            return i3;
        }
        return -3;
    }

    public static String fallbackToSystem(String str, int i, Object obj, Object obj2, Object obj3, Object obj4, Object[] objArr) {
        if (i != 0) {
            if (i == 1) {
                objArr = new Object[]{obj};
            } else if (i == 2) {
                objArr = new Object[]{obj, obj2};
            } else if (i == 3) {
                objArr = new Object[]{obj, obj2, obj3};
            } else if (i == 4) {
                objArr = new Object[]{obj, obj2, obj3, obj4};
            }
        } else {
            objArr = new Object[0];
        }
        return doFallbackToSystem(str, objArr);
    }

    public static String formatBytes(long j) {
        Float valueOf;
        String str;
        float f = (float) j;
        if (f < 1024.0f) {
            StringBuilder A0C = AnonymousClass000.A0C();
            A0C.append(j);
            return AnonymousClass000.A0A("B", A0C);
        }
        if (f < 1048576.0f) {
            valueOf = Float.valueOf(f / 1024.0f);
            str = "%.2fKB";
        } else if (f < 1.07374182E9f) {
            valueOf = Float.valueOf(f / 1048576.0f);
            str = "%.2fMB";
        } else {
            valueOf = Float.valueOf(f / 1.07374182E9f);
            str = "%.2fGB";
        }
        return formatStrLocaleSafe(str, valueOf);
    }

    public static String formatStrLocaleSafe(String str) {
        return formatStrLocaleSafeInner(str, 0, null, null, null, null, null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0014, code lost:
        if (r2 == null) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int appendStringTypeArg(java.lang.StringBuilder r1, java.lang.Object r2) {
        /*
            boolean r0 = r2 instanceof java.util.Formattable
            if (r0 == 0) goto Le
            if (r1 != 0) goto L8
            r0 = -1
            return r0
        L8:
            java.lang.AssertionError r0 = new java.lang.AssertionError
            r0.<init>()
            throw r0
        Le:
            boolean r0 = r2 instanceof java.lang.String
            if (r0 == 0) goto L1f
            java.lang.String r2 = (java.lang.String) r2
        L14:
            if (r2 != 0) goto L18
        L16:
            java.lang.String r2 = "null"
        L18:
            if (r1 != 0) goto L26
            int r0 = r2.length()
            return r0
        L1f:
            if (r2 == 0) goto L16
            java.lang.String r2 = r2.toString()
            goto L14
        L26:
            r1.append(r2)
            r0 = -3
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.common.stringformat.StringFormatUtil.appendStringTypeArg(java.lang.StringBuilder, java.lang.Object):int");
    }

    public static int doDryRunInternal(String str, int i, Object obj, Object obj2, Object obj3, Object obj4, Object[] objArr) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            return doFormatArray(null, str, objArr);
                        }
                        return doDryRun(str, obj, obj2, obj3, obj4);
                    }
                    return doDryRun(str, obj, obj2, obj3);
                }
                return doDryRun(str, obj, obj2);
            }
            return doDryRun(str, obj);
        }
        return doDryRun(str);
    }

    public static int validateFormatPercent(String str, int i) {
        int i2 = i + 1;
        if (str.length() > i2) {
            char charAt = str.charAt(i2);
            if (charAt == 's' || charAt == 'd' || charAt == '%') {
                return -100;
            }
            return INVALID_FORMAT_PERCENT;
        }
        return INVALID_FORMAT_PERCENT;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static int appendSegmentFormat(java.lang.StringBuilder r7, java.lang.String r8, int r9, java.lang.Object r10, boolean r11) {
        /*
            int r5 = r8.length()
            r6 = 0
        L5:
            if (r9 >= r5) goto L47
            char r0 = r8.charAt(r9)
            r4 = 37
            if (r0 != r4) goto L4b
            int r1 = validateFormatPercent(r8, r9)
            r0 = -100
            r3 = -1
            if (r1 != r0) goto L22
            int r2 = r9 + 1
            char r1 = r8.charAt(r2)
            if (r11 != 0) goto L23
            if (r1 == r4) goto L3a
        L22:
            return r3
        L23:
            r0 = 115(0x73, float:1.61E-43)
            if (r1 != r0) goto L2f
            int r1 = appendStringTypeArg(r7, r10)
        L2b:
            r0 = 1
            if (r1 != r3) goto L42
            return r3
        L2f:
            r0 = 100
            if (r1 != r0) goto L38
            int r1 = appendIntTypeArg(r7, r10)
            goto L2b
        L38:
            if (r1 != r4) goto L22
        L3a:
            if (r7 == 0) goto L3f
            r7.append(r4)
        L3f:
            r9 = r2
            r1 = 1
            r0 = 0
        L42:
            if (r7 != 0) goto L45
            int r6 = r6 + r1
        L45:
            if (r0 == 0) goto L4f
        L47:
            if (r7 == 0) goto L4a
            r6 = -3
        L4a:
            return r6
        L4b:
            if (r7 != 0) goto L52
            int r6 = r6 + 1
        L4f:
            int r9 = r9 + 1
            goto L5
        L52:
            r7.append(r0)
            goto L4f
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.common.stringformat.StringFormatUtil.appendSegmentFormat(java.lang.StringBuilder, java.lang.String, int, java.lang.Object, boolean):int");
    }

    public static String formatStrLocaleSafeInner(String str, int i, Object obj, Object obj2, Object obj3, Object obj4, Object[] objArr) {
        int doDryRunInternal = doDryRunInternal(str, i, obj, obj2, obj3, obj4, objArr);
        if (doDryRunInternal == -1) {
            return fallbackToSystem(str, i, obj, obj2, obj3, obj4, objArr);
        }
        if (doDryRunInternal == -2) {
            return str;
        }
        StringBuilder sb = new StringBuilder(doDryRunInternal);
        if (i == -1) {
            doFormatArray(sb, str, objArr);
        } else {
            doFormatArgs(sb, str, i, obj, obj2, obj3, obj4);
        }
        return sb.toString();
    }

    public static int getNextFormatSegmentIndex(String str, int i) {
        int length = str.length();
        boolean z = false;
        while (i < length) {
            if (str.charAt(i) == '%' && validateFormatPercent(str, i) == -100) {
                int i2 = i + 1;
                if (str.charAt(i2) == '%') {
                    i = i2;
                    z = true;
                } else {
                    return i + 2;
                }
            }
            i++;
        }
        if (!z) {
            return NEXT_SEG_RESULT_FINISHED;
        }
        return NEXT_SEG_RESULT_FINISHED_PERCENT;
    }

    public static int processRemainingString(StringBuilder sb, String str, int i, int i2, boolean z) {
        int length = str.length();
        int i3 = 0;
        while (i < length) {
            char charAt = str.charAt(i);
            if (charAt != '%' || (length > (i = i + 1) && str.charAt(i) == '%')) {
                if (sb == null) {
                    i3++;
                } else {
                    sb.append(charAt);
                }
                i++;
            } else if (z) {
                return -1;
            } else {
                throw new AssertionError();
            }
        }
        if (!z) {
            return -3;
        }
        return i2 + i3;
    }

    public static int appendSegmentFormatArgs(StringBuilder sb, String str, int i, Object obj, Object obj2, Object obj3, Object obj4, int i2) {
        if (i2 != -1) {
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 == 3) {
                            return appendSegmentFormat(sb, str, i, obj4, true);
                        }
                        throw new AssertionError();
                    }
                    return appendSegmentFormat(sb, str, i, obj3, true);
                }
                return appendSegmentFormat(sb, str, i, obj2, true);
            }
            return appendSegmentFormat(sb, str, i, obj, true);
        }
        return appendSegmentFormat(sb, str, i, null, false);
    }

    public static int doDryRun(String str, Object obj, Object obj2) {
        return doFormatArgs(null, str, 2, obj, obj2, null, null);
    }

    public static String formatStrLocaleSafe(String str, Object obj, Object obj2) {
        return formatStrLocaleSafeInner(str, 2, obj, obj2, null, null, null);
    }

    public static int doDryRun(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        return doFormatArgs(null, str, 4, obj, obj2, obj3, obj4);
    }

    public static String formatStrLocaleSafe(String str, Object obj, Object obj2, Object obj3, Object obj4) {
        return formatStrLocaleSafeInner(str, 4, obj, obj2, obj3, obj4, null);
    }

    public static int doDryRun(String str, Object obj, Object obj2, Object obj3) {
        return doFormatArgs(null, str, 3, obj, obj2, obj3, null);
    }

    public static String formatStrLocaleSafe(String str, Object obj, Object obj2, Object obj3) {
        return formatStrLocaleSafeInner(str, 3, obj, obj2, obj3, null, null);
    }

    public static int doDryRun(String str, Object[] objArr) {
        return doFormatArray(null, str, objArr);
    }

    public static String formatStrLocaleSafe(String str, Object... objArr) {
        return formatStrLocaleSafeInner(str, -1, null, null, null, null, objArr);
    }

    public static int doDryRun(String str, Object obj) {
        return doFormatArgs(null, str, 1, obj, null, null, null);
    }

    public static String formatStrLocaleSafe(String str, Object obj) {
        return formatStrLocaleSafeInner(str, 1, obj, null, null, null, null);
    }
}
