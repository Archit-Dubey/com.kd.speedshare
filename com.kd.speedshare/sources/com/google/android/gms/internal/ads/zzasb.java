package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads@@19.2.0 */
public final class zzasb extends zzgu implements zzarz {
    zzasb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    public final zzarv zza(zzart zzart) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzgw.zza(obtainAndWriteInterfaceToken, (Parcelable) zzart);
        Parcel transactAndReadException = transactAndReadException(1, obtainAndWriteInterfaceToken);
        zzarv zzarv = (zzarv) zzgw.zza(transactAndReadException, zzarv.CREATOR);
        transactAndReadException.recycle();
        return zzarv;
    }

    public final void zza(zzart zzart, zzase zzase) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzgw.zza(obtainAndWriteInterfaceToken, (Parcelable) zzart);
        zzgw.zza(obtainAndWriteInterfaceToken, (IInterface) zzase);
        zza(2, obtainAndWriteInterfaceToken);
    }

    public final void zza(zzasm zzasm, zzasg zzasg) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzgw.zza(obtainAndWriteInterfaceToken, (Parcelable) zzasm);
        zzgw.zza(obtainAndWriteInterfaceToken, (IInterface) zzasg);
        zza(4, obtainAndWriteInterfaceToken);
    }

    public final void zzb(zzasm zzasm, zzasg zzasg) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzgw.zza(obtainAndWriteInterfaceToken, (Parcelable) zzasm);
        zzgw.zza(obtainAndWriteInterfaceToken, (IInterface) zzasg);
        zza(5, obtainAndWriteInterfaceToken);
    }

    public final void zzc(zzasm zzasm, zzasg zzasg) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        zzgw.zza(obtainAndWriteInterfaceToken, (Parcelable) zzasm);
        zzgw.zza(obtainAndWriteInterfaceToken, (IInterface) zzasg);
        zza(6, obtainAndWriteInterfaceToken);
    }

    public final void zza(String str, zzasg zzasg) throws RemoteException {
        Parcel obtainAndWriteInterfaceToken = obtainAndWriteInterfaceToken();
        obtainAndWriteInterfaceToken.writeString(str);
        zzgw.zza(obtainAndWriteInterfaceToken, (IInterface) zzasg);
        zza(7, obtainAndWriteInterfaceToken);
    }
}
