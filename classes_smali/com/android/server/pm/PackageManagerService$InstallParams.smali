.class Lcom/android/server/pm/PackageManagerService$InstallParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field private final callInstallPid:I

.field private final callInstallUid:I

.field final grantedRuntimePermissions:[Ljava/lang/String;

.field installFlags:I

.field final installReason:I

.field final installerPackageName:Ljava/lang/String;

.field private mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field private mEnableRollbackCompleted:Z

.field mParentInstallParams:Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;

.field mRet:I

.field private mVerificationCompleted:Z

.field final move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

.field final observer:Landroid/content/pm/IPackageInstallObserver2;

.field final origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

.field final packageAbiOverride:Ljava/lang/String;

.field final requiredInstalledVersionCode:J

.field final signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

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
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;)V
    .registers 8
    .param p1, "this$0"  # Lcom/android/server/pm/PackageManagerService;
    .param p2, "activeInstallSession"  # Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;

    .line 15696
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15697
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 15698
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2700()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 15699
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_33

    .line 15701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ephemeral install of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15704
    :cond_33
    new-instance v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    .line 15705
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 15706
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 15707
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 15708
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getInstallerUid()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerService$VerificationInfo;-><init>(Landroid/net/Uri;Landroid/net/Uri;II)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    .line 15709
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getStagedDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 15710
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 15711
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    .line 15712
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getInstallerUid()I

    move-result v1

    .line 15713
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 15711
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$2800(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installReason:I

    .line 15714
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getObserver()Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 15715
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15716
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 15717
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 15718
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 15719
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 15721
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 15723
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 15724
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    iget-wide v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    .line 15727
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackageUid:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->callInstallUid:I

    .line 15728
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installerPackagePid:I

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->callInstallPid:I

    .line 15730
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$VerificationInfo;Landroid/os/UserHandle;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageParser$SigningDetails;IJ)V
    .registers 33
    .param p1, "this$0"  # Lcom/android/server/pm/PackageManagerService;
    .param p2, "origin"  # Lcom/android/server/pm/PackageManagerService$OriginInfo;
    .param p3, "move"  # Lcom/android/server/pm/PackageManagerService$MoveInfo;
    .param p4, "observer"  # Landroid/content/pm/IPackageInstallObserver2;
    .param p5, "installFlags"  # I
    .param p6, "installerPackageName"  # Ljava/lang/String;
    .param p7, "volumeUuid"  # Ljava/lang/String;
    .param p8, "verificationInfo"  # Lcom/android/server/pm/PackageManagerService$VerificationInfo;
    .param p9, "user"  # Landroid/os/UserHandle;
    .param p10, "packageAbiOverride"  # Ljava/lang/String;
    .param p11, "grantedPermissions"  # [Ljava/lang/String;
    .param p13, "signingDetails"  # Landroid/content/pm/PackageParser$SigningDetails;
    .param p14, "installReason"  # I
    .param p15, "requiredInstalledVersionCode"  # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageManagerService$OriginInfo;",
            "Lcom/android/server/pm/PackageManagerService$MoveInfo;",
            "Landroid/content/pm/IPackageInstallObserver2;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$VerificationInfo;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/pm/PackageParser$SigningDetails;",
            "IJ)V"
        }
    .end annotation

    .line 15675
    .local p12, "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15676
    move-object/from16 v2, p9

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 15677
    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 15678
    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 15679
    move-object/from16 v5, p4

    iput-object v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 15680
    move/from16 v6, p5

    iput v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15681
    move-object/from16 v7, p6

    iput-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 15682
    move-object/from16 v8, p7

    iput-object v8, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 15683
    move-object/from16 v9, p8

    iput-object v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    .line 15684
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 15685
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 15686
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 15687
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 15688
    move/from16 v14, p14

    iput v14, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installReason:I

    .line 15689
    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    .line 15691
    const/4 v15, 0x0

    iput v15, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->callInstallUid:I

    .line 15692
    iput v15, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->callInstallPid:I

    .line 15694
    return-void
.end method

