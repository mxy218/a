.class public Lcom/android/server/pm/Installer;
.super Lcom/android/server/SystemService;
.source "Installer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/Installer$InstallerException;
    }
.end annotation


# static fields
.field public static final DEXOPT_BOOTCOMPLETE:I = 0x8

.field public static final DEXOPT_DEBUGGABLE:I = 0x4

.field public static final DEXOPT_ENABLE_HIDDEN_API_CHECKS:I = 0x400

.field public static final DEXOPT_FORCE:I = 0x40

.field public static final DEXOPT_GENERATE_APP_IMAGE:I = 0x1000

.field public static final DEXOPT_GENERATE_COMPACT_DEX:I = 0x800

.field public static final DEXOPT_IDLE_BACKGROUND_JOB:I = 0x200

.field public static final DEXOPT_PROFILE_GUIDED:I = 0x10

.field public static final DEXOPT_PUBLIC:I = 0x2

.field public static final DEXOPT_SECONDARY_DEX:I = 0x20

.field public static final DEXOPT_STORAGE_CE:I = 0x80

.field public static final DEXOPT_STORAGE_DE:I = 0x100

.field public static final FLAG_CLEAR_APP_DATA_KEEP_ART_PROFILES:I = 0x20000

.field public static final FLAG_CLEAR_CACHE_ONLY:I = 0x10

.field public static final FLAG_CLEAR_CODE_CACHE_ONLY:I = 0x20

.field public static final FLAG_FORCE:I = 0x2000

.field public static final FLAG_FREE_CACHE_NOOP:I = 0x400

.field public static final FLAG_FREE_CACHE_V2:I = 0x100

.field public static final FLAG_FREE_CACHE_V2_DEFY_QUOTA:I = 0x200

.field public static final FLAG_STORAGE_CE:I = 0x2

.field public static final FLAG_STORAGE_DE:I = 0x1

.field public static final FLAG_STORAGE_EXTERNAL:I = 0x4

.field public static final FLAG_USE_QUOTA:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "Installer"


# instance fields
.field private volatile mInstalld:Landroid/os/IInstalld;

.field private final mIsolated:Z

.field private volatile mWarnIfHeld:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/Installer;-><init>(Landroid/content/Context;Z)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 3

    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 107
    iput-boolean p2, p0, Lcom/android/server/pm/Installer;->mIsolated:Z

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/Installer;)V
    .registers 1

    .line 42
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->connect()V

    return-void
.end method

