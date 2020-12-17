.class public Lcom/android/settingslib/bluetooth/MapProfile;
.super Ljava/lang/Object;
.source "MapProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;
    }
.end annotation


# static fields
.field static final UUIDS:[Landroid/os/ParcelUuid;

.field private static V:Z = true


# instance fields
.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothMap;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/os/ParcelUuid;

    .line 47
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settingslib/bluetooth/MapProfile;->UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .registers 5

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 108
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 109
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    new-instance p3, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;-><init>(Lcom/android/settingslib/bluetooth/MapProfile;Lcom/android/settingslib/bluetooth/MapProfile$1;)V

    const/16 p0, 0x9

    invoke-virtual {p2, p1, p3, p0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 37
    sget-boolean v0, Lcom/android/settingslib/bluetooth/MapProfile;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settingslib/bluetooth/MapProfile;)Landroid/bluetooth/BluetoothMap;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settingslib/bluetooth/MapProfile;Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothMap;
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settingslib/bluetooth/MapProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settingslib/bluetooth/MapProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/settingslib/bluetooth/MapProfile;Z)Z
    .registers 2

    .line 37
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mIsProfileReady:Z

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

    const-string p0, "MapProfile"

    const-string p1, "connect() - should not get called"

    .line 122
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4

    .line 127
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 130
    :cond_6
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothMap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_13

    .line 131
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothMap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 133
    :cond_13
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothMap;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method protected finalize()V
    .registers 5

    const-string v0, "MapProfile"

    const-string v1, "finalize()"

    .line 211
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    if-eqz v1, :cond_20

    .line 214
    :try_start_b
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    .line 216
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_1a

    goto :goto_20

    :catchall_1a
    move-exception p0

    const-string v1, "Error cleaning up MAP proxy"

    .line 218
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_20
    :goto_20
    return-void
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .registers 2

    .line 137
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 140
    :cond_6
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothMap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getProfileId()I
    .registers 1

    const/16 p0, 0x9

    return p0
.end method

.method public isAutoConnectable()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3

    .line 144
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 147
    :cond_6
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothMap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-lez p0, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p2, :cond_15

    .line 162
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothMap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    const/16 v0, 0x64

    if-ge p2, v0, :cond_19

    .line 163
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothMap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_19

    :cond_15
    const/4 p0, 0x0

    .line 166
    invoke-virtual {v0, p1, p0}, Landroid/bluetooth/BluetoothMap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_19
    :goto_19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "MAP"

    return-object p0
.end method
