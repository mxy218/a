.class public Lcom/android/server/DynamicSystemService;
.super Landroid/os/image/IDynamicSystemService$Stub;
.source "DynamicSystemService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final GSID_ROUGH_TIMEOUT_MS:I = 0x2000

.field private static final NO_SERVICE_ERROR:Ljava/lang/String; = "no gsiservice"

.field private static final PATH_DEFAULT:Ljava/lang/String; = "/data/gsi"

.field private static final TAG:Ljava/lang/String; = "DynamicSystemService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private volatile mGsiService:Landroid/gsi/IGsiService;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 50
    invoke-direct {p0}, Landroid/os/image/IDynamicSystemService$Stub;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/DynamicSystemService;->mContext:Landroid/content/Context;

    .line 52
    return-void
.end method

.method private checkPermission()V
    .registers 3

    .line 106
    iget-object v0, p0, Lcom/android/server/DynamicSystemService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DYNAMIC_SYSTEM"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    .line 111
    return-void

    .line 109
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires MANAGE_DYNAMIC_SYSTEM permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static connect(Landroid/os/IBinder$DeathRecipient;)Landroid/gsi/IGsiService;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const-string v0, "gsiservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 56
    if-nez v0, :cond_a

    .line 57
    const/4 p0, 0x0

    return-object p0

    .line 63
    :cond_a
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 64
    invoke-static {v0}, Landroid/gsi/IGsiService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiService;

    move-result-object p0

    return-object p0
.end method

.method private getGsiService()Landroid/gsi/IGsiService;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->checkPermission()V

    .line 79
    const-string v0, "init.svc.gsid"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "running"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 80
    const-string v0, "ctl.start"

    const-string v1, "gsid"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_19
    const/16 v0, 0x40

    :goto_1b
    const/16 v1, 0x4000

    if-gt v0, v1, :cond_64

    .line 84
    monitor-enter p0

    .line 85
    :try_start_20
    iget-object v1, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    if-nez v1, :cond_2a

    .line 86
    invoke-static {p0}, Lcom/android/server/DynamicSystemService;->connect(Landroid/os/IBinder$DeathRecipient;)Landroid/gsi/IGsiService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    .line 88
    :cond_2a
    iget-object v1, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    if-eqz v1, :cond_32

    .line 89
    iget-object v0, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    monitor-exit p0

    return-object v0

    .line 91
    :cond_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_61

    .line 94
    :try_start_33
    const-string v1, "DynamicSystemService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GsiService is not ready, wait for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    int-to-long v1, v0

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_33 .. :try_end_53} :catch_57

    .line 99
    nop

    .line 83
    shl-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 96
    :catch_57
    move-exception v0

    .line 97
    const-string v0, "DynamicSystemService"

    const-string v1, "Interrupted when waiting for GSID"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 91
    :catchall_61
    move-exception v0

    :try_start_62
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v0

    .line 102
    :cond_64
    new-instance v0, Landroid/os/RemoteException;

    const-string/jumbo v1, "no gsiservice"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abort()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    invoke-interface {v0}, Landroid/gsi/IGsiService;->cancelGsiInstall()Z

    move-result v0

    return v0
.end method

.method public binderDied()V
    .registers 3

    .line 70
    const-string v0, "DynamicSystemService"

    const-string v1, "gsiservice died; reconnecting"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    monitor-enter p0

    .line 72
    const/4 v0, 0x0

    :try_start_9
    iput-object v0, p0, Lcom/android/server/DynamicSystemService;->mGsiService:Landroid/gsi/IGsiService;

    .line 73
    monitor-exit p0

    .line 74
    return-void

    .line 73
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public commit()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/gsi/IGsiService;->setGsiBootable(Z)I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method public getInstallationProgress()Landroid/gsi/GsiProgress;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    invoke-interface {v0}, Landroid/gsi/IGsiService;->getInstallProgress()Landroid/gsi/GsiProgress;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    invoke-interface {v0}, Landroid/gsi/IGsiService;->isGsiEnabled()Z

    move-result v0

    return v0
