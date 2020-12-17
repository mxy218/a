.class public Lcom/android/systemui/qs/external/TileLifecycleManager;
.super Landroid/content/BroadcastReceiver;
.source "TileLifecycleManager.java"

# interfaces
.implements Landroid/service/quicksettings/IQSTileService;
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;
    }
.end annotation


# instance fields
.field private mBindRetryDelay:I

.field private mBindTryCount:I

.field private mBound:Z

.field private mChangeListener:Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;

.field private mClickBinder:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mIntent:Landroid/content/Intent;

.field private mIsBound:Z

.field private mListening:Z

.field private final mPackageManagerAdapter:Lcom/android/systemui/qs/external/PackageManagerAdapter;

.field private mQueuedMessages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mReceiverRegistered:Z

.field private final mToken:Landroid/os/IBinder;

.field private mUnbindImmediate:Z

.field private final mUser:Landroid/os/UserHandle;

.field private mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;Landroid/service/quicksettings/IQSService;Landroid/service/quicksettings/Tile;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 15

    .line 92
    new-instance v7, Lcom/android/systemui/qs/external/PackageManagerAdapter;

    invoke-direct {v7, p2}, Lcom/android/systemui/qs/external/PackageManagerAdapter;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/external/TileLifecycleManager;-><init>(Landroid/os/Handler;Landroid/content/Context;Landroid/service/quicksettings/IQSService;Landroid/service/quicksettings/Tile;Landroid/content/Intent;Landroid/os/UserHandle;Lcom/android/systemui/qs/external/PackageManagerAdapter;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;Landroid/service/quicksettings/IQSService;Landroid/service/quicksettings/Tile;Landroid/content/Intent;Landroid/os/UserHandle;Lcom/android/systemui/qs/external/PackageManagerAdapter;)V
    .registers 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 97
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 73
    new-instance p4, Landroid/os/Binder;

    invoke-direct {p4}, Landroid/os/Binder;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mToken:Landroid/os/IBinder;

    .line 76
    new-instance p4, Landroid/util/ArraySet;

    invoke-direct {p4}, Landroid/util/ArraySet;-><init>()V

    iput-object p4, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    const/16 p4, 0x3e8

    .line 82
    iput p4, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBindRetryDelay:I

    .line 98
    iput-object p2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mContext:Landroid/content/Context;

    .line 99
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mHandler:Landroid/os/Handler;

    .line 100
    iput-object p5, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    .line 101
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    invoke-interface {p3}, Landroid/service/quicksettings/IQSService;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    const-string p3, "service"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 102
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mToken:Landroid/os/IBinder;

    const-string/jumbo p3, "token"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 103
    iput-object p6, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    .line 104
    iput-object p7, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mPackageManagerAdapter:Lcom/android/systemui/qs/external/PackageManagerAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/external/TileLifecycleManager;)Z
    .registers 1

    .line 51
    iget-boolean p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBound:Z

    return p0
.end method

.method private checkComponentState()Z
    .registers 2

    .line 277
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->isPackageAvailable()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->isComponentAvailable()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x1

    return p0

    .line 278
    :cond_f
    :goto_f
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->startPackageListening()V

    const/4 p0, 0x0

    return p0
.end method

.method private handleDeath()V
    .registers 5

    .line 259
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 260
    iput-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    .line 261
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBound:Z

    if-nez v0, :cond_d

    return-void

    .line 263
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->checkComponentState()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 264
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/external/TileLifecycleManager$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/external/TileLifecycleManager$1;-><init>(Lcom/android/systemui/qs/external/TileLifecycleManager;)V

    iget p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBindRetryDelay:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_20
    return-void
.end method

