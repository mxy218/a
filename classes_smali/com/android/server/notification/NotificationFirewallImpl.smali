.class public Lcom/android/server/notification/NotificationFirewallImpl;
.super Ljava/lang/Object;
.source "NotificationFirewallImpl.java"

# interfaces
.implements Lcom/android/server/notification/NotificationFirewall;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationFirewallImpl$H;,
        Lcom/android/server/notification/NotificationFirewallImpl$StatusBarNotificationHolder;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final DISTINGUISH_NOTIFICATION:I = 0x1

.field private static FILTER_ACTION_NAME:Ljava/lang/String; = null

.field private static final KEY_MZ_APP_CLONE_ENABLED_PKGS:Ljava/lang/String; = "mz_app_clone_enabled_pkgs"

.field private static SYSTEM_UI_TOOLS:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static mClonedPkgsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final INTERCEPT_NOTIFICATION_TIME_OUT:I

.field private conn:Landroid/content/ServiceConnection;

.field private final mClonedPkgsChangedObserver:Landroid/database/ContentObserver;

.field public final mCondition:Ljava/util/concurrent/locks/Condition;

.field private mContext:Landroid/content/Context;

.field private mFilterServiceDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mNotificationKey:Ljava/lang/String;

.field private mResult:Lmeizu/notification/FilterResult;

.field private remoteService:Lmeizu/notification/INotificationFilterService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 37
    const-string v0, "NotificationFirewall"

    sput-object v0, Lcom/android/server/notification/NotificationFirewallImpl;->TAG:Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/android/server/notification/NotificationFirewallImpl;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationFirewallImpl;->DEBUG:Z

    .line 42
    const-string v0, "com.meizu.notification.FILTER"

    sput-object v0, Lcom/android/server/notification/NotificationFirewallImpl;->FILTER_ACTION_NAME:Ljava/lang/String;

    .line 43
    const-string v0, "com.flyme.systemuitools"

    sput-object v0, Lcom/android/server/notification/NotificationFirewallImpl;->SYSTEM_UI_TOOLS:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/notification/NotificationFirewallImpl;->mClonedPkgsList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 49
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mCondition:Ljava/util/concurrent/locks/Condition;

    .line 50
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->INTERCEPT_NOTIFICATION_TIME_OUT:I

    .line 54
    new-instance v0, Lcom/android/server/notification/NotificationFirewallImpl$1;

    new-instance v1, Landroid/os/Handler;

    .line 55
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/NotificationFirewallImpl$1;-><init>(Lcom/android/server/notification/NotificationFirewallImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mClonedPkgsChangedObserver:Landroid/database/ContentObserver;

    .line 63
    new-instance v0, Lcom/android/server/notification/NotificationFirewallImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationFirewallImpl$2;-><init>(Lcom/android/server/notification/NotificationFirewallImpl;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mFilterServiceDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/NotificationFirewallImpl;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/notification/NotificationFirewallImpl;

    .line 36
    invoke-direct {p0}, Lcom/android/server/notification/NotificationFirewallImpl;->loadClonedPkgsList()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 36
    sget-object v0, Lcom/android/server/notification/NotificationFirewallImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/NotificationFirewallImpl;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/notification/NotificationFirewallImpl;

    .line 36
    invoke-direct {p0}, Lcom/android/server/notification/NotificationFirewallImpl;->startService()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/notification/NotificationFirewallImpl;)Landroid/os/IBinder$DeathRecipient;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationFirewallImpl;

    .line 36
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mFilterServiceDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/notification/NotificationFirewallImpl;)Lmeizu/notification/INotificationFilterService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationFirewallImpl;

    .line 36
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/notification/NotificationFirewallImpl;Lmeizu/notification/INotificationFilterService;)Lmeizu/notification/INotificationFilterService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationFirewallImpl;
    .param p1, "x1"  # Lmeizu/notification/INotificationFilterService;

    .line 36
    iput-object p1, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    return-object p1
.end method

.method static synthetic access$500()Z
    .registers 1

    .line 36
    sget-boolean v0, Lcom/android/server/notification/NotificationFirewallImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/notification/NotificationFirewallImpl;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationFirewallImpl;

    .line 36
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/notification/NotificationFirewallImpl;Lmeizu/notification/FilterResult;)Lmeizu/notification/FilterResult;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationFirewallImpl;
    .param p1, "x1"  # Lmeizu/notification/FilterResult;

    .line 36
    iput-object p1, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mResult:Lmeizu/notification/FilterResult;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/server/notification/NotificationFirewallImpl;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/NotificationFirewallImpl;
    .param p1, "x1"  # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mNotificationKey:Ljava/lang/String;

    return-object p1