.end method

.method public isInUse()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    const-string v0, "gsid"

    const-string v1, "ctl.stop"

    const-string v2, "init.svc.gsid"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "running"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 156
    nop

    .line 159
    :try_start_12
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v3

    invoke-interface {v3}, Landroid/gsi/IGsiService;->isGsiRunning()Z

    move-result v3
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_22

    .line 161
    if-nez v2, :cond_21

    if-nez v3, :cond_21

    .line 162
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :cond_21
    return v3

    .line 161
    :catchall_22
    move-exception v3

    if-nez v2, :cond_28

    .line 162
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    throw v3
.end method

.method public isInstalled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    invoke-interface {v0}, Landroid/gsi/IGsiService;->isGsiInstalled()Z

    move-result v0

    return v0
.end method

.method public remove()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    invoke-interface {v0}, Landroid/gsi/IGsiService;->removeGsiInstall()Z

    move-result v0

    return v0
.end method

.method public setEnable(Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    .line 187
    if-eqz p1, :cond_1b

    .line 188
    invoke-interface {v0}, Landroid/gsi/IGsiService;->getGsiBootStatus()I

    move-result p1

    .line 189
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_11

    move p1, v2

    goto :goto_12

    :cond_11
    move p1, v3

    .line 190
    :goto_12
    invoke-interface {v0, p1}, Landroid/gsi/IGsiService;->setGsiBootable(Z)I

    move-result p1

    if-nez p1, :cond_19

    goto :goto_1a

    :cond_19
    move v2, v3

    :goto_1a
    return v2

    .line 192
    :cond_1b
    invoke-interface {v0}, Landroid/gsi/IGsiService;->disableGsiInstall()Z

    move-result p1

    return p1
.end method

.method public startInstallation(JJ)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    const-string/jumbo v0, "os.aot.path"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6b

    .line 118
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 119
    const/16 v3, 0x100

    .line 120
    invoke-static {v1, v3}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v1

    .line 121
    array-length v3, v1

    move v4, v2

    :goto_1a
    if-ge v4, v3, :cond_4c

    aget-object v5, v1, v4

    .line 122
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v6

    if-eqz v6, :cond_25

    goto :goto_49

    .line 123
    :cond_25
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-nez v6, :cond_2c

    goto :goto_49

    .line 124
    :cond_2c
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "mounted"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3a

    goto :goto_49

    .line 125
    :cond_3a
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v5

    .line 126
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_49

    .line 127
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 128
    goto :goto_4c

    .line 121
    :cond_49
    :goto_49
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 131
    :cond_4c
    :goto_4c
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_54

    .line 132
    const-string v0, "/data/gsi"

    .line 134
    :cond_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startInstallation -> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "DynamicSystemService"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_6b
    new-instance v1, Landroid/gsi/GsiInstallParams;

    invoke-direct {v1}, Landroid/gsi/GsiInstallParams;-><init>()V

    .line 137
    iput-object v0, v1, Landroid/gsi/GsiInstallParams;->installDir:Ljava/lang/String;

    .line 138
    iput-wide p1, v1, Landroid/gsi/GsiInstallParams;->gsiSize:J

    .line 139
    iput-wide p3, v1, Landroid/gsi/GsiInstallParams;->userdataSize:J

    .line 140
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/gsi/IGsiService;->beginGsiInstall(Landroid/gsi/GsiInstallParams;)I

    move-result p1

    if-nez p1, :cond_81

    const/4 v2, 0x1

    :cond_81
    return v2
.end method

.method public write([B)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    invoke-direct {p0}, Lcom/android/server/DynamicSystemService;->getGsiService()Landroid/gsi/IGsiService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/gsi/IGsiService;->commitGsiChunkFromMemory([B)Z

    move-result p1

    return p1
.end method
