.class public final Lcom/google/android/gms/internal/ads/zzeds;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdwp;


# instance fields
.field private final zzhyr:Ljavax/crypto/Mac;

.field private final zzhys:I

.field private final zzhyt:Ljava/lang/String;

.field private final zzhyu:Ljava/security/Key;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/Key;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    if-lt p3, v0, :cond_a4

    .line 4
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_9c

    const/4 v0, -0x1

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x6ca99674

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_3b

    const v2, 0x176240ee

    if-eq v1, v2, :cond_31

    const v2, 0x17624bb1

    if-eq v1, v2, :cond_27

    goto :goto_44

    :cond_27
    const-string v1, "HMACSHA512"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const/4 v0, 0x2

    goto :goto_44

    :cond_31
    const-string v1, "HMACSHA256"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const/4 v0, 0x1

    goto :goto_44

    :cond_3b
    const-string v1, "HMACSHA1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const/4 v0, 0x0

    :cond_44
    :goto_44
    const-string v1, "tag size too big"

    if-eqz v0, :cond_7e

    if-eq v0, v4, :cond_73

    if-eq v0, v3, :cond_68

    .line 13
    new-instance p2, Ljava/security/NoSuchAlgorithmException;

    const-string p3, "unknown Hmac algorithm: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_64

    :cond_5f
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_64
    invoke-direct {p2, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_68
    const/16 v0, 0x40

    if-gt p3, v0, :cond_6d

    goto :goto_82

    .line 12
    :cond_6d
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {p1, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_73
    const/16 v0, 0x20

    if-gt p3, v0, :cond_78

    goto :goto_82

    .line 10
    :cond_78
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {p1, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7e
    const/16 v0, 0x14

    if-gt p3, v0, :cond_96

    .line 14
    :goto_82
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeds;->zzhyt:Ljava/lang/String;

    .line 15
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzeds;->zzhys:I

    .line 16
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeds;->zzhyu:Ljava/security/Key;

    .line 17
    sget-object p3, Lcom/google/android/gms/internal/ads/zzedf;->zzhyf:Lcom/google/android/gms/internal/ads/zzedf;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzedf;->zzhq(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/crypto/Mac;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeds;->zzhyr:Ljavax/crypto/Mac;

    .line 18
    invoke-virtual {p1, p2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    return-void

    .line 8
    :cond_96
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {p1, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_9c
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "key size too small, need at least 16 bytes"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_a4
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "tag size too small, need at least 10 bytes"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final zzl([B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeds;->zzhyr:Ljavax/crypto/Mac;

    invoke-virtual {v0}, Ljavax/crypto/Mac;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;
    :try_end_8
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_18

    .line 23
    :catch_9
    sget-object v0, Lcom/google/android/gms/internal/ads/zzedf;->zzhyf:Lcom/google/android/gms/internal/ads/zzedf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeds;->zzhyt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzedf;->zzhq(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeds;->zzhyu:Ljava/security/Key;

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 25
    :goto_18
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->update([B)V

    .line 26
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzeds;->zzhys:I

    new-array p1, p1, [B

    .line 27
    invoke-virtual {v0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzeds;->zzhys:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method