.method private handlePendingMessages()V
    .registers 5

    .line 207
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    monitor-enter v0

    .line 208
    :try_start_3
    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 209
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 210
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_81

    const/4 v0, 0x0

    .line 211
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 213
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onTileAdded()V

    .line 215
    :cond_1e
    iget-boolean v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mListening:Z

    if-eqz v2, :cond_25

    .line 217
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStartListening()V

    :cond_25
    const/4 v2, 0x2

    .line 219
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 221
    iget-boolean v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mListening:Z

    if-nez v2, :cond_3c

    const-string v2, "TileLifecycleManager"

    const-string v3, "Managed to get click on non-listening state..."

    .line 222
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 225
    :cond_3c
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mClickBinder:Landroid/os/IBinder;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onClick(Landroid/os/IBinder;)V

    :cond_41
    :goto_41
    const/4 v2, 0x3

    .line 228
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 230
    iget-boolean v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mListening:Z

    if-nez v2, :cond_58

    const-string v2, "TileLifecycleManager"

    const-string v3, "Managed to get unlock on non-listening state..."

    .line 231
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 234
    :cond_58
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onUnlockComplete()V

    :cond_5b
    :goto_5b
    const/4 v2, 0x1

    .line 237
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_77

    .line 239
    iget-boolean v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mListening:Z

    if-eqz v1, :cond_74

    const-string v1, "TileLifecycleManager"

    const-string v2, "Managed to get remove in listening state..."

    .line 240
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStopListening()V

    .line 243
    :cond_74
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onTileRemoved()V

    .line 245
    :cond_77
    iget-boolean v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUnbindImmediate:Z

    if-eqz v1, :cond_80

    .line 246
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUnbindImmediate:Z

    .line 247
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setBindService(Z)V

    :cond_80
    return-void

    :catchall_81
    move-exception p0

    .line 210
    :try_start_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_81

    throw p0
.end method

.method private isComponentAvailable()Z
    .registers 4

    .line 327
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    const/4 v0, 0x0

    .line 329
    :try_start_a
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mPackageManagerAdapter:Lcom/android/systemui/qs/external/PackageManagerAdapter;

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    .line 330
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    .line 329
    invoke-virtual {v1, v2, v0, p0}, Lcom/android/systemui/qs/external/PackageManagerAdapter;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object p0
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_1c} :catch_1f

    if-eqz p0, :cond_1f

    const/4 v0, 0x1

    :catch_1f
    :cond_1f
    return v0
.end method

.method private isPackageAvailable()Z
    .registers 4

    .line 340
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 342
    :try_start_b
    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mPackageManagerAdapter:Lcom/android/systemui/qs/external/PackageManagerAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-virtual {v2, v0, v1, p0}, Lcom/android/systemui/qs/external/PackageManagerAdapter;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_16} :catch_18

    const/4 p0, 0x1

    return p0

    .line 346
    :catch_18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package not available: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TileLifecycleManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isTileAdded(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 4

    const/4 v0, 0x0

    const-string/jumbo v1, "tiles_prefs"

    .line 432
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private queueMessage(I)V
    .registers 3

    .line 352
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    monitor-enter v0

    .line 353
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 354
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public static setTileAdded(Landroid/content/Context;Landroid/content/ComponentName;Z)V
    .registers 5

    const-string/jumbo v0, "tiles_prefs"

    const/4 v1, 0x0

    .line 436
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 437
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private startPackageListening()V
    .registers 13

    .line 286
    new-instance v3, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    .line 287
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    .line 288
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 290
    new-instance v9, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v9, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 291
    iget-object v6, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    iget-object v11, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x0

    move-object v7, p0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 292
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mReceiverRegistered:Z

    return-void
.end method

.method private stopPackageListening()V
    .registers 2

    .line 297
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 298
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mReceiverRegistered:Z

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 414
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public binderDied()V
    .registers 1

    .line 420
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    return-void
.end method

.method public flushMessagesAndUnbind()V
    .registers 2

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUnbindImmediate:Z

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setBindService(Z)V

    return-void
.end method

.method public getComponent()Landroid/content/ComponentName;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getToken()Landroid/os/IBinder;
    .registers 1

    .line 424
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public handleDestroy()V
    .registers 2

    .line 253
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mReceiverRegistered:Z

    if-eqz v0, :cond_7

    .line 254
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->stopPackageListening()V

    :cond_7
    return-void
.end method

.method public hasPendingClick()Z
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    monitor-enter v0

    .line 114
    :try_start_3
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mQueuedMessages:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 115
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public isActiveTile()Z
    .registers 4

    const/4 v0, 0x0

    .line 124
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mPackageManagerAdapter:Lcom/android/systemui/qs/external/PackageManagerAdapter;

    iget-object p0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    const/16 v2, 0x2080

    invoke-virtual {v1, p0, v2}, Lcom/android/systemui/qs/external/PackageManagerAdapter;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    .line 126
    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1e

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "android.service.quicksettings.ACTIVE_TILE"

    .line 127
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1b} :catch_1e

    if-eqz p0, :cond_1e

    const/4 v0, 0x1

    :catch_1e
    :cond_1e
    return v0
.end method

