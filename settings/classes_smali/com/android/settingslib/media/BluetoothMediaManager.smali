.class public Lcom/android/settingslib/media/BluetoothMediaManager;
.super Lcom/android/settingslib/media/MediaManager;
.source "BluetoothMediaManager.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/media/BluetoothMediaManager$DeviceAttributeChangeCallback;
    }
.end annotation


# instance fields
.field private mCachedBluetoothDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private final mDeviceAttributeChangeCallback:Lcom/android/settingslib/media/BluetoothMediaManager$DeviceAttributeChangeCallback;

.field private mIsA2dpProfileReady:Z

.field private mIsHearingAidProfileReady:Z

.field private mLastAddedDevice:Lcom/android/settingslib/media/MediaDevice;

.field private mLastRemovedDevice:Lcom/android/settingslib/media/MediaDevice;

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Landroid/app/Notification;)V
    .registers 4

    .line 59
    invoke-direct {p0, p1, p3}, Lcom/android/settingslib/media/MediaManager;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 44
    new-instance p1, Lcom/android/settingslib/media/BluetoothMediaManager$DeviceAttributeChangeCallback;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/android/settingslib/media/BluetoothMediaManager$DeviceAttributeChangeCallback;-><init>(Lcom/android/settingslib/media/BluetoothMediaManager;Lcom/android/settingslib/media/BluetoothMediaManager$1;)V

    iput-object p1, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mDeviceAttributeChangeCallback:Lcom/android/settingslib/media/BluetoothMediaManager$DeviceAttributeChangeCallback;

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mIsA2dpProfileReady:Z

    .line 55
    iput-boolean p1, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mIsHearingAidProfileReady:Z

    .line 61
    iput-object p2, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 62
    iget-object p1, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 63
    iget-object p1, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mCachedBluetoothDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-void
.end method

.method private addConnectableA2dpDevices()V
    .registers 8

    .line 92
    iget-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    const-string v1, "BluetoothMediaManager"

    if-nez v0, :cond_10

    const-string p0, "addConnectableA2dpDevices() a2dp profile is null!"

    .line 94
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 98
    :cond_10
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectableDevices()Ljava/util/List;

    move-result-object v2

    .line 100
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_87

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 101
    iget-object v4, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mCachedBluetoothDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 102
    invoke-virtual {v4, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    if-nez v4, :cond_45

    .line 105
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t found CachedBluetoothDevice : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 109
    :cond_45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addConnectableA2dpDevices() device : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", is connected : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", is preferred : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0, v3}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v0, v3}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/16 v3, 0xc

    .line 114
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v5

    if-ne v3, v5, :cond_18

    .line 115
    invoke-direct {p0, v4}, Lcom/android/settingslib/media/BluetoothMediaManager;->addMediaDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_18

    .line 119
    :cond_87
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isProfileReady()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mIsA2dpProfileReady:Z

    return-void
.end method

.method private addConnectableHearingAidDevices()V
    .registers 10

    .line 123
    iget-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v0

    const-string v1, "BluetoothMediaManager"

    if-nez v0, :cond_10

    const-string p0, "addConnectableHearingAidDevices() hap profile is null!"

    .line 125
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 129
    :cond_10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getConnectableDevices()Ljava/util/List;

    move-result-object v3

    .line 132
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1d
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 133
    iget-object v5, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mCachedBluetoothDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 134
    invoke-virtual {v5, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    if-nez v5, :cond_4a

    .line 137
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t found CachedBluetoothDevice : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 141
    :cond_4a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addConnectableHearingAidDevices() device : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", is connected : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", is preferred : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0, v4}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 141
    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-virtual {v0, v4}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v6

    .line 149
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1d

    invoke-virtual {v0, v4}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/16 v4, 0xc

    .line 150
    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v8

    if-ne v4, v8, :cond_1d

    .line 151
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    invoke-direct {p0, v5}, Lcom/android/settingslib/media/BluetoothMediaManager;->addMediaDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto/16 :goto_1d

    .line 156
    :cond_a2
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->isProfileReady()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mIsHearingAidProfileReady:Z

    return-void
.end method

