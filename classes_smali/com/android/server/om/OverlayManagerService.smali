.class public final Lcom/android/server/om/OverlayManagerService;
.super Lcom/android/server/SystemService;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;,
        Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;,
        Lcom/android/server/om/OverlayManagerService$UserReceiver;,
        Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final DEFAULT_OVERLAYS_PROP:Ljava/lang/String; = "ro.boot.vendor.overlay.theme"

.field static final TAG:Ljava/lang/String; = "OverlayManager"


# instance fields
.field private final mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

.field private final mLock:Ljava/lang/Object;

.field private final mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

.field private final mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mService:Landroid/os/IBinder;

.field private final mSettings:Lcom/android/server/om/OverlayManagerSettings;

.field private final mSettingsFile:Landroid/util/AtomicFile;

.field private final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/Installer;)V
    .registers 22
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "installer"  # Lcom/android/server/pm/Installer;

    .line 235
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 219
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    .line 231
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 524
    new-instance v0, Lcom/android/server/om/OverlayManagerService$1;

    invoke-direct {v0, v1}, Lcom/android/server/om/OverlayManagerService$1;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mService:Landroid/os/IBinder;

    .line 237
    const-wide/32 v3, 0x4000000

    :try_start_1e
    const-string v0, "OMS#OverlayManagerService"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 238
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v5, Ljava/io/File;

    .line 239
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "overlays.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v6, "overlays"

    invoke-direct {v0, v5, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    .line 240
    new-instance v0, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    invoke-direct {v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;-><init>()V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    .line 241
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 242
    new-instance v7, Lcom/android/server/om/IdmapManager;

    iget-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;
    :try_end_4a
    .catchall {:try_start_1e .. :try_end_4a} :catchall_da

    move-object/from16 v11, p2

    :try_start_4c
    invoke-direct {v7, v11, v0}, Lcom/android/server/om/IdmapManager;-><init>(Lcom/android/server/pm/Installer;Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;)V

    .line 243
    .local v7, "im":Lcom/android/server/om/IdmapManager;
    new-instance v0, Lcom/android/server/om/OverlayManagerSettings;

    invoke-direct {v0}, Lcom/android/server/om/OverlayManagerSettings;-><init>()V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 244
    new-instance v0, Lcom/android/server/om/OverlayManagerServiceImpl;

    iget-object v6, v1, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    iget-object v8, v1, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 245
    invoke-static {}, Lcom/android/server/om/OverlayManagerService;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;

    const/4 v12, 0x0

    invoke-direct {v10, v1, v12}, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/om/OverlayManagerServiceImpl;-><init>(Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;[Ljava/lang/String;Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;)V

    iput-object v0, v1, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    .line 247
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 248
    .local v0, "packageFilter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 250
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string/jumbo v5, "package"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v13

    new-instance v14, Lcom/android/server/om/OverlayManagerService$PackageReceiver;

    invoke-direct {v14, v1, v12}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v18}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 255
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 256
    .local v5, "userFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.USER_ADDED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v6, "android.intent.action.USER_REMOVED"

    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v13

    new-instance v14, Lcom/android/server/om/OverlayManagerService$UserReceiver;

    invoke-direct {v14, v1, v12}, Lcom/android/server/om/OverlayManagerService$UserReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v16, v5

    invoke-virtual/range {v13 .. v18}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 261
    invoke-direct/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->restoreSettings()V

    .line 263
    invoke-direct/range {p0 .. p0}, Lcom/android/server/om/OverlayManagerService;->initIfNeeded()V

    .line 264
    invoke-virtual {v1, v2}, Lcom/android/server/om/OverlayManagerService;->onSwitchUser(I)V

    .line 266
    const-string/jumbo v2, "overlay"

    iget-object v6, v1, Lcom/android/server/om/OverlayManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v6}, Lcom/android/server/om/OverlayManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 267
    const-class v2, Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v1, v2, v1}, Lcom/android/server/om/OverlayManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_d3
    .catchall {:try_start_4c .. :try_end_d3} :catchall_d8

    .line 269
    .end local v0  # "packageFilter":Landroid/content/IntentFilter;
    .end local v5  # "userFilter":Landroid/content/IntentFilter;
    .end local v7  # "im":Lcom/android/server/om/IdmapManager;
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 270
    nop

    .line 271
    return-void

    .line 269
    :catchall_d8
    move-exception v0

    goto :goto_dd

    :catchall_da
    move-exception v0

    move-object/from16 v11, p2

    :goto_dd
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method static synthetic access$300(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/pm/UserManagerService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/om/OverlayManagerService;

    .line 206
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/om/OverlayManagerService;

    .line 206
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/om/OverlayManagerService;

    .line 206
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/om/OverlayManagerService;

    .line 206
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/om/OverlayManagerService;ILjava/util/List;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/om/OverlayManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/util/List;

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateOverlayPaths(ILjava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/om/OverlayManagerService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/om/OverlayManagerService;

    .line 206
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->schedulePersistSettings()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/om/OverlayManagerService;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/om/OverlayManagerService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/lang/String;

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/lang/String;)V

    return-void
.end method

.method private static getDefaultOverlayPackages()[Ljava/lang/String;
    .registers 7

    .line 313
    const-string/jumbo v0, "ro.boot.vendor.overlay.theme"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 315
    sget-object v1, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object v1

    .line 318
    :cond_10
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 319
    .local v1, "defaultPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_2d

    aget-object v5, v2, v4

    .line 320
    .local v5, "packageName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2a

    .line 321
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 319
    .end local v5  # "packageName":Ljava/lang/String;
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 324
    :cond_2d
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method private initIfNeeded()V
    .registers 9

    .line 279
    invoke-virtual {p0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 280
    .local v0, "um":Landroid/os/UserManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 281
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 282
    :try_start_14
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 283
    .local v3, "userCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_19
    if-ge v4, v3, :cond_47

    .line 284
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 285
    .local v5, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v6

    if-nez v6, :cond_44

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    if-eqz v6, :cond_44

    .line 289
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 290
    .local v6, "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7, v6}, Lcom/android/server/om/OverlayManagerService;->updateOverlayPaths(ILjava/util/List;)V

    .line 283
    .end local v5  # "userInfo":Landroid/content/pm/UserInfo;
    .end local v6  # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_44
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 293
    .end local v3  # "userCount":I
    .end local v4  # "i":I
    :cond_47
    monitor-exit v2

    .line 294
    return-void

    .line 293
    :catchall_49
    move-exception v3

    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_14 .. :try_end_4b} :catchall_49

    throw v3
.end method

.method private restoreSettings()V
    .registers 12

    .line 982
    const-wide/32 v0, 0x4000000

    :try_start_3
    const-string v2, "OMS#restoreSettings"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 983
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_90

    .line 984
    :try_start_b
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 985
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_8d

    .line 1011
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 985
    return-void

    .line 987
    :cond_1c
    :try_start_1c
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_22} :catch_7f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_22} :catch_7f
    .catchall {:try_start_1c .. :try_end_22} :catchall_8d

    .line 988
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_22
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v4, v3}, Lcom/android/server/om/OverlayManagerSettings;->restore(Ljava/io/InputStream;)V

    .line 994
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v4

    .line 995
    .local v4, "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 996
    .local v5, "liveUserIds":[I
    const/4 v6, 0x0

    move v7, v6

    .local v7, "i":I
    :goto_36
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_4f

    .line 997
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    aput v8, v5, v7

    .line 996
    add-int/lit8 v7, v7, 0x1

    goto :goto_36

    .line 999
    .end local v7  # "i":I
    :cond_4f
    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    .line 1001
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v7}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v7

    array-length v8, v7

    :goto_59
    if-ge v6, v8, :cond_6b

    aget v9, v7, v6

    .line 1002
    .local v9, "userId":I
    invoke-static {v5, v9}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v10

    if-gez v10, :cond_68

    .line 1003
    iget-object v10, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v10, v9}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)Z
    :try_end_68
    .catchall {:try_start_22 .. :try_end_68} :catchall_71

    .line 1001
    .end local v9  # "userId":I
    :cond_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_59

    .line 1006
    .end local v4  # "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v5  # "liveUserIds":[I
    :cond_6b
    if-eqz v3, :cond_70

    :try_start_6d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6d .. :try_end_70} :catch_7f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6d .. :try_end_70} :catch_7f
    .catchall {:try_start_6d .. :try_end_70} :catchall_8d

    .line 1008
    .end local v3  # "stream":Ljava/io/FileInputStream;
    :cond_70
    goto :goto_87

    .line 987
    .restart local v3  # "stream":Ljava/io/FileInputStream;
    :catchall_71
    move-exception v4

    .end local v3  # "stream":Ljava/io/FileInputStream;
    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService;
    :try_start_72
    throw v4
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_73

    .line 1006
    .restart local v3  # "stream":Ljava/io/FileInputStream;
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService;
    :catchall_73
    move-exception v5

    if-eqz v3, :cond_7e

    :try_start_76
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_7a

    goto :goto_7e

    :catchall_7a
    move-exception v6

    :try_start_7b
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService;
    :cond_7e
    :goto_7e
    throw v5
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_7f} :catch_7f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7b .. :try_end_7f} :catch_7f
    .catchall {:try_start_7b .. :try_end_7f} :catchall_8d

    .end local v3  # "stream":Ljava/io/FileInputStream;
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService;
    :catch_7f
    move-exception v3

    .line 1007
    .local v3, "e":Ljava/lang/Exception;
    :try_start_80
    const-string v4, "OverlayManager"

    const-string v5, "failed to restore overlay state"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1009
    .end local v3  # "e":Ljava/lang/Exception;
    :goto_87
    monitor-exit v2
    :try_end_88
    .catchall {:try_start_80 .. :try_end_88} :catchall_8d

    .line 1011
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1012
    nop

    .line 1013
    return-void

    .line 1009
    :catchall_8d
    move-exception v3

    :try_start_8e
    monitor-exit v2
    :try_end_8f
    .catchall {:try_start_8e .. :try_end_8f} :catchall_8d

    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService;
    :try_start_8f
    throw v3
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_90

    .line 1011
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService;
    :catchall_90
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private schedulePersistSettings()V
    .registers 3

    .line 958
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 959
    return-void

    .line 961
    :cond_a
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/-$$Lambda$OverlayManagerService$_WGEV7N0qhntbqqDW3A1O-TVv5o;

    invoke-direct {v1, p0}, Lcom/android/server/om/-$$Lambda$OverlayManagerService$_WGEV7N0qhntbqqDW3A1O-TVv5o;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 978
    return-void
