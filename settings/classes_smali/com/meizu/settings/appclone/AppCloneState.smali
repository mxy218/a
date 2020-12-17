.class public Lcom/meizu/settings/appclone/AppCloneState;
.super Ljava/lang/Object;
.source "AppCloneState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/appclone/AppCloneState$AppCloneStateChangeListener;,
        Lcom/meizu/settings/appclone/AppCloneState$BackgroundHandler;
    }
.end annotation


# static fields
.field private static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/meizu/settings/appclone/AppCloneBaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final APP_CLONE_ENABLE_PKGS_URI:Landroid/net/Uri;

.field private static final APP_CLONE_IGNORE_PKGS_URI:Landroid/net/Uri;

.field private static final APP_CLONE_SUGGESTED_PKGS_URI:Landroid/net/Uri;

.field private static sInstance:Lcom/meizu/settings/appclone/AppCloneState;


# instance fields
.field private mAppClonePkgsFetcher:Lcom/meizu/settings/appclone/AppClonePkgsFetcher;

.field private mAppCloneUpdateHelper:Lcom/meizu/settings/appclone/AppCloneUpdateHelper;

.field private mBackgroundHandler:Lcom/meizu/settings/appclone/AppCloneState$BackgroundHandler;

.field private mChangeListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/settings/appclone/AppCloneState$AppCloneStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFinalAppCloneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meizu/settings/appclone/AppCloneBaseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIgnoreOnChanged:Z

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mMainHandler:Landroid/os/Handler;

.field private mObserver:Landroid/database/ContentObserver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSuggestedPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "mz_app_clone_enabled_pkgs"

    .line 40
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/appclone/AppCloneState;->APP_CLONE_ENABLE_PKGS_URI:Landroid/net/Uri;

    const-string v0, "mz_app_clone_suggested_pkgs"

    .line 44
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/appclone/AppCloneState;->APP_CLONE_SUGGESTED_PKGS_URI:Landroid/net/Uri;

    const-string v0, "mz_app_clone_ignore_pkgs"

    .line 48
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/appclone/AppCloneState;->APP_CLONE_IGNORE_PKGS_URI:Landroid/net/Uri;

    .line 534
    new-instance v0, Lcom/meizu/settings/appclone/AppCloneState$4;

    invoke-direct {v0}, Lcom/meizu/settings/appclone/AppCloneState$4;-><init>()V

    sput-object v0, Lcom/meizu/settings/appclone/AppCloneState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mSuggestedPkgList:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mFinalAppCloneList:Ljava/util/List;

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mIgnoreOnChanged:Z

    .line 72
    new-instance v0, Lcom/meizu/settings/appclone/AppCloneState$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/appclone/AppCloneState$1;-><init>(Lcom/meizu/settings/appclone/AppCloneState;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mObserver:Landroid/database/ContentObserver;

    .line 92
    new-instance v0, Lcom/meizu/settings/appclone/AppCloneState$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/appclone/AppCloneState$2;-><init>(Lcom/meizu/settings/appclone/AppCloneState;)V

    iput-object v0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    new-instance v0, Lcom/meizu/settings/appclone/AppCloneState$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/appclone/AppCloneState$3;-><init>(Lcom/meizu/settings/appclone/AppCloneState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mMainHandler:Landroid/os/Handler;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mChangeListenerList:Ljava/util/List;

    const-string v0, "AppCloneState"

    const-string v1, "AppCloneState init"

    .line 179
    invoke-static {v0, v1}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mContext:Landroid/content/Context;

    .line 181
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mResolver:Landroid/content/ContentResolver;

    .line 182
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 184
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mIntentFilter:Landroid/content/IntentFilter;

    .line 185
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v1, "package"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    new-instance p1, Landroid/os/HandlerThread;

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 190
    new-instance v0, Lcom/meizu/settings/appclone/AppCloneState$BackgroundHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/meizu/settings/appclone/AppCloneState$BackgroundHandler;-><init>(Lcom/meizu/settings/appclone/AppCloneState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mBackgroundHandler:Lcom/meizu/settings/appclone/AppCloneState$BackgroundHandler;

    .line 191
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 192
    new-instance p1, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;

    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mAppClonePkgsFetcher:Lcom/meizu/settings/appclone/AppClonePkgsFetcher;

    .line 193
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/appclone/AppCloneUpdateHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mAppCloneUpdateHelper:Lcom/meizu/settings/appclone/AppCloneUpdateHelper;

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .registers 1

    .line 34
    sget-object v0, Lcom/meizu/settings/appclone/AppCloneState;->APP_CLONE_ENABLE_PKGS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/settings/appclone/AppCloneState;)Z
    .registers 1

    .line 34
    iget-boolean p0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mIgnoreOnChanged:Z

    return p0
.end method

.method static synthetic access$102(Lcom/meizu/settings/appclone/AppCloneState;Z)Z
    .registers 2

    .line 34
    iput-boolean p1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mIgnoreOnChanged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/settings/appclone/AppCloneState;)Lcom/meizu/settings/appclone/AppCloneState$BackgroundHandler;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mBackgroundHandler:Lcom/meizu/settings/appclone/AppCloneState$BackgroundHandler;

    return-object p0
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .registers 1

    .line 34
    sget-object v0, Lcom/meizu/settings/appclone/AppCloneState;->APP_CLONE_SUGGESTED_PKGS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .registers 1

    .line 34
    sget-object v0, Lcom/meizu/settings/appclone/AppCloneState;->APP_CLONE_IGNORE_PKGS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/settings/appclone/AppCloneState;)V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/meizu/settings/appclone/AppCloneState;->loadAppCloneList()V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/settings/appclone/AppCloneState;Ljava/lang/String;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/meizu/settings/appclone/AppCloneState;->getIcon(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/settings/appclone/AppCloneState;)Ljava/util/List;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mChangeListenerList:Ljava/util/List;

    return-object p0