.method private addMediaDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .registers 4

    .line 160
    invoke-static {p1}, Lcom/android/settingslib/media/MediaDeviceUtils;->getId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/media/MediaManager;->findMediaDevice(Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 162
    new-instance v0, Lcom/android/settingslib/media/BluetoothMediaDevice;

    iget-object v1, p0, Lcom/android/settingslib/media/MediaManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/settingslib/media/BluetoothMediaDevice;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 163
    iget-object v1, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mDeviceAttributeChangeCallback:Lcom/android/settingslib/media/BluetoothMediaManager$DeviceAttributeChangeCallback;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 164
    iput-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mLastAddedDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 165
    iget-object p0, p0, Lcom/android/settingslib/media/MediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    return-void
.end method

.method private addServiceListenerIfNecessary()V
    .registers 2

    .line 80
    iget-boolean v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mIsA2dpProfileReady:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mIsHearingAidProfileReady:Z

    if-nez v0, :cond_d

    .line 81
    :cond_8
    iget-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :cond_d
    return-void
.end method

.method private buildBluetoothDeviceList()V
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/settingslib/media/MediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 87
    invoke-direct {p0}, Lcom/android/settingslib/media/BluetoothMediaManager;->addConnectableA2dpDevices()V

    .line 88
    invoke-direct {p0}, Lcom/android/settingslib/media/BluetoothMediaManager;->addConnectableHearingAidDevices()V

    return-void
.end method

.method private dispatchDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .registers 3

    .line 224
    iget-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mLastAddedDevice:Lcom/android/settingslib/media/MediaDevice;

    if-eqz v0, :cond_15

    .line 225
    invoke-static {p1}, Lcom/android/settingslib/media/MediaDeviceUtils;->getId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mLastAddedDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_15

    .line 226
    iget-object p1, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mLastAddedDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/MediaManager;->dispatchDeviceAdded(Lcom/android/settingslib/media/MediaDevice;)V

    :cond_15
    return-void
.end method

.method private findActiveHearingAidDevice()Lcom/android/settingslib/media/MediaDevice;
    .registers 3

    .line 305
    iget-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 308
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getActiveDevices()Ljava/util/List;

    move-result-object v0

    .line 309
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_10

    .line 311
    invoke-static {v1}, Lcom/android/settingslib/media/MediaDeviceUtils;->getId(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/media/MediaManager;->findMediaDevice(Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object p0

    return-object p0

    :cond_27
    const/4 p0, 0x0

    return-object p0
.end method

.method private isCachedDeviceConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z
    .registers 5

    .line 214
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedHearingAidDevice()Z

    move-result p0

    .line 215
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedA2dpDevice()Z

    move-result v0

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCachedDeviceConnected() cachedDevice : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", is hearing aid connected : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", is a2dp connected : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BluetoothMediaManager"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_35

    if-eqz v0, :cond_33

    goto :goto_35

    :cond_33
    const/4 p0, 0x0

    goto :goto_36

    :cond_35
    :goto_35
    const/4 p0, 0x1

    :goto_36
    return p0
.end method

.method private removeMediaDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .registers 4

    .line 239
    invoke-static {p1}, Lcom/android/settingslib/media/MediaDeviceUtils;->getId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/media/MediaManager;->findMediaDevice(Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 241
    iget-object v1, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mDeviceAttributeChangeCallback:Lcom/android/settingslib/media/BluetoothMediaManager$DeviceAttributeChangeCallback;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 242
    iput-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mLastRemovedDevice:Lcom/android/settingslib/media/MediaDevice;

    .line 243
    iget-object p0, p0, Lcom/android/settingslib/media/MediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_16
    return-void
.end method

.method private unregisterDeviceAttributeChangeCallback()V
    .registers 4

    .line 176
    iget-object v0, p0, Lcom/android/settingslib/media/MediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 177
    check-cast v1, Lcom/android/settingslib/media/BluetoothMediaDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/media/BluetoothMediaDevice;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mDeviceAttributeChangeCallback:Lcom/android/settingslib/media/BluetoothMediaManager$DeviceAttributeChangeCallback;

    .line 178
    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    goto :goto_6

    :cond_1c
    return-void
.end method

.method private updateMediaDeviceListIfNecessary(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .registers 4

    .line 264
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v1, v0, :cond_f

    .line 265
    invoke-direct {p0, p1}, Lcom/android/settingslib/media/BluetoothMediaManager;->removeMediaDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 266
    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/BluetoothMediaManager;->dispatchDeviceRemoved(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    goto :goto_1c

    .line 268
    :cond_f
    invoke-static {p1}, Lcom/android/settingslib/media/MediaDeviceUtils;->getId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/MediaManager;->findMediaDevice(Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 269
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaManager;->dispatchDataChanged()V

    :cond_1c
    :goto_1c
    return-void
.end method


# virtual methods
.method dispatchDeviceRemoved(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .registers 3

    .line 248
    iget-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mLastRemovedDevice:Lcom/android/settingslib/media/MediaDevice;

    if-eqz v0, :cond_15

    .line 249
    invoke-static {p1}, Lcom/android/settingslib/media/MediaDeviceUtils;->getId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mLastRemovedDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_15

    .line 250
    iget-object p1, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mLastRemovedDevice:Lcom/android/settingslib/media/MediaDevice;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/MediaManager;->dispatchDeviceRemoved(Lcom/android/settingslib/media/MediaDevice;)V

    :cond_15
    return-void
.end method

.method public onAclConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .registers 5

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAclConnectionStateChanged() device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BluetoothMediaManager"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-direct {p0, p1}, Lcom/android/settingslib/media/BluetoothMediaManager;->updateMediaDeviceListIfNecessary(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .registers 5

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onActiveDeviceChanged : device : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", profile : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMediaManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x15

    if-ne v0, p2, :cond_2d

    if-eqz p1, :cond_48

    .line 288
    invoke-static {p1}, Lcom/android/settingslib/media/MediaDeviceUtils;->getId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/MediaManager;->dispatchConnectedDeviceChanged(Ljava/lang/String;)V

    goto :goto_48

    :cond_2d
    const/4 v0, 0x2

    if-ne v0, p2, :cond_48

    .line 295
    invoke-direct {p0}, Lcom/android/settingslib/media/BluetoothMediaManager;->findActiveHearingAidDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object p2

    if-nez p1, :cond_41

    if-nez p2, :cond_3c

    const-string/jumbo p1, "phone_media_device_id_1"

    goto :goto_45

    .line 298
    :cond_3c
    invoke-virtual {p2}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_45

    .line 299
    :cond_41
    invoke-static {p1}, Lcom/android/settingslib/media/MediaDeviceUtils;->getId(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    .line 300
    :goto_45
    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/MediaManager;->dispatchConnectedDeviceChanged(Ljava/lang/String;)V

    :cond_48
    :goto_48
    return-void
.end method

.method public onAudioModeChanged()V
    .registers 1

    .line 202
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaManager;->dispatchDataChanged()V

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .registers 6

    const/16 v0, 0xc

    if-ne v0, p1, :cond_e

    .line 185
    invoke-direct {p0}, Lcom/android/settingslib/media/BluetoothMediaManager;->buildBluetoothDeviceList()V

    .line 186
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaManager;->dispatchDeviceListAdded()V

    .line 187
    invoke-direct {p0}, Lcom/android/settingslib/media/BluetoothMediaManager;->addServiceListenerIfNecessary()V

    goto :goto_41

    :cond_e
    const/16 v0, 0xa

    if-ne v0, p1, :cond_41

    .line 189
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 190
    iget-object v0, p0, Lcom/android/settingslib/media/MediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/media/MediaDevice;

    .line 191
    move-object v2, v1

    check-cast v2, Lcom/android/settingslib/media/BluetoothMediaDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/media/BluetoothMediaDevice;->getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mDeviceAttributeChangeCallback:Lcom/android/settingslib/media/BluetoothMediaManager$DeviceAttributeChangeCallback;

    .line 192
    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 193
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 195
    :cond_39
    iget-object v0, p0, Lcom/android/settingslib/media/MediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 196
    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/MediaManager;->dispatchDeviceListRemoved(Ljava/util/List;)V

    :cond_41
    :goto_41
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .registers 3

    .line 207
    invoke-direct {p0, p1}, Lcom/android/settingslib/media/BluetoothMediaManager;->isCachedDeviceConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 208
    invoke-direct {p0, p1}, Lcom/android/settingslib/media/BluetoothMediaManager;->addMediaDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 209
    invoke-direct {p0, p1}, Lcom/android/settingslib/media/BluetoothMediaManager;->dispatchDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_c
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .registers 3

    .line 232
    invoke-direct {p0, p1}, Lcom/android/settingslib/media/BluetoothMediaManager;->isCachedDeviceConnected(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 233
    invoke-direct {p0, p1}, Lcom/android/settingslib/media/BluetoothMediaManager;->removeMediaDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 234
    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/BluetoothMediaManager;->dispatchDeviceRemoved(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    :cond_c
    return-void
.end method

.method public onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .registers 6

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onProfileConnectionStateChanged() device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", bluetoothProfile: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BluetoothMediaManager"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-direct {p0, p1}, Lcom/android/settingslib/media/BluetoothMediaManager;->updateMediaDeviceListIfNecessary(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method

.method public onServiceConnected()V
    .registers 2

    .line 320
    iget-boolean v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mIsA2dpProfileReady:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mIsHearingAidProfileReady:Z

    if-nez v0, :cond_e

    .line 321
    :cond_8
    invoke-direct {p0}, Lcom/android/settingslib/media/BluetoothMediaManager;->buildBluetoothDeviceList()V

    .line 322
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaManager;->dispatchDeviceListAdded()V

    .line 326
    :cond_e
    iget-boolean v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mIsA2dpProfileReady:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mIsHearingAidProfileReady:Z

    if-eqz v0, :cond_1b

    .line 327
    iget-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :cond_1b
    return-void
.end method

.method public onServiceDisconnected()V
    .registers 1

    return-void
.end method

.method public startScan()V
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 69
    invoke-direct {p0}, Lcom/android/settingslib/media/BluetoothMediaManager;->buildBluetoothDeviceList()V

    .line 70
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaManager;->dispatchDeviceListAdded()V

    .line 71
    invoke-direct {p0}, Lcom/android/settingslib/media/BluetoothMediaManager;->addServiceListenerIfNecessary()V

    return-void
.end method

.method public stopScan()V
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/android/settingslib/media/BluetoothMediaManager;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 172
    invoke-direct {p0}, Lcom/android/settingslib/media/BluetoothMediaManager;->unregisterDeviceAttributeChangeCallback()V

    return-void
.end method
