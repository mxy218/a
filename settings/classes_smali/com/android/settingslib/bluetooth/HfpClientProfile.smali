.class final Lcom/android/settingslib/bluetooth/HfpClientProfile;
.super Ljava/lang/Object;
.source "HfpClientProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/HfpClientProfile$HfpClientServiceListener;
    }
.end annotation


# static fields
.field static final SRC_UUIDS:[Landroid/os/ParcelUuid;


# instance fields
.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothHeadsetClient;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    .line 45
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->SRC_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .registers 5

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 99
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 100
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    new-instance p3, Lcom/android/settingslib/bluetooth/HfpClientProfile$HfpClientServiceListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settingslib/bluetooth/HfpClientProfile$HfpClientServiceListener;-><init>(Lcom/android/settingslib/bluetooth/HfpClientProfile;Lcom/android/settingslib/bluetooth/HfpClientProfile$1;)V

    const/16 p0, 0x10

    invoke-virtual {p2, p1, p3, p0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/bluetooth/HfpClientProfile;)Landroid/bluetooth/BluetoothHeadsetClient;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settingslib/bluetooth/HfpClientProfile;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settingslib/bluetooth/HfpClientProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settingslib/bluetooth/HfpClientProfile;Z)Z
    .registers 2

    .line 37
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mIsProfileReady:Z

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

    .line 126
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 129
    :cond_6
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4

    .line 134
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 138
    :cond_6
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_13

    .line 139
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHeadsetClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 141
    :cond_13
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method protected finalize()V
    .registers 5

    const-string v0, "HfpClientProfile"

    const-string v1, "finalize()"

    .line 218
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v1, :cond_20

    .line 221
    :try_start_b
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/16 v2, 0x10

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    .line 223
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_1a

    goto :goto_20

    :catchall_1a
    move-exception p0

    const-string v1, "Error cleaning up HfpClient proxy"

    .line 225
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_20
    :goto_20
    return-void
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .registers 2

    .line 146
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 149
    :cond_6
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .registers 2

    .line 214
    sget p0, Lcom/android/settingslib/R$drawable;->ic_bt_headset_hfp:I

    return p0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .registers 2

    .line 194
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_profile_headset:I

    return p0
.end method

.method public getOrdinal()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getProfileId()I
    .registers 1

    const/16 p0, 0x10

    return p0
.end method

.method public isAutoConnectable()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3

    .line 154
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 157
    :cond_6
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-lez p0, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method public isProfileReady()Z
    .registers 1

    .line 88
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mIsProfileReady:Z

    return p0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 4

    .line 170
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p2, :cond_15

    .line 174
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    const/16 v0, 0x64

    if-ge p2, v0, :cond_19

    .line 175
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HfpClientProfile;->mService:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothHeadsetClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_19

    :cond_15
    const/4 p0, 0x0

    .line 178
    invoke-virtual {v0, p1, p0}, Landroid/bluetooth/BluetoothHeadsetClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_19
    :goto_19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "HEADSET_CLIENT"

    return-object p0
.end method
