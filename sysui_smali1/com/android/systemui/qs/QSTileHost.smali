.class public Lcom/android/systemui/qs/QSTileHost;
.super Ljava/lang/Object;
.source "QSTileHost.java"

# interfaces
.implements Lcom/android/systemui/qs/QSHost;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSTileHost$DeveloperOptionsContentObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/qs/QSHost;",
        "Lcom/android/systemui/tuner/TunerService$Tunable;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/qs/QSFactory;",
        ">;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAutoTiles:Lcom/android/systemui/statusbar/phone/AutoTileManager;

.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/qs/QSHost$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mDevOptionChanged:Z

.field private final mDumpController:Lcom/android/systemui/DumpController;

.field private final mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

.field private mMeizuSharePackageChanged:Z

.field private final mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

.field private final mQsFactories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/plugins/qs/QSFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final mServices:Lcom/android/systemui/qs/external/TileServices;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mTilePreferences:Landroid/content/SharedPreferences;

.field protected final mTileSpecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiles:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;"
        }
    .end annotation
.end field

.field private mTilesOrderChanged:Z

.field private final mTunerService:Lcom/android/systemui/tuner/TunerService;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "QSTileHost"

    const/4 v1, 0x3

    .line 80
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;Landroid/os/Handler;Landroid/os/Looper;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/tuner/TunerService;Ljavax/inject/Provider;Lcom/android/systemui/DumpController;)V
    .registers 11
    .param p4  # Landroid/os/Handler;
        .annotation runtime Ljavax/inject/Named;
            value = "main_handler"
        .end annotation
    .end param
    .param p5  # Landroid/os/Looper;
        .annotation runtime Ljavax/inject/Named;
            value = "background_looper"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/phone/StatusBarIconController;",
            "Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;",
            "Landroid/os/Handler;",
            "Landroid/os/Looper;",
            "Lcom/android/systemui/shared/plugins/PluginManager;",
            "Lcom/android/systemui/tuner/TunerService;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/AutoTileManager;",
            ">;",
            "Lcom/android/systemui/DumpController;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 580
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTilesOrderChanged:Z

    .line 581
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSTileHost;->mDevOptionChanged:Z

    .line 582
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSTileHost;->mMeizuSharePackageChanged:Z

    .line 109
    iput-object p2, p0, Lcom/android/systemui/qs/QSTileHost;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .line 110
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    .line 111
    iput-object p7, p0, Lcom/android/systemui/qs/QSTileHost;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    .line 112
    iput-object p6, p0, Lcom/android/systemui/qs/QSTileHost;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    .line 113
    iput-object p9, p0, Lcom/android/systemui/qs/QSTileHost;->mDumpController:Lcom/android/systemui/DumpController;

    .line 115
    new-instance p1, Lcom/android/systemui/qs/external/TileServices;

    invoke-direct {p1, p0, p5}, Lcom/android/systemui/qs/external/TileServices;-><init>(Lcom/android/systemui/qs/QSTileHost;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mServices:Lcom/android/systemui/qs/external/TileServices;

    .line 117
    invoke-virtual {p3, p0}, Lcom/android/systemui/qs/tileimpl/QSFactoryImpl;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    .line 118
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    const-class p1, Lcom/android/systemui/plugins/qs/QSFactory;

    const/4 p2, 0x1

    invoke-interface {p6, p0, p1, p2}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 120
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mDumpController:Lcom/android/systemui/DumpController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/DumpController;->addListener(Lcom/android/systemui/Dumpable;)V

    .line 122
    new-instance p1, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$8OyZkY1GXlSGEY9CusSz83dAxOw;

    invoke-direct {p1, p0, p7, p8}, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$8OyZkY1GXlSGEY9CusSz83dAxOw;-><init>(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/tuner/TunerService;Ljavax/inject/Provider;)V

    invoke-virtual {p4, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 132
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "development_settings_enabled"

    .line 133
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/qs/QSTileHost$DeveloperOptionsContentObserver;

    new-instance p4, Landroid/os/Handler;

    invoke-direct {p4}, Landroid/os/Handler;-><init>()V

    invoke-direct {p3, p0, p4}, Lcom/android/systemui/qs/QSTileHost$DeveloperOptionsContentObserver;-><init>(Lcom/android/systemui/qs/QSTileHost;Landroid/os/Handler;)V

    .line 132
    invoke-virtual {p1, p2, v0, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileHost;->registerMeizuShareIntentReceivers()V

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileHost;->handleTileOrderFromOldVersion()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/QSTileHost;)Lcom/android/systemui/tuner/TunerService;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/qs/QSTileHost;Z)Z
    .registers 2

    .line 78
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSTileHost;->mDevOptionChanged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSTileHost;)Landroid/content/Context;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/qs/QSTileHost;Z)Z
    .registers 2

    .line 78
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSTileHost;->mMeizuSharePackageChanged:Z

    return p1