.method public onClick(Landroid/os/IBinder;)V
    .registers 3

    .line 396
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->onClick(Landroid/os/IBinder;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 397
    :cond_a
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mClickBinder:Landroid/os/IBinder;

    const/4 p1, 0x2

    .line 398
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->queueMessage(I)V

    .line 399
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    :cond_13
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 308
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    .line 309
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 310
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 311
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    return-void

    .line 315
    :cond_25
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3e

    iget-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mChangeListener:Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;

    if-eqz p1, :cond_3e

    .line 316
    iget-object p2, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;->onTileChanged(Landroid/content/ComponentName;)V

    .line 318
    :cond_3e
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->stopPackageListening()V

    .line 319
    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBound:Z

    if-eqz p1, :cond_49

    const/4 p1, 0x1

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setBindService(Z)V

    :cond_49
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    const/4 p1, 0x0

    .line 187
    iput p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBindTryCount:I

    .line 188
    new-instance v0, Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    invoke-static {p2}, Landroid/service/quicksettings/IQSTileService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/quicksettings/IQSTileService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/qs/external/QSTileServiceWrapper;-><init>(Landroid/service/quicksettings/IQSTileService;)V

    .line 190
    :try_start_c
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_f} :catch_f

    .line 193
    :catch_f
    iput-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    .line 194
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handlePendingMessages()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 200
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    return-void
.end method

.method public onStartListening()V
    .registers 2

    const/4 v0, 0x1

    .line 378
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mListening:Z

    .line 379
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->onStartListening()Z

    move-result v0

    if-nez v0, :cond_10

    .line 380
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    :cond_10
    return-void
.end method

.method public onStopListening()V
    .registers 2

    const/4 v0, 0x0

    .line 387
    iput-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mListening:Z

    .line 388
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->onStopListening()Z

    move-result v0

    if-nez v0, :cond_10

    .line 389
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    :cond_10
    return-void
.end method

.method public onTileAdded()V
    .registers 2

    .line 360
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->onTileAdded()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_a
    const/4 v0, 0x0

    .line 361
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->queueMessage(I)V

    .line 362
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    :cond_11
    return-void
.end method

.method public onTileRemoved()V
    .registers 2

    .line 369
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->onTileRemoved()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_a
    const/4 v0, 0x1

    .line 370
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->queueMessage(I)V

    .line 371
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    :cond_11
    return-void
.end method

.method public onUnlockComplete()V
    .registers 2

    .line 406
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/QSTileServiceWrapper;->onUnlockComplete()Z

    move-result v0

    if-nez v0, :cond_11

    :cond_a
    const/4 v0, 0x3

    .line 407
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->queueMessage(I)V

    .line 408
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->handleDeath()V

    :cond_11
    return-void
.end method

.method public setBindService(Z)V
    .registers 6

    .line 142
    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBound:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUnbindImmediate:Z

    if-eqz v0, :cond_c

    .line 145
    iput-boolean v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUnbindImmediate:Z

    return-void

    .line 148
    :cond_c
    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBound:Z

    if-eqz p1, :cond_41

    .line 150
    iget p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBindTryCount:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_19

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->startPackageListening()V

    return-void

    .line 155
    :cond_19
    invoke-direct {p0}, Lcom/android/systemui/qs/external/TileLifecycleManager;->checkComponentState()Z

    move-result p1

    if-nez p1, :cond_20

    return-void

    .line 159
    :cond_20
    iget p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBindTryCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBindTryCount:I

    .line 161
    :try_start_26
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIntent:Landroid/content/Intent;

    const v2, 0x2100021

    iget-object v3, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p0, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIsBound:Z
    :try_end_35
    .catch Ljava/lang/SecurityException; {:try_start_26 .. :try_end_35} :catch_36

    goto :goto_51

    :catch_36
    move-exception p1

    const-string v0, "TileLifecycleManager"

    const-string v2, "Failed to bind to service"

    .line 168
    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    iput-boolean v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIsBound:Z

    goto :goto_51

    .line 174
    :cond_41
    iput v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mBindTryCount:I

    const/4 p1, 0x0

    .line 175
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mWrapper:Lcom/android/systemui/qs/external/QSTileServiceWrapper;

    .line 176
    iget-boolean p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIsBound:Z

    if-eqz p1, :cond_51

    .line 177
    iget-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 178
    iput-boolean v1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mIsBound:Z

    :cond_51
    :goto_51
    return-void
.end method

.method public setTileChangeListener(Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;)V
    .registers 2

    .line 302
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileLifecycleManager;->mChangeListener:Lcom/android/systemui/qs/external/TileLifecycleManager$TileChangeListener;

    return-void
.end method
