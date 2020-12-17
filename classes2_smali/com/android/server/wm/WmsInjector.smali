.class public Lcom/android/server/wm/WmsInjector;
.super Ljava/lang/Object;
.source "WmsInjector.java"


# static fields
.field private static sWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destoryWindow(II)V
    .registers 3
    .param p0, "pid"  # I
    .param p1, "winId"  # I

    .line 42
    invoke-static {}, Lcom/meizu/pps/observer/PPSProcessManager;->getInstance()Lcom/meizu/pps/observer/PPSProcessManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/meizu/pps/observer/PPSProcessManager;->destoryWindow(II)V

    .line 43
    return-void
.end method

.method public static hideWindow(II)V
    .registers 3
    .param p0, "pid"  # I
    .param p1, "winId"  # I

    .line 38
    invoke-static {}, Lcom/meizu/pps/observer/PPSProcessManager;->getInstance()Lcom/meizu/pps/observer/PPSProcessManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/meizu/pps/observer/PPSProcessManager;->hideWindow(II)V

    .line 39
    return-void
.end method

.method public static initialize(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .param p0, "wms"  # Lcom/android/server/wm/WindowManagerService;

    .line 26
    sput-object p0, Lcom/android/server/wm/WmsInjector;->sWms:Lcom/android/server/wm/WindowManagerService;

    .line 29
    invoke-static {}, Lcom/android/server/wm/WmsExecutor;->getInstance()Lcom/android/server/wm/WmsExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WmsExecutor;->initialize(Lcom/android/server/wm/WindowManagerService;)V

    .line 31
    return-void
.end method

.method public static setHome(Lcom/android/server/wm/WindowProcessController;)V
    .registers 2
    .param p0, "wpc"  # Lcom/android/server/wm/WindowProcessController;

    .line 50
    if-eqz p0, :cond_9

    .line 51
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/meizu/pps/observer/PPSAppTypeManager;->setHome(Ljava/lang/String;)V

    .line 53
    :cond_9
    return-void
.end method

.method public static showWindow(II)V
    .registers 3
    .param p0, "pid"  # I
    .param p1, "winId"  # I

    .line 46
    invoke-static {}, Lcom/meizu/pps/observer/PPSProcessManager;->getInstance()Lcom/meizu/pps/observer/PPSProcessManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/meizu/pps/observer/PPSProcessManager;->showWindow(II)V

    .line 47
    return-void
.end method

.method public static showWindow(IIII)V
    .registers 5
    .param p0, "pid"  # I
    .param p1, "winId"  # I
    .param p2, "width"  # I
    .param p3, "height"  # I

    .line 34
    invoke-static {}, Lcom/meizu/pps/observer/PPSProcessManager;->getInstance()Lcom/meizu/pps/observer/PPSProcessManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/meizu/pps/observer/PPSProcessManager;->showWindow(II)V

    .line 35
    return-void
.end method