.method static synthetic access$900(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 15644
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    return-object v0
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I
    .registers 12
    .param p1, "pkgLite"  # Landroid/content/pm/PackageInfoLite;

    .line 15739
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 15740
    .local v0, "packageName":Ljava/lang/String;
    iget v1, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 15743
    .local v1, "installLocation":I
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 15744
    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_107

    .line 15745
    :try_start_e
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->inCts()Z

    move-result v4

    if-nez v4, :cond_19

    .line 15746
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->access$2900(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    .line 15748
    :cond_19
    monitor-exit v3
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_104

    .line 15749
    :try_start_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_107

    .line 15752
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 15755
    :try_start_20
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 15760
    .local v2, "installedPkg":Landroid/content/pm/PackageParser$Package;
    move-object v4, v2

    .line 15761
    .local v4, "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    if-nez v4, :cond_3e

    .line 15762
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 15763
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v5, :cond_3e

    .line 15764
    iget-object v6, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object v4, v6

    .line 15768
    .end local v5  # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_3e
    iget-wide v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_98

    .line 15769
    const/4 v5, -0x8

    if-nez v4, :cond_68

    .line 15770
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Required installed version code was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " but package is not installed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15773
    monitor-exit v3

    return v5

    .line 15776
    :cond_68
    invoke-virtual {v4}, Landroid/content/pm/PackageParser$Package;->getLongVersionCode()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_98

    .line 15777
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Required installed version code was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " but actual installed version is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15780
    invoke-virtual {v4}, Landroid/content/pm/PackageParser$Package;->getLongVersionCode()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 15777
    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15781
    monitor-exit v3

    return v5

    .line 15785
    :cond_98
    const/4 v5, 0x1

    if-eqz v4, :cond_d8

    .line 15786
    iget v6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v7, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v6, v7}, Lcom/android/server/pm/PackageManagerServiceUtils;->isDowngradePermitted(II)Z

    move-result v6
    :try_end_a5
    .catchall {:try_start_20 .. :try_end_a5} :catchall_101

    if-nez v6, :cond_c9

    .line 15789
    :try_start_a7
    invoke-static {v4, p1}, Lcom/android/server/pm/PackageManagerService;->access$3000(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageInfoLite;)V
    :try_end_aa
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_a7 .. :try_end_aa} :catch_ab
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_101

    .line 15793
    goto :goto_d8

    .line 15790
    :catch_ab
    move-exception v5

    .line 15791
    .local v5, "e":Lcom/android/server/pm/PackageManagerException;
    :try_start_ac
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Downgrade detected: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15792
    const/4 v6, -0x7

    monitor-exit v3

    return v6

    .line 15796
    .end local v5  # "e":Lcom/android/server/pm/PackageManagerException;
    :cond_c9
    iget v6, v2, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    const v7, 0x7fffffff

    if-ne v6, v7, :cond_d8

    .line 15797
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object v0, v6, Lcom/android/server/pm/PackageManagerService;->bootPkgName:Ljava/lang/String;

    .line 15798
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean v5, v6, Lcom/android/server/pm/PackageManagerService;->bootCompleteInstall:Z

    .line 15803
    :cond_d8
    :goto_d8
    if-eqz v2, :cond_fd

    .line 15804
    iget v6, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const/4 v7, 0x2

    and-int/2addr v6, v7

    if-eqz v6, :cond_fa

    .line 15806
    iget-object v6, v2, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v6, v5

    if-eqz v6, :cond_e9

    .line 15807
    monitor-exit v3

    return v5

    .line 15810
    :cond_e9
    if-ne v1, v5, :cond_ed

    .line 15812
    monitor-exit v3

    return v5

    .line 15813
    :cond_ed
    if-ne v1, v7, :cond_f0

    goto :goto_fd

    .line 15817
    :cond_f0
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$3100(Landroid/content/pm/PackageParser$Package;)Z

    move-result v6

    if-eqz v6, :cond_f8

    .line 15818
    monitor-exit v3

    return v7

    .line 15820
    :cond_f8
    monitor-exit v3

    return v5

    .line 15825
    :cond_fa
    const/4 v5, -0x4

    monitor-exit v3

    return v5

    .line 15828
    .end local v2  # "installedPkg":Landroid/content/pm/PackageParser$Package;
    .end local v4  # "dataOwnerPkg":Landroid/content/pm/PackageParser$Package;
    :cond_fd
    :goto_fd
    monitor-exit v3
    :try_end_fe
    .catchall {:try_start_ac .. :try_end_fe} :catchall_101

    .line 15829
    iget v2, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    return v2

    .line 15828
    :catchall_101
    move-exception v2

    :try_start_102
    monitor-exit v3
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_101

    throw v2

    .line 15748
    :catchall_104
    move-exception v4

    :try_start_105
    monitor-exit v3
    :try_end_106
    .catchall {:try_start_105 .. :try_end_106} :catchall_104

    .end local v0  # "packageName":Ljava/lang/String;
    .end local v1  # "installLocation":I
    .end local p0  # "this":Lcom/android/server/pm/PackageManagerService$InstallParams;
    .end local p1  # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :try_start_106
    throw v4

    .line 15749
    .restart local v0  # "packageName":Ljava/lang/String;
    .restart local v1  # "installLocation":I
    .restart local p0  # "this":Lcom/android/server/pm/PackageManagerService$InstallParams;
    .restart local p1  # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :catchall_107
    move-exception v3

    monitor-exit v2
    :try_end_109
    .catchall {:try_start_106 .. :try_end_109} :catchall_107

    throw v3
