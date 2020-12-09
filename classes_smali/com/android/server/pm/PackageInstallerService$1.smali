.class Lcom/android/server/pm/PackageInstallerService$1;
.super Ljava/lang/Object;
.source "PackageInstallerService.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    .line 188
    invoke-static {p2}, Lcom/android/server/pm/PackageInstallerService;->isStageName(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
