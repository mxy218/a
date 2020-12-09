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

    .line 15195
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15196
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 15197
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2500()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 15198
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_33

    .line 15200
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

    .line 15203
    :cond_33
    new-instance v0, Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    .line 15204
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    .line 15205
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    .line 15206
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    .line 15207
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getInstallerUid()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/pm/PackageManagerService$VerificationInfo;-><init>(Landroid/net/Uri;Landroid/net/Uri;II)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    .line 15208
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getStagedDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 15209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 15210
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    .line 15211
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getInstallerUid()I

    move-result v1

    .line 15212
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    .line 15210
    invoke-static {p1, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$2600(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installReason:I

    .line 15213
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getObserver()Landroid/content/pm/IPackageInstallObserver2;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 15214
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15215
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 15216
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 15217
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 15218
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 15220
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 15222
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSigningDetails()Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 15223
    invoke-virtual {p2}, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;->getSessionParams()Landroid/content/pm/PackageInstaller$SessionParams;

    move-result-object p1

    iget-wide p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    .line 15225
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService$VerificationInfo;Landroid/os/UserHandle;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Landroid/content/pm/PackageParser$SigningDetails;IJ)V
    .registers 20
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

    .line 15178
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15179
    move-object v2, p9

    invoke-direct {p0, p1, p9}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 15180
    move-object v1, p2

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    .line 15181
    move-object v1, p3

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    .line 15182
    move-object v1, p4

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    .line 15183
    move v1, p5

    iput v1, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15184
    move-object v1, p6

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 15185
    move-object v1, p7

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 15186
    move-object v1, p8

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    .line 15187
    move-object v1, p10

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    .line 15188
    move-object v1, p11

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 15189
    move-object v1, p12

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 15190
    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    .line 15191
    move/from16 v1, p14

    iput v1, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installReason:I

    .line 15192
    move-wide/from16 v1, p15

    iput-wide v1, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    .line 15193
    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .registers 1

    .line 15150
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    return-object p0
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I
    .registers 11

    .line 15234
    iget-object v0, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 15235
    iget v1, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 15237
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 15240
    :try_start_9
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 15245
    nop

    .line 15246
    if-nez v3, :cond_27

    .line 15247
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 15248
    if-eqz v0, :cond_27

    .line 15249
    iget-object v0, v0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    goto :goto_28

    .line 15253
    :cond_27
    move-object v0, v3

    :goto_28
    iget-wide v4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_82

    .line 15254
    const/4 v4, -0x8

    if-nez v0, :cond_52

    .line 15255
    const-string p1, "PackageManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Required installed version code was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " but package is not installed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15258
    monitor-exit v2

    return v4

    .line 15261
    :cond_52
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Package;->getLongVersionCode()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_82

    .line 15262
    const-string p1, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Required installed version code was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->requiredInstalledVersionCode:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " but actual installed version is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15265
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$Package;->getLongVersionCode()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 15262
    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15266
    monitor-exit v2

    return v4

    .line 15270
    :cond_82
    if-eqz v0, :cond_b2

    .line 15271
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v5, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v4, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->isDowngradePermitted(II)Z

    move-result v4
    :try_end_8e
    .catchall {:try_start_9 .. :try_end_8e} :catchall_dc

    if-nez v4, :cond_b2

    .line 15274
    :try_start_90
    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerService;->access$2700(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageInfoLite;)V
    :try_end_93
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_90 .. :try_end_93} :catch_94
    .catchall {:try_start_90 .. :try_end_93} :catchall_dc

    .line 15278
    goto :goto_b2

    .line 15275
    :catch_94
    move-exception p1

    .line 15276
    :try_start_95
    const-string v0, "PackageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Downgrade detected: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15277
    const/4 p1, -0x7

    monitor-exit v2

    return p1

    .line 15282
    :cond_b2
    :goto_b2
    if-eqz v3, :cond_d8

    .line 15283
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const/4 v4, 0x2

    and-int/2addr v0, v4

    if-eqz v0, :cond_d5

    .line 15285
    iget-object v0, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v5, 0x1

    and-int/2addr v0, v5

    if-eqz v0, :cond_c4

    .line 15286
    monitor-exit v2

    return v5

    .line 15289
    :cond_c4
    if-ne v1, v5, :cond_c8

    .line 15291
    monitor-exit v2

    return v5

    .line 15292
    :cond_c8
    if-ne v1, v4, :cond_cb

    goto :goto_d8

    .line 15296
    :cond_cb
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$2800(Landroid/content/pm/PackageParser$Package;)Z

    move-result p1

    if-eqz p1, :cond_d3

    .line 15297
    monitor-exit v2

    return v4

    .line 15299
    :cond_d3
    monitor-exit v2

    return v5

    .line 15304
    :cond_d5
    const/4 p1, -0x4

    monitor-exit v2

    return p1

    .line 15307
    :cond_d8
    :goto_d8
    monitor-exit v2
    :try_end_d9
    .catchall {:try_start_95 .. :try_end_d9} :catchall_dc

    .line 15308
    iget p1, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    return p1

    .line 15307
    :catchall_dc
    move-exception p1

    :try_start_dd
    monitor-exit v2
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_dc

    throw p1
