.class Lcom/android/server/pm/PackageManagerService$FileInstallArgs;
.super Lcom/android/server/pm/PackageManagerService$InstallArgs;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileInstallArgs"
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

    .line 15833
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    iput-object v3, v2, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15834
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->move:Lcom/android/server/pm/PackageManagerService$MoveInfo;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;->volumeUuid:Ljava/lang/String;

    .line 15836
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

    .line 15834
    const/4 v9, 0x0

    invoke-direct/range {v1 .. v17}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILandroid/content/pm/PackageParser$SigningDetails;ILcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;)V

    .line 15840
    return-void
.end method

.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 22

    move-object/from16 v15, p0

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    move-object/from16 v0, p0

    move-object/from16 v8, p4

    .line 15843
    move-object/from16 v1, p1

    iput-object v1, v15, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15844
    invoke-static {}, Lcom/android/server/pm/PackageManagerService$OriginInfo;->fromNothing()Lcom/android/server/pm/PackageManagerService$OriginInfo;

    move-result-object v1

    sget-object v14, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    move-object/from16 v12, v16

    const/16 v16, 0x0

    move/from16 v13, v16

    move/from16 v15, v16

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v16}, Lcom/android/server/pm/PackageManagerService$InstallArgs;-><init>(Lcom/android/server/pm/PackageManagerService$OriginInfo;Lcom/android/server/pm/PackageManagerService$MoveInfo;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILandroid/content/pm/PackageParser$SigningDetails;ILcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;)V

    .line 15847
    const/4 v0, 0x0

    move-object/from16 v1, p2

    if-eqz v1, :cond_37

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_38

    :cond_37
    move-object v2, v0

    :goto_38
    move-object/from16 v1, p0

    iput-object v2, v1, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 15848
    move-object/from16 v2, p3

    if-eqz v2, :cond_45

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_45
    iput-object v0, v1, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    .line 15849
    return-void
.end method

.method private cleanUp()Z
    .registers 3

    .line 15978
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_25

    .line 15982
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->removeCodePathLI(Ljava/io/File;)V

    .line 15984
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-static {v1, v0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 15985
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 15988
    :cond_23
    const/4 v0, 0x1

    return v0

    .line 15979
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return v0
.end method

.method private doCopyApk()I
    .registers 6

    .line 15861
    const-string v0, "PackageManager"

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-boolean v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->staged:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_16

    .line 15863
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 15864
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    .line 15865
    return v2

    .line 15869
    :cond_16
    :try_start_16
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->installFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_1e

    move v1, v2

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 15870
    :goto_1f
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->volumeUuid:Ljava/lang/String;

    .line 15871
    invoke-virtual {v3, v4, v1}, Lcom/android/server/pm/PackageInstallerService;->allocateStageDirLegacy(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v1

    .line 15872
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 15873
    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_2d} :catch_6e

    .line 15877
    nop

    .line 15879
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    .line 15880
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 15879
    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyPackage(Ljava/lang/String;Ljava/io/File;)I

    move-result v1

    .line 15881
    if-eq v1, v2, :cond_44

    .line 15882
    const-string v2, "Failed to copy package"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15883
    return v1

    .line 15886
    :cond_44
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    const-string v3, "lib"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 15887
    const/4 v2, 0x0

    .line 15889
    :try_start_4e
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-static {v3}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v2

    .line 15890
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->abiOverride:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;)I

    move-result v0
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_5a} :catch_60
    .catchall {:try_start_4e .. :try_end_5a} :catchall_5e

    .line 15896
    :goto_5a
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 15897
    goto :goto_69

    .line 15896
    :catchall_5e
    move-exception v0

    goto :goto_6a

    .line 15892
    :catch_60
    move-exception v1

    .line 15893
    :try_start_61
    const-string v3, "Copying native libraries failed"

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_5e

    .line 15894
    const/16 v0, -0x6e

    goto :goto_5a

    .line 15899
    :goto_69
    return v0

    .line 15896
    :goto_6a
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 15874
    :catch_6e
    move-exception v1

    .line 15875
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to create copy file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15876
    const/4 v0, -0x4

    return v0
.end method


