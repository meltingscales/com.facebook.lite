package X;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.jvm.internal.markers.KMutableMap;

/* renamed from: X.01i  reason: invalid class name and case insensitive filesystem */
/* loaded from: classes.dex */
public final class C003101i<K, V> implements Map<K, V>, Serializable, KMutableMap {
    public static final C003101i A0D;
    public int A00;
    public int A01;
    public int A02;
    public int A03;
    public int A04;
    public C011404u A05;
    public C04v A06;
    public C04y A07;
    public boolean A08;
    public int[] A09;
    public int[] A0A;
    public Object[] A0B;
    public Object[] A0C;

    static {
        C003101i c003101i = new C003101i(0);
        c003101i.A08 = true;
        A0D = c003101i;
    }

    public final boolean A06(Collection collection) {
        C08H.A04(collection, 0);
        for (Object obj : collection) {
            if (obj != null) {
                try {
                    Map.Entry entry = (Map.Entry) obj;
                    C08H.A04(entry, 0);
                    int A00 = A00(entry.getKey(), this);
                    if (A00 >= 0) {
                        Object[] objArr = this.A0C;
                        C08H.A03(objArr);
                        if (!C08H.A09(objArr[A00], entry.getValue())) {
                        }
                    }
                } catch (ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        C08H.A04(map, 0);
        A05();
        Set<Map.Entry<K, V>> entrySet = map.entrySet();
        if (!entrySet.isEmpty()) {
            A01(entrySet.size());
            for (Map.Entry<K, V> entry : entrySet) {
                int A04 = A04(entry.getKey());
                Object[] objArr = this.A0C;
                if (objArr == null) {
                    objArr = new Object[this.A0B.length];
                    this.A0C = objArr;
                }
                if (A04 < 0) {
                    A04 = (-A04) - 1;
                    if (!C08H.A09(entry.getValue(), objArr[A04])) {
                    }
                }
                objArr[A04] = entry.getValue();
            }
        }
    }

    public C003101i(int i) {
        Object[] objArr = new Object[i];
        int[] iArr = new int[i];
        int highestOneBit = Integer.highestOneBit((i < 1 ? 1 : i) * 3);
        this.A0B = objArr;
        this.A0C = null;
        this.A0A = iArr;
        this.A09 = new int[highestOneBit];
        this.A02 = 2;
        this.A01 = 0;
        this.A00 = Integer.numberOfLeadingZeros(highestOneBit) + 1;
    }

    public static final int A00(Object obj, C003101i c003101i) {
        int i;
        if (obj != null) {
            i = obj.hashCode();
        } else {
            i = 0;
        }
        int i2 = (i * (-1640531527)) >>> c003101i.A00;
        int i3 = c003101i.A02;
        while (true) {
            int[] iArr = c003101i.A09;
            int i4 = iArr[i2];
            if (i4 != 0) {
                if (i4 > 0) {
                    int i5 = i4 - 1;
                    if (C08H.A09(c003101i.A0B[i5], obj)) {
                        return i5;
                    }
                }
                i3--;
                if (i3 < 0) {
                    break;
                }
                int i6 = i2 - 1;
                if (i2 == 0) {
                    i2 = iArr.length - 1;
                } else {
                    i2 = i6;
                }
            } else {
                break;
            }
        }
        return -1;
    }

    private final void A01(int i) {
        Object[] objArr;
        int highestOneBit;
        Object[] objArr2 = this.A0B;
        int length = objArr2.length;
        int i2 = this.A01;
        int i3 = length - i2;
        int size = i2 - size();
        if (i3 < i && i3 + size >= i && size >= length / 4) {
            highestOneBit = this.A09.length;
        } else {
            int i4 = i2 + i;
            if (i4 >= 0) {
                if (i4 <= length) {
                    return;
                }
                int i5 = length + (length >> 1);
                if (i5 - i4 < 0) {
                    i5 = i4;
                }
                if (i5 - 2147483639 > 0) {
                    i5 = 2147483639;
                    if (i4 > 2147483639) {
                        i5 = Integer.MAX_VALUE;
                    }
                }
                Object[] copyOf = Arrays.copyOf(objArr2, i5);
                C08H.A01(copyOf);
                this.A0B = copyOf;
                Object[] objArr3 = this.A0C;
                if (objArr3 != null) {
                    objArr = Arrays.copyOf(objArr3, i5);
                    C08H.A01(objArr);
                } else {
                    objArr = null;
                }
                this.A0C = objArr;
                int[] copyOf2 = Arrays.copyOf(this.A0A, i5);
                C08H.A01(copyOf2);
                this.A0A = copyOf2;
                if (i5 < 1) {
                    i5 = 1;
                }
                highestOneBit = Integer.highestOneBit(i5 * 3);
                if (highestOneBit <= this.A09.length) {
                    return;
                }
            } else {
                throw new OutOfMemoryError();
            }
        }
        A02(highestOneBit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x007e, code lost:
        r2[r4] = r6 + 1;
        r7.A0A[r6] = r4;
        r6 = r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void A02(int r8) {
        /*
            r7 = this;
            int r0 = r7.A03
            int r0 = r0 + 1
            r7.A03 = r0
            int r6 = r7.A01
            int r0 = r7.size()
            if (r6 <= r0) goto L4c
            java.lang.Object[] r5 = r7.A0C
            r2 = 0
            r4 = 0
        L12:
            if (r2 >= r6) goto L2b
            int[] r0 = r7.A0A
            r0 = r0[r2]
            if (r0 < 0) goto L28
            java.lang.Object[] r1 = r7.A0B
            r0 = r1[r2]
            r1[r4] = r0
            if (r5 == 0) goto L26
            r0 = r5[r2]
            r5[r4] = r0
        L26:
            int r4 = r4 + 1
        L28:
            int r2 = r2 + 1
            goto L12
        L2b:
            java.lang.Object[] r3 = r7.A0B
            r2 = r4
            r1 = 0
            X.C08H.A04(r3, r1)
        L32:
            if (r2 >= r6) goto L3d
            X.C08H.A04(r3, r1)
            r0 = 0
            r3[r2] = r0
            int r2 = r2 + 1
            goto L32
        L3d:
            if (r5 == 0) goto L4a
            int r2 = r7.A01
            r1 = r4
        L42:
            if (r1 >= r2) goto L4a
            r0 = 0
            r5[r1] = r0
            int r1 = r1 + 1
            goto L42
        L4a:
            r7.A01 = r4
        L4c:
            int[] r1 = r7.A09
            int r0 = r1.length
            r6 = 0
            if (r8 == r0) goto L9f
            int[] r0 = new int[r8]
            r7.A09 = r0
            int r0 = java.lang.Integer.numberOfLeadingZeros(r8)
            int r0 = r0 + 1
            r7.A00 = r0
        L5e:
            int r0 = r7.A01
            if (r6 >= r0) goto La3
            int r5 = r6 + 1
            java.lang.Object[] r0 = r7.A0B
            r0 = r0[r6]
            if (r0 == 0) goto L9d
            int r4 = r0.hashCode()
        L6e:
            r0 = -1640531527(0xffffffff9e3779b9, float:-9.713111E-21)
            int r4 = r4 * r0
            int r0 = r7.A00
            int r4 = r4 >>> r0
            int r3 = r7.A02
        L77:
            int[] r2 = r7.A09
            r0 = r2[r4]
            r1 = 1
            if (r0 != 0) goto L88
            int r0 = r6 + 1
            r2[r4] = r0
            int[] r0 = r7.A0A
            r0[r6] = r4
            r6 = r5
            goto L5e
        L88:
            int r3 = r3 + (-1)
            if (r3 >= 0) goto L94
            java.lang.String r1 = "This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?"
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r0.<init>(r1)
            throw r0
        L94:
            int r0 = r4 + (-1)
            if (r4 != 0) goto L9b
            int r4 = r2.length
            int r4 = r4 - r1
            goto L77
        L9b:
            r4 = r0
            goto L77
        L9d:
            r4 = 0
            goto L6e
        L9f:
            java.util.Arrays.fill(r1, r6, r0, r6)
            goto L5e
        La3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: X.C003101i.A02(int):void");
    }

    public static final void A03(C003101i c003101i, int i) {
        int i2;
        int i3;
        Object[] objArr = c003101i.A0B;
        C08H.A04(objArr, 0);
        objArr[i] = null;
        int[] iArr = c003101i.A0A;
        int i4 = iArr[i];
        int i5 = c003101i.A02;
        int i6 = i5 * 2;
        int[] iArr2 = c003101i.A09;
        int length = iArr2.length;
        int i7 = length / 2;
        if (i6 > i7) {
            i6 = i7;
        }
        int i8 = 0;
        int i9 = i4;
        do {
            int i10 = i4;
            i4--;
            if (i10 == 0) {
                i4 = length - 1;
            }
            i8++;
            if (i8 <= i5 && (i2 = iArr2[i4]) != 0) {
                if (i2 < 0) {
                    iArr2[i9] = -1;
                } else {
                    int i11 = i2 - 1;
                    Object obj = c003101i.A0B[i11];
                    if (obj != null) {
                        i3 = obj.hashCode();
                    } else {
                        i3 = 0;
                    }
                    if (((((i3 * (-1640531527)) >>> c003101i.A00) - i4) & (length - 1)) >= i8) {
                        iArr2[i9] = i2;
                        iArr[i11] = i9;
                    }
                    i6--;
                }
                i9 = i4;
                i8 = 0;
                i6--;
            } else {
                iArr2[i9] = 0;
                break;
            }
        } while (i6 >= 0);
        iArr2[i9] = -1;
        iArr[i] = -1;
        c003101i.A04 = c003101i.size() - 1;
        c003101i.A03++;
    }

    public final void A05() {
        if (!this.A08) {
            return;
        }
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        int i = this.A01;
        while (true) {
            i--;
            if (i >= 0) {
                if (this.A0A[i] >= 0) {
                    Object[] objArr = this.A0C;
                    C08H.A03(objArr);
                    if (C08H.A09(objArr[i], obj)) {
                        return true;
                    }
                }
            } else {
                return false;
            }
        }
    }

    @Override // java.util.Map
    public final /* bridge */ Set entrySet() {
        C011404u c011404u = this.A05;
        if (c011404u == null) {
            C011404u c011404u2 = new C011404u(this);
            this.A05 = c011404u2;
            return c011404u2;
        }
        return c011404u;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof Map) {
                Map map = (Map) obj;
                if (size() == map.size() && A06(map.entrySet())) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    @Override // java.util.Map
    public final int hashCode() {
        int i;
        AnonymousClass079 anonymousClass079 = new AnonymousClass079(this);
        int i2 = 0;
        while (anonymousClass079.hasNext()) {
            int i3 = anonymousClass079.A00;
            C003101i c003101i = anonymousClass079.A03;
            if (i3 < c003101i.A01) {
                anonymousClass079.A00 = i3 + 1;
                anonymousClass079.A01 = i3;
                Object obj = c003101i.A0B[i3];
                int i4 = 0;
                if (obj != null) {
                    i = obj.hashCode();
                } else {
                    i = 0;
                }
                Object[] objArr = c003101i.A0C;
                C08H.A03(objArr);
                Object obj2 = objArr[anonymousClass079.A01];
                if (obj2 != null) {
                    i4 = obj2.hashCode();
                }
                anonymousClass079.A01();
                i2 += i ^ i4;
            } else {
                throw new NoSuchElementException();
            }
        }
        return i2;
    }

    @Override // java.util.Map
    public final /* bridge */ Set keySet() {
        C04v c04v = this.A06;
        if (c04v == null) {
            C04v c04v2 = new C04v(this);
            this.A06 = c04v2;
            return c04v2;
        }
        return c04v;
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return this.A04;
    }

    @Override // java.util.Map
    public final /* bridge */ Collection values() {
        C04y c04y = this.A07;
        if (c04y == null) {
            C04y c04y2 = new C04y(this);
            this.A07 = c04y2;
            return c04y2;
        }
        return c04y;
    }

    public final int A04(Object obj) {
        int i;
        A05();
        while (true) {
            if (obj != null) {
                i = obj.hashCode();
            } else {
                i = 0;
            }
            int i2 = (i * (-1640531527)) >>> this.A00;
            int i3 = this.A02;
            int i4 = i3 * 2;
            int[] iArr = this.A09;
            int length = iArr.length;
            int i5 = length / 2;
            if (i4 > i5) {
                i4 = i5;
            }
            int i6 = 0;
            while (true) {
                int i7 = iArr[i2];
                if (i7 <= 0) {
                    int i8 = this.A01;
                    Object[] objArr = this.A0B;
                    if (i8 >= objArr.length) {
                        A01(1);
                    } else {
                        int i9 = i8 + 1;
                        this.A01 = i9;
                        objArr[i8] = obj;
                        this.A0A[i8] = i2;
                        iArr[i2] = i9;
                        this.A04 = size() + 1;
                        this.A03++;
                        if (i6 > i3) {
                            this.A02 = i6;
                        }
                        return i8;
                    }
                } else if (C08H.A09(this.A0B[i7 - 1], obj)) {
                    return -i7;
                } else {
                    i6++;
                    if (i6 > i4) {
                        A02(length * 2);
                        break;
                    }
                    int i10 = i2;
                    i2--;
                    if (i10 == 0) {
                        i2 = length - 1;
                    }
                }
            }
        }
    }

    @Override // java.util.Map
    public final void clear() {
        A05();
        C01L it = new C01E(0, this.A01 - 1).iterator();
        while (it.hasNext()) {
            int A00 = it.A00();
            int[] iArr = this.A0A;
            int i = iArr[A00];
            if (i >= 0) {
                this.A09[i] = 0;
                iArr[A00] = -1;
            }
        }
        Object[] objArr = this.A0B;
        int i2 = this.A01;
        C08H.A04(objArr, 0);
        for (int i3 = 0; i3 < i2; i3++) {
            C08H.A04(objArr, 0);
            objArr[i3] = null;
        }
        Object[] objArr2 = this.A0C;
        if (objArr2 != null) {
            int i4 = this.A01;
            for (int i5 = 0; i5 < i4; i5++) {
                objArr2[i5] = null;
            }
        }
        this.A04 = 0;
        this.A01 = 0;
        this.A03++;
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        if (A00(obj, this) < 0) {
            return false;
        }
        return true;
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        int A00 = A00(obj, this);
        if (A00 < 0) {
            return null;
        }
        Object[] objArr = this.A0C;
        C08H.A03(objArr);
        return objArr[A00];
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        if (size() != 0) {
            return false;
        }
        return true;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        A05();
        int A04 = A04(obj);
        Object[] objArr = this.A0C;
        if (objArr == null) {
            objArr = new Object[this.A0B.length];
            this.A0C = objArr;
        }
        if (A04 < 0) {
            int i = (-A04) - 1;
            Object obj3 = objArr[i];
            objArr[i] = obj2;
            return obj3;
        }
        objArr[A04] = obj2;
        return null;
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        A05();
        int A00 = A00(obj, this);
        if (A00 < 0) {
            return null;
        }
        A03(this, A00);
        Object[] objArr = this.A0C;
        C08H.A03(objArr);
        Object obj2 = objArr[A00];
        objArr[A00] = null;
        return obj2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((size() * 3) + 2);
        sb.append("{");
        AnonymousClass079 anonymousClass079 = new AnonymousClass079(this);
        int i = 0;
        while (anonymousClass079.hasNext()) {
            if (i > 0) {
                sb.append(", ");
            }
            int i2 = anonymousClass079.A00;
            C003101i c003101i = anonymousClass079.A03;
            if (i2 < c003101i.A01) {
                anonymousClass079.A00 = i2 + 1;
                anonymousClass079.A01 = i2;
                Object obj = c003101i.A0B[i2];
                if (obj == c003101i) {
                    sb.append("(this Map)");
                } else {
                    sb.append(obj);
                }
                sb.append('=');
                Object[] objArr = c003101i.A0C;
                C08H.A03(objArr);
                Object obj2 = objArr[anonymousClass079.A01];
                if (obj2 == c003101i) {
                    sb.append("(this Map)");
                } else {
                    sb.append(obj2);
                }
                anonymousClass079.A01();
                i++;
            } else {
                throw new NoSuchElementException();
            }
        }
        sb.append("}");
        String obj3 = sb.toString();
        C08H.A01(obj3);
        return obj3;
    }

    public C003101i() {
        this(8);
    }
}
