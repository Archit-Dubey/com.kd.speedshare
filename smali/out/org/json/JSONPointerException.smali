.class public Lorg/json/JSONPointerException;
.super Lorg/json/JSONException;
.source "JSONPointerException.java"


# static fields
.field private static final serialVersionUID:J = 0x7b23082a0db88eefL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 42
    invoke-direct {p0, p1, p2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
