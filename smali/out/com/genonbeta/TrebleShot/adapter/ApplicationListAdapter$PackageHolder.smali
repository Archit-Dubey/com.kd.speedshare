.class public Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter$PackageHolder;
.super Lcom/genonbeta/TrebleShot/object/Shareable;
.source "ApplicationListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageHolder"
.end annotation


# static fields
.field public static final FORMAT:Ljava/lang/String; = ".apk"

.field public static final MIME_TYPE:Ljava/lang/String;


# instance fields
.field public appInfo:Landroid/content/pm/ApplicationInfo;

.field public packageName:Ljava/lang/String;

.field public version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ".apk"

    .line 100
    invoke-static {v0}, Lcom/genonbeta/TrebleShot/util/FileUtils;->getFileContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter$PackageHolder;->MIME_TYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .registers 20

    move-object v11, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 108
    iget-object v0, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".apk"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter$PackageHolder;->MIME_TYPE:Ljava/lang/String;

    .line 112
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 113
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 114
    invoke-static/range {p5 .. p5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    move-object v0, p0

    .line 108
    invoke-direct/range {v0 .. v10}, Lcom/genonbeta/TrebleShot/object/Shareable;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;)V

    .line 116
    iput-object v12, v11, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter$PackageHolder;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 117
    iput-object v13, v11, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter$PackageHolder;->version:Ljava/lang/String;

    move-object/from16 v0, p4

    .line 118
    iput-object v0, v11, Lcom/genonbeta/TrebleShot/adapter/ApplicationListAdapter$PackageHolder;->packageName:Ljava/lang/String;

    return-void
.end method
