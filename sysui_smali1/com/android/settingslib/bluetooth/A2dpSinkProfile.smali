.class final Lcom/android/settingslib/bluetooth/A2dpSinkProfile;
.super Ljava/lang/Object;
.source "A2dpSinkProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/A2dpSinkProfile$A2dpSinkServiceListener;
    }
.end annotation


# static fields
.field static final SRC_UUIDS:[Landroid/os/ParcelUuid;


# instance fields
.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothA2dpSink;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    .line 42
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->SRC_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .registers 5

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 92
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 93
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    new-instance p3, Lcom/android/settingslib/bluetooth/A2dpSinkProfile$A2dpSinkServiceListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settingslib/bluetooth/A2dpSinkProfile$A2dpSinkServiceListener;-><init>(Lcom/android/settingslib/bluetooth/A2dpSinkProfile;Lcom/android/settingslib/bluetooth/A2dpSinkProfile$1;)V

    const/16 p0, 0xb

    invoke-virtual {p2, p1, p3, p0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/bluetooth/A2dpSinkProfile;)Landroid/bluetooth/BluetoothA2dpSink;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settingslib/bluetooth/A2dpSinkProfile;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settingslib/bluetooth/A2dpSinkProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settingslib/bluetooth/A2dpSinkProfile;Z)Z
    .registers 2

    .line 34
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public accessProfileEnabled()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2

    .line 116
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 119
    :cond_6
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4

    .line 123
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 127
    :cond_6
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_13

    .line 128
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothA2dpSink;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 130
    :cond_13
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method protected finalize()V
    .registers 5

    const-string v0, "A2dpSinkProfile"

    const-string v1, "finalize()"

    .line 212
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-eqz v1, :cond_20

    .line 215
    :try_start_b
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    .line 217
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_1a

    goto :goto_20

    :catchall_1a
    move-exception p0

    const-string v1, "Error cleaning up A2DP proxy"

    .line 219
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_20
    :goto_20
    return-void
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .registers 2

    .line 134
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 137
    :cond_6
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getProfileId()I
    .registers 1

    const/16 p0, 0xb

    return p0
.end method

.method isA2dpPlaying()Z
    .registers 4

    .line 168
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 171
    :cond_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_20

    .line 173
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothA2dpSink;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    return v1
.end method

.method public isAutoConnectable()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3

    .line 141
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 144
    :cond_6
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-lez p0, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method public isProfileReady()Z
    .registers 1

    .line 81
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mIsProfileReady:Z

    return p0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 4

    .line 155
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p2, :cond_15

    .line 159
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dpSink;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    const/16 v0, 0x64

    if-ge p2, v0, :cond_19

    .line 160
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->mService:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothA2dpSink;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_19

    :cond_15
    const/4 p0, 0x0

    .line 163
    invoke-virtual {v0, p1, p0}, Landroid/bluetooth/BluetoothA2dpSink;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_19
    :goto_19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "A2DPSink"

    return-object p0
.end method