.method private static assertValidInstructionSet(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 706
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_16

    aget-object v3, v0, v2

    .line 707
    invoke-static {v3}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 708
    return-void

    .line 706
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 711
    :cond_16
    new-instance v0, Lcom/android/server/pm/Installer$InstallerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid instruction set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/pm/Installer$InstallerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkBeforeRemote()Z
    .registers 4

    .line 163
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    const-string v1, "Installer"

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling thread "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is holding 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    .line 165
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    .line 164
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    :cond_41
    iget-boolean v0, p0, Lcom/android/server/pm/Installer;->mIsolated:Z

    if-eqz v0, :cond_4c

    .line 168
    const-string v0, "Ignoring request because this installer is isolated"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v0, 0x0

    return v0

    .line 171
    :cond_4c
    const/4 v0, 0x1

    return v0
.end method

.method private connect()V
    .registers 5

    .line 128
    const-string v0, "installd"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_14

    .line 131
    :try_start_8
    new-instance v1, Lcom/android/server/pm/Installer$1;

    invoke-direct {v1, p0}, Lcom/android/server/pm/Installer$1;-><init>(Lcom/android/server/pm/Installer;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    .line 140
    goto :goto_14

    .line 138
    :catch_12
    move-exception v0

    .line 139
    const/4 v0, 0x0

    .line 143
    :cond_14
    :goto_14
    if-eqz v0, :cond_22

    .line 144
    invoke-static {v0}, Landroid/os/IInstalld$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    .line 146
    :try_start_1c
    invoke-virtual {p0}, Lcom/android/server/pm/Installer;->invalidateMounts()V
    :try_end_1f
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_1c .. :try_end_1f} :catch_20

    .line 148
    :goto_1f
    goto :goto_37

    .line 147
    :catch_20
    move-exception v0

    goto :goto_1f

    .line 150
    :cond_22
    const-string v0, "Installer"

    const-string v1, "installd not found; trying again"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/-$$Lambda$Installer$SebeftIfAJ7KsTmM0tju6PfW4Pc;

    invoke-direct {v1, p0}, Lcom/android/server/pm/-$$Lambda$Installer$SebeftIfAJ7KsTmM0tju6PfW4Pc;-><init>(Lcom/android/server/pm/Installer;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    :goto_37
    return-void
.end method


# virtual methods
.method public assertFsverityRootHashMatches(Ljava/lang/String;[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 522
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 523
    :cond_7
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 525
    :try_start_e
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2}, Landroid/os/IInstalld;->assertFsverityRootHashMatches(Ljava/lang/String;[B)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_15

    .line 528
    nop

    .line 529
    return-void

    .line 526
    :catch_15
    move-exception p1

    .line 527
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 208
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 210
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_13

    .line 213
    nop

    .line 214
    return-void

    .line 211
    :catch_13
    move-exception p1

    .line 212
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 401
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 403
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2}, Landroid/os/IInstalld;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_e

    .line 406
    nop

    .line 407
    return-void

    .line 404
    :catch_e
    move-exception p1

    .line 405
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6

    .line 716
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return p1

    .line 717
    :catch_7
    move-exception p1

    .line 718
    const/4 p1, 0x0

    return p1
.end method

.method public copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 349
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 351
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return p1

    .line 352
    :catch_f
    move-exception p1

    .line 353
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)J
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_9

    const-wide/16 p1, -0x1

    return-wide p1

    .line 179
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)J

    move-result-wide p1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_16} :catch_17

    return-wide p1

    .line 181
    :catch_17
    move-exception p1

    .line 182
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 465
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 467
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2}, Landroid/os/IInstalld;->createOatDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_e

    .line 470
    nop

    .line 471
    return-void

    .line 468
    :catch_e
    move-exception p1

    .line 469
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 559
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 561
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return p1

    .line 562
    :catch_f
    move-exception p1

    .line 563
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public createUserData(Ljava/lang/String;III)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 420
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 422
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->createUserData(Ljava/lang/String;III)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_e

    .line 425
    nop

    .line 426
    return-void

    .line 423
    :catch_e
    move-exception p1

    .line 424
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 499
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 500
    :cond_7
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 501
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p3}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 503
    :try_start_15
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IInstalld;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1c

    .line 506
    nop

    .line 507
    return-void

    .line 504
    :catch_1c
    move-exception p1

    .line 505
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 218
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 220
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_13

    .line 223
    nop

    .line 224
    return-void

    .line 221
    :catch_13
    move-exception p1

    .line 222
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public destroyAppDataSnapshot(Ljava/lang/String;IJII)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 675
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 678
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    const/4 v1, 0x0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_15

    .line 680
    const/4 p1, 0x1

    return p1

    .line 681
    :catch_15
    move-exception p1

    .line 682
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public destroyAppProfiles(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 410
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 412
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1}, Landroid/os/IInstalld;->destroyAppProfiles(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_e

    .line 415
    nop

    .line 416
    return-void

    .line 413
    :catch_e
    move-exception p1

    .line 414
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 569
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 571
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2}, Landroid/os/IInstalld;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_e

    .line 574
    nop

    .line 575
    return-void

    .line 572
    :catch_e
    move-exception p1

    .line 573
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public destroyUserData(Ljava/lang/String;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 429
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 431
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IInstalld;->destroyUserData(Ljava/lang/String;II)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_e

    .line 434
    nop

    .line 435
    return-void

    .line 432
    :catch_e
    move-exception p1

    .line 433
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 312
    invoke-static/range {p4 .. p4}, Lcom/android/server/pm/Installer;->assertValidInstructionSet(Ljava/lang/String;)V

    .line 313
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    move-object/from16 v2, p1

    invoke-interface {v0, v2}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 314
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    move-object/from16 v7, p6

    invoke-interface {v0, v7}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 315
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    move-object/from16 v15, p15

    invoke-interface {v0, v15}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 316
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_25

    return-void

    .line 318
    :cond_25
    move-object/from16 v0, p0

    :try_start_27
    iget-object v1, v0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-interface/range {v1 .. v17}, Landroid/os/IInstalld;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_4c} :catch_4e

    .line 323
    nop

    .line 324
    return-void

    .line 321
    :catch_4e
    move-exception v0

    .line 322
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v0

    throw v0