.end method

.method private changeTileSpecs(Ljava/util/function/Predicate;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 324
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const-string/jumbo v2, "sysui_qs_tiles"

    .line 323
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 326
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 327
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, ","

    .line 328
    invoke-static {p1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 327
    invoke-static {p0, v2, p1, v0}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_30
    return-void
.end method

.method private static diffTileList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 474
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    .line 478
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 479
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 480
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 482
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    :goto_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 483
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 484
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2c

    .line 488
    :cond_42
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_46
    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 489
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 490
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_46

    .line 494
    :cond_5c
    invoke-static {v1, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTileListOrderFromPreferences()Ljava/lang/String;
    .registers 5

    .line 508
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    .line 509
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/UserManagerUtils;->isGuestUser()Z

    move-result v1

    const-string/jumbo v2, "shortcut_order"

    if-eqz v1, :cond_f

    const-string/jumbo v1, "shortcut_order_guest"

    goto :goto_10

    :cond_f
    move-object v1, v2

    :goto_10
    const/4 v3, 0x0

    .line 508
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTilePreferences:Landroid/content/SharedPreferences;

    .line 511
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTilePreferences:Landroid/content/SharedPreferences;

    const-string v0, ""

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleTileOrderFromOldVersion()V
    .registers 5

    .line 499
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileHost;->getTileListOrderFromPreferences()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 500
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 501
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 502
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const-string/jumbo v3, "sysui_qs_tiles"

    .line 501
    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 503
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTileHost;->setEmptyTileListOrderToPreferences()V

    :cond_21
    return-void
.end method

.method static synthetic lambda$addTile$5(Ljava/lang/String;Ljava/util/List;)Z
    .registers 2

    .line 319
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$dump$6(Lcom/android/systemui/plugins/qs/QSTile;)Z
    .registers 1

    .line 426
    instance-of p0, p0, Lcom/android/systemui/Dumpable;

    return p0
.end method

.method static synthetic lambda$dump$7(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Lcom/android/systemui/plugins/qs/QSTile;)V
    .registers 4

    .line 427
    check-cast p3, Lcom/android/systemui/Dumpable;

    invoke-interface {p3, p0, p1, p2}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onTuningChanged$2(Ljava/util/List;Ljava/util/Map$Entry;)Z
    .registers 2

    .line 254
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic lambda$onTuningChanged$3(Ljava/util/Map$Entry;)V
    .registers 3

    .line 256
    sget-boolean v0, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destroying tile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSTileHost"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_20
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    return-void
.end method

.method static synthetic lambda$removeTile$4(Ljava/lang/String;Ljava/util/List;)Z
    .registers 2

    .line 310
    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method protected static loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 388
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 389
    sget v0, Lcom/android/systemui/R$string;->quick_settings_tiles_default:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "vendor.meizu.sys.cts_state"

    .line 391
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 392
    invoke-static {v0, p1}, Lcom/android/systemui/qs/QSTileHost;->diffTileList(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 393
    invoke-static {p1}, Lcom/flyme/systemui/statusbar/utils/QSTileUtils;->sortTile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 396
    :cond_1c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "QSTileHost"

    if-eqz v2, :cond_43

    .line 397
    sget p1, Lcom/android/systemui/R$string;->quick_settings_tiles:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 398
    sget-boolean p0, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz p0, :cond_5b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded tile specs from config: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 400
    :cond_43
    sget-boolean p0, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz p0, :cond_5b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded tile specs from setting: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_5b
    :goto_5b
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v2, ","

    .line 404
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v3, p1

    move v4, v1

    :goto_68
    if-ge v1, v3, :cond_9d

    aget-object v5, p1, v1

    .line 405
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 406
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_77

    goto :goto_9a

    :cond_77
    const-string v6, "default"

    .line 407
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_97

    if-nez v4, :cond_9a

    .line 409
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 410
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_95

    const-string v4, "dbg:mem"

    .line 412
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_95
    const/4 v4, 0x1

    goto :goto_9a

    .line 417
    :cond_97
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9a
    :goto_9a
    add-int/lit8 v1, v1, 0x1

    goto :goto_68

    :cond_9d
    return-object p0
.end method

.method private registerMeizuShareIntentReceivers()V
    .registers 4

    .line 452
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 453
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 454
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    .line 455
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 456
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/qs/QSTileHost$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/QSTileHost$1;-><init>(Lcom/android/systemui/qs/QSTileHost;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setEmptyTileListOrderToPreferences()V
    .registers 5

    .line 515
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    .line 516
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/UserManagerUtils;->isGuestUser()Z

    move-result v1

    const-string/jumbo v2, "shortcut_order"

    if-eqz v1, :cond_f

    const-string/jumbo v1, "shortcut_order_guest"

    goto :goto_10

    :cond_f
    move-object v1, v2

    :goto_10
    const/4 v3, 0x0

    .line 515
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTilePreferences:Landroid/content/SharedPreferences;

    .line 518
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTilePreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, ""

    .line 519
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 520
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/qs/QSHost$Callback;)V
    .registers 2

    .line 175
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addTile(Landroid/content/ComponentName;)V
    .registers 4

    .line 333
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 334
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 335
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public addTile(Ljava/lang/String;)V
    .registers 3

    .line 319
    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$iiTl64od8Xx0qaz8exmdhzyHaWg;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$iiTl64od8Xx0qaz8exmdhzyHaWg;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTileSpecs(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public changeTiles(Ljava/util/List;Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 345
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 346
    invoke-interface {p2}, Ljava/util/List;->size()I

    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_5b

    .line 348
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "custom("

    .line 349
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto :goto_58

    .line 350
    :cond_1a
    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_58

    .line 351
    invoke-static {v3}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 352
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v10

    .line 353
    new-instance v4, Lcom/android/systemui/qs/external/TileLifecycleManager;

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/qs/QSTileHost;->mServices:Lcom/android/systemui/qs/external/TileServices;

    new-instance v9, Landroid/service/quicksettings/Tile;

    invoke-direct {v9}, Landroid/service/quicksettings/Tile;-><init>()V

    new-instance v11, Landroid/os/UserHandle;

    .line 355
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-direct {v11, v5}, Landroid/os/UserHandle;-><init>(I)V

    move-object v5, v4

    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/qs/external/TileLifecycleManager;-><init>(Landroid/os/Handler;Landroid/content/Context;Landroid/service/quicksettings/IQSService;Landroid/service/quicksettings/Tile;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 356
    invoke-virtual {v4}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onStopListening()V

    .line 357
    invoke-virtual {v4}, Lcom/android/systemui/qs/external/TileLifecycleManager;->onTileRemoved()V

    .line 358
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {v5, v3, v1}, Lcom/android/systemui/qs/external/TileLifecycleManager;->setTileAdded(Landroid/content/Context;Landroid/content/ComponentName;Z)V

    .line 359
    invoke-virtual {v4}, Lcom/android/systemui/qs/external/TileLifecycleManager;->flushMessagesAndUnbind()V

    :cond_58
    :goto_58
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 362
    :cond_5b
    sget-boolean p1, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz p1, :cond_75

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "saveCurrentTiles "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QSTileHost"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_75
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, ","

    .line 364
    invoke-static {p1, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    const-string/jumbo v0, "sysui_qs_tiles"

    .line 363
    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method public collapsePanels()V
    .registers 3

    .line 195
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v0, :cond_10

    .line 196
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 198
    :cond_10
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->postAnimateCollapsePanels()V

    return-void
.end method

.method public createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .registers 4

    const/4 v0, 0x0

    .line 368
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 369
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-interface {v1, p1}, Lcom/android/systemui/plugins/qs/QSFactory;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v1

    if-eqz v1, :cond_18

    return-object v1

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;
    .registers 5

    const/4 v0, 0x0

    .line 378
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 379
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-interface {v1, p1, p2}, Lcom/android/systemui/plugins/qs/QSFactory;->createTileView(Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;

    move-result-object v1

    if-eqz v1, :cond_18

    return-object v1

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 384
    :cond_1b
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Default factory didn\'t create view for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QSTile;->getTileSpec()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    const-string v0, "QSTileHost:"

    .line 425
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$w0YHlhMwIm7qnoeEO7kRZCq47o8;->INSTANCE:Lcom/android/systemui/qs/-$$Lambda$QSTileHost$w0YHlhMwIm7qnoeEO7kRZCq47o8;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$8dGA3dPDXgH8k-YhV5jUASLKyAo;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$8dGA3dPDXgH8k-YhV5jUASLKyAo;-><init>(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 427
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public forceCollapsePanels()V
    .registers 3

    .line 203
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v0, :cond_10

    .line 204
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 206
    :cond_10
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->postAnimateForceCollapsePanels()V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 219
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentVisibleIndex()I
    .registers 4

    .line 525
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    .line 526
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/UserManagerUtils;->isGuestUser()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string/jumbo v1, "shortcut_order_guest"

    goto :goto_f

    :cond_c
    const-string/jumbo v1, "shortcut_order"

    :goto_f
    const/4 v2, 0x0

    .line 525
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTilePreferences:Landroid/content/SharedPreferences;

    .line 528
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTilePreferences:Landroid/content/SharedPreferences;

    const/16 v0, 0xe

    const-string/jumbo v1, "shortcut_visible_index"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getIconController()Lcom/android/systemui/statusbar/phone/StatusBarIconController;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mIconController:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    return-object p0
.end method

.method public getTileServices()Lcom/android/systemui/qs/external/TileServices;
    .registers 1

    .line 224
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mServices:Lcom/android/systemui/qs/external/TileServices;

    return-object p0
.end method

.method public getTiles()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/systemui/plugins/qs/QSTile;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public indexOf(Ljava/lang/String;)I
    .registers 2

    .line 228
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$0$QSTileHost(Lcom/android/systemui/tuner/TunerService;Ljavax/inject/Provider;)V
    .registers 4

    const-string/jumbo v0, "sysui_qs_tiles"

    .line 126
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 128
    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/AutoTileManager;

    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mAutoTiles:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    return-void
.end method

.method public moveTile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveTile fromSpec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " toSpec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSTileHost"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 557
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 558
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 559
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    .line 560
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSTileHost;->mTilesOrderChanged:Z

    .line 561
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 562
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 563
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .registers 3

    .line 77
    check-cast p1, Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSTileHost;->onPluginConnected(Lcom/android/systemui/plugins/qs/QSFactory;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/qs/QSFactory;Landroid/content/Context;)V
    .registers 4

    .line 157
    iget-object p2, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 158
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo p2, "sysui_qs_tiles"

    invoke-virtual {p1, p2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 160
    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .registers 2

    .line 77
    check-cast p1, Lcom/android/systemui/plugins/qs/QSFactory;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSTileHost;->onPluginDisconnected(Lcom/android/systemui/plugins/qs/QSFactory;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/qs/QSFactory;)V
    .registers 4

    .line 166
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mQsFactories:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 168
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v0, "sysui_qs_tiles"

    invoke-virtual {p1, v0}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    .line 169
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const-string/jumbo v0, "sysui_qs_tiles"

    .line 233
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return-void

    .line 237
    :cond_a
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSTileHost;->mTilesOrderChanged:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    .line 238
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTilesOrderChanged:Z

    return-void

    .line 242
    :cond_12
    sget-boolean p1, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    const-string v1, "QSTileHost"

    if-eqz p1, :cond_1d

    const-string p1, "Recreating tiles"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    if-nez p2, :cond_33

    .line 243
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 244
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$string;->quick_settings_tiles_retail_mode:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 246
    :cond_33
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 247
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p2

    .line 250
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-interface {p1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    iget v2, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    if-ne p2, v2, :cond_52

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTileHost;->mDevOptionChanged:Z

    if-nez v2, :cond_52

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTileHost;->mMeizuSharePackageChanged:Z

    if-nez v2, :cond_52

    return-void

    .line 251
    :cond_52
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSTileHost;->mDevOptionChanged:Z

    .line 252
    iput-boolean v0, p0, Lcom/android/systemui/qs/QSTileHost;->mMeizuSharePackageChanged:Z

    .line 254
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$tL3GWCpuev-DvXg1noj_yj7fk3Y;

    invoke-direct {v3, p1}, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$tL3GWCpuev-DvXg1noj_yj7fk3Y;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$_TW3-g9Ui2otBinO5ZHSBKxrVFI;->INSTANCE:Lcom/android/systemui/qs/-$$Lambda$QSTileHost$_TW3-g9Ui2otBinO5ZHSBKxrVFI;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 259
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 260
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_77
    :goto_77
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_113

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 261
    iget-object v5, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/plugins/qs/QSTile;

    if-eqz v5, :cond_cc

    .line 262
    instance-of v6, v5, Lcom/android/systemui/qs/external/CustomTile;

    if-eqz v6, :cond_9a

    move-object v7, v5

    check-cast v7, Lcom/android/systemui/qs/external/CustomTile;

    .line 263
    invoke-virtual {v7}, Lcom/android/systemui/qs/external/CustomTile;->getUser()I

    move-result v7

    if-ne v7, p2, :cond_cc

    .line 264
    :cond_9a
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_c8

    .line 265
    sget-boolean v7, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v7, :cond_b8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_b8
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->removeCallbacks()V

    if-nez v6, :cond_c4

    .line 267
    iget v6, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    if-eq v6, p2, :cond_c4

    .line 268
    invoke-interface {v5, p2}, Lcom/android/systemui/plugins/qs/QSTile;->userSwitch(I)V

    .line 270
    :cond_c4
    invoke-virtual {v2, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_77

    .line 272
    :cond_c8
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V

    goto :goto_77

    .line 275
    :cond_cc
    sget-boolean v5, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz v5, :cond_e4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating tile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_e4
    :try_start_e4
    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSTileHost;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object v5

    if-eqz v5, :cond_77

    .line 279
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_f7

    .line 280
    invoke-interface {v5, v4}, Lcom/android/systemui/plugins/qs/QSTile;->setTileSpec(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v2, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_77

    .line 283
    :cond_f7
    invoke-interface {v5}, Lcom/android/systemui/plugins/qs/QSTile;->destroy()V
    :try_end_fa
    .catchall {:try_start_e4 .. :try_end_fa} :catchall_fc

    goto/16 :goto_77

    :catchall_fc
    move-exception v5

    .line 287
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error creating tile for spec: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_77

    .line 291
    :cond_113
    iput p2, p0, Lcom/android/systemui/qs/QSTileHost;->mCurrentUser:I

    .line 292
    new-instance p2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {p2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 293
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 294
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 295
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V

    .line 296
    iget-object v3, p0, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    .line 297
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_151

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_151

    .line 299
    sget-boolean p1, Lcom/android/systemui/qs/QSTileHost;->DEBUG:Z

    if-eqz p1, :cond_145

    const-string p1, "No valid tiles on tuning changed. Setting to default."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_145
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/android/systemui/qs/QSTileHost;->loadTileSpecs(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    goto :goto_167

    .line 302
    :cond_151
    :goto_151
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_167

    .line 303
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/QSHost$Callback;

    invoke-interface {p1}, Lcom/android/systemui/qs/QSHost$Callback;->onTilesChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_151

    :cond_167
    :goto_167
    return-void
.end method

.method public openPanels()V
    .registers 3

    .line 211
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v0, :cond_10

    .line 212
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 214
    :cond_10
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->postAnimateOpenPanels()V

    return-void
.end method

.method refreshAllTiles()V
    .registers 4

    .line 568
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v1, "sysui_qs_tiles"

    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    .line 570
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/qs/QSHost$Callback;)V
    .registers 2

    .line 180
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeTile(Landroid/content/ComponentName;)V
    .registers 4

    .line 339
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 340
    invoke-static {p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 341
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public removeTile(Ljava/lang/String;)V
    .registers 3

    .line 310
    new-instance v0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$lvnGvThFo7-HeGkbFqhwU9KCtaQ;

    invoke-direct {v0, p1}, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$lvnGvThFo7-HeGkbFqhwU9KCtaQ;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTileSpecs(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public setCurrentVisibleIndex(I)V
    .registers 5

    .line 532
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mContext:Landroid/content/Context;

    .line 533
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/UserManagerUtils;->isGuestUser()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string/jumbo v1, "shortcut_order_guest"

    goto :goto_f

    :cond_c
    const-string/jumbo v1, "shortcut_order"

    :goto_f
    const/4 v2, 0x0

    .line 532
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTilePreferences:Landroid/content/SharedPreferences;

    .line 535
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTilePreferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "shortcut_visible_index"

    .line 536
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 537
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public swapTile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "swapTile fromSpec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " toSpec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSTileHost"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 543
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 544
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 545
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 546
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, p2, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 547
    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 548
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSTileHost;->mTilesOrderChanged:Z

    .line 549
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/qs/QSTileHost;->changeTiles(Ljava/util/List;Ljava/util/List;)V

    .line 550
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 551
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mTileSpecs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public unmarkTileAsAutoAdded(Ljava/lang/String;)V
    .registers 2

    .line 315
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHost;->mAutoTiles:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/AutoTileManager;->unmarkTileAsAutoAdded(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    return-void
.end method
