.class Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MoveInstallArgs"
.end annotation


# instance fields
.field private codeFile:Ljava/io/File;

.field private resourceFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallParams;)V
    .registers 21

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    .line 16032
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    iput-object v3, v2, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 16033
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 16035
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->getUser()Landroid/os/UserHandle;

    move-result-object v8

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->packageAbiOverride:Ljava/lang/String;

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->traceMethod:Ljava/lang/String;

    iget v14, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->traceCookie:I

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->signingDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget v9, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installReason:I

    move/from16 v16, v9

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->mParentInstallParams:Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;

    move-object/from16 v17, v0

    .line 16033
    const/4 v9, 0x0

    invoke-direct/range {v1 .. v17}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILandroid/content/pm/PackageParser$SigningDetails;ILcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;)V

    .line 16039
    return-void
.end method

.method private cleanUp(Ljava/lang/String;)Z
    .registers 14

    .line 16106
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->dataAppName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cleaning up "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PackageManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16109
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v1

    .line 16110
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 16116
    :try_start_3a
    array-length v3, v1

    const/4 v4, 0x0

    :goto_3c
    if-ge v4, v3, :cond_5d

    aget v8, v1, v4
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_65

    .line 16118
    :try_start_40
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v7, v6, Lcom/android/server/pm/PackageManagerService$MoveInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x3

    const-wide/16 v10, 0x0

    move-object v6, p1

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/pm/Installer;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_4f
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_40 .. :try_end_4f} :catch_50
    .catchall {:try_start_40 .. :try_end_4f} :catchall_65

    .line 16122
    goto :goto_5a

    .line 16120
    :catch_50
    move-exception v5

    .line 16121
    :try_start_51
    const-string v6, "PackageManager"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16116
    :goto_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 16124
    :cond_5d
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageManagerService;->removeCodePathLI(Ljava/io/File;)V

    .line 16125
    monitor-exit v2

    .line 16126
    const/4 p1, 0x1

    return p1

    .line 16125
    :catchall_65
    move-exception p1

    monitor-exit v2
    :try_end_67
    .catchall {:try_start_51 .. :try_end_67} :catchall_65

    throw p1
.end method


# virtual methods
.method cleanUpResourcesLI()V
    .registers 2

    .line 16130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method copyApk()I
    .registers 11

    .line 16044
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    monitor-enter v0

    .line 16046
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$MoveInfo;->fromUuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$MoveInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$MoveInfo;->dataAppName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget v7, v1, Lcom/android/server/pm/PackageManagerService$MoveInfo;->appId:I

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v8, v1, Lcom/android/server/pm/PackageManagerService$MoveInfo;->seinfo:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget v9, v1, Lcom/android/server/pm/PackageManagerService$MoveInfo;->targetSdkVersion:I

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/pm/Installer;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_28
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_5 .. :try_end_28} :catch_45
    .catchall {:try_start_5 .. :try_end_28} :catchall_43

    .line 16051
    nop

    .line 16052
    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_43

    .line 16054
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->dataAppName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->codeFile:Ljava/io/File;

    .line 16055
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->codeFile:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->resourceFile:Ljava/io/File;

    .line 16058
    const/4 v0, 0x1

    return v0

    .line 16052
    :catchall_43
    move-exception v1

    goto :goto_51

    .line 16048
    :catch_45
    move-exception v1

    .line 16049
    :try_start_46
    const-string v2, "PackageManager"

    const-string v3, "Failed to move app"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16050
    const/16 v1, -0x6e

    monitor-exit v0

    return v1

    .line 16052
    :goto_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_46 .. :try_end_52} :catchall_43

    throw v1
.end method

.method doPostDeleteLI(Z)Z
    .registers 2

    .line 16134
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method doPostInstall(II)I
    .registers 3

    .line 16087
    const/4 p2, 0x1

    if-ne p1, p2, :cond_b

    .line 16088
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->fromUuid:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->cleanUp(Ljava/lang/String;)Z

    goto :goto_12

    .line 16090
    :cond_b
    iget-object p2, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->cleanUp(Ljava/lang/String;)Z

    .line 16092
    :goto_12
    return p1
.end method

.method doPreInstall(I)I
    .registers 3

    .line 16062
    const/4 v0, 0x1

    if-eq p1, v0, :cond_a

    .line 16063
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->cleanUp(Ljava/lang/String;)Z

    .line 16065
    :cond_a
    return p1
.end method

.method doRename(ILandroid/content/pm/PackageParser$Package;)Z
    .registers 4

    .line 16069
    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    .line 16070
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService$MoveInfo;->toUuid:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->cleanUp(Ljava/lang/String;)Z

    .line 16071
    const/4 p1, 0x0

    return p1

    .line 16075
    :cond_c
    iget-object p1, p2, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$Package;->setApplicationVolumeUuid(Ljava/lang/String;)V

    .line 16076
    iget-object p1, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoCodePath(Ljava/lang/String;)V

    .line 16077
    iget-object p1, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoBaseCodePath(Ljava/lang/String;)V

    .line 16078
    iget-object p1, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoSplitCodePaths([Ljava/lang/String;)V

    .line 16079
    iget-object p1, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoResourcePath(Ljava/lang/String;)V

    .line 16080
    iget-object p1, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoBaseResourcePath(Ljava/lang/String;)V

    .line 16081
    iget-object p1, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoSplitResourcePaths([Ljava/lang/String;)V

    .line 16083
    return v0
.end method

.method getCodePath()Ljava/lang/String;
    .registers 2

    .line 16097
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->codeFile:Ljava/io/File;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method getResourcePath()Ljava/lang/String;
    .registers 2

    .line 16102
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveInstallArgs;->resourceFile:Ljava/io/File;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method