.end method

.method public dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 338
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 339
    :cond_8
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p4}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 341
    :try_start_f
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_15} :catch_16

    return p1

    .line 342
    :catch_16
    move-exception p1

    .line 343
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public fixupAppData(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 227
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 229
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2}, Landroid/os/IInstalld;->fixupAppData(Ljava/lang/String;I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_e

    .line 232
    nop

    .line 233
    return-void

    .line 230
    :catch_e
    move-exception p1

    .line 231
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public freeCache(Ljava/lang/String;JJI)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 439
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 441
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->freeCache(Ljava/lang/String;JJI)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_12

    .line 444
    nop

    .line 445
    return-void

    .line 442
    :catch_12
    move-exception p1

    .line 443
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;Landroid/content/pm/PackageStats;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 250
    move-object/from16 v0, p7

    move-object/from16 v9, p8

    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 251
    :cond_b
    const/4 v10, 0x0

    if-eqz v0, :cond_1e

    .line 252
    array-length v1, v0

    move v2, v10

    :goto_10
    if-ge v2, v1, :cond_1e

    aget-object v3, v0, v2

    .line 253
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v4

    invoke-interface {v4, v3}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 257
    :cond_1e
    move-object v1, p0

    :try_start_1f
    iget-object v1, v1, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Landroid/os/IInstalld;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    move-result-object v0

    .line 259
    iget-wide v1, v9, Landroid/content/pm/PackageStats;->codeSize:J

    aget-wide v3, v0, v10

    add-long/2addr v1, v3

    iput-wide v1, v9, Landroid/content/pm/PackageStats;->codeSize:J

    .line 260
    iget-wide v1, v9, Landroid/content/pm/PackageStats;->dataSize:J

    const/4 v3, 0x1

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iput-wide v1, v9, Landroid/content/pm/PackageStats;->dataSize:J

    .line 261
    iget-wide v1, v9, Landroid/content/pm/PackageStats;->cacheSize:J

    const/4 v3, 0x2

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iput-wide v1, v9, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 262
    iget-wide v1, v9, Landroid/content/pm/PackageStats;->externalCodeSize:J

    const/4 v3, 0x3

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iput-wide v1, v9, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 263
    iget-wide v1, v9, Landroid/content/pm/PackageStats;->externalDataSize:J

    const/4 v3, 0x4

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iput-wide v1, v9, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 264
    iget-wide v1, v9, Landroid/content/pm/PackageStats;->externalCacheSize:J

    const/4 v3, 0x5

    aget-wide v3, v0, v3

    add-long/2addr v1, v3

    iput-wide v1, v9, Landroid/content/pm/PackageStats;->externalCacheSize:J
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_5e} :catch_60

    .line 267
    nop

    .line 268
    return-void

    .line 265
    :catch_60
    move-exception v0

    .line 266
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v0

    throw v0
.end method