# virtual methods
.method cleanUpResourcesLI()V
    .registers 4

    .line 15993
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 15994
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 15996
    :try_start_c
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v1

    .line 15997
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$PackageLite;->getAllCodePaths()Ljava/util/List;

    move-result-object v0
    :try_end_17
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_c .. :try_end_17} :catch_18

    .line 16000
    goto :goto_19

    .line 15998
    :catch_18
    move-exception v1

    .line 16003
    :cond_19
    :goto_19
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 16004
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->instructionSets:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/PackageManagerService;->removeDexFiles(Ljava/util/List;[Ljava/lang/String;)V

    .line 16005
    return-void
.end method

.method copyApk()I
    .registers 4

    .line 15852
    const-wide/32 v0, 0x40000

    const-string v2, "copyApk"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 15854
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->doCopyApk()I

    move-result v2
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_10

    .line 15856
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 15854
    return v2

    .line 15856
    :catchall_10
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method doPostDeleteLI(Z)Z
    .registers 2

    .line 16009
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUpResourcesLI()V

    .line 16010
    const/4 p1, 0x1

    return p1
.end method

.method doPostInstall(II)I
    .registers 3

    .line 15961
    const/4 p2, 0x1

    if-eq p1, p2, :cond_6

    .line 15962
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 15964
    :cond_6
    return p1
.end method

.method doPreInstall(I)I
    .registers 3

    .line 15903
    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    .line 15904
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 15906
    :cond_6
    return p1
.end method

.method doRename(ILandroid/content/pm/PackageParser$Package;)Z
    .registers 9

    .line 15910
    const-string v0, "PackageManager"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_a

    .line 15911
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->cleanUp()Z

    .line 15912
    return v2

    .line 15915
    :cond_a
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 15916
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 15917
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v4, p1, v5}, Lcom/android/server/pm/PackageManagerService;->access$3700(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 15921
    :try_start_1a
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Landroid/system/ErrnoException; {:try_start_1a .. :try_end_25} :catch_8a

    .line 15925
    nop

    .line 15927
    invoke-static {p1}, Landroid/os/SELinux;->restoreconRecursive(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 15928
    const-string p1, "Failed to restorecon"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15929
    return v2

    .line 15933
    :cond_32
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

    .line 15934
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    .line 15938
    :try_start_36
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/content/pm/PackageParser$Package;->setCodePath(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3d} :catch_74

    .line 15942
    nop

    .line 15943
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-static {v3, p1, v0}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/PackageParser$Package;->setBaseCodePath(Ljava/lang/String;)V

    .line 15945
    iget-object v0, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-static {v3, p1, v0}, Landroid/os/FileUtils;->rewriteAfterRename(Ljava/io/File;Ljava/io/File;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$Package;->setSplitCodePaths([Ljava/lang/String;)V

    .line 15949
    iget-object p1, p2, Landroid/content/pm/PackageParser$Package;->volumeUuid:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$Package;->setApplicationVolumeUuid(Ljava/lang/String;)V

    .line 15950
    iget-object p1, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoCodePath(Ljava/lang/String;)V

    .line 15951
    iget-object p1, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoBaseCodePath(Ljava/lang/String;)V

    .line 15952
    iget-object p1, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoSplitCodePaths([Ljava/lang/String;)V

    .line 15953
    iget-object p1, p2, Landroid/content/pm/PackageParser$Package;->codePath:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoResourcePath(Ljava/lang/String;)V

    .line 15954
    iget-object p1, p2, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoBaseResourcePath(Ljava/lang/String;)V

    .line 15955
    iget-object p1, p2, Landroid/content/pm/PackageParser$Package;->splitCodePaths:[Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$Package;->setApplicationInfoSplitResourcePaths([Ljava/lang/String;)V

    .line 15957
    return v1

    .line 15939
    :catch_74
    move-exception p2

    .line 15940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get path: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15941
    return v2

    .line 15922
    :catch_8a
    move-exception p1

    .line 15923
    const-string p2, "Failed to rename"

    invoke-static {v0, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15924
    return v2
.end method

.method getCodePath()Ljava/lang/String;
    .registers 2

    .line 15969
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->codeFile:Ljava/io/File;

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

    .line 15974
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$FileInstallArgs;->resourceFile:Ljava/io/File;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method
