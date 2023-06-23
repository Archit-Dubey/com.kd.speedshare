.class public Lcom/genonbeta/TrebleShot/util/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdapterName(Ljava/lang/String;)I
    .registers 5

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const v1, 0x7f1101ba

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "wlan"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f1101b9

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "p2p"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f1101b5

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bt-pan"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f1101b6

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "eth"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f1101b8

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tun"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7f1101b7

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "unk"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_55
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_72

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 32
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 33
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_72
    const/4 p0, -0x1

    return p0
.end method

.method public static getAdapterName(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;)Ljava/lang/String;
    .registers 2

    .line 40
    iget-object p1, p1, Lcom/genonbeta/TrebleShot/object/NetworkDevice$Connection;->adapterName:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/genonbeta/TrebleShot/util/TextUtils;->getAdapterName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAdapterName(Landroid/content/Context;Lcom/genonbeta/TrebleShot/util/AddressedInterface;)Ljava/lang/String;
    .registers 2

    .line 45
    invoke-virtual {p1}, Lcom/genonbeta/TrebleShot/util/AddressedInterface;->getNetworkInterface()Ljava/net/NetworkInterface;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/genonbeta/TrebleShot/util/TextUtils;->getAdapterName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAdapterName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 50
    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/TextUtils;->getAdapterName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    return-object p1

    .line 55
    :cond_8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLetters(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    if-eqz p0, :cond_8

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_a

    :cond_8
    const-string p0, "?"

    :cond_a
    add-int/lit8 p1, p1, -0x1

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    .line 66
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v1, :cond_36

    aget-object v4, p0, v3

    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-le v5, p1, :cond_25

    goto :goto_36

    .line 70
    :cond_25
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2c

    goto :goto_33

    .line 73
    :cond_2c
    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 76
    :cond_36
    :goto_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTransactionFlagString(Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;)I
    .registers 2

    .line 95
    sget-object v0, Lcom/genonbeta/TrebleShot/util/TextUtils$1;->$SwitchMap$com$genonbeta$TrebleShot$object$TransferObject$Flag:[I

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_27

    const/4 v0, 0x3

    if-eq p0, v0, :cond_23

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1b

    const p0, 0x7f110244

    return p0

    :cond_1b
    const p0, 0x7f1101a4

    return p0

    :cond_1f
    const p0, 0x7f1101a2

    return p0

    :cond_23
    const p0, 0x7f1101a3

    return p0

    :cond_27
    const p0, 0x7f1101a6

    return p0

    :cond_2b
    const p0, 0x7f11022c

    return p0
.end method

.method public static getTransactionFlagString(Landroid/content/Context;Lcom/genonbeta/TrebleShot/object/TransferObject;Ljava/text/NumberFormat;)Ljava/lang/String;
    .registers 7

    .line 81
    sget-object v0, Lcom/genonbeta/TrebleShot/util/TextUtils$1;->$SwitchMap$com$genonbeta$TrebleShot$object$TransferObject$Flag:[I

    iget-object v1, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {v1}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1b

    .line 89
    iget-object p1, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-static {p1}, Lcom/genonbeta/TrebleShot/util/TextUtils;->getTransactionFlagString(Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 85
    :cond_1b
    iget-wide v0, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileSize:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_48

    iget-object p0, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->getBytesValue()J

    move-result-wide v0

    cmp-long p0, v0, v2

    if-nez p0, :cond_2e

    goto :goto_48

    :cond_2e
    iget-object p0, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->flag:Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;

    .line 87
    invoke-virtual {p0}, Lcom/genonbeta/TrebleShot/object/TransferObject$Flag;->getBytesValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v0

    iget-wide p0, p1, Lcom/genonbeta/TrebleShot/object/TransferObject;->fileSize:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->doubleValue()D

    move-result-wide p0

    div-double/2addr v0, p0

    goto :goto_4a

    :cond_48
    :goto_48
    const-wide/16 v0, 0x0

    .line 85
    :goto_4a
    invoke-virtual {p2, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4f
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    .line 83
    invoke-virtual {p2, p0, p1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeWebShareLink(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0xe56c

    .line 116
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const p1, 0x7f11011f

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static searchWord(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_19

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_19

    .line 124
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method

.method public static trimText(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_e

    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, p1, :cond_9

    goto :goto_e

    :cond_9
    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_e
    :goto_e
    return-object p0
.end method