.method public getExternalSize(Ljava/lang/String;II[I)[J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 288
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x6

    new-array p1, p1, [J

    return-object p1

    .line 290
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object p1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_10} :catch_11

    return-object p1

    .line 291
    :catch_11
    move-exception p1

    .line 292
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public getUserSize(Ljava/lang/String;II[ILandroid/content/pm/PackageStats;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 272
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 274
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->getUserSize(Ljava/lang/String;II[I)[J

    move-result-object p1

    .line 275
    iget-wide p2, p5, Landroid/content/pm/PackageStats;->codeSize:J

    const/4 p4, 0x0

    aget-wide v0, p1, p4

    add-long/2addr p2, v0

    iput-wide p2, p5, Landroid/content/pm/PackageStats;->codeSize:J

    .line 276
    iget-wide p2, p5, Landroid/content/pm/PackageStats;->dataSize:J

    const/4 p4, 0x1

    aget-wide v0, p1, p4

    add-long/2addr p2, v0

    iput-wide p2, p5, Landroid/content/pm/PackageStats;->dataSize:J

    .line 277
    iget-wide p2, p5, Landroid/content/pm/PackageStats;->cacheSize:J

    const/4 p4, 0x2

    aget-wide v0, p1, p4

    add-long/2addr p2, v0

    iput-wide p2, p5, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 278
    iget-wide p2, p5, Landroid/content/pm/PackageStats;->externalCodeSize:J

    const/4 p4, 0x3

    aget-wide v0, p1, p4

    add-long/2addr p2, v0

    iput-wide p2, p5, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 279
    iget-wide p2, p5, Landroid/content/pm/PackageStats;->externalDataSize:J

    const/4 p4, 0x4

    aget-wide v0, p1, p4

    add-long/2addr p2, v0

    iput-wide p2, p5, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 280
    iget-wide p2, p5, Landroid/content/pm/PackageStats;->externalCacheSize:J

    const/4 p4, 0x5

    aget-wide v0, p1, p4

    add-long/2addr p2, v0

    iput-wide p2, p5, Landroid/content/pm/PackageStats;->externalCacheSize:J
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3d} :catch_3f

    .line 283
    nop

    .line 284
    return-void

    .line 281
    :catch_3f
    move-exception p1

    .line 282
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 548
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1

    .line 549
    :cond_a
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 551
    :try_start_11
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/os/IInstalld;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object p1
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1c} :catch_1d

    return-object p1

    .line 552
    :catch_1d
    move-exception p1

    .line 553
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public idmap(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 359
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 360
    :cond_7
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 361
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p2}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 363
    :try_start_15
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IInstalld;->idmap(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1c

    .line 366
    nop

    .line 367
    return-void

    .line 364
    :catch_1c
    move-exception p1

    .line 365
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public installApkVerity(Ljava/lang/String;Ljava/io/FileDescriptor;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 511
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 512
    :cond_7
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 514
    :try_start_e
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IInstalld;->installApkVerity(Ljava/lang/String;Ljava/io/FileDescriptor;I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_15

    .line 517
    nop

    .line 518
    return-void

    .line 515
    :catch_15
    move-exception p1

    .line 516
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public invalidateMounts()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 578
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 580
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0}, Landroid/os/IInstalld;->invalidateMounts()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_e

    .line 583
    nop

    .line 584
    return-void

    .line 581
    :catch_e
    move-exception v0

    .line 582
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v0

    throw v0
.end method

.method public isQuotaSupported(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 587
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 589
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1}, Landroid/os/IInstalld;->isQuotaSupported(Ljava/lang/String;)Z

    move-result p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return p1

    .line 590
    :catch_f
    move-exception p1

    .line 591
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public synthetic lambda$connect$0$Installer()V
    .registers 1

    .line 152
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->connect()V

    .line 153
    return-void
.end method

.method public linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 475
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 476
    :cond_7
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p2}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 477
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p3}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 479
    :try_start_15
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IInstalld;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1c

    .line 482
    nop

    .line 483
    return-void

    .line 480
    :catch_1c
    move-exception p1

    .line 481
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 454
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 455
    :cond_7
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p3}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 457
    :try_start_e
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_15

    .line 460
    nop

    .line 461
    return-void

    .line 458
    :catch_15
    move-exception p1

    .line 459
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public mergeProfiles(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 328
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 330
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IInstalld;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_e} :catch_f

    return p1

    .line 331
    :catch_f
    move-exception p1

    .line 332
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 198
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 200
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/os/IInstalld;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_e

    .line 203
    nop

    .line 204
    return-void

    .line 201
    :catch_e
    move-exception p1

    .line 202
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public migrateLegacyObbData()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 694
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 697
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0}, Landroid/os/IInstalld;->migrateLegacyObbData()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_f

    .line 698
    const/4 v0, 0x1

    return v0

    .line 699
    :catch_f
    move-exception v0

    .line 700
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v0

    throw v0
.end method

.method public moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 487
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 488
    :cond_7
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 489
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p3}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 491
    :try_start_15
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2, p3}, Landroid/os/IInstalld;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1a} :catch_1c

    .line 494
    nop

    .line 495
    return-void

    .line 492
    :catch_1c
    move-exception p1

    .line 493
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 238
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 240
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_13} :catch_15

    .line 244
    nop

    .line 245
    return-void

    .line 242
    :catch_15
    move-exception v0

    .line 243
    invoke-static {v0}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object v0

    throw v0
.end method