.end method


# virtual methods
.method handleReturnCode()V
    .registers 7

    .line 15659
    const-string v0, "PackageManager"

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    if-eqz v1, :cond_6e

    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mEnableRollbackCompleted:Z

    if-eqz v1, :cond_6e

    .line 15660
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_58

    .line 15661
    nop

    .line 15663
    :try_start_12
    new-instance v1, Landroid/content/pm/PackageParser;

    invoke-direct {v1}, Landroid/content/pm/PackageParser;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    const/4 v2, 0x0

    .line 15664
    invoke-static {v1, v2}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    .line 15665
    iget-object v1, v1, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;
    :try_end_22
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_12 .. :try_end_22} :catch_23

    .line 15668
    goto :goto_42

    .line 15666
    :catch_23
    move-exception v1

    .line 15667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t parse package at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v1, ""

    .line 15670
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

    .line 15673
    goto :goto_57

    .line 15671
    :catch_51
    move-exception v1

    .line 15672
    const-string v1, "Observer no longer exists."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15674
    :goto_57
    return-void

    .line 15676
    :cond_58
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_65

    .line 15677
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 15679
    :cond_65
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$3600(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 15681
    :cond_6e
    return-void
.end method

.method handleRollbackEnabled()V
    .registers 2

    .line 15653
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mEnableRollbackCompleted:Z

    .line 15654
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleReturnCode()V

    .line 15655
    return-void
.end method

.method public handleStartCopy()V
    .registers 25

    .line 15318
    move-object/from16 v1, p0

    .line 15321
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    if-eqz v0, :cond_1d

    .line 15322
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    if-eqz v0, :cond_15

    .line 15323
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_1d

    .line 15325
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid stage location"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15329
    :cond_1d
    :goto_1d
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v0, v0, 0x10

    const/4 v3, 0x1

    if-eqz v0, :cond_26

    move v4, v3

    goto :goto_27

    :cond_26
    const/4 v4, 0x0

    .line 15330
    :goto_27
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_2f

    move v0, v3

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    .line 15331
    :goto_30
    nop

    .line 15334
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget v7, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v5

    .line 15337
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2500()Z

    move-result v6

    if-eqz v6, :cond_60

    if-eqz v0, :cond_60

    .line 15338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkgLite for install: "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "PackageManager"

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15345
    :cond_60
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    const/4 v6, -0x6

    const/4 v7, -0x1

    if-nez v0, :cond_bb

    iget v0, v5, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    if-ne v0, v7, :cond_bb

    .line 15348
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object v0

    .line 15349
    nop

    .line 15350
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v8

    .line 15349
    invoke-virtual {v0, v8}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v8

    .line 15352
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-static {v0, v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->calculateInstalledSize(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v10

    .line 15354
    const-wide/16 v12, 0x0

    cmp-long v0, v10, v12

    if-ltz v0, :cond_b5

    .line 15356
    :try_start_8d
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    const/4 v13, 0x0

    add-long v14, v10, v8

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v12 .. v18}, Lcom/android/server/pm/Installer;->freeCache(Ljava/lang/String;JJI)V

    .line 15357
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    iget v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    invoke-static {v0, v8, v9, v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0
    :try_end_ab
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_8d .. :try_end_ab} :catch_ad

    .line 15361
    move-object v5, v0

    goto :goto_b5

    .line 15359
    :catch_ad
    move-exception v0

    .line 15360
    const-string v8, "PackageManager"

    const-string v9, "Failed to free cache"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15369
    :cond_b5
    :goto_b5
    iget v0, v5, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    if-ne v0, v6, :cond_bb

    .line 15371
    iput v7, v5, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 15377
    :cond_bb
    nop

    .line 15378
    iget v0, v5, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 15379
    const/4 v8, -0x2

    const/4 v9, -0x4

    const/4 v10, -0x3

    if-ne v0, v10, :cond_c7

    .line 15380
    const/16 v0, -0x13

    goto/16 :goto_11d

    .line 15381
    :cond_c7
    if-ne v0, v9, :cond_cb

    .line 15382
    move v0, v7

    goto :goto_11d

    .line 15383
    :cond_cb
    if-ne v0, v7, :cond_cf

    .line 15384
    move v0, v9

    goto :goto_11d

    .line 15385
    :cond_cf
    if-ne v0, v8, :cond_d3

    .line 15386
    move v0, v8

    goto :goto_11d

    .line 15387
    :cond_d3
    if-ne v0, v6, :cond_d7

    .line 15388
    move v0, v10

    goto :goto_11d

    .line 15389
    :cond_d7
    const/4 v6, -0x5

    if-ne v0, v6, :cond_dd

    .line 15390
    const/16 v0, -0x14

    goto :goto_11d

    .line 15393
    :cond_dd
    invoke-direct {v1, v5}, Lcom/android/server/pm/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;)I

    move-result v0

    .line 15394
    const/4 v6, -0x7

    if-ne v0, v6, :cond_e7

    .line 15395
    const/16 v0, -0x19

    goto :goto_11d

    .line 15396
    :cond_e7
    const/4 v6, -0x8

    if-ne v0, v6, :cond_ed

    .line 15397
    const/16 v0, -0x79

    goto :goto_11d

    .line 15398
    :cond_ed
    if-nez v4, :cond_11c

    .line 15400
    const/4 v4, 0x2

    if-ne v0, v4, :cond_f9

    .line 15402
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_11c

    .line 15403
    :cond_f9
    const/4 v4, 0x3

    if-ne v0, v4, :cond_116

    .line 15404
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$2500()Z

    move-result v0

    if-eqz v0, :cond_109

    .line 15405
    const-string v0, "PackageManager"

    const-string v4, "...setting INSTALL_EPHEMERAL install flag"

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15407
    :cond_109
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit16 v0, v0, 0x800

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15408
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    goto :goto_11c

    .line 15412
    :cond_116
    iget v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15418
    :cond_11c
    :goto_11c
    move v0, v3

    :goto_11d
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4, v1}, Lcom/android/server/pm/PackageManagerService;->access$2900(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v4

    .line 15419
    iput-boolean v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    .line 15420
    iput-boolean v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mEnableRollbackCompleted:Z

    .line 15421
    iput-object v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 15423
    if-ne v0, v3, :cond_368

    .line 15426
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    .line 15427
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    if-ne v4, v6, :cond_137

    .line 15428
    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object v10, v4

    goto :goto_138

    .line 15427
    :cond_137
    move-object v10, v4

    .line 15435
    :goto_138
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    const/high16 v6, 0x10000000

    if-nez v4, :cond_142

    move v4, v7

    goto :goto_14e

    .line 15436
    :cond_142
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v4, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 15437
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 15436
    invoke-virtual {v4, v8, v6, v9}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v4

    .line 15439
    :goto_14e
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-nez v8, :cond_154

    move v8, v7

    goto :goto_156

    :cond_154
    iget v8, v8, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    .line 15440
    :goto_156
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v9, v9, Lcom/android/server/pm/PackageManagerService$OriginInfo;->existing:Z

    if-nez v9, :cond_2cd

    if-eq v4, v7, :cond_2cd

    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15442
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    iget v11, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    .line 15441
    invoke-static {v7, v9, v11, v8}, Lcom/android/server/pm/PackageManagerService;->access$3000(Lcom/android/server/pm/PackageManagerService;III)Z

    move-result v7

    if-eqz v7, :cond_2c9

    .line 15443
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.PACKAGE_NEEDS_VERIFICATION"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15445
    invoke-virtual {v7, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15446
    new-instance v6, Ljava/io/File;

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v8, v8, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    const-string v8, "application/vnd.android.package-archive"

    invoke-virtual {v7, v6, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 15448
    invoke-virtual {v7, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15451
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/16 v19, 0x0

    .line 15452
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v20

    const/16 v21, 0x0

    .line 15451
    const-string v18, "application/vnd.android.package-archive"

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    invoke-static/range {v16 .. v21}, Lcom/android/server/pm/PackageManagerService;->access$3100(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v6

    .line 15461
    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService;->access$3208(Lcom/android/server/pm/PackageManagerService;)I

    move-result v8

    .line 15463
    const-string v9, "android.content.pm.extra.VERIFICATION_ID"

    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15465
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    const-string v11, "android.content.pm.extra.VERIFICATION_INSTALLER_PACKAGE"

    invoke-virtual {v7, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15468
    iget v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const-string v11, "android.content.pm.extra.VERIFICATION_INSTALL_FLAGS"

    invoke-virtual {v7, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15471
    iget-object v9, v5, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    const-string v11, "android.content.pm.extra.VERIFICATION_PACKAGE_NAME"

    invoke-virtual {v7, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15474
    iget v9, v5, Landroid/content/pm/PackageInfoLite;->versionCode:I

    const-string v11, "android.content.pm.extra.VERIFICATION_VERSION_CODE"

    invoke-virtual {v7, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15477
    nop

    .line 15478
    invoke-virtual {v5}, Landroid/content/pm/PackageInfoLite;->getLongVersionCode()J

    move-result-wide v11

    .line 15477
    const-string v9, "android.content.pm.extra.VERIFICATION_LONG_VERSION_CODE"

    invoke-virtual {v7, v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 15480
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    if-eqz v9, :cond_20e

    .line 15481
    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    if-eqz v9, :cond_1e1

    .line 15482
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUri:Landroid/net/Uri;

    const-string v11, "android.intent.extra.ORIGINATING_URI"

    invoke-virtual {v7, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 15485
    :cond_1e1
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    if-eqz v9, :cond_1f0

    .line 15486
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget-object v9, v9, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->referrer:Landroid/net/Uri;

    const-string v11, "android.intent.extra.REFERRER"

    invoke-virtual {v7, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 15489
    :cond_1f0
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v9, v9, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    if-ltz v9, :cond_1ff

    .line 15490
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v9, v9, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->originatingUid:I

    const-string v11, "android.intent.extra.ORIGINATING_UID"

    invoke-virtual {v7, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15493
    :cond_1ff
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v9, v9, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    if-ltz v9, :cond_20e

    .line 15494
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    iget v9, v9, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    const-string v11, "android.content.pm.extra.VERIFICATION_INSTALLER_UID"

    invoke-virtual {v7, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15499
    :cond_20e
    new-instance v9, Lcom/android/server/pm/PackageVerificationState;

    invoke-direct {v9, v4, v1}, Lcom/android/server/pm/PackageVerificationState;-><init>(ILcom/android/server/pm/PackageManagerService$InstallParams;)V

    .line 15502
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v4, v8, v9}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 15504
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4, v5, v6, v9}, Lcom/android/server/pm/PackageManagerService;->access$3300(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageInfoLite;Ljava/util/List;Lcom/android/server/pm/PackageVerificationState;)Ljava/util/List;

    move-result-object v4

    .line 15507
    iget-object v9, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v9}, Lcom/android/server/pm/PackageManagerService;->access$100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/DeviceIdleController$LocalService;

    move-result-object v9

    .line 15508
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v11}, Lcom/android/server/pm/PackageManagerService;->access$000(Lcom/android/server/pm/PackageManagerService;)J

    move-result-wide v11

    .line 15514
    if-eqz v4, :cond_273

    .line 15515
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    .line 15516
    if-nez v13, :cond_23e

    .line 15517
    const-string v0, "PackageManager"

    const-string v4, "Additional verifiers required, but none installed."

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15518
    const/16 v0, -0x16

    goto :goto_273

    .line 15520
    :cond_23e
    const/4 v2, 0x0

    :goto_23f
    if-ge v2, v13, :cond_273

    .line 15521
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v14, v16

    check-cast v14, Landroid/content/ComponentName;

    .line 15522
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v17

    .line 15523
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    .line 15524
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v21

    const/16 v22, 0x0

    .line 15522
    const-string/jumbo v23, "package verifier"

    move-object/from16 v16, v9

    move-wide/from16 v19, v11

    invoke-virtual/range {v16 .. v23}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 15526
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 15527
    invoke-virtual {v15, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 15528
    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v15, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 15520
    add-int/lit8 v2, v2, 0x1

    goto :goto_23f

    .line 15533
    :cond_273
    :goto_273
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    invoke-static {v2, v4, v6}, Lcom/android/server/pm/PackageManagerService;->access$3400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v2

    .line 15535
    if-ne v0, v3, :cond_2c5

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    if-eqz v4, :cond_2c5

    .line 15537
    const-string/jumbo v4, "verification"

    const-wide/32 v14, 0x40000

    invoke-static {v14, v15, v4, v8}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 15544
    invoke-virtual {v7, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 15545
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v17

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    .line 15547
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v21

    const/16 v22, 0x0

    .line 15545
    const-string/jumbo v23, "package verifier"

    move-object/from16 v16, v9

    move-object/from16 v18, v2

    move-wide/from16 v19, v11

    invoke-virtual/range {v16 .. v23}, Lcom/android/server/DeviceIdleController$LocalService;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZLjava/lang/String;)V

    .line 15548
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    new-instance v12, Lcom/android/server/pm/PackageManagerService$InstallParams$1;

    invoke-direct {v12, v1, v8}, Lcom/android/server/pm/PackageManagerService$InstallParams$1;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    const-string v11, "android.permission.PACKAGE_VERIFICATION_AGENT"

    move-object v8, v2

    move-object v9, v7

    move-wide v2, v14

    move v14, v4

    move-object v15, v6

    invoke-virtual/range {v8 .. v16}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 15564
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    goto :goto_2d0

    .line 15535
    :cond_2c5
    const-wide/32 v2, 0x40000

    goto :goto_2d0

    .line 15441
    :cond_2c9
    const-wide/32 v2, 0x40000

    goto :goto_2d0

    .line 15440
    :cond_2cd
    const-wide/32 v2, 0x40000

    .line 15568
    :goto_2d0
    iget v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const/high16 v6, 0x40000

    and-int/2addr v4, v6

    if-eqz v4, :cond_368

    .line 15570
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$3508(Lcom/android/server/pm/PackageManagerService;)I

    move-result v4

    .line 15571
    const-string v6, "enable_rollback"

    invoke-static {v2, v3, v6, v4}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 15573
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v2, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 15576
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 15577
    :try_start_2ee
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v3

    .line 15578
    if-eqz v3, :cond_306

    .line 15579
    sget-object v5, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Lcom/android/server/pm/PackageSetting;->queryInstalledUsers([IZ)[I

    move-result-object v3

    goto :goto_30a

    .line 15582
    :cond_306
    const/4 v3, 0x0

    new-array v5, v3, [I

    move-object v3, v5

    .line 15584
    :goto_30a
    monitor-exit v2
    :try_end_30b
    .catchall {:try_start_2ee .. :try_end_30b} :catchall_365

    .line 15586
    new-instance v9, Landroid/content/Intent;

    const-string v2, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    invoke-direct {v9, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15587
    const-string v2, "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN"

    invoke-virtual {v9, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15590
    iget v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    const-string v5, "android.content.pm.extra.ENABLE_ROLLBACK_INSTALL_FLAGS"

    invoke-virtual {v9, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15593
    const-string v2, "android.content.pm.extra.ENABLE_ROLLBACK_INSTALLED_USERS"

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 15596
    nop

    .line 15598
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getRollbackUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 15596
    const-string v3, "android.content.pm.extra.ENABLE_ROLLBACK_USER"

    invoke-virtual {v9, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15599
    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 15601
    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15608
    const/high16 v2, 0x4000000

    invoke-virtual {v9, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15610
    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v8, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    new-instance v12, Lcom/android/server/pm/PackageManagerService$InstallParams$2;

    invoke-direct {v12, v1, v4}, Lcom/android/server/pm/PackageManagerService$InstallParams$2;-><init>(Lcom/android/server/pm/PackageManagerService$InstallParams;I)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-string v11, "android.permission.PACKAGE_ROLLBACK_AGENT"

    invoke-virtual/range {v8 .. v16}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 15630
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mEnableRollbackCompleted:Z

    goto :goto_368

    .line 15584
    :catchall_365
    move-exception v0

    :try_start_366
    monitor-exit v2
    :try_end_367
    .catchall {:try_start_366 .. :try_end_367} :catchall_365

    throw v0

    .line 15634
    :cond_368
    :goto_368
    iput v0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 15635
    return-void
.end method

.method handleVerificationFinished()V
    .registers 2

    .line 15646
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mVerificationCompleted:Z

    .line 15647
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleReturnCode()V

    .line 15648
    return-void
.end method

.method setReturnCode(I)V
    .registers 4

    .line 15638
    iget v0, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 15641
    iput p1, p0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    .line 15643
    :cond_7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 15229
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
