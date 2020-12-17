.class public Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
.super Ljava/lang/Object;
.source "LocalBluetoothAdapter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mLastScan:J

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mState:I


# direct methods
.method private constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 52
    iput v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mState:I

    .line 59
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method static declared-synchronized getInstance()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .registers 3

    const-class v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    monitor-enter v0

    .line 73
    :try_start_3
    sget-object v1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v1, :cond_14

    .line 74
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 76
    new-instance v2, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-direct {v2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    sput-object v2, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 80
    :cond_14
    sget-object v1, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_18

    monitor-exit v0

    return-object v1

    :catchall_18
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public cancelDiscovery()V
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    return-void
.end method

.method public enable()Z
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result p0

    return p0
.end method

.method public getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getBluetoothState()I
    .registers 2

    monitor-enter p0

    .line 197
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->syncBluetoothState()Z

    .line 198
    iget v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mState:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBondedDevices()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getConnectionState()I
    .registers 1

    .line 139
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result p0

    return p0
.end method

.method public getState()I
    .registers 1

    .line 123
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p0

    return p0
.end method

.method public isDiscovering()Z
    .registers 1

    .line 131
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result p0

    return p0
.end method

.method public setBluetoothEnabled(Z)Z
    .registers 3

    if-eqz p1, :cond_9

    .line 230
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v0

    goto :goto_f

    .line 231
    :cond_9
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v0

    :goto_f
    if-eqz v0, :cond_1c

    if-eqz p1, :cond_16

    const/16 p1, 0xb

    goto :goto_18

    :cond_16
    const/16 p1, 0xd

    .line 234
    :goto_18
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    goto :goto_1f

    .line 243
    :cond_1c
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->syncBluetoothState()Z

    :goto_1f
    return v0
.end method

.method setBluetoothStateInt(I)V
    .registers 3

    .line 202
    monitor-enter p0

    .line 203
    :try_start_1
    iget v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mState:I

    if-ne v0, p1, :cond_7

    .line 204
    monitor-exit p0

    return-void

    .line 206
    :cond_7
    iput p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mState:I

    .line 207
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_16

    const/16 v0, 0xc

    if-ne p1, v0, :cond_15

    .line 212
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz p0, :cond_15

    .line 213
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->setBluetoothStateOn()V

    :cond_15
    return-void

    :catchall_16
    move-exception p1

    .line 207
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw p1
.end method

.method setProfileManager(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-void
.end method

.method public startScanning(Z)V
    .registers 6

    .line 164
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-nez v0, :cond_45

    if-nez p1, :cond_37

    .line 168
    iget-wide v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mLastScan:J

    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_19

    return-void

    .line 173
    :cond_19
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 174
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isA2dpPlaying()Z

    move-result p1

    if-eqz p1, :cond_28

    return-void

    .line 177
    :cond_28
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpSinkProfile()Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 178
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->isA2dpPlaying()Z

    move-result p1

    if-eqz p1, :cond_37

    return-void

    .line 183
    :cond_37
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    move-result p1

    if-eqz p1, :cond_45

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mLastScan:J

    :cond_45
    return-void
.end method

.method public stopScanning()V
    .registers 2

    .line 190
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 191
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    :cond_d
    return-void
.end method

.method syncBluetoothState()Z
    .registers 3

    .line 220
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 221
    iget v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mState:I

    if-eq v0, v1, :cond_15

    .line 222
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method
