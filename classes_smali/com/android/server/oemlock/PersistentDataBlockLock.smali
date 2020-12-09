.class Lcom/android/server/oemlock/PersistentDataBlockLock;
.super Lcom/android/server/oemlock/OemLock;
.source "PersistentDataBlockLock.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OemLock"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Lcom/android/server/oemlock/OemLock;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private disallowUnlockIfNotUnlocked()V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    .line 101
    const-string/jumbo v1, "persistent_data_block"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 102
    if-nez v0, :cond_15

    .line 103
    const-string v0, "OemLock"

    const-string v1, "PersistentDataBlock is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void

    .line 106
    :cond_15
    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getFlashLockState()I

    move-result v1

    if-eqz v1, :cond_1f

    .line 107
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/service/persistentdata/PersistentDataBlockManager;->setOemUnlockEnabled(Z)V

    .line 109
    :cond_1f
    return-void
.end method


# virtual methods
.method getLockName()Ljava/lang/String;
    .registers 2

    .line 45
    const-string v0, ""

    return-object v0
.end method

.method isOemUnlockAllowedByCarrier()Z
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 67
    const-string/jumbo v2, "no_oem_unlock"

    invoke-virtual {v0, v2, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    .line 66
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isOemUnlockAllowedByDevice()Z
    .registers 3

    .line 85
    iget-object v0, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    .line 86
    const-string/jumbo v1, "persistent_data_block"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 87
    if-nez v0, :cond_16

    .line 88
    const-string v0, "OemLock"

    const-string v1, "PersistentDataBlock is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v0, 0x0

    return v0

    .line 91
    :cond_16
    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getOemUnlockEnabled()Z

    move-result v0

    return v0
.end method

.method setOemUnlockAllowedByCarrier(Z[B)V
    .registers 6

    .line 51
    if-eqz p2, :cond_9

    .line 52
    const-string p2, "OemLock"

    const-string v0, "Signature provided but is not being used"

    invoke-static {p2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_9
    iget-object p2, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    xor-int/lit8 v0, p1, 0x1

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string/jumbo v2, "no_oem_unlock"

    invoke-virtual {p2, v2, v0, v1}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 59
    if-nez p1, :cond_1e

    .line 60
    invoke-direct {p0}, Lcom/android/server/oemlock/PersistentDataBlockLock;->disallowUnlockIfNotUnlocked()V

    .line 62
    :cond_1e
    return-void
.end method

.method setOemUnlockAllowedByDevice(Z)V
    .registers 4

    .line 74
    iget-object v0, p0, Lcom/android/server/oemlock/PersistentDataBlockLock;->mContext:Landroid/content/Context;

    .line 75
    const-string/jumbo v1, "persistent_data_block"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 76
    if-nez v0, :cond_15

    .line 77
    const-string p1, "OemLock"

    const-string v0, "PersistentDataBlock is not supported on this device"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void

    .line 80
    :cond_15
    invoke-virtual {v0, p1}, Landroid/service/persistentdata/PersistentDataBlockManager;->setOemUnlockEnabled(Z)V

    .line 81
    return-void
.end method
