.class public Lcom/android/server/gpu/GpuService;
.super Lcom/android/server/SystemService;
.source "GpuService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/gpu/GpuService$PackageReceiver;,
        Lcom/android/server/gpu/GpuService$DeviceConfigListener;,
        Lcom/android/server/gpu/GpuService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final BASE64_FLAGS:I = 0x3

.field public static final DEBUG:Z = false

.field private static final GAME_DRIVER_WHITELIST_FILENAME:Ljava/lang/String; = "whitelist.txt"

.field private static final PROPERTY_GFX_DRIVER:Ljava/lang/String; = "ro.gfx.driver.0"

.field public static final TAG:Ljava/lang/String; = "GpuService"


# instance fields
.field private mBlacklists:Landroid/gamedriver/GameDriverProto$Blacklists;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceConfigListener:Lcom/android/server/gpu/GpuService$DeviceConfigListener;

.field private final mDeviceConfigLock:Ljava/lang/Object;

.field private final mDriverPackageName:Ljava/lang/String;

.field private mGameDriverVersionCode:J

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mSettingsObserver:Lcom/android/server/gpu/GpuService$SettingsObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"  # Landroid/content/Context;

    .line 82
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/gpu/GpuService;->mLock:Ljava/lang/Object;

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/gpu/GpuService;->mDeviceConfigLock:Ljava/lang/Object;

    .line 84
    iput-object p1, p0, Lcom/android/server/gpu/GpuService;->mContext:Landroid/content/Context;

    .line 85
    const-string/jumbo v0, "ro.gfx.driver.0"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/gpu/GpuService;->mDriverPackageName:Ljava/lang/String;

    .line 86
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/gpu/GpuService;->mGameDriverVersionCode:J

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/gpu/GpuService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 88
    iget-object v0, p0, Lcom/android/server/gpu/GpuService;->mDriverPackageName:Ljava/lang/String;

    if-eqz v0, :cond_5c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5c

    .line 89
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 90
    .local v0, "packageFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/server/gpu/GpuService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/gpu/GpuService$PackageReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/gpu/GpuService$PackageReceiver;-><init>(Lcom/android/server/gpu/GpuService;Lcom/android/server/gpu/GpuService$1;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 97
    .end local v0  # "packageFilter":Landroid/content/IntentFilter;
    :cond_5c
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/gpu/GpuService;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/gpu/GpuService;

    .line 61
    iget-object v0, p0, Lcom/android/server/gpu/GpuService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/gpu/GpuService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/gpu/GpuService;

    .line 61
    invoke-direct {p0}, Lcom/android/server/gpu/GpuService;->processBlacklists()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/gpu/GpuService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/gpu/GpuService;

    .line 61
    invoke-direct {p0}, Lcom/android/server/gpu/GpuService;->setBlacklist()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/gpu/GpuService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/gpu/GpuService;

    .line 61
    iget-object v0, p0, Lcom/android/server/gpu/GpuService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/gpu/GpuService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/gpu/GpuService;

    .line 61
    iget-object v0, p0, Lcom/android/server/gpu/GpuService;->mDeviceConfigLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/gpu/GpuService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/gpu/GpuService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/gpu/GpuService;->parseBlacklists(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/gpu/GpuService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/gpu/GpuService;

    .line 61
    iget-object v0, p0, Lcom/android/server/gpu/GpuService;->mDriverPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/gpu/GpuService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/gpu/GpuService;

    .line 61
    invoke-direct {p0}, Lcom/android/server/gpu/GpuService;->fetchGameDriverPackageProperties()V

    return-void
.end method

.method private static assetToSettingsGlobal(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 9
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "driverContext"  # Landroid/content/Context;
    .param p2, "fileName"  # Ljava/lang/String;
    .param p3, "settingsGlobal"  # Ljava/lang/String;
    .param p4, "delimiter"  # Ljava/lang/CharSequence;

    .line 192
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 194
    .local v0, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v1, "assetStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_17
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "assetString":Ljava/lang/String;
    if-eqz v2, :cond_22

    .line 196
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 198
    .end local v3  # "assetString":Ljava/lang/String;
    :cond_22
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 200
    invoke-static {p4, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 198
    invoke-static {v2, p3, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2d} :catch_2f

    .line 205
    nop

    .end local v0  # "reader":Ljava/io/BufferedReader;
    .end local v1  # "assetStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_30

    .line 201
    :catch_2f
    move-exception v0

    .line 206
    :goto_30
    return-void
.end method

.method private fetchGameDriverPackageProperties()V
    .registers 7

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/android/server/gpu/GpuService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/server/gpu/GpuService;->mDriverPackageName:Ljava/lang/String;

    const/high16 v2, 0x100000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_35

    .line 218
    .local v0, "driverInfo":Landroid/content/pm/ApplicationInfo;
    nop

    .line 222
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_12

    .line 226
    return-void

    .line 230
    :cond_12
    iget-object v1, p0, Lcom/android/server/gpu/GpuService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "game_driver_whitelist"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 232
    iget-wide v3, v0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iput-wide v3, p0, Lcom/android/server/gpu/GpuService;->mGameDriverVersionCode:J

    .line 235
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/gpu/GpuService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/gpu/GpuService;->mDriverPackageName:Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 238
    .local v1, "driverContext":Landroid/content/Context;
    iget-object v3, p0, Lcom/android/server/gpu/GpuService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "whitelist.txt"

    const-string v5, ","

    invoke-static {v3, v1, v4, v2, v5}, Lcom/android/server/gpu/GpuService;->assetToSettingsGlobal(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;)V
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_32} :catch_33

    .line 244
    .end local v1  # "driverContext":Landroid/content/Context;
    goto :goto_34

    .line 240
    :catch_33
    move-exception v1

    .line 245
    :goto_34
    return-void

    .line 213
    .end local v0  # "driverInfo":Landroid/content/pm/ApplicationInfo;
    :catch_35
    move-exception v0

    .line 217
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-void
.end method

.method private parseBlacklists(Ljava/lang/String;)V
    .registers 4
    .param p1, "base64String"  # Ljava/lang/String;

    .line 259
    iget-object v0, p0, Lcom/android/server/gpu/GpuService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/android/server/gpu/GpuService;->mBlacklists:Landroid/gamedriver/GameDriverProto$Blacklists;
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_18

    .line 263
    const/4 v1, 0x3

    :try_start_7
    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v1}, Landroid/gamedriver/GameDriverProto$Blacklists;->parseFrom([B)Landroid/gamedriver/GameDriverProto$Blacklists;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/gpu/GpuService;->mBlacklists:Landroid/gamedriver/GameDriverProto$Blacklists;
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_11} :catch_14
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_7 .. :try_end_11} :catch_12
    .catchall {:try_start_7 .. :try_end_11} :catchall_18

    goto :goto_15

    .line 268
    :catch_12
    move-exception v1

    goto :goto_16

    .line 264
    :catch_14
    move-exception v1

    .line 272
    :goto_15
    nop

    .line 273
    :goto_16
    :try_start_16
    monitor-exit v0

    .line 274
    return-void

    .line 273
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method private processBlacklists()V
    .registers 4

    .line 248
    const-string v0, "game_driver_blacklists"

    const-string v1, "game_driver"

    invoke-static {v1, v0}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "base64String":Ljava/lang/String;
    if-nez v1, :cond_10

    .line 251
    iget-object v2, p0, Lcom/android/server/gpu/GpuService;->mContentResolver:Landroid/content/ContentResolver;

    .line 252
    invoke-static {v2, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    :cond_10
    if-eqz v1, :cond_14

    move-object v0, v1

    goto :goto_16

    :cond_14
    const-string v0, ""

    :goto_16
    invoke-direct {p0, v0}, Lcom/android/server/gpu/GpuService;->parseBlacklists(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method private setBlacklist()V
    .registers 9

    .line 277
    iget-object v0, p0, Lcom/android/server/gpu/GpuService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "game_driver_blacklist"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 279
    iget-object v0, p0, Lcom/android/server/gpu/GpuService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_c
    iget-object v1, p0, Lcom/android/server/gpu/GpuService;->mBlacklists:Landroid/gamedriver/GameDriverProto$Blacklists;

    if-nez v1, :cond_12

    .line 281
    monitor-exit v0

    return-void

    .line 283
    :cond_12
    iget-object v1, p0, Lcom/android/server/gpu/GpuService;->mBlacklists:Landroid/gamedriver/GameDriverProto$Blacklists;

    invoke-virtual {v1}, Landroid/gamedriver/GameDriverProto$Blacklists;->getBlacklistsList()Ljava/util/List;

    move-result-object v1

    .line 284
    .local v1, "blacklists":Ljava/util/List;, "Ljava/util/List<Landroid/gamedriver/GameDriverProto$Blacklist;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/gamedriver/GameDriverProto$Blacklist;

    .line 285
    .local v3, "blacklist":Landroid/gamedriver/GameDriverProto$Blacklist;
    invoke-virtual {v3}, Landroid/gamedriver/GameDriverProto$Blacklist;->getVersionCode()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/gpu/GpuService;->mGameDriverVersionCode:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_45

    .line 286
    iget-object v2, p0, Lcom/android/server/gpu/GpuService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "game_driver_blacklist"

    const-string v5, ","

    .line 288
    invoke-virtual {v3}, Landroid/gamedriver/GameDriverProto$Blacklist;->getPackageNamesList()Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 286
    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 289
    monitor-exit v0

    return-void

    .line 291
    .end local v3  # "blacklist":Landroid/gamedriver/GameDriverProto$Blacklist;
    :cond_45
    goto :goto_1c

    .line 292
    .end local v1  # "blacklists":Ljava/util/List;, "Ljava/util/List<Landroid/gamedriver/GameDriverProto$Blacklist;>;"
    :cond_46
    monitor-exit v0

    .line 293
    return-void

    .line 292
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_c .. :try_end_4a} :catchall_48

    throw v1
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"  # I

    .line 105
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_30

    .line 106
    iget-object v0, p0, Lcom/android/server/gpu/GpuService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/gpu/GpuService;->mContentResolver:Landroid/content/ContentResolver;

    .line 107
    iget-object v0, p0, Lcom/android/server/gpu/GpuService;->mDriverPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_2f

    .line 110
    :cond_17
    new-instance v0, Lcom/android/server/gpu/GpuService$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/gpu/GpuService$SettingsObserver;-><init>(Lcom/android/server/gpu/GpuService;)V

    iput-object v0, p0, Lcom/android/server/gpu/GpuService;->mSettingsObserver:Lcom/android/server/gpu/GpuService$SettingsObserver;

    .line 111
    new-instance v0, Lcom/android/server/gpu/GpuService$DeviceConfigListener;

    invoke-direct {v0, p0}, Lcom/android/server/gpu/GpuService$DeviceConfigListener;-><init>(Lcom/android/server/gpu/GpuService;)V

    iput-object v0, p0, Lcom/android/server/gpu/GpuService;->mDeviceConfigListener:Lcom/android/server/gpu/GpuService$DeviceConfigListener;

    .line 112
    invoke-direct {p0}, Lcom/android/server/gpu/GpuService;->fetchGameDriverPackageProperties()V

    .line 113
    invoke-direct {p0}, Lcom/android/server/gpu/GpuService;->processBlacklists()V

    .line 114
    invoke-direct {p0}, Lcom/android/server/gpu/GpuService;->setBlacklist()V

    goto :goto_30

    .line 108
    :cond_2f
    :goto_2f
    return-void

    .line 116
    :cond_30
    :goto_30
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 101
    return-void
.end method
