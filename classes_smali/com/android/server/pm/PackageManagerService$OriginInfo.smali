.class Lcom/android/server/pm/PackageManagerService$OriginInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OriginInfo"
.end annotation


# instance fields
.field final existing:Z

.field final file:Ljava/io/File;

.field final resolvedFile:Ljava/io/File;

.field final resolvedPath:Ljava/lang/String;

.field final staged:Z


# direct methods
.method private constructor <init>(Ljava/io/File;ZZ)V
    .registers 4

    .line 15014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15015
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    .line 15016
    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    .line 15017
    iput-boolean p3, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    .line 15019
    if-eqz p1, :cond_14

    .line 15020
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    .line 15021
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    goto :goto_19

    .line 15023
    :cond_14
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    .line 15024
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    .line 15026
    :goto_19
    return-void
.end method

.method static fromExistingFile(Ljava/io/File;)Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .registers 4

    .line 15007
    new-instance v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/pm/PackageManagerService$OriginInfo;-><init>(Ljava/io/File;ZZ)V

    return-object v0
.end method

.method static fromNothing()Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .registers 3

    .line 14999
    new-instance v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1}, Lcom/android/server/pm/PackageManagerService$OriginInfo;-><init>(Ljava/io/File;ZZ)V

    return-object v0
.end method

.method static fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .registers 4

    .line 15011
    new-instance v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/pm/PackageManagerService$OriginInfo;-><init>(Ljava/io/File;ZZ)V

    return-object v0
.end method

.method static fromUntrustedFile(Ljava/io/File;)Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .registers 3

    .line 15003
    new-instance v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/android/server/pm/PackageManagerService$OriginInfo;-><init>(Ljava/io/File;ZZ)V

    return-object v0
.end method