.end method

.method public static getAppCloneEnabledList(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 407
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mz_app_clone_enabled_pkgs"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 409
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    const-string v0, ","

    .line 410
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 412
    :cond_1b
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private getIcon(Ljava/lang/String;)V
    .registers 5

    .line 373
    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1, p1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->scaleIcon(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIcon pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " d isDefault = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/settings/appclone/AppCloneState;->mContext:Landroid/content/Context;

    .line 376
    invoke-static {v2}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->isDefaultIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppCloneState"

    .line 375
    invoke-static {v1, v0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/settings/appclone/AppCloneState;
    .registers 3

    .line 197
    sget-object v0, Lcom/meizu/settings/appclone/AppCloneState;->sInstance:Lcom/meizu/settings/appclone/AppCloneState;

    if-nez v0, :cond_17

    .line 198
    const-class v0, Lcom/meizu/settings/appclone/AppCloneState;

    monitor-enter v0

    .line 199
    :try_start_7
    sget-object v1, Lcom/meizu/settings/appclone/AppCloneState;->sInstance:Lcom/meizu/settings/appclone/AppCloneState;

    if-nez v1, :cond_12

    .line 200
    new-instance v1, Lcom/meizu/settings/appclone/AppCloneState;

    invoke-direct {v1, p0}, Lcom/meizu/settings/appclone/AppCloneState;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/settings/appclone/AppCloneState;->sInstance:Lcom/meizu/settings/appclone/AppCloneState;

    .line 202
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 204
    :cond_17
    :goto_17
    sget-object p0, Lcom/meizu/settings/appclone/AppCloneState;->sInstance:Lcom/meizu/settings/appclone/AppCloneState;

    return-object p0
.end method

.method private getPrivateAppPkgList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 429
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "private_pkg_list"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 430
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p0, "AppCloneState"

    const-string v0, "getPrivateAppPkgList empty"

    .line 431
    invoke-static {p0, v0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_1c
    const-string v0, ","

    .line 434
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getPrivateClonedAppPkgList()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 416
    invoke-direct {p0}, Lcom/meizu/settings/appclone/AppCloneState;->getPrivateAppPkgList()Ljava/util/List;

    move-result-object p0

    .line 417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 418
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ":1"

    .line 419
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    const/4 v3, 0x0

    .line 421
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPrivateClonedAppPkgList pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppCloneState"

    invoke-static {v2, v1}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_41
    return-object v0
.end method

.method private loadAppCloneList()V
    .registers 19

    move-object/from16 v0, p0

    .line 234
    iget-object v1, v0, Lcom/meizu/settings/appclone/AppCloneState;->mBackgroundHandler:Lcom/meizu/settings/appclone/AppCloneState$BackgroundHandler;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 237
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 238
    iget-object v1, v0, Lcom/meizu/settings/appclone/AppCloneState;->mAppClonePkgsFetcher:Lcom/meizu/settings/appclone/AppClonePkgsFetcher;

    invoke-virtual {v1, v8, v9}, Lcom/meizu/settings/appclone/AppClonePkgsFetcher;->startFetch(Ljava/util/List;Ljava/util/List;)V

    .line 239
    iget-object v1, v0, Lcom/meizu/settings/appclone/AppCloneState;->mSuggestedPkgList:Ljava/util/List;

    monitor-enter v1

    .line 240
    :try_start_1a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v0, Lcom/meizu/settings/appclone/AppCloneState;->mSuggestedPkgList:Ljava/util/List;

    .line 241
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_1a .. :try_end_22} :catchall_239

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/settings/appclone/AppCloneState;->getAppCloneEnabledList()Ljava/util/List;

    move-result-object v10

    .line 245
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2a
    :goto_2a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 246
    invoke-interface {v9, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAppCloneList disable ignore pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppCloneState"

    invoke-static {v2, v1}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x3

    move-object/from16 v1, p0

    .line 248
    invoke-virtual/range {v1 .. v6}, Lcom/meizu/settings/appclone/AppCloneState;->setAppCloneEnabled(ZLjava/lang/String;ZZI)Z

    goto :goto_2a

    .line 252
    :cond_5d
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 253
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 254
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 255
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 256
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 257
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 259
    iget-object v11, v0, Lcom/meizu/settings/appclone/AppCloneState;->mResolver:Landroid/content/ContentResolver;

    const-string v12, "mz_private_mode_running"

    invoke-static {v11, v12, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_88

    move v11, v12

    goto :goto_89

    :cond_88
    move v11, v7

    .line 261
    :goto_89
    invoke-direct/range {p0 .. p0}, Lcom/meizu/settings/appclone/AppCloneState;->getPrivateClonedAppPkgList()Ljava/util/List;

    move-result-object v13

    .line 263
    iget-object v14, v0, Lcom/meizu/settings/appclone/AppCloneState;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v14, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v14

    .line 264
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_97
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_171

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ApplicationInfo;

    .line 265
    iget v7, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v16, v7, 0x1

    if-nez v16, :cond_16c

    and-int/lit16 v7, v7, 0x80

    if-nez v7, :cond_16c

    iget v7, v15, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v16, -0x80000000

    and-int v7, v7, v16

    if-eqz v7, :cond_b7

    :goto_b5
    goto/16 :goto_16e

    .line 270
    :cond_b7
    iget-object v7, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 271
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_c0

    :goto_bf
    goto :goto_b5

    .line 274
    :cond_c0
    invoke-interface {v9, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c7

    goto :goto_bf

    .line 277
    :cond_c7
    iget-object v12, v0, Lcom/meizu/settings/appclone/AppCloneState;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    if-nez v12, :cond_d2

    const/4 v7, 0x0

    const/4 v12, 0x1

    goto :goto_97

    .line 281
    :cond_d2
    iget-object v12, v0, Lcom/meizu/settings/appclone/AppCloneState;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v15, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    .line 282
    new-instance v15, Lcom/meizu/settings/appclone/AppCloneAppInfo;

    invoke-direct {v15, v12, v7}, Lcom/meizu/settings/appclone/AppCloneAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_103

    .line 285
    invoke-virtual {v2, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v8

    const-string v8, "loadAppCloneList find suggested pkg = "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v12, "AppCloneState"

    invoke-static {v12, v8}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11e

    :cond_103
    move-object/from16 v17, v8

    .line 288
    invoke-virtual {v3, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadAppCloneList find supported pkg = "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v12, "AppCloneState"

    invoke-static {v12, v8}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    :goto_11e
    invoke-interface {v10, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_167

    const/4 v8, 0x1

    .line 292
    invoke-virtual {v15, v8}, Lcom/meizu/settings/appclone/AppCloneAppInfo;->setCloneEnabled(Z)V

    .line 293
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-virtual {v3, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v11, :cond_14d

    .line 298
    invoke-interface {v13, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14d

    .line 299
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "loadAppCloneList skip enabled pkg = "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v12, "AppCloneState"

    invoke-static {v12, v7}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_168

    .line 302
    :cond_14d
    invoke-virtual {v1, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "loadAppCloneList find enabled pkg = "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v12, "AppCloneState"

    invoke-static {v12, v7}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_168

    :cond_167
    const/4 v8, 0x1

    :goto_168
    move v12, v8

    move-object/from16 v8, v17

    goto :goto_16e

    :cond_16c
    move-object/from16 v17, v8

    :goto_16e
    const/4 v7, 0x0

    goto/16 :goto_97

    .line 306
    :cond_171
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 308
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x2

    if-lt v1, v7, :cond_184

    .line 309
    sget-object v1, Lcom/meizu/settings/appclone/AppCloneState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 311
    :cond_184
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 313
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v7, :cond_196

    .line 314
    sget-object v1, Lcom/meizu/settings/appclone/AppCloneState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v5, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 316
    :cond_196
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 318
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v7, :cond_1a8

    .line 319
    sget-object v1, Lcom/meizu/settings/appclone/AppCloneState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v6, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 322
    :cond_1a8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 324
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1c7

    .line 325
    new-instance v2, Lcom/meizu/settings/appclone/AppCloneBaseInfo;

    iget-object v3, v0, Lcom/meizu/settings/appclone/AppCloneState;->mContext:Landroid/content/Context;

    const v8, 0x7f12015e

    .line 327
    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Lcom/meizu/settings/appclone/AppCloneBaseInfo;-><init>(ILjava/lang/String;)V

    .line 328
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 332
    :cond_1c7
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1e1

    .line 333
    new-instance v2, Lcom/meizu/settings/appclone/AppCloneBaseInfo;

    iget-object v3, v0, Lcom/meizu/settings/appclone/AppCloneState;->mContext:Landroid/content/Context;

    const v4, 0x7f120161

    .line 335
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Lcom/meizu/settings/appclone/AppCloneBaseInfo;-><init>(ILjava/lang/String;)V

    .line 336
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 340
    :cond_1e1
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_20d

    .line 341
    new-instance v2, Lcom/meizu/settings/appclone/AppCloneBaseInfo;

    iget-object v3, v0, Lcom/meizu/settings/appclone/AppCloneState;->mContext:Landroid/content/Context;

    const v4, 0x7f120163

    .line 343
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v7, v3}, Lcom/meizu/settings/appclone/AppCloneBaseInfo;-><init>(ILjava/lang/String;)V

    .line 344
    new-instance v3, Lcom/meizu/settings/appclone/AppCloneBaseInfo;

    iget-object v4, v0, Lcom/meizu/settings/appclone/AppCloneState;->mContext:Landroid/content/Context;

    const v5, 0x7f120164

    .line 345
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4}, Lcom/meizu/settings/appclone/AppCloneBaseInfo;-><init>(ILjava/lang/String;)V

    .line 346
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 350
    :cond_20d
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_225

    .line 352
    new-instance v2, Lcom/meizu/settings/appclone/AppCloneBaseInfo;

    iget-object v3, v0, Lcom/meizu/settings/appclone/AppCloneState;->mContext:Landroid/content/Context;

    const v4, 0x7f120162

    .line 353
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lcom/meizu/settings/appclone/AppCloneBaseInfo;-><init>(ILjava/lang/String;)V

    .line 354
    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 356
    :cond_225
    iget-object v2, v0, Lcom/meizu/settings/appclone/AppCloneState;->mFinalAppCloneList:Ljava/util/List;

    monitor-enter v2

    .line 357
    :try_start_228
    iput-object v1, v0, Lcom/meizu/settings/appclone/AppCloneState;->mFinalAppCloneList:Ljava/util/List;

    .line 358
    monitor-exit v2
    :try_end_22b
    .catchall {:try_start_228 .. :try_end_22b} :catchall_236

    .line 359
    iget-object v0, v0, Lcom/meizu/settings/appclone/AppCloneState;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_236
    move-exception v0

    .line 358
    :try_start_237
    monitor-exit v2
    :try_end_238
    .catchall {:try_start_237 .. :try_end_238} :catchall_236

    throw v0

    :catchall_239
    move-exception v0

    .line 241
    :try_start_23a
    monitor-exit v1
    :try_end_23b
    .catchall {:try_start_23a .. :try_end_23b} :catchall_239

    throw v0
.end method

.method private reportAppCloneData(ZLjava/lang/String;I)V
    .registers 7

    if-nez p2, :cond_b

    const-string p0, "AppCloneState"

    const-string/jumbo p1, "reportAppCloneData pkg null"

    .line 448
    invoke-static {p0, p1}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    const-string v0, ":1"

    .line 451
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x0

    .line 453
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 455
    :cond_19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "app_name"

    .line 456
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    iget-object v1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mSuggestedPkgList:Ljava/util/List;

    monitor-enter v1

    .line 459
    :try_start_26
    iget-object v2, p0, Lcom/meizu/settings/appclone/AppCloneState;->mSuggestedPkgList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_37

    const-string/jumbo p2, "type"

    const-string v2, "0"

    .line 460
    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    :cond_37
    const-string/jumbo p2, "type"

    const-string v2, "1"

    .line 462
    invoke-interface {v0, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    :goto_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_26 .. :try_end_40} :catchall_69

    .line 466
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "sourse"

    invoke-interface {v0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_5b

    .line 468
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-class p1, Lcom/meizu/settings/appclone/AppCloneSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "start_another"

    invoke-virtual {p0, p2, p1, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_68

    .line 471
    :cond_5b
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-class p1, Lcom/meizu/settings/appclone/AppCloneSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "close_another"

    invoke-virtual {p0, p2, p1, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_68
    return-void

    :catchall_69
    move-exception p0

    .line 464
    :try_start_6a
    monitor-exit v1
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw p0
.end method

.method private updateAppCloneList(Ljava/lang/String;Z)V
    .registers 7

    .line 381
    iget-object p2, p0, Lcom/meizu/settings/appclone/AppCloneState;->mFinalAppCloneList:Ljava/util/List;

    monitor-enter p2

    .line 382
    :try_start_3
    invoke-virtual {p0}, Lcom/meizu/settings/appclone/AppCloneState;->getAppCloneEnabledList()Ljava/util/List;

    move-result-object v0

    .line 383
    iget-object v1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mFinalAppCloneList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/appclone/AppCloneBaseInfo;

    .line 384
    instance-of v3, v2, Lcom/meizu/settings/appclone/AppCloneAppInfo;

    if-nez v3, :cond_1e

    goto :goto_d

    .line 387
    :cond_1e
    check-cast v2, Lcom/meizu/settings/appclone/AppCloneAppInfo;

    .line 388
    invoke-virtual {v2}, Lcom/meizu/settings/appclone/AppCloneAppInfo;->getPkg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 389
    invoke-virtual {v2}, Lcom/meizu/settings/appclone/AppCloneAppInfo;->getPkg()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/meizu/settings/appclone/AppCloneAppInfo;->setCloneEnabled(Z)V

    .line 390
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mChangeListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3b
    :goto_3b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/appclone/AppCloneState$AppCloneStateChangeListener;

    if-eqz v0, :cond_3b

    .line 392
    iget-object v1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mFinalAppCloneList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/meizu/settings/appclone/AppCloneState$AppCloneStateChangeListener;->onAppCloneListChange(Ljava/util/List;)V

    const-string v0, "AppCloneState"

    const-string/jumbo v1, "onAppCloneListChange"

    .line 393
    invoke-static {v0, v1}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    .line 396
    :cond_57
    monitor-exit p2

    return-void

    .line 399
    :cond_59
    monitor-exit p2

    return-void

    :catchall_5b
    move-exception p0

    monitor-exit p2
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw p0
.end method

.method private updatePrivateList(Ljava/lang/String;Z)V
    .registers 8

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/meizu/settings/appclone/AppCloneState;->getPrivateAppPkgList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "AppCloneState"

    if-eqz p2, :cond_47

    .line 507
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 508
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_45

    .line 510
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updatePrivateList add privateClonePkg = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    move p1, v2

    goto :goto_62

    :cond_45
    const/4 p1, 0x0

    goto :goto_62

    .line 516
    :cond_47
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 518
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePrivateList rm privateClonePkg = "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    :goto_62
    if-eqz p1, :cond_a0

    .line 523
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    .line 524
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_6d

    .line 527
    :cond_8e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_98

    .line 528
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 530
    :cond_98
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo p2, "private_pkg_list"

    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_a0
    return-void
.end method


# virtual methods
.method public getAppCloneEnabledList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 403
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/settings/appclone/AppCloneState;->getAppCloneEnabledList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public handlePkgRemove(Ljava/lang/String;)V
    .registers 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    move-object v0, p0

    move-object v2, p1

    .line 439
    invoke-virtual/range {v0 .. v5}, Lcom/meizu/settings/appclone/AppCloneState;->setAppCloneEnabled(ZLjava/lang/String;ZZI)Z

    move-result p1

    if-nez p1, :cond_20

    .line 440
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mChangeListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_20

    const/4 p1, 0x0

    .line 441
    iput-boolean p1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mIgnoreOnChanged:Z

    .line 442
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mBackgroundHandler:Lcom/meizu/settings/appclone/AppCloneState$BackgroundHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_20
    return-void
.end method

.method public onPause(Lcom/meizu/settings/appclone/AppCloneState$AppCloneStateChangeListener;)V
    .registers 4

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPause  l = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppCloneState"

    invoke-static {v1, v0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 227
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mChangeListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 228
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 229
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_32
    return-void
.end method

.method public onResume(Lcom/meizu/settings/appclone/AppCloneState$AppCloneStateChangeListener;)V
    .registers 5

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResume l = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppCloneState"

    invoke-static {v1, v0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 210
    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mChangeListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_24
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mChangeListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5c

    .line 214
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mResolver:Landroid/content/ContentResolver;

    sget-object v0, Lcom/meizu/settings/appclone/AppCloneState;->APP_CLONE_ENABLE_PKGS_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 215
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mResolver:Landroid/content/ContentResolver;

    sget-object v0, Lcom/meizu/settings/appclone/AppCloneState;->APP_CLONE_SUGGESTED_PKGS_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 217
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mResolver:Landroid/content/ContentResolver;

    sget-object v0, Lcom/meizu/settings/appclone/AppCloneState;->APP_CLONE_IGNORE_PKGS_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 218
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/meizu/settings/appclone/AppCloneState;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 219
    iput-boolean v2, p0, Lcom/meizu/settings/appclone/AppCloneState;->mIgnoreOnChanged:Z

    .line 220
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mBackgroundHandler:Lcom/meizu/settings/appclone/AppCloneState$BackgroundHandler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_5c
    return-void
.end method

.method public setAppCloneEnabled(ZLjava/lang/String;ZZI)Z
    .registers 8

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAppCloneEnabled enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " needUpdatePrivateList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppCloneState"

    invoke-static {v1, v0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iput-boolean p3, p0, Lcom/meizu/settings/appclone/AppCloneState;->mIgnoreOnChanged:Z

    if-eqz p1, :cond_32

    .line 483
    iget-object p3, p0, Lcom/meizu/settings/appclone/AppCloneState;->mAppCloneUpdateHelper:Lcom/meizu/settings/appclone/AppCloneUpdateHelper;

    invoke-virtual {p3, p2}, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->enableAppClone(Ljava/lang/String;)Z

    move-result p3

    goto :goto_38

    .line 485
    :cond_32
    iget-object p3, p0, Lcom/meizu/settings/appclone/AppCloneState;->mAppCloneUpdateHelper:Lcom/meizu/settings/appclone/AppCloneUpdateHelper;

    invoke-virtual {p3, p2}, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->disableAppClone(Ljava/lang/String;)Z

    move-result p3

    :goto_38
    if-eqz p3, :cond_47

    .line 490
    invoke-direct {p0, p2, p1}, Lcom/meizu/settings/appclone/AppCloneState;->updateAppCloneList(Ljava/lang/String;Z)V

    if-eqz p4, :cond_42

    .line 493
    invoke-direct {p0, p2, p1}, Lcom/meizu/settings/appclone/AppCloneState;->updatePrivateList(Ljava/lang/String;Z)V

    .line 495
    :cond_42
    invoke-direct {p0, p1, p2, p5}, Lcom/meizu/settings/appclone/AppCloneState;->reportAppCloneData(ZLjava/lang/String;I)V

    const/4 p0, 0x1

    return p0

    :cond_47
    const/4 p0, 0x0

    return p0
.end method

.method public startGetIconIfNeeded(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startGetIcon pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AppCloneState"

    invoke-static {v2, v0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getIconFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 365
    iget-object v3, p0, Lcom/meizu/settings/appclone/AppCloneState;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->isDefaultIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 366
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  need get icon"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneState;->mBackgroundHandler:Lcom/meizu/settings/appclone/AppCloneState$BackgroundHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_4e
    return-object v0
.end method