.end method

.method private loadClonedPkgsList()V
    .registers 5

    .line 346
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mContext:Landroid/content/Context;

    .line 347
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 346
    const-string/jumbo v1, "mz_app_clone_enabled_pkgs"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "clonedPkgs":Ljava/lang/String;
    if-nez v0, :cond_15

    .line 349
    sget-object v1, Lcom/android/server/notification/NotificationFirewallImpl;->mClonedPkgsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_29

    .line 351
    :cond_15
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 352
    .local v1, "clonedPkgsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/android/server/notification/NotificationFirewallImpl;->mClonedPkgsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 353
    sget-object v2, Lcom/android/server/notification/NotificationFirewallImpl;->mClonedPkgsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 355
    .end local v1  # "clonedPkgsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_29
    sget-object v1, Lcom/android/server/notification/NotificationFirewallImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "loadClonedPkgsList: mClonedPkgsList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/notification/NotificationFirewallImpl;->mClonedPkgsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void
.end method

.method private startService()V
    .registers 5

    .line 137
    :try_start_0
    sget-object v0, Lcom/android/server/notification/NotificationFirewallImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startService: try start service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/server/notification/NotificationFirewallImpl;->FILTER_ACTION_NAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/android/server/notification/NotificationFirewallImpl;->SYSTEM_UI_TOOLS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    iget-object v1, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->conn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1e

    .line 144
    nop

    .end local v0  # "intent":Landroid/content/Intent;
    goto :goto_29

    .line 141
    :catchall_1e
    move-exception v0

    .line 142
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 143
    sget-object v1, Lcom/android/server/notification/NotificationFirewallImpl;->TAG:Ljava/lang/String;

    const-string v2, "bindService err"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    .end local v0  # "throwable":Ljava/lang/Throwable;
    :goto_29
    return-void
.end method


# virtual methods
.method public decreaseScore(Lmeizu/notification/RankingDaily;)F
    .registers 5
    .param p1, "preDaily"  # Lmeizu/notification/RankingDaily;

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    if-eqz v0, :cond_22

    .line 301
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    invoke-interface {v0, p1}, Lmeizu/notification/INotificationFilterService;->decreaseScore(Lmeizu/notification/RankingDaily;)F

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_17
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return v0

    .line 306
    :catchall_b
    move-exception v0

    .line 307
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/server/notification/NotificationFirewallImpl;->TAG:Ljava/lang/String;

    const-string v2, "decreaseScore throwable="

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_23

    .line 303
    .end local v0  # "throwable":Ljava/lang/Throwable;
    :catch_17
    move-exception v0

    .line 304
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/notification/NotificationFirewallImpl;->TAG:Ljava/lang/String;

    const-string v2, "decreaseScore RemoteException="

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 309
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_22
    nop

    .line 310
    :goto_23
    iget v0, p1, Lmeizu/notification/RankingDaily;->score:F

    return v0
.end method

.method public existClonedApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"  # Ljava/lang/String;

    .line 360
    sget-object v0, Lcom/android/server/notification/NotificationFirewallImpl;->mClonedPkgsList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getRankingScoreBase(Ljava/lang/String;II)F
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "notificationPriority"  # I
    .param p3, "categoryPriority"  # I

    .line 316
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    if-eqz v0, :cond_22

    .line 317
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    invoke-interface {v0, p1, p2, p3}, Lmeizu/notification/INotificationFilterService;->getRankingScoreBase(Ljava/lang/String;II)F

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_17
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return v0

    .line 322
    :catchall_b
    move-exception v0

    .line 323
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/server/notification/NotificationFirewallImpl;->TAG:Ljava/lang/String;

    const-string v2, "getRankingScoreBase throwable="

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_23

    .line 319
    .end local v0  # "throwable":Ljava/lang/Throwable;
    :catch_17
    move-exception v0

    .line 320
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/notification/NotificationFirewallImpl;->TAG:Ljava/lang/String;

    const-string v2, "getRankingScoreBase RemoteException="

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 325
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_22
    nop

    .line 326
    :goto_23
    const/high16 v0, 0x42340000  # 45.0f

    return v0