.end method

.method private updateAssets(ILjava/lang/String;)V
    .registers 4
    .param p1, "userId"  # I
    .param p2, "targetPackageName"  # Ljava/lang/String;

    .line 944
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;)V

    .line 945
    return-void
.end method

.method private updateAssets(ILjava/util/List;)V
    .registers 5
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 948
    .local p2, "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerService;->updateOverlayPaths(ILjava/util/List;)V

    .line 949
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 951
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_7
    invoke-interface {v0, p2, p1}, Landroid/app/IActivityManager;->scheduleApplicationInfoChanged(Ljava/util/List;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_a} :catch_b

    .line 954
    goto :goto_c

    .line 952
    :catch_b
    move-exception v1

    .line 955
    :goto_c
    return-void
.end method

.method private updateOverlayPaths(ILjava/util/List;)V
    .registers 16
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 895
    .local p2, "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#updateOverlayPaths "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 899
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    .line 900
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 901
    .local v2, "pm":Landroid/content/pm/PackageManagerInternal;
    const-string v3, "android"

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 902
    .local v3, "updateFrameworkRes":Z
    if-eqz v3, :cond_2c

    .line 903
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManagerInternal;->getTargetPackageNames(I)Ljava/util/List;

    move-result-object v4

    move-object p2, v4

    .line 906
    :cond_2c
    new-instance v4, Landroid/util/ArrayMap;

    .line 907
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/ArrayMap;-><init>(I)V

    .line 908
    .local v4, "pendingChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_ab

    .line 909
    :try_start_38
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    const-string v7, "android"

    .line 910
    invoke-virtual {v6, v7, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPackageNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 911
    .local v6, "frameworkOverlays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    .line 912
    .local v7, "n":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_45
    if-ge v8, v7, :cond_6d

    .line 913
    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 914
    .local v9, "targetPackageName":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 915
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v11, "android"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5d

    .line 916
    invoke-interface {v10, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 918
    :cond_5d
    iget-object v11, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v11, v9, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->getEnabledOverlayPackageNames(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 919
    invoke-interface {v4, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    nop

    .end local v9  # "targetPackageName":Ljava/lang/String;
    .end local v10  # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    add-int/lit8 v8, v8, 0x1

    goto :goto_45

    .line 921
    .end local v6  # "frameworkOverlays":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7  # "n":I
    .end local v8  # "i":I
    :cond_6d
    monitor-exit v5
    :try_end_6e
    .catchall {:try_start_38 .. :try_end_6e} :catchall_a8

    .line 923
    :try_start_6e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    .line 924
    .local v5, "n":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_73
    if-ge v6, v5, :cond_a3

    .line 925
    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 932
    .local v7, "targetPackageName":Ljava/lang/String;
    nop

    .line 933
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 932
    invoke-virtual {v2, p1, v7, v8}, Landroid/content/pm/PackageManagerInternal;->setEnabledOverlayPackages(ILjava/lang/String;Ljava/util/List;)Z

    move-result v8

    if-nez v8, :cond_a0

    .line 934
    const-string v8, "OverlayManager"

    const-string v9, "Failed to change enabled overlays for %s user %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    .line 935
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    .line 934
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catchall {:try_start_6e .. :try_end_a0} :catchall_ab

    .line 924
    .end local v7  # "targetPackageName":Ljava/lang/String;
    :cond_a0
    add-int/lit8 v6, v6, 0x1

    goto :goto_73

    .line 939
    .end local v2  # "pm":Landroid/content/pm/PackageManagerInternal;
    .end local v3  # "updateFrameworkRes":Z
    .end local v4  # "pendingChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v5  # "n":I
    .end local v6  # "i":I
    :cond_a3
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 940
    nop

    .line 941
    return-void

    .line 921
    .restart local v2  # "pm":Landroid/content/pm/PackageManagerInternal;
    .restart local v3  # "updateFrameworkRes":Z
    .restart local v4  # "pendingChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :catchall_a8
    move-exception v6

    :try_start_a9
    monitor-exit v5
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService;
    .end local p1  # "userId":I
    .end local p2  # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_aa
    throw v6
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_ab

    .line 939
    .end local v2  # "pm":Landroid/content/pm/PackageManagerInternal;
    .end local v3  # "updateFrameworkRes":Z
    .end local v4  # "pendingChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService;
    .restart local p1  # "userId":I
    .restart local p2  # "targetPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_ab
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method


# virtual methods
.method public synthetic lambda$schedulePersistSettings$0$OverlayManagerService()V
    .registers 6

    .line 962
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mPersistSettingsScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 966
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 967
    const/4 v1, 0x0

    .line 969
    .local v1, "stream":Ljava/io/FileOutputStream;
    :try_start_a
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 970
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, v1}, Lcom/android/server/om/OverlayManagerSettings;->persist(Ljava/io/OutputStream;)V

    .line 971
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1b} :catch_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_1b} :catch_1e
    .catchall {:try_start_a .. :try_end_1b} :catchall_1c

    .line 975
    goto :goto_2b

    .line 976
    .end local v1  # "stream":Ljava/io/FileOutputStream;
    :catchall_1c
    move-exception v1

    goto :goto_2d

    .line 972
    .restart local v1  # "stream":Ljava/io/FileOutputStream;
    :catch_1e
    move-exception v2

    .line 973
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mSettingsFile:Landroid/util/AtomicFile;

    invoke-virtual {v3, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 974
    const-string v3, "OverlayManager"

    const-string v4, "failed to persist overlay state"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 976
    .end local v1  # "stream":Ljava/io/FileOutputStream;
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_2b
    monitor-exit v0

    .line 977
    return-void

    .line 976
    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_1c

    throw v1
.end method

.method public onStart()V
    .registers 1

    .line 276
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 6
    .param p1, "newUserId"  # I

    .line 299
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onSwitchUser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 302
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_2f

    .line 303
    :try_start_1a
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService;->mImpl:Lcom/android/server/om/OverlayManagerServiceImpl;

    invoke-virtual {v3, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 304
    .local v3, "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, v3}, Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;)V

    .line 305
    .end local v3  # "targets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_2c

    .line 306
    :try_start_24
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerService;->schedulePersistSettings()V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2f

    .line 308
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 309
    nop

    .line 310
    return-void

    .line 305
    :catchall_2c
    move-exception v3

    :try_start_2d
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService;
    .end local p1  # "newUserId":I
    :try_start_2e
    throw v3
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2f

    .line 308
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService;
    .restart local p1  # "newUserId":I
    :catchall_2f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method
