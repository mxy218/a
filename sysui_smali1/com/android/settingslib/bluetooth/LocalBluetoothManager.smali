.class public Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
.super Ljava/lang/Object;
.source "LocalBluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# instance fields
.field private final mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private final mContext:Landroid/content/Context;

.field private final mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mNetworkDownloader:Lcom/android/settingslib/bluetooth/NetworkDownloader;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mXmlReader:Lcom/android/settingslib/bluetooth/XmlReader;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)V
    .registers 11

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    .line 131
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 132
    new-instance p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 133
    new-instance p1, Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    move-object v0, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 135
    new-instance p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object p4, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-direct {p1, p2, p3, p4, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 139
    new-instance p1, Lcom/android/settingslib/bluetooth/XmlReader;

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/settingslib/bluetooth/XmlReader;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mXmlReader:Lcom/android/settingslib/bluetooth/XmlReader;

    .line 140
    new-instance p1, Lcom/android/settingslib/bluetooth/NetworkDownloader;

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mXmlReader:Lcom/android/settingslib/bluetooth/XmlReader;

    invoke-direct {p1, p2, p3}, Lcom/android/settingslib/bluetooth/NetworkDownloader;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/XmlReader;)V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mNetworkDownloader:Lcom/android/settingslib/bluetooth/NetworkDownloader;

    .line 142
    invoke-static {}, Lcom/android/settingslib/bluetooth/BlacklistFileControl;->initBlacklistFromFile()V

    .line 145
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-class v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    monitor-enter v0

    .line 72
    :try_start_3
    sget-object v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_17

    .line 73
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getInstance()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_33

    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 75
    monitor-exit v0

    return-object v2

    .line 78
    :cond_10
    :try_start_10
    new-instance v3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-direct {v3, v1, p0, v2, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserHandle;)V

    sput-object v3, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    :cond_17
    if-eqz p1, :cond_2f

    .line 86
    invoke-static {}, Lcom/android/settingslib/bluetooth/Util;->isErrorListenerInited()Z

    move-result v1

    if-nez v1, :cond_2f

    const-string v1, "LocalBluetoothManager"

    const-string v2, "Initialized callback for Utils"

    .line 87
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-interface {p1, p0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;->onBluetoothManagerInitialized(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    .line 92
    :cond_2f
    sget-object p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_33

    monitor-exit v0

    return-object p0

    :catchall_33
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .registers 1

    .line 152
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method public getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .registers 1

    .line 182
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object p0
.end method

.method public getDevicesXml()Lcom/android/settingslib/bluetooth/XmlReader;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mXmlReader:Lcom/android/settingslib/bluetooth/XmlReader;

    return-object p0
.end method

.method public getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;
    .registers 1

    .line 186
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    return-object p0
.end method

.method public getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .registers 1

    .line 190
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object p0
.end method