.end method

.method public getUserFilter(Ljava/lang/String;)I
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    if-eqz v0, :cond_22

    .line 193
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    invoke-interface {v0, p1}, Lmeizu/notification/INotificationFilterService;->getUserFilter(Ljava/lang/String;)I

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_17
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return v0

    .line 198
    :catchall_b
    move-exception v0

    .line 199
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/server/notification/NotificationFirewallImpl;->TAG:Ljava/lang/String;

    const-string v2, "getUserFilter throwable="

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_23

    .line 195
    .end local v0  # "throwable":Ljava/lang/Throwable;
    :catch_17
    move-exception v0

    .line 196
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/notification/NotificationFirewallImpl;->TAG:Ljava/lang/String;

    const-string v2, "getUserFilter RemoteException="

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 201
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_22
    nop

    .line 202
    :goto_23
    const/4 v0, 0x0

    return v0
.end method

.method public increaseScore(Lmeizu/notification/RankingDaily;)F
    .registers 5
    .param p1, "preDaily"  # Lmeizu/notification/RankingDaily;

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    if-eqz v0, :cond_24

    .line 285
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    invoke-interface {v0, p1}, Lmeizu/notification/INotificationFilterService;->increaseScore(Lmeizu/notification/RankingDaily;)F

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_18
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return v0

    .line 290
    :catchall_b
    move-exception v0

    .line 291
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/server/notification/NotificationFirewallImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "increaseScore throwable="

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_25

    .line 287
    .end local v0  # "throwable":Ljava/lang/Throwable;
    :catch_18
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/notification/NotificationFirewallImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "increaseScore RemoteException="

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 289
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 293
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_24
    nop

    .line 294
    :goto_25
    iget v0, p1, Lmeizu/notification/RankingDaily;->score:F

    return v0
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 9
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "looper"  # Landroid/os/Looper;

    .line 89
    iput-object p1, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mContext:Landroid/content/Context;

    .line 90
    new-instance v0, Lcom/android/server/notification/NotificationFirewallImpl$H;

    invoke-direct {v0, p0, p2}, Lcom/android/server/notification/NotificationFirewallImpl$H;-><init>(Lcom/android/server/notification/NotificationFirewallImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mHandler:Landroid/os/Handler;

    .line 91
    new-instance v0, Lcom/android/server/notification/NotificationFirewallImpl$3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationFirewallImpl$3;-><init>(Lcom/android/server/notification/NotificationFirewallImpl;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->conn:Landroid/content/ServiceConnection;

    .line 111
    invoke-direct {p0}, Lcom/android/server/notification/NotificationFirewallImpl;->startService()V

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 114
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.flyme.systemuitools.endwelcome"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/notification/NotificationFirewallImpl$4;

    invoke-direct {v2, p0}, Lcom/android/server/notification/NotificationFirewallImpl$4;-><init>(Lcom/android/server/notification/NotificationFirewallImpl;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    invoke-direct {p0}, Lcom/android/server/notification/NotificationFirewallImpl;->loadClonedPkgsList()V

    .line 127
    iget-object v1, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 128
    const-string/jumbo v2, "mz_app_clone_enabled_pkgs"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mClonedPkgsChangedObserver:Landroid/database/ContentObserver;

    .line 127
    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 133
    return-void
.end method

.method public interceptNotification(Landroid/service/notification/StatusBarNotification;ZZZ)I
    .registers 14
    .param p1, "sbn"  # Landroid/service/notification/StatusBarNotification;
    .param p2, "isSystemNotification"  # Z
    .param p3, "isSystemApp"  # Z
    .param p4, "isClearable"  # Z

    .line 231
    const/4 v0, 0x0

    .line 233
    .local v0, "intercept":Z
    iget-object v1, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    const/4 v2, -0x1

    if-eqz v1, :cond_11a

    iget-object v1, p1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v1, v1, Landroid/service/notification/StatusBarNotification$Filter;->shouldAuthorityManagement:Z

    if-eqz v1, :cond_11a

    if-nez p4, :cond_10

    goto/16 :goto_11a

    .line 239
    :cond_10
    sget-boolean v1, Lcom/android/server/notification/NotificationFirewallImpl;->DEBUG:Z

    if-eqz v1, :cond_1c

    .line 240
    sget-object v1, Lcom/android/server/notification/NotificationFirewallImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "interceptNotification Main begin"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_1c
    const/4 v1, 0x0

    const/4 v3, 0x1

    :try_start_1e
    iget-object v4, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 244
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mNotificationKey:Ljava/lang/String;

    .line 245
    iput-object v4, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mResult:Lmeizu/notification/FilterResult;

    .line 246
    iget-object v4, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    iget-object v4, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mHandler:Landroid/os/Handler;

    if-eqz p3, :cond_3a

    move v5, v3

    goto :goto_3b

    :cond_3a
    move v5, v1

    :goto_3b
    invoke-virtual {v4, v3, v1, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 248
    .local v4, "message":Landroid/os/Message;
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 249
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mCondition:Ljava/util/concurrent/locks/Condition;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v6, v7, v8}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 250
    iget-object v5, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mResult:Lmeizu/notification/FilterResult;

    .line 251
    .local v5, "result":Lmeizu/notification/FilterResult;
    if-eqz v5, :cond_a4

    iget-object v6, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mNotificationKey:Ljava/lang/String;

    if-eqz v6, :cond_a4

    iget-object v6, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mNotificationKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a4

    .line 252
    iget-object v6, p1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-object v7, v5, Lmeizu/notification/FilterResult;->category:Ljava/lang/String;

    iput-object v7, v6, Landroid/service/notification/StatusBarNotification$Filter;->category:Ljava/lang/String;

    .line 253
    iget-object v6, p1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget v7, v5, Lmeizu/notification/FilterResult;->categoryPriority:I

    iput v7, v6, Landroid/service/notification/StatusBarNotification$Filter;->categoryPriority:I

    .line 254
    iget-object v6, p1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget v7, v5, Lmeizu/notification/FilterResult;->notificationPriority:I

    iput v7, v6, Landroid/service/notification/StatusBarNotification$Filter;->notificationPriority:I

    .line 255
    iget-object v6, p1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget v7, v5, Lmeizu/notification/FilterResult;->userFilter:I

    iput v7, v6, Landroid/service/notification/StatusBarNotification$Filter;->userFilter:I

    .line 256
    iget-object v6, p1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-object v7, v5, Lmeizu/notification/FilterResult;->tag:Ljava/lang/String;

    iput-object v7, v6, Landroid/service/notification/StatusBarNotification$Filter;->tag:Ljava/lang/String;

    .line 257
    iget-object v6, p1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-object v7, v5, Lmeizu/notification/FilterResult;->extras:Landroid/os/Bundle;

    iput-object v7, v6, Landroid/service/notification/StatusBarNotification$Filter;->extras:Landroid/os/Bundle;

    .line 258
    iget-object v6, p1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v7, v5, Lmeizu/notification/FilterResult;->intercept:Z

    iput-boolean v7, v6, Landroid/service/notification/StatusBarNotification$Filter;->intercept:Z

    .line 259
    iget-object v6, p1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v7, v5, Lmeizu/notification/FilterResult;->shouldAffectRanking:Z

    iput-boolean v7, v6, Landroid/service/notification/StatusBarNotification$Filter;->shouldAffectRanking:Z

    .line 260
    iget-object v6, p1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v7, v5, Lmeizu/notification/FilterResult;->shouldAffectIntercept:Z

    iput-boolean v7, v6, Landroid/service/notification/StatusBarNotification$Filter;->shouldAffectIntercept:Z

    .line 261
    iget-object v6, p1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget v7, v5, Lmeizu/notification/FilterResult;->score:F

    iput v7, v6, Landroid/service/notification/StatusBarNotification$Filter;->score:F

    .line 262
    iget-object v6, p1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget v7, v5, Lmeizu/notification/FilterResult;->score_scale:F

    iput v7, v6, Landroid/service/notification/StatusBarNotification$Filter;->score_scale:F

    .line 263
    iget-boolean v6, v5, Lmeizu/notification/FilterResult;->intercept:Z
    :try_end_a3
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_a3} :catch_c5
    .catchall {:try_start_1e .. :try_end_a3} :catchall_b2

    move v0, v6

    .line 271
    .end local v4  # "message":Landroid/os/Message;
    .end local v5  # "result":Lmeizu/notification/FilterResult;
    :cond_a4
    iget-object v4, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_d8

    .line 272
    :goto_ac
    iget-object v4, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_d8

    .line 268
    :catchall_b2
    move-exception v4

    .line 269
    .local v4, "throwable":Ljava/lang/Throwable;
    :try_start_b3
    sget-object v5, Lcom/android/server/notification/NotificationFirewallImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "interceptNotification throwable="

    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bb
    .catchall {:try_start_b3 .. :try_end_bb} :catchall_10b

    .line 271
    nop

    .end local v4  # "throwable":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_d8

    .line 272
    goto :goto_ac

    .line 266
    :catch_c5
    move-exception v4

    .line 267
    .local v4, "e":Ljava/lang/InterruptedException;
    :try_start_c6
    sget-object v5, Lcom/android/server/notification/NotificationFirewallImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "interceptNotification InterruptedException="

    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ce
    .catchall {:try_start_c6 .. :try_end_ce} :catchall_10b

    .line 271
    nop

    .end local v4  # "e":Ljava/lang/InterruptedException;
    iget-object v4, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_d8

    .line 272
    goto :goto_ac

    .line 275
    :cond_d8
    :goto_d8
    sget-boolean v4, Lcom/android/server/notification/NotificationFirewallImpl;->DEBUG:Z

    if-eqz v4, :cond_ff

    .line 276
    sget-object v4, Lcom/android/server/notification/NotificationFirewallImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "interceptNotification Main end intercept="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " shouldAffectIntercept="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v6, v6, Landroid/service/notification/StatusBarNotification$Filter;->shouldAffectIntercept:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_ff
    iget-object v4, p1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v4, v4, Landroid/service/notification/StatusBarNotification$Filter;->shouldAffectIntercept:Z

    if-eqz v4, :cond_109

    if-eqz v0, :cond_10a

    move v1, v3

    goto :goto_10a

    :cond_109
    move v1, v2

    :cond_10a
    :goto_10a
    return v1

    .line 271
    :catchall_10b
    move-exception v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v2

    if-eqz v2, :cond_119

    .line 272
    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_119
    throw v1

    .line 234
    :cond_11a
    :goto_11a
    sget-object v1, Lcom/android/server/notification/NotificationFirewallImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "interceptNotification is disable ! remoteService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",shouldAuthorityManagement"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-boolean v4, v4, Landroid/service/notification/StatusBarNotification$Filter;->shouldAuthorityManagement:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",isClearable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return v2
.end method

.method public offsetScore(Lmeizu/notification/RankingDaily;J)F
    .registers 7
    .param p1, "preDaily"  # Lmeizu/notification/RankingDaily;
    .param p2, "postDate"  # J

    .line 332
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    if-eqz v0, :cond_24

    .line 333
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    invoke-interface {v0, p1, p2, p3}, Lmeizu/notification/INotificationFilterService;->offsetScore(Lmeizu/notification/RankingDaily;J)F

    move-result v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_18
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return v0

    .line 338
    :catchall_b
    move-exception v0

    .line 339
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/server/notification/NotificationFirewallImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "offsetScore throwable="

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_25

    .line 335
    .end local v0  # "throwable":Ljava/lang/Throwable;
    :catch_18
    move-exception v0

    .line 336
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/notification/NotificationFirewallImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "offsetScore RemoteException="

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 341
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_24
    nop

    .line 342
    :goto_25
    iget v0, p1, Lmeizu/notification/RankingDaily;->score:F

    return v0
.end method

.method public setUserFilter(Ljava/lang/String;II)V
    .registers 7
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "userFilter"  # I

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    if-eqz v0, :cond_23

    .line 209
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl;->remoteService:Lmeizu/notification/INotificationFilterService;

    invoke-interface {v0, p1, p3}, Lmeizu/notification/INotificationFilterService;->updateUserFilter(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_17
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    goto :goto_23

    .line 214
    :catchall_a
    move-exception v0

    .line 215
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/server/notification/NotificationFirewallImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setUserFilter throwable="

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_24

    .line 211
    .end local v0  # "throwable":Ljava/lang/Throwable;
    :catch_17
    move-exception v0

    .line 212
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/notification/NotificationFirewallImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setUserFilter RemoteException="

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 217
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    nop

    .line 218
    :goto_24
    return-void
.end method
