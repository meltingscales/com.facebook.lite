package X;

import java.io.Serializable;
import java.lang.Enum;
import kotlin.enums.EnumEntries;

/* renamed from: X.01B  reason: invalid class name */
/* loaded from: classes.dex */
public final class C01B<T extends Enum<T>> extends C01A<T> implements EnumEntries<T>, Serializable, AnonymousClass018 {
    public final Enum[] A00;

    @Override // X.AnonymousClass019
    public final int A00() {
        return 3;
    }

    @Override // X.AnonymousClass019, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof Enum) {
            Enum r4 = (Enum) obj;
            C08H.A04(r4, 0);
            Enum[] enumArr = this.A00;
            int ordinal = r4.ordinal();
            C08H.A04(enumArr, 0);
            if (ordinal >= 0) {
                C08H.A04(enumArr, 0);
                if (ordinal <= 2 && enumArr[ordinal] == r4) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // X.C01A, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        Enum[] enumArr = this.A00;
        if (i >= 0 && i < 3) {
            return enumArr[i];
        }
        StringBuilder A0C = AnonymousClass000.A0C();
        A0C.append("index: ");
        A0C.append(i);
        throw new IndexOutOfBoundsException(AnonymousClass000.A0B(", size: ", A0C, 3));
    }

    @Override // X.C01A, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof Enum) {
            Enum r4 = (Enum) obj;
            C08H.A04(r4, 0);
            int ordinal = r4.ordinal();
            Enum[] enumArr = this.A00;
            C08H.A04(enumArr, 0);
            if (ordinal >= 0) {
                C08H.A04(enumArr, 0);
                if (ordinal <= 2 && enumArr[ordinal] == r4) {
                    return ordinal;
                }
                return -1;
            }
            return -1;
        }
        return -1;
    }

    @Override // X.C01A, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (!(obj instanceof Enum)) {
            return -1;
        }
        C08H.A04(obj, 0);
        return indexOf(obj);
    }

    public C01B(Enum[] enumArr) {
        this.A00 = enumArr;
    }
}