.method public onStart()V
    .registers 2

    .line 120
    iget-boolean v0, p0, Lcom/android/server/pm/Installer;->mIsolated:Z

    if-eqz v0, :cond_8

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    goto :goto_b

    .line 123
    :cond_8
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->connect()V

    .line 125
    :goto_b
    return-void
.end method

.method public prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 597
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 598
    :cond_8
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p5}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 599
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p6}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 601
    :try_start_16
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_22} :catch_23

    return p1

    .line 603
    :catch_23
    move-exception p1

    .line 604
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 533
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    array-length v2, p4

    if-ge v1, v2, :cond_d

    .line 534
    aget-object v2, p4, v1

    invoke-static {v2}, Lcom/android/server/pm/Installer;->assertValidInstructionSet(Ljava/lang/String;)V

    .line 533
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 536
    :cond_d
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v1

    if-nez v1, :cond_14

    return v0

    .line 537
    :cond_14
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 539
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_27} :catch_28

    return p1

    .line 541
    :catch_28
    move-exception p1

    .line 542
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public removeIdmap(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 370
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 371
    :cond_7
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 373
    :try_start_e
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1}, Landroid/os/IInstalld;->removeIdmap(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_15

    .line 376
    nop

    .line 377
    return-void

    .line 374
    :catch_15
    move-exception p1

    .line 375
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public restoreAppDataSnapshot(Ljava/lang/String;ILjava/lang/String;III)Z
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 648
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    .line 651
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    const/4 v1, 0x0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Landroid/os/IInstalld;->restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_16

    .line 653
    const/4 p1, 0x1

    return p1

    .line 654
    :catch_16
    move-exception p1

    .line 655
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 190
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Landroid/os/IInstalld;->restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12} :catch_14

    .line 193
    nop

    .line 194
    return-void

    .line 191
    :catch_14
    move-exception p1

    .line 192
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public rmPackageDir(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 391
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 392
    :cond_7
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 394
    :try_start_e
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1}, Landroid/os/IInstalld;->rmPackageDir(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_15

    .line 397
    nop

    .line 398
    return-void

    .line 395
    :catch_15
    move-exception p1

    .line 396
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public rmdex(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 380
    invoke-static {p2}, Lcom/android/server/pm/Installer;->assertValidInstructionSet(Ljava/lang/String;)V

    .line 381
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 382
    :cond_a
    invoke-static {}, Ldalvik/system/BlockGuard;->getVmPolicy()Ldalvik/system/BlockGuard$VmPolicy;

    move-result-object v0

    invoke-interface {v0, p1}, Ldalvik/system/BlockGuard$VmPolicy;->onPathAccess(Ljava/lang/String;)V

    .line 384
    :try_start_11
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    invoke-interface {v0, p1, p2}, Landroid/os/IInstalld;->rmdex(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_18

    .line 387
    nop

    .line 388
    return-void

    .line 385
    :catch_18
    move-exception p1

    .line 386
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public setAppQuota(Ljava/lang/String;IIJ)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 298
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 300
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/os/IInstalld;->setAppQuota(Ljava/lang/String;IIJ)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_12

    .line 303
    nop

    .line 304
    return-void

    .line 301
    :catch_12
    move-exception p1

    .line 302
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method

.method public setWarnIfHeld(Ljava/lang/Object;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/android/server/pm/Installer;->mWarnIfHeld:Ljava/lang/Object;

    .line 116
    return-void
.end method

.method public snapshotAppData(Ljava/lang/String;III)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/Installer$InstallerException;
        }
    .end annotation

    .line 623
    invoke-direct {p0}, Lcom/android/server/pm/Installer;->checkBeforeRemote()Z

    move-result v0

    if-nez v0, :cond_9

    const-wide/16 p1, 0x0

    return-wide p1

    .line 626
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/android/server/pm/Installer;->mInstalld:Landroid/os/IInstalld;

    const/4 v1, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/os/IInstalld;->snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J

    move-result-wide p1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_14} :catch_15

    return-wide p1

    .line 627
    :catch_15
    move-exception p1

    .line 628
    invoke-static {p1}, Lcom/android/server/pm/Installer$InstallerException;->from(Ljava/lang/Exception;)Lcom/android/server/pm/Installer$InstallerException;

    move-result-object p1

    throw p1
.end method
