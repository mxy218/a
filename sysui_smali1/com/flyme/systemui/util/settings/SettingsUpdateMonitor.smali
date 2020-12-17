.class public final Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;
.super Ljava/lang/Object;
.source "SettingsUpdateMonitor.java"


# static fields
.field private static sInstance:Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;


# instance fields
.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/flyme/systemui/util/settings/SettingsUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mNightModeEnable:Z

.field private mNightModeObserver:Landroid/database/ContentObserver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->mNightModeEnable:Z

    .line 42
    new-instance v0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor$1;-><init>(Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->mNightModeObserver:Landroid/database/ContentObserver;

    .line 55
    new-instance v0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor$2;-><init>(Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->mHandler:Landroid/os/Handler;

    .line 67
    iput-object p1, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;)Landroid/content/Context;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;)Z
    .registers 1

    .line 27
    iget-boolean p0, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->mNightModeEnable:Z

    return p0
.end method

.method static synthetic access$102(Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;Z)Z
    .registers 2

    .line 27
    iput-boolean p1, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->mNightModeEnable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;)Landroid/os/Handler;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;Z)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->handleSettingsNightModeChanged(Z)V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;
    .registers 3

    const-class v0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;

    monitor-enter v0

    .line 71
    :try_start_3
    sget-object v1, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->sInstance:Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;

    if-nez v1, :cond_e

    .line 72
    new-instance v1, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->sInstance:Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;

    .line 74
    :cond_e
    sget-object p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->sInstance:Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private handleSettingsNightModeChanged(Z)V
    .registers 4

    const/4 v0, 0x0

    .line 117
    :goto_1
    iget-object v1, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 118
    iget-object v1, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitorCallback;

    .line 119
    invoke-interface {v1, p1}, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitorCallback;->onSettingsNightModeChanged(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    return-void
.end method

.method private initSetings()V
    .registers 4

    .line 83
    iget-object v0, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "flymelab_flyme_night_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    move v1, v2

    :cond_11
    iput-boolean v1, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->mNightModeEnable:Z

    return-void
.end method

.method private registerSettings()V
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->mContentResolver:Landroid/content/ContentResolver;

    .line 88
    iget-object v0, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "flymelab_flyme_night_mode"

    .line 89
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->mNightModeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    .line 88
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public init()V
    .registers 1

    .line 78
    invoke-direct {p0}, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->initSetings()V

    .line 79
    invoke-direct {p0}, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->registerSettings()V

    return-void
.end method

.method public registerCallback(Lcom/flyme/systemui/util/settings/SettingsUpdateMonitorCallback;)V
    .registers 5

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** register callback for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 95
    :goto_17
    iget-object v2, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3f

    .line 96
    iget-object v2, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3c

    .line 97
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_3c

    .line 98
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Called by"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string p1, "Object tried to add another callback"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 103
    :cond_3f
    iget-object v0, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 104
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->removeCallback(Lcom/flyme/systemui/util/settings/SettingsUpdateMonitorCallback;)V

    return-void
.end method

.method public removeCallback(Lcom/flyme/systemui/util/settings/SettingsUpdateMonitorCallback;)V
    .registers 4

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** unregister callback for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1e
    if-ltz v0, :cond_36

    .line 110
    iget-object v1, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_33

    .line 111
    iget-object v1, p0, Lcom/flyme/systemui/util/settings/SettingsUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_1e

    :cond_36
    return-void
.end method
