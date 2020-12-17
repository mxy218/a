.class public Lcom/android/systemui/doze/DozeService;
.super Landroid/service/dreams/DreamService;
.source "DozeService.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Service;
.implements Lcom/android/systemui/plugins/DozeServicePlugin$RequestDoze;
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/service/dreams/DreamService;",
        "Lcom/android/systemui/doze/DozeMachine$Service;",
        "Lcom/android/systemui/plugins/DozeServicePlugin$RequestDoze;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/DozeServicePlugin;",
        ">;"
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field private mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

.field private mDozePlugin:Lcom/android/systemui/plugins/DozeServicePlugin;

.field private final mHandler:Landroid/os/Handler;

.field private mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

.field private mStopDoze:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "DozeService"

    const/4 v1, 0x3

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 51
    invoke-direct {p0}, Landroid/service/dreams/DreamService;-><init>()V

    .line 163
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHandler:Landroid/os/Handler;

    .line 165
    new-instance v0, Lcom/android/systemui/doze/DozeService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/doze/DozeService$1;-><init>(Lcom/android/systemui/doze/DozeService;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mStopDoze:Ljava/lang/Runnable;

    .line 52
    sget-boolean v0, Lcom/android/systemui/doze/DozeService;->DEBUG:Z

    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->setDebug(Z)V

    return-void
.end method

.method private shouldEnterDoze()Z
    .registers 1

    .line 160
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->hasMeizuLiveWallpaper()Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 118
    invoke-super {p0, p1, p2, p3}, Landroid/service/dreams/DreamService;->dumpOnHandler(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 119
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    if-eqz p0, :cond_a

    .line 120
    invoke-virtual {p0, p2}, Lcom/android/systemui/doze/DozeMachine;->dump(Ljava/io/PrintWriter;)V

    :cond_a
    return-void
.end method

.method public onCreate()V
    .registers 4

    .line 57
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onCreate()V

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->setWindowless(Z)V

    .line 61
    invoke-static {p0}, Lcom/android/systemui/doze/DozeFactory;->getHost(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeHost;

    move-result-object v0

    if-nez v0, :cond_11

    .line 62
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->finish()V

    return-void

    .line 65
    :cond_11
    const-class v0, Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/plugins/PluginManager;

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    const-class v1, Lcom/android/systemui/plugins/DozeServicePlugin;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 67
    new-instance v0, Lcom/android/systemui/doze/DozeFactory;

    invoke-direct {v0}, Lcom/android/systemui/doze/DozeFactory;-><init>()V

    const-class v1, Lcom/android/systemui/plugins/FalsingManager;

    .line 68
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/FalsingManager;

    .line 67
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/doze/DozeFactory;->assembleMachine(Lcom/android/systemui/doze/DozeService;Lcom/android/systemui/plugins/FalsingManager;)Lcom/android/systemui/doze/DozeMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    if-eqz v0, :cond_7

    .line 74
    invoke-interface {v0, p0}, Lcom/android/systemui/shared/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 76
    :cond_7
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDestroy()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    return-void
.end method

.method public onDreamingStarted()V
    .registers 3

    .line 96
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStarted()V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->INITIALIZED:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 98
    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->startDozing()V

    .line 99
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mDozePlugin:Lcom/android/systemui/plugins/DozeServicePlugin;

    if-eqz p0, :cond_14

    .line 100
    invoke-interface {p0}, Lcom/android/systemui/plugins/DozeServicePlugin;->onDreamingStarted()V

    :cond_14
    return-void
.end method

.method public onDreamingStopped()V
    .registers 3

    .line 106
    invoke-super {p0}, Landroid/service/dreams/DreamService;->onDreamingStopped()V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    sget-object v1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mDozePlugin:Lcom/android/systemui/plugins/DozeServicePlugin;

    if-eqz v0, :cond_11

    .line 109
    invoke-interface {v0}, Lcom/android/systemui/plugins/DozeServicePlugin;->onDreamingStopped()V

    .line 112
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mStopDoze:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/DozeServicePlugin;Landroid/content/Context;)V
    .registers 3

    .line 82
    iput-object p1, p0, Lcom/android/systemui/doze/DozeService;->mDozePlugin:Lcom/android/systemui/plugins/DozeServicePlugin;

    .line 83
    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mDozePlugin:Lcom/android/systemui/plugins/DozeServicePlugin;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/DozeServicePlugin;->setDozeRequester(Lcom/android/systemui/plugins/DozeServicePlugin$RequestDoze;)V

    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .registers 3

    .line 41
    check-cast p1, Lcom/android/systemui/plugins/DozeServicePlugin;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/doze/DozeService;->onPluginConnected(Lcom/android/systemui/plugins/DozeServicePlugin;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/DozeServicePlugin;)V
    .registers 2

    .line 88
    iget-object p1, p0, Lcom/android/systemui/doze/DozeService;->mDozePlugin:Lcom/android/systemui/plugins/DozeServicePlugin;

    if-eqz p1, :cond_a

    .line 89
    invoke-interface {p1}, Lcom/android/systemui/plugins/DozeServicePlugin;->onDreamingStopped()V

    const/4 p1, 0x0

    .line 90
    iput-object p1, p0, Lcom/android/systemui/doze/DozeService;->mDozePlugin:Lcom/android/systemui/plugins/DozeServicePlugin;

    :cond_a
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .registers 2

    .line 41
    check-cast p1, Lcom/android/systemui/plugins/DozeServicePlugin;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeService;->onPluginDisconnected(Lcom/android/systemui/plugins/DozeServicePlugin;)V

    return-void
.end method

.method public onRequestHideDoze()V
    .registers 2

    .line 140
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    if-eqz p0, :cond_9

    .line 141
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_9
    return-void
.end method

.method public onRequestShowDoze()V
    .registers 2

    .line 133
    iget-object p0, p0, Lcom/android/systemui/doze/DozeService;->mDozeMachine:Lcom/android/systemui/doze/DozeMachine;

    if-eqz p0, :cond_9

    .line 134
    sget-object v0, Lcom/android/systemui/doze/DozeMachine$State;->DOZE_AOD:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, v0}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_9
    return-void
.end method

.method public requestWakeUp()V
    .registers 5

    .line 126
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Landroid/service/dreams/DreamService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x4

    const-string v3, "com.android.systemui:NODOZE"

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    return-void
.end method

.method public setDozeScreenState(I)V
    .registers 6

    const-string/jumbo v0, "vendor.meizu.sys.cts_state"

    const/4 v1, 0x0

    .line 148
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_28

    .line 150
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeService;->shouldEnterDoze()Z

    move-result v1

    if-eqz v1, :cond_28

    if-nez v0, :cond_28

    const/4 p1, 0x3

    .line 152
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService;->mStopDoze:Ljava/lang/Runnable;

    invoke-virtual {p0}, Landroid/service/dreams/DreamService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getLiveWallpaperAnimationTime()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 155
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDozeScreenState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-super {p0, p1}, Landroid/service/dreams/DreamService;->setDozeScreenState(I)V

    return-void
.end method
