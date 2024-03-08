package X;

import java.util.Map;

/* renamed from: X.09E  reason: invalid class name */
/* loaded from: classes.dex */
public final class C09E implements Map.Entry, AnonymousClass018 {
    public final int A00;
    public final C003101i A01;

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            if (C08H.A09(entry.getKey(), getKey()) && C08H.A09(entry.getValue(), getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.A01.A0B[this.A00];
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        Object[] objArr = this.A01.A0C;
        C08H.A03(objArr);
        return objArr[this.A00];
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        C003101i c003101i = this.A01;
        c003101i.A05();
        Object[] objArr = c003101i.A0C;
        if (objArr == null) {
            objArr = new Object[c003101i.A0B.length];
            c003101i.A0C = objArr;
        }
        int i = this.A00;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        return obj2;
    }

    public C09E(C003101i c003101i, int i) {
        this.A01 = c003101i;
        this.A00 = i;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        int i;
        Object key = getKey();
        int i2 = 0;
        if (key != null) {
            i = key.hashCode();
        } else {
            i = 0;
        }
        Object value = getValue();
        if (value != null) {
            i2 = value.hashCode();
        }
        return i ^ i2;
    }

    public final String toString() {
        StringBuilder A0C = AnonymousClass000.A0C();
        A0C.append(getKey());
        A0C.append('=');
        A0C.append(getValue());
        return A0C.toString();
    }
}
