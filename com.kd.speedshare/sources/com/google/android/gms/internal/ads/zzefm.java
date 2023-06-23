package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* compiled from: com.google.android.gms:play-services-ads-lite@@19.2.0 */
final class zzefm extends zzeel<Double> implements zzegm<Double>, zzehx, RandomAccess {
    private static final zzefm zziba;
    private int size;
    private double[] zzibb;

    zzefm() {
        this(new double[10], 0);
    }

    private zzefm(double[] dArr, int i) {
        this.zzibb = dArr;
        this.size = i;
    }

    /* access modifiers changed from: protected */
    public final void removeRange(int i, int i2) {
        zzbda();
        if (i2 >= i) {
            double[] dArr = this.zzibb;
            System.arraycopy(dArr, i2, dArr, i, this.size - i2);
            this.size -= i2 - i;
            this.modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzefm)) {
            return super.equals(obj);
        }
        zzefm zzefm = (zzefm) obj;
        if (this.size != zzefm.size) {
            return false;
        }
        double[] dArr = zzefm.zzibb;
        for (int i = 0; i < this.size; i++) {
            if (Double.doubleToLongBits(this.zzibb[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + zzegd.zzfr(Double.doubleToLongBits(this.zzibb[i2]));
        }
        return i;
    }

    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double doubleValue = ((Double) obj).doubleValue();
        int size2 = size();
        for (int i = 0; i < size2; i++) {
            if (this.zzibb[i] == doubleValue) {
                return i;
            }
        }
        return -1;
    }

    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final int size() {
        return this.size;
    }

    public final void zzd(double d) {
        zzbda();
        int i = this.size;
        double[] dArr = this.zzibb;
        if (i == dArr.length) {
            double[] dArr2 = new double[(((i * 3) / 2) + 1)];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            this.zzibb = dArr2;
        }
        double[] dArr3 = this.zzibb;
        int i2 = this.size;
        this.size = i2 + 1;
        dArr3[i2] = d;
    }

    public final boolean addAll(Collection<? extends Double> collection) {
        zzbda();
        zzegd.checkNotNull(collection);
        if (!(collection instanceof zzefm)) {
            return super.addAll(collection);
        }
        zzefm zzefm = (zzefm) collection;
        int i = zzefm.size;
        if (i == 0) {
            return false;
        }
        int i2 = this.size;
        if (Integer.MAX_VALUE - i2 >= i) {
            int i3 = i2 + i;
            double[] dArr = this.zzibb;
            if (i3 > dArr.length) {
                this.zzibb = Arrays.copyOf(dArr, i3);
            }
            System.arraycopy(zzefm.zzibb, 0, this.zzibb, this.size, zzefm.size);
            this.size = i3;
            this.modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    public final boolean remove(Object obj) {
        zzbda();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Double.valueOf(this.zzibb[i]))) {
                double[] dArr = this.zzibb;
                System.arraycopy(dArr, i + 1, dArr, i, (this.size - i) - 1);
                this.size--;
                this.modCount++;
                return true;
            }
        }
        return false;
    }

    private final void zzfq(int i) {
        if (i < 0 || i >= this.size) {
            throw new IndexOutOfBoundsException(zzfr(i));
        }
    }

    private final String zzfr(int i) {
        int i2 = this.size;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    public final /* synthetic */ Object set(int i, Object obj) {
        double doubleValue = ((Double) obj).doubleValue();
        zzbda();
        zzfq(i);
        double[] dArr = this.zzibb;
        double d = dArr[i];
        dArr[i] = doubleValue;
        return Double.valueOf(d);
    }

    public final /* synthetic */ Object remove(int i) {
        zzbda();
        zzfq(i);
        double[] dArr = this.zzibb;
        double d = dArr[i];
        int i2 = this.size;
        if (i < i2 - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (i2 - i) - 1);
        }
        this.size--;
        this.modCount++;
        return Double.valueOf(d);
    }

    public final /* synthetic */ void add(int i, Object obj) {
        int i2;
        double doubleValue = ((Double) obj).doubleValue();
        zzbda();
        if (i < 0 || i > (i2 = this.size)) {
            throw new IndexOutOfBoundsException(zzfr(i));
        }
        double[] dArr = this.zzibb;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[(((i2 * 3) / 2) + 1)];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.zzibb, i, dArr2, i + 1, this.size - i);
            this.zzibb = dArr2;
        }
        this.zzibb[i] = doubleValue;
        this.size++;
        this.modCount++;
    }

    public final /* synthetic */ boolean add(Object obj) {
        zzd(((Double) obj).doubleValue());
        return true;
    }

    public final /* synthetic */ zzegm zzfs(int i) {
        if (i >= this.size) {
            return new zzefm(Arrays.copyOf(this.zzibb, i), this.size);
        }
        throw new IllegalArgumentException();
    }

    public final /* synthetic */ Object get(int i) {
        zzfq(i);
        return Double.valueOf(this.zzibb[i]);
    }

    static {
        zzefm zzefm = new zzefm(new double[0], 0);
        zziba = zzefm;
        zzefm.zzbcz();
    }
}