.end method


# virtual methods
.method handleReturnCode()V
    .registers 7

    .line 16219
    const-string v0, "PackageManager"

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    if-eqz v1, :cond_6e

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mEnableRollbackCompleted:Z

    if-eqz v1, :cond_6e

    .line 16220
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_58

    .line 16221
    const-string v1, ""

    .line 16223
    .local v1, "packageName":Ljava/lang/String;
    :try_start_13
    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2}, Landroid/content/pm/PackageParser;-><init>()V

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    const/4 v3, 0x0

    .line 16224
    invoke-static {v2, v3}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v2

    .line 16225
    .local v2, "packageInfo":Landroid/content/pm/PackageParser$PackageLite;
    iget-object v3, v2, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;
    :try_end_23
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_13 .. :try_end_23} :catch_25

    move-object v1, v3

    .line 16228
    .end local v2  # "packageInfo":Landroid/content/pm/PackageParser$PackageLite;
    goto :goto_42

    .line 16226
    :catch_25
    move-exception v2

    .line 16227
    .local v2, "e":Landroid/content/pm/PackageParser$PackageParserException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t parse package at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16230
    .end local v2  # "e":Landroid/content/pm/PackageParser$PackageParserException;
    :goto_42
    :try_start_42
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    const-string v4, "Dry run"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v2, v1, v3, v4, v5}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_42 .. :try_end_50} :catch_51

    .line 16233
    goto :goto_57

    .line 16231
    :catch_51
    move-exception v2

    .line 16232
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Observer no longer exists."

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16234
    .end local v2  # "e":Landroid/os/RemoteException;
    :goto_57
    return-void

    .line 16236
    .end local v1  # "packageName":Ljava/lang/String;
    :cond_58
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_65

    .line 16237
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 16239
    :cond_65
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$4000(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 16241
    :cond_6e
    return-void
.end method

.method handleRollbackEnabled()V
    .registers 2

    .line 16213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mEnableRollbackCompleted:Z

    .line 16214
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleReturnCode()V

    .line 16215
    return-void
.end method

.method public handleStartCopy()V
    .registers 35

    .line 15839
    move-object/from16 v1, p0

    const/4 v2, 0x1

    .line 15842
    .local v2, "ret":I
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-eqz v0, :cond_1e

    .line 15843
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    if-eqz v0, :cond_16

    .line 15844
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_1e

    .line 15846
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid stage location"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15850
    :cond_1e
    :goto_1e
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    move v5, v0

    .line 15851
    .local v5, "onInt":Z
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v0, 0x0

    :goto_31
    move v6, v0

    .line 15852
    .local v6, "ephemeral":Z
    const/4 v0, 0x0

    .line 15855
    .local v0, "pkgLite":Landroid/content/pm/PackageInfoLite;
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-static {v7, v8, v9, v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v7

    .line 15858
    .end local v0  # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .local v7, "pkgLite":Landroid/content/pm/PackageInfoLite;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2700()Z

    move-result v0

    if-eqz v0, :cond_62

    if-eqz v6, :cond_62

    .line 15859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pkgLite for install: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "PackageManager"

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15866
    :cond_62
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    const/4 v8, -0x6

    const/4 v9, -0x1

    if-nez v0, :cond_be

    iget v0, v7, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    if-ne v0, v9, :cond_be

    .line 15869
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v10

    .line 15870
    .local v10, "storage":Landroid/os/storage/StorageManager;
    nop

    .line 15871
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 15870
    invoke-virtual {v10, v0}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v11

    .line 15873
    .local v11, "lowThreshold":J
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-static {v0, v13}, Lcom/android/server/pm/PackageManagerServiceUtils;->calculateInstalledSize(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v13

    .line 15875
    .local v13, "sizeBytes":J
    const-wide/16 v15, 0x0

    cmp-long v0, v13, v15

    if-ltz v0, :cond_b8

    .line 15877
    :try_start_8f
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/16 v16, 0x0

    add-long v17, v13, v11

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v15 .. v21}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JJI)V

    .line 15878
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-static {v0, v15, v3, v4}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0
    :try_end_ae
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_8f .. :try_end_ae} :catch_b0

    .line 15882
    .end local v7  # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v0  # "pkgLite":Landroid/content/pm/PackageInfoLite;
    move-object v7, v0

    goto :goto_b8

    .line 15880
    .end local v0  # "pkgLite":Landroid/content/pm/PackageInfoLite;
    .restart local v7  # "pkgLite":Landroid/content/pm/PackageInfoLite;
    :catch_b0
    move-exception v0

    .line 15881
    .local v0, "e":Lcom/android/server/pm/Installer$InstallerException;
    const-string v3, "PackageManager"

    const-string v4, "Failed to free cache"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15890
    .end local v0  # "e":Lcom/android/server/pm/Installer$InstallerException;
    :cond_b8
    :goto_b8
    iget v0, v7, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    if-ne v0, v8, :cond_be

    .line 15892
    iput v9, v7, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 15898
    .end local v10  # "storage":Landroid/os/storage/StorageManager;
    .end local v11  # "lowThreshold":J
    .end local v13  # "sizeBytes":J
    :cond_be
    const/4 v3, 0x1

    if-ne v2, v3, :cond_120

    .line 15899
    iget v0, v7, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 15900
    .local v0, "loc":I
    const/4 v3, -0x3

    if-ne v0, v3, :cond_c9

    .line 15901
    const/16 v2, -0x13

    goto :goto_120

    .line 15902
    :cond_c9
    const/4 v3, -0x4

    if-ne v0, v3, :cond_ce

    .line 15903
    const/4 v2, -0x1

    goto :goto_120

    .line 15904
    :cond_ce
    if-ne v0, v9, :cond_d2

    .line 15905
    const/4 v2, -0x4

    goto :goto_120

    .line 15906
    :cond_d2
    const/4 v3, -0x2

    if-ne v0, v3, :cond_d7

    .line 15907
    const/4 v2, -0x2

    goto :goto_120

    .line 15908
    :cond_d7
    if-ne v0, v8, :cond_db

    .line 15909
    const/4 v2, -0x3

    goto :goto_120

    .line 15910
    :cond_db
    const/4 v3, -0x5

    if-ne v0, v3, :cond_e1

    .line 15911
    const/16 v2, -0x14

    goto :goto_120

    .line 15914
    :cond_e1
    invoke-direct {v1, v7}, Lcom/android/server/pm/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I

    move-result v0

    .line 15915
    const/4 v3, -0x7

    if-ne v0, v3, :cond_eb

    .line 15916
    const/16 v2, -0x19

    goto :goto_120

    .line 15917
    :cond_eb
    const/4 v3, -0x8

    if-ne v0, v3, :cond_f1

    .line 15918
    const/16 v2, -0x79

    goto :goto_120

    .line 15919
    :cond_f1
    if-nez v5, :cond_120

    .line 15921
    const/4 v3, 0x2

    if-ne v0, v3, :cond_fd

    .line 15923
    iget v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v3, v3, -0x11

    iput v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_120

    .line 15924
    :cond_fd
    const/4 v3, 0x3

    if-ne v0, v3, :cond_11a

    .line 15925
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2700()Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 15926
    const-string v3, "PackageManager"

    const-string v4, "...setting INSTALL_EPHEMERAL install flag"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15928
    :cond_10d
    iget v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit16 v3, v3, 0x800

    iput v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15929
    iget v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v3, v3, -0x11

    iput v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_120

    .line 15933
    :cond_11a
    iget v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15939
    .end local v0  # "loc":I
    :cond_120
    :goto_120
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$3200(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v3

    .line 15940
    .local v3, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    .line 15941
    iput-boolean v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mEnableRollbackCompleted:Z

    .line 15942
    iput-object v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 15944
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->callInstallUid:I

    iput v8, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->callInstallUid:I

    .line 15945
    iget v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->callInstallPid:I

    iput v8, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->callInstallPid:I

    .line 15947
    if-ne v2, v4, :cond_48c

    .line 15950
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 15951
    .local v0, "verifierUser":Landroid/os/UserHandle;
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v0, v4, :cond_145

    .line 15952
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object v4, v0

    goto :goto_146

    .line 15951
    :cond_145
    move-object v4, v0

    .line 15959
    .end local v0  # "verifierUser":Landroid/os/UserHandle;
    .local v4, "verifierUser":Landroid/os/UserHandle;
    :goto_146
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    const/high16 v8, 0x10000000

    if-nez v0, :cond_150

    move v0, v9

    goto :goto_15c

    .line 15960
    :cond_150
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 15961
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 15960
    invoke-virtual {v0, v10, v8, v11}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    :goto_15c
    move v10, v0

    .line 15963
    .local v10, "requiredUid":I
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    if-nez v0, :cond_165

    move v0, v9

    goto :goto_171

    .line 15964
    :cond_165
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    .line 15965
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    .line 15964
    invoke-virtual {v0, v11, v8, v12}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    :goto_171
    move v11, v0

    .line 15968
    .local v11, "optionalUid":I
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-nez v0, :cond_178

    move v0, v9

    goto :goto_17a

    :cond_178
    iget v0, v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    :goto_17a
    move v12, v0

    .line 15969
    .local v12, "installerUid":I
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    if-nez v0, :cond_3db

    if-ne v10, v9, :cond_193

    if-eq v11, v9, :cond_186

    goto :goto_193

    :cond_186
    move/from16 v26, v2

    move-object/from16 v29, v3

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v32, v10

    move v6, v11

    goto/16 :goto_3e6

    :cond_193
    :goto_193
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15971
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    iget v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15970
    invoke-static {v0, v9, v15, v12}, Lcom/android/server/pm/PackageManagerService;->access$3300(Lcom/android/server/pm/PackageManagerService;III)Z

    move-result v0

    if-eqz v0, :cond_3cf

    .line 15972
    new-instance v0, Landroid/content/Intent;

    const-string v9, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v0, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15974
    .local v0, "verification":Landroid/content/Intent;
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15975
    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "application/vnd.android.package-archive"

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 15977
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15980
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/16 v21, 0x0

    .line 15981
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v22

    const/16 v23, 0x0

    .line 15980
    const-string v20, "application/vnd.android.package-archive"

    move-object/from16 v18, v8

    move-object/from16 v19, v0

    invoke-static/range {v18 .. v23}, Lcom/android/server/pm/PackageManagerService;->access$3400(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v8

    .line 15984
    .local v8, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$3500()Z

    move-result v9

    if-eqz v9, :cond_211

    .line 15985
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Found "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " verifiers for intent "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15986
    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " with "

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v7, Landroid/content/pm/PackageInfoLite;->verifiers:[Landroid/content/pm/VerifierInfo;

    array-length v15, v15

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " optional verifiers"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 15985
    const-string v15, "PackageManager"

    invoke-static {v15, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15990
    :cond_211
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v9}, Lcom/android/server/pm/PackageManagerService;->access$3608(Lcom/android/server/pm/PackageManagerService;)I

    move-result v9

    .line 15992
    .local v9, "verificationId":I
    const-string v15, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v0, v15, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15994
    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    const-string v13, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    invoke-virtual {v0, v13, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15997
    iget v13, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const-string v14, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    invoke-virtual {v0, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16000
    iget-object v13, v7, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    const-string v14, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    invoke-virtual {v0, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16003
    iget v13, v7, Landroid/content/pm/PackageInfoLite;->versionCode:I

    const-string v14, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    invoke-virtual {v0, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16006
    nop

    .line 16007
    invoke-virtual {v7}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v13

    .line 16006
    const-string v15, "android.content.pm.extra.VERIFICATION_LONG_VERSION_CODE"

    invoke-virtual {v0, v15, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 16009
    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-eqz v13, :cond_280

    .line 16010
    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    if-eqz v13, :cond_253

    .line 16011
    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    const-string v14, "android.intent.extra.ORIGINATING_URI"

    invoke-virtual {v0, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16014
    :cond_253
    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    if-eqz v13, :cond_262

    .line 16015
    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    const-string v14, "android.intent.extra.REFERRER"

    invoke-virtual {v0, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 16018
    :cond_262
    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v13, v13, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    if-ltz v13, :cond_271

    .line 16019
    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v13, v13, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    const-string v14, "android.intent.extra.ORIGINATING_UID"

    invoke-virtual {v0, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16022
    :cond_271
    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v13, v13, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    if-ltz v13, :cond_280

    .line 16023
    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v13, v13, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    const-string v14, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    invoke-virtual {v0, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16028
    :cond_280
    new-instance v13, Lcom/android/server/pm/PackageVerificationState;

    invoke-direct {v13, v10, v1}, Lcom/android/server/pm/PackageVerificationState;-><init>(ILcom/android/server/pm/PackageManagerService$InstallParams;)V

    .line 16031
    .local v13, "verificationState":Lcom/android/server/pm/PackageVerificationState;
    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v14, v9, v13}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 16033
    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v14, v7, v8, v13}, Lcom/android/server/pm/PackageManagerService;->access$3700(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v14

    .line 16036
    .local v14, "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v15}, Lcom/android/server/pm/PackageManagerService;->access$100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/DeviceIdleController$LocalService;

    move-result-object v15

    .line 16037
    .local v15, "idleController":Lcom/android/server/DeviceIdleController$LocalService;
    move/from16 v26, v2

    .end local v2  # "ret":I
    .local v26, "ret":I
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$000(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v27

    .line 16043
    .local v27, "idleDuration":J
    if-eqz v14, :cond_2f7

    .line 16044
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    .line 16045
    .local v2, "N":I
    if-nez v2, :cond_2b7

    .line 16046
    move-object/from16 v29, v3

    .end local v3  # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .local v29, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    const-string v3, "PackageManager"

    move/from16 v30, v5

    .end local v5  # "onInt":Z
    .local v30, "onInt":Z
    const-string v5, "Additional verifiers required, but none installed."

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16047
    const/16 v3, -0x16

    move v2, v3

    .end local v26  # "ret":I
    .local v3, "ret":I
    goto :goto_2fd

    .line 16049
    .end local v29  # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v30  # "onInt":Z
    .local v3, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .restart local v5  # "onInt":Z
    .restart local v26  # "ret":I
    :cond_2b7
    move-object/from16 v29, v3

    move/from16 v30, v5

    .end local v3  # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v5  # "onInt":Z
    .restart local v29  # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .restart local v30  # "onInt":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2bc
    if-ge v3, v2, :cond_2f4

    .line 16050
    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 16051
    .local v5, "verifierComponent":Landroid/content/ComponentName;
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v19

    .line 16052
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    .line 16053
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v23

    const/16 v24, 0x0

    .line 16051
    const-string/jumbo v25, "package verifier"

    move-object/from16 v18, v15

    move-wide/from16 v21, v27

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 16055
    move/from16 v18, v2

    .end local v2  # "N":I
    .local v18, "N":I
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 16056
    .local v2, "sufficientIntent":Landroid/content/Intent;
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 16057
    move-object/from16 v19, v5

    .end local v5  # "verifierComponent":Landroid/content/ComponentName;
    .local v19, "verifierComponent":Landroid/content/ComponentName;
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 16049
    .end local v2  # "sufficientIntent":Landroid/content/Intent;
    .end local v19  # "verifierComponent":Landroid/content/ComponentName;
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v18

    goto :goto_2bc

    .end local v18  # "N":I
    .local v2, "N":I
    :cond_2f4
    move/from16 v18, v2

    .end local v2  # "N":I
    .restart local v18  # "N":I
    goto :goto_2fb

    .line 16043
    .end local v18  # "N":I
    .end local v29  # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v30  # "onInt":Z
    .local v3, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .local v5, "onInt":Z
    :cond_2f7
    move-object/from16 v29, v3

    move/from16 v30, v5

    .line 16062
    .end local v3  # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v5  # "onInt":Z
    .restart local v29  # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .restart local v30  # "onInt":Z
    :goto_2fb
    move/from16 v2, v26

    .end local v26  # "ret":I
    .local v2, "ret":I
    :goto_2fd
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    if-eqz v3, :cond_369

    .line 16063
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 16064
    .local v3, "optionalIntent":Landroid/content/Intent;
    const-string v5, "com.qualcomm.qti.intent.action.PACKAGE_NEEDS_OPTIONAL_VERIFICATION"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 16065
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/16 v21, 0x0

    .line 16066
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v22

    const/16 v23, 0x0

    .line 16065
    const-string v20, "application/vnd.android.package-archive"

    move-object/from16 v18, v5

    move-object/from16 v19, v3

    invoke-static/range {v18 .. v23}, Lcom/android/server/pm/PackageManagerService;->access$3400(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v5

    .line 16067
    .local v5, "optional_receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    move/from16 v31, v6

    .end local v6  # "ephemeral":Z
    .local v31, "ephemeral":Z
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    move/from16 v32, v10

    .end local v10  # "requiredUid":I
    .local v32, "requiredUid":I
    iget-object v10, v6, Lcom/android/server/pm/PackageManagerService;->mOptionalVerifierPackage:Ljava/lang/String;

    invoke-static {v6, v10, v5}, Lcom/android/server/pm/PackageManagerService;->access$3800(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v6

    .line 16069
    .local v6, "optionalVerifierComponent":Landroid/content/ComponentName;
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 16070
    invoke-virtual {v13, v11}, Lcom/android/server/pm/PackageVerificationState;->addOptionalVerifier(I)V

    .line 16071
    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-eqz v10, :cond_345

    .line 16072
    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v33, v5

    .end local v5  # "optional_receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v33, "optional_receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v5, "android.permission.PACKAGE_VERIFICATION_AGENT"

    invoke-virtual {v10, v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_36d

    .line 16074
    .end local v33  # "optional_receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5  # "optional_receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_345
    move-object/from16 v33, v5

    .end local v5  # "optional_receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v33  # "optional_receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/android/server/pm/PackageManagerService$InstallParams$1;

    invoke-direct {v10, v1, v9}, Lcom/android/server/pm/PackageManagerService$InstallParams$1;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v21, "android.permission.PACKAGE_VERIFICATION_AGENT"

    move-object/from16 v18, v5

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v22, v10

    invoke-virtual/range {v18 .. v26}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 16088
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    goto :goto_36d

    .line 16062
    .end local v3  # "optionalIntent":Landroid/content/Intent;
    .end local v31  # "ephemeral":Z
    .end local v32  # "requiredUid":I
    .end local v33  # "optional_receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v6, "ephemeral":Z
    .restart local v10  # "requiredUid":I
    :cond_369
    move/from16 v31, v6

    move/from16 v32, v10

    .line 16091
    .end local v6  # "ephemeral":Z
    .end local v10  # "requiredUid":I
    .restart local v31  # "ephemeral":Z
    .restart local v32  # "requiredUid":I
    :goto_36d
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3cd

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-eqz v3, :cond_3cd

    .line 16093
    invoke-static {}, Lmeizu/os/DeviceStateManager;->isCtsRunningStatic()Z

    move-result v3

    if-eqz v3, :cond_3cb

    .line 16095
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v3, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    invoke-static {v3, v5, v8}, Lcom/android/server/pm/PackageManagerService;->access$3800(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v3

    .line 16097
    .local v3, "requiredVerifierComponent":Landroid/content/ComponentName;
    const-string/jumbo v5, "verification"

    move v6, v11

    const-wide/32 v10, 0x40000

    .end local v11  # "optionalUid":I
    .local v6, "optionalUid":I
    invoke-static {v10, v11, v5, v9}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 16104
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 16105
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v19

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 16107
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v23

    const/16 v24, 0x0

    .line 16105
    const-string/jumbo v25, "package verifier"

    move-object/from16 v18, v15

    move-object/from16 v20, v5

    move-wide/from16 v21, v27

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 16108
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/android/server/pm/PackageManagerService$InstallParams$2;

    invoke-direct {v10, v1, v9}, Lcom/android/server/pm/PackageManagerService$InstallParams$2;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v21, "android.permission.PACKAGE_VERIFICATION_AGENT"

    move-object/from16 v18, v5

    move-object/from16 v19, v0

    move-object/from16 v20, v4

    move-object/from16 v22, v10

    invoke-virtual/range {v18 .. v26}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 16124
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    goto :goto_3e8

    .line 16093
    .end local v3  # "requiredVerifierComponent":Landroid/content/ComponentName;
    .end local v6  # "optionalUid":I
    .restart local v11  # "optionalUid":I
    :cond_3cb
    move v6, v11

    .end local v11  # "optionalUid":I
    .restart local v6  # "optionalUid":I
    goto :goto_3e8

    .line 16091
    .end local v6  # "optionalUid":I
    .restart local v11  # "optionalUid":I
    :cond_3cd
    move v6, v11

    .end local v11  # "optionalUid":I
    .restart local v6  # "optionalUid":I
    goto :goto_3e8

    .line 15970
    .end local v0  # "verification":Landroid/content/Intent;
    .end local v8  # "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v9  # "verificationId":I
    .end local v13  # "verificationState":Lcom/android/server/pm/PackageVerificationState;
    .end local v14  # "sufficientVerifiers":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v15  # "idleController":Lcom/android/server/DeviceIdleController$LocalService;
    .end local v27  # "idleDuration":J
    .end local v29  # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v30  # "onInt":Z
    .end local v31  # "ephemeral":Z
    .end local v32  # "requiredUid":I
    .local v3, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .local v5, "onInt":Z
    .local v6, "ephemeral":Z
    .restart local v10  # "requiredUid":I
    .restart local v11  # "optionalUid":I
    :cond_3cf
    move/from16 v26, v2

    move-object/from16 v29, v3

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v32, v10

    move v6, v11

    .end local v2  # "ret":I
    .end local v3  # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v5  # "onInt":Z
    .end local v10  # "requiredUid":I
    .end local v11  # "optionalUid":I
    .local v6, "optionalUid":I
    .restart local v26  # "ret":I
    .restart local v29  # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .restart local v30  # "onInt":Z
    .restart local v31  # "ephemeral":Z
    .restart local v32  # "requiredUid":I
    goto :goto_3e6

    .line 15969
    .end local v26  # "ret":I
    .end local v29  # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v30  # "onInt":Z
    .end local v31  # "ephemeral":Z
    .end local v32  # "requiredUid":I
    .restart local v2  # "ret":I
    .restart local v3  # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .restart local v5  # "onInt":Z
    .local v6, "ephemeral":Z
    .restart local v10  # "requiredUid":I
    .restart local v11  # "optionalUid":I
    :cond_3db
    move/from16 v26, v2

    move-object/from16 v29, v3

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v32, v10

    move v6, v11

    .line 16128
    .end local v2  # "ret":I
    .end local v3  # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v5  # "onInt":Z
    .end local v10  # "requiredUid":I
    .end local v11  # "optionalUid":I
    .local v6, "optionalUid":I
    .restart local v26  # "ret":I
    .restart local v29  # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .restart local v30  # "onInt":Z
    .restart local v31  # "ephemeral":Z
    .restart local v32  # "requiredUid":I
    :goto_3e6
    move/from16 v2, v26

    .end local v26  # "ret":I
    .restart local v2  # "ret":I
    :goto_3e8
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const/high16 v3, 0x40000

    and-int/2addr v0, v3

    if-eqz v0, :cond_494

    .line 16130
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$3908(Lcom/android/server/pm/PackageManagerService;)I

    move-result v3

    .line 16131
    .local v3, "enableRollbackToken":I
    const-string v0, "enable_rollback"

    const-wide/32 v8, 0x40000

    invoke-static {v8, v9, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 16133
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 16136
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 16137
    :try_start_409
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v8, v7, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 16138
    .local v0, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v0, :cond_421

    .line 16139
    sget-object v8, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v8}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v8

    .local v8, "installedUsers":[I
    goto :goto_425

    .line 16142
    .end local v8  # "installedUsers":[I
    :cond_421
    const/4 v8, 0x0

    new-array v9, v8, [I

    move-object v8, v9

    .line 16144
    .end local v0  # "ps":Lcom/android/server/pm/PackageSetting;
    .restart local v8  # "installedUsers":[I
    :goto_425
    monitor-exit v5
    :try_end_426
    .catchall {:try_start_409 .. :try_end_426} :catchall_489

    .line 16146
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 16147
    .local v0, "enableRollbackIntent":Landroid/content/Intent;
    const-string v5, "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16150
    iget v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const-string v9, "android.content.pm.extra.ENABLE_ROLLBACK_INSTALL_FLAGS"

    invoke-virtual {v0, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16153
    const-string v5, "android.content.pm.extra.ENABLE_ROLLBACK_INSTALLED_USERS"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 16156
    nop

    .line 16158
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getRollbackUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 16156
    const-string v9, "android.content.pm.extra.ENABLE_ROLLBACK_USER"

    invoke-virtual {v0, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 16159
    new-instance v5, Ljava/io/File;

    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const-string v9, "application/vnd.android.package-archive"

    invoke-virtual {v0, v5, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 16161
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 16168
    const/high16 v5, 0x4000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 16170
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v20, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    new-instance v9, Lcom/android/server/pm/PackageManagerService$InstallParams$3;

    invoke-direct {v9, v1, v3}, Lcom/android/server/pm/PackageManagerService$InstallParams$3;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-string v21, "android.permission.PACKAGE_ROLLBACK_AGENT"

    move-object/from16 v18, v5

    move-object/from16 v19, v0

    move-object/from16 v22, v9

    invoke-virtual/range {v18 .. v26}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 16190
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mEnableRollbackCompleted:Z

    goto :goto_494

    .line 16144
    .end local v0  # "enableRollbackIntent":Landroid/content/Intent;
    .end local v8  # "installedUsers":[I
    :catchall_489
    move-exception v0

    :try_start_48a
    monitor-exit v5
    :try_end_48b
    .catchall {:try_start_48a .. :try_end_48b} :catchall_489

    throw v0

    .line 15947
    .end local v4  # "verifierUser":Landroid/os/UserHandle;
    .end local v12  # "installerUid":I
    .end local v29  # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v30  # "onInt":Z
    .end local v31  # "ephemeral":Z
    .end local v32  # "requiredUid":I
    .local v3, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .restart local v5  # "onInt":Z
    .local v6, "ephemeral":Z
    :cond_48c
    move/from16 v26, v2

    move-object/from16 v29, v3

    move/from16 v30, v5

    move/from16 v31, v6

    .line 16194
    .end local v3  # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v5  # "onInt":Z
    .end local v6  # "ephemeral":Z
    .restart local v29  # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .restart local v30  # "onInt":Z
    .restart local v31  # "ephemeral":Z
    :cond_494
    :goto_494
    iput v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 16195
    return-void
.end method

.method handleVerificationFinished()V
    .registers 2

    .line 16206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    .line 16207
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleReturnCode()V

    .line 16208
    return-void
.end method

.method setReturnCode(I)V
    .registers 4
    .param p1, "ret"  # I

    .line 16198
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 16201
    iput p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 16203
    :cond_7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 15734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallParams{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
