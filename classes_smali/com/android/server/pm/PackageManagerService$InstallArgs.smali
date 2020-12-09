.class abstract Lcom/android/server/pm/PackageManagerService$InstallArgs;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "InstallArgs"
.end annotation


# instance fields
.field final abiOverride:Ljava/lang/String;

.field final installFlags:I

.field final installGrantPermissions:[Ljava/lang/String;

.field final installReason:I

.field final installerPackageName:Ljava/lang/String;

.field instructionSets:[Ljava/lang/String;

.field final mMultiPackageInstallParams:Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;

.field final move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field final traceCookie:I

.field final traceMethod:Ljava/lang/String;

.field final user:Landroid/os/UserHandle;

.field final volumeUuid:Ljava/lang/String;

.field final whitelistedRestrictedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILandroid/content/pm/PackageParser$SigningDetails;ILcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService$OriginInfo;",
            "Lcom/android/server/pm/PackageManagerService$MoveInfo;",
            "Landroid/content/pm/IPackageInstallObserver2;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/pm/PackageParser$SigningDetails;",
            "I",
            "Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;",
            ")V"
        }
    .end annotation

    .line 15735
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15736
    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 15737
    move-object v1, p2

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 15738
    move v1, p4

    iput v1, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    .line 15739
    move-object v1, p3

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 15740
    move-object v1, p5

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    .line 15741
    move-object v1, p6

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->volumeUuid:Ljava/lang/String;

    .line 15742
    move-object v1, p7

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->user:Landroid/os/UserHandle;

    .line 15743
    move-object v1, p8

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->instructionSets:[Ljava/lang/String;

    .line 15744
    move-object v1, p9

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->abiOverride:Ljava/lang/String;

    .line 15745
    move-object v1, p10

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installGrantPermissions:[Ljava/lang/String;

    .line 15746
    move-object v1, p11

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 15747
    move-object v1, p12

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceMethod:Ljava/lang/String;

    .line 15748
    move v1, p13

    iput v1, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceCookie:I

    .line 15749
    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 15750
    move/from16 v1, p15

    iput v1, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installReason:I

    .line 15751
    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->mMultiPackageInstallParams:Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;

    .line 15752
    return-void
.end method


# virtual methods
.method abstract cleanUpResourcesLI()V
.end method

.method abstract copyApk()I
.end method

.method doPostCopy(I)I
    .registers 2

    .line 15788
    const/4 p1, 0x1

    return p1
.end method

.method abstract doPostDeleteLI(Z)Z
.end method

.method abstract doPostInstall(II)I
.end method

.method doPreCopy()I
    .registers 2

    .line 15779
    const/4 v0, 0x1

    return v0
.end method

.method abstract doPreInstall(I)I
.end method

.method abstract doRename(ILandroid/content/pm/PackageParser$Package;)Z
.end method

.method abstract getCodePath()Ljava/lang/String;
.end method

.method abstract getResourcePath()Ljava/lang/String;
.end method

.method getUser()Landroid/os/UserHandle;
    .registers 2

    .line 15796
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->user:Landroid/os/UserHandle;

    return-object v0
.end method

.method protected isEphemeral()Z
    .registers 2

    .line 15792
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
