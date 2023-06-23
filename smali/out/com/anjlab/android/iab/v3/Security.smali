.class Lcom/anjlab/android/iab/v3/Security;
.super Ljava/lang/Object;
.source "Security.java"


# static fields
.field private static final KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static final TAG:Ljava/lang/String; = "IABUtil/Security"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 4

    const-string v0, "IABUtil/Security"

    const/4 v1, 0x0

    .line 94
    :try_start_3
    invoke-static {p0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    const-string v1, "RSA"

    .line 95
    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 96
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p0
    :try_end_16
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_16} :catch_2a
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_16} :catch_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_16} :catch_17

    return-object p0

    :catch_17
    move-exception p0

    const-string v1, "Base64 decoding failed."

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    throw p0

    :catch_1e
    move-exception p0

    const-string v1, "Invalid key specification."

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_2a
    move-exception p0

    .line 100
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const-string v0, "IABUtil/Security"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "SHA1withRSA"

    .line 128
    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v2

    .line 129
    invoke-virtual {v2, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 130
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/security/Signature;->update([B)V

    .line 131
    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/security/Signature;->verify([B)Z

    move-result p0

    if-nez p0, :cond_23

    const-string p0, "Signature verification failed."

    .line 133
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_22} :catch_37
    .catch Ljava/security/InvalidKeyException; {:try_start_3 .. :try_end_22} :catch_31
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_22} :catch_2b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_22} :catch_25

    return v1

    :cond_23
    const/4 p0, 0x1

    return p0

    :catch_25
    const-string p0, "Base64 decoding failed."

    .line 152
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :catch_2b
    const-string p0, "Signature exception."

    .line 148
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :catch_31
    const-string p0, "Invalid key specification."

    .line 144
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :catch_37
    const-string p0, "NoSuchAlgorithmException."

    .line 140
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3c
    return v1
.end method

.method public static verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .line 61
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 62
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_1c

    .line 79
    :cond_13
    invoke-static {p1}, Lcom/anjlab/android/iab/v3/Security;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object p0

    .line 80
    invoke-static {p0, p2, p3}, Lcom/anjlab/android/iab/v3/Security;->verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1c
    :goto_1c
    const-string p1, "android.test.purchased"

    .line 66
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    const-string p1, "android.test.canceled"

    .line 67
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    const-string p1, "android.test.refunded"

    .line 68
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    const-string p1, "android.test.item_unavailable"

    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3d

    goto :goto_46

    :cond_3d
    const-string p0, "IABUtil/Security"

    const-string p1, "Purchase verification failed: missing data."

    .line 75
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_46
    :goto_46
    const/4 p0, 0x1

    return p0
.end method
