.class public Lcom/android/settingslib/bluetooth/HearingAidProfile;
.super Ljava/lang/Object;
.source "HearingAidProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;
    }
.end annotation


# static fields
.field private static V:Z = true


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothHearingAid;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .registers 5

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 96
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 97
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    new-instance p3, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;-><init>(Lcom/android/settingslib/bluetooth/HearingAidProfile;Lcom/android/settingslib/bluetooth/HearingAidProfile$1;)V

    const/16 p0, 0x15

    invoke-virtual {p2, p1, p3, p0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/bluetooth/HearingAidProfile;)Landroid/bluetooth/BluetoothHearingAid;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settingslib/bluetooth/HearingAidProfile;Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothHearingAid;
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settingslib/bluetooth/HearingAidProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object p0
.end method

.method static synthetic access$200()Z
    .registers 1

    .line 32
    sget-boolean v0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->V:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/settingslib/bluetooth/HearingAidProfile;Z)Z
    .registers 2

    .line 32
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mIsProfileReady:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settingslib/bluetooth/HearingAidProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object p0
.end method

.method private getDevicesByStates([I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p0, :cond_b

    .line 143
    new-instance p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    .line 145
    :cond_b
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHearingAid;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public accessProfileEnabled()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2

    .line 149
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 150
    :cond_6
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHearingAid;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 156
    :cond_6
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHearingAid;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_13

    .line 157
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothHearingAid;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 159
    :cond_13
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHearingAid;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method protected finalize()V
    .registers 5

    const-string v0, "HearingAidProfile"

    const-string v1, "finalize()"

    .line 266
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-eqz v1, :cond_20

    .line 269
    :try_start_b
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    const/16 v2, 0x15

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    const/4 v1, 0x0

    .line 271
    iput-object v1, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_1a

    goto :goto_20

    :catchall_1a
    move-exception p0

    const-string v1, "Error cleaning up Hearing Aid proxy"

    .line 273
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_20
    :goto_20
    return-void
.end method

.method public getActiveDevices()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p0, :cond_a

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 176
    :cond_a
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHearingAid;->getActiveDevices()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getConnectableDevices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 134
    fill-array-data v0, :array_c

    invoke-direct {p0, v0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getDevicesByStates([I)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :array_c
    .array-data 4
        0x0
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public getConnectedDevices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 118
    fill-array-data v0, :array_c

    invoke-direct {p0, v0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getDevicesByStates([I)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :array_c
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .registers 2

    .line 163
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 166
    :cond_6
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHearingAid;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    return p0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .registers 2

    const p0, 0x1080323

    return p0
.end method

.method public getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J
    .registers 2

    .line 215
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p0, :cond_7

    const-wide/16 p0, 0x0

    return-wide p0

    .line 218
    :cond_7
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHearingAid;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .registers 2

    .line 244
    sget p0, Lcom/android/settingslib/R$string;->bluetooth_profile_hearing_aid:I

    return p0
.end method

.method public getOrdinal()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getProfileId()I
    .registers 1

    const/16 p0, 0x15

    return p0
.end method

.method public isAutoConnectable()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 3

    .line 180
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    return v0

    .line 181
    :cond_6
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHearingAid;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    if-lez p0, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0
.end method

.method public isProfileReady()Z
    .registers 1

    .line 84
    iget-boolean p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mIsProfileReady:Z

    return p0
.end method

.method public setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .registers 2

    .line 170
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 171
    :cond_6
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHearingAid;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 4

    .line 190
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-eqz p2, :cond_15

    .line 192
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHearingAid;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    const/16 v0, 0x64

    if-ge p2, v0, :cond_19

    .line 193
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile;->mService:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothHearingAid;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_19

    :cond_15
    const/4 p0, 0x0

    .line 196
    invoke-virtual {v0, p1, p0}, Landroid/bluetooth/BluetoothHearingAid;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_19
    :goto_19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "HearingAid"

    return-object p0
.end method
