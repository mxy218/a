.class final Lcom/android/server/wm/FlymeWindowManagerService;
.super Lflyme/view/IWindowManagerExt$Stub;
.source "FlymeWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/FlymeWindowManagerService$LocalService;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static sInstance:Lcom/android/server/wm/FlymeWindowManagerService;


# instance fields
.field mAccessControlService:Lcom/meizu/server/AccessControlService;

.field final mAmInternal:Landroid/app/ActivityManagerInternal;

.field private mColorFadeShow:Z

.field mFlymePackageManagerService:Lcom/android/server/pm/FlymePackageManagerService;

.field private mIsFingerprintAuthenticatingInAodMode:Z

.field mLocalService:Lcom/android/server/wm/FlymeWindowManagerService$LocalService;

.field private mLockOrientationForSensor:Z

.field private mMoveWindowManager:Lcom/android/server/wm/FlymeMoveWindowController;

.field private mService:Lcom/android/server/wm/WindowManagerService;

.field private mWindowModeManager:Lcom/android/server/wm/FlymeWindowModeController;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 4
    .param p1, "wms"  # Lcom/android/server/wm/WindowManagerService;

    .line 73
    invoke-direct {p0}, Lflyme/view/IWindowManagerExt$Stub;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 75
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 76
    new-instance v0, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;-><init>(Lcom/android/server/wm/FlymeWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mLocalService:Lcom/android/server/wm/FlymeWindowManagerService$LocalService;

    .line 77
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mLocalService:Lcom/android/server/wm/FlymeWindowManagerService$LocalService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->access$000(Lcom/android/server/wm/FlymeWindowManagerService$LocalService;I)Lcom/android/server/wm/FlymeMoveWindowController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mMoveWindowManager:Lcom/android/server/wm/FlymeMoveWindowController;

    .line 78
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mLocalService:Lcom/android/server/wm/FlymeWindowManagerService$LocalService;

    invoke-static {v0, v1}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->access$100(Lcom/android/server/wm/FlymeWindowManagerService$LocalService;I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mWindowModeManager:Lcom/android/server/wm/FlymeWindowModeController;

    .line 79
    const-class v0, Lcom/android/server/wm/FlymeWindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mLocalService:Lcom/android/server/wm/FlymeWindowManagerService$LocalService;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 80
    const-string v0, "window_ext"

    invoke-static {v0}, Lcom/android/server/utils/DebugOptions;->getInstance(Ljava/lang/String;)Lcom/android/server/utils/DebugOptions;

    move-result-object v0

    .line 81
    .local v0, "debugOptions":Lcom/android/server/utils/DebugOptions;
    const-class v1, Lcom/android/server/wm/FlymeFeatureConfig;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/DebugOptions;->addClass(Ljava/lang/Class;)V

    .line 82
    invoke-virtual {v0}, Lcom/android/server/utils/DebugOptions;->init()V

    .line 83
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/FlymeWindowManagerService;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowManagerService;

    .line 60
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/FlymeWindowManagerService;)Lcom/android/server/wm/FlymeWindowModeController;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowManagerService;

    .line 60
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mWindowModeManager:Lcom/android/server/wm/FlymeWindowModeController;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/FlymeWindowManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowManagerService;

    .line 60
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mColorFadeShow:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/wm/FlymeWindowManagerService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowManagerService;
    .param p1, "x1"  # Z

    .line 60
    iput-boolean p1, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mColorFadeShow:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wm/FlymeWindowManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowManagerService;

    .line 60
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mIsFingerprintAuthenticatingInAodMode:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/wm/FlymeWindowManagerService;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowManagerService;
    .param p1, "x1"  # Z

    .line 60
    iput-boolean p1, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mIsFingerprintAuthenticatingInAodMode:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/wm/FlymeWindowManagerService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowManagerService;

    .line 60
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mLockOrientationForSensor:Z

    return v0
.end method

.method static synthetic lambda$main$0(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2
    .param p0, "wms"  # Lcom/android/server/wm/WindowManagerService;

    .line 122
    new-instance v0, Lcom/android/server/wm/FlymeWindowManagerService;

    invoke-direct {v0, p0}, Lcom/android/server/wm/FlymeWindowManagerService;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    sput-object v0, Lcom/android/server/wm/FlymeWindowManagerService;->sInstance:Lcom/android/server/wm/FlymeWindowManagerService;

    return-void
.end method

.method static synthetic lambda$setLockOrientationForSensor$1(ZLcom/android/server/wm/AppWindowToken;)V
    .registers 3
    .param p0, "locked"  # Z
    .param p1, "t"  # Lcom/android/server/wm/AppWindowToken;

    .line 345
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 346
    return-void

    .line 348
    :cond_9
    invoke-virtual {p1, p0}, Lcom/android/server/wm/AppWindowToken;->setLockOrientationForSensor(Z)V

    .line 349
    return-void
.end method

.method static main(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/FlymeWindowManagerService;
    .registers 5
    .param p0, "wms"  # Lcom/android/server/wm/WindowManagerService;

    .line 121
    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/-$$Lambda$FlymeWindowManagerService$4s8RIEOFWBVq6f2lZKyPX0A9ijo;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$FlymeWindowManagerService$4s8RIEOFWBVq6f2lZKyPX0A9ijo;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 124
    :try_start_e
    const-string v0, "window_ext"

    sget-object v1, Lcom/android/server/wm/FlymeWindowManagerService;->sInstance:Lcom/android/server/wm/FlymeWindowManagerService;

    const/4 v2, 0x0

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 125
    const-string v0, "WindowManager"

    const-string v1, "addService:window_ext ok"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_20

    .line 128
    goto :goto_24

    .line 126
    :catchall_20
    move-exception v0

    .line 127
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 129
    .end local v0  # "throwable":Ljava/lang/Throwable;
    :goto_24
    sget-object v0, Lcom/android/server/wm/FlymeWindowManagerService;->sInstance:Lcom/android/server/wm/FlymeWindowManagerService;

    return-object v0
.end method


# virtual methods
.method public addNonHighRefreshRatePackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;

    .line 295
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.DUMP"

    const-string v2, "addNonHighRefreshRatePackage"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 297
    .local v0, "mWindowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->addNonHighRefreshRatePackage(Ljava/lang/String;)V

    .line 298
    return-void
.end method

.method public clearNonHighRefreshRatePackage()V
    .registers 4

    .line 309
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.DUMP"

    const-string v2, "clearNonHighRefreshRatePackage"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 311
    .local v0, "mWindowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->clearNonHighRefreshRatePackage()V

    .line 312
    return-void
.end method

.method public closeWindowMode(Z)V
    .registers 3
    .param p1, "anim"  # Z

    .line 241
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mWindowModeManager:Lcom/android/server/wm/FlymeWindowModeController;

    invoke-interface {v0, p1}, Lcom/android/server/wm/FlymeWindowModeController;->closeWindowMode(Z)V

    .line 242
    return-void
.end method

.method public covertWindowModeCoordinate(Landroid/graphics/Point;)Landroid/graphics/Point;
    .registers 9
    .param p1, "point"  # Landroid/graphics/Point;

    .line 189
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 190
    .local v0, "rotation":I
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mWindowModeManager:Lcom/android/server/wm/FlymeWindowModeController;

    invoke-interface {v1, v0}, Lcom/android/server/wm/FlymeWindowModeController;->getWindowModeWindowFrame(I)Lcom/android/server/wm/FlymeWindowModeFrame;

    move-result-object v1

    .line 191
    .local v1, "windowModeFrame":Lcom/android/server/wm/FlymeWindowModeFrame;
    invoke-virtual {v1}, Lcom/android/server/wm/FlymeWindowModeFrame;->getScale()F

    move-result v2

    .line 192
    .local v2, "scale":F
    invoke-virtual {v1}, Lcom/android/server/wm/FlymeWindowModeFrame;->getDisplayBound()Landroid/graphics/Rect;

    move-result-object v3

    .line 193
    .local v3, "displayBound":Landroid/graphics/Rect;
    iget v4, p1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    iget v5, v3, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 194
    .local v4, "x":I
    iget v5, p1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float/2addr v5, v2

    iget v6, v3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 195
    .local v5, "y":I
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    return-object v6
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "WindowManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 88
    const-string v0, "window_ext"

    invoke-static {v0}, Lcom/android/server/utils/DebugOptions;->getInstance(Ljava/lang/String;)Lcom/android/server/utils/DebugOptions;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/server/utils/DebugOptions;->dumpOptions(Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_91

    .line 89
    array-length v0, p3

    if-lez v0, :cond_8e

    .line 90
    const/4 v0, 0x0

    aget-object v1, p3, v0

    .line 91
    .local v1, "cmd":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x2

    sparse-switch v3, :sswitch_data_92

    :cond_29
    goto :goto_51

    :sswitch_2a
    const-string v0, "getMovedWinPoint"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v6

    goto :goto_52

    :sswitch_34
    const-string v3, "toggleMoveWindow"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_52

    :sswitch_3d
    const-string v0, "setWindowModeClip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v4

    goto :goto_52

    :sswitch_47
    const-string v0, "moveWindow"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    move v0, v5

    goto :goto_52

    :goto_51
    move v0, v2

    :goto_52
    if-eqz v0, :cond_89

    if-eq v0, v5, :cond_89

    if-eq v0, v6, :cond_70

    if-eq v0, v4, :cond_5b

    goto :goto_8d

    .line 103
    :cond_5b
    array-length v0, p3

    if-le v0, v6, :cond_8d

    .line 104
    aget-object v0, p3, v5

    .line 105
    .local v0, "packageName":Ljava/lang/String;
    aget-object v2, p3, v6

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "true"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 106
    .local v2, "on":Z
    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/FlymeWindowManagerService;->setWindowModeClipMode(Ljava/lang/String;Z)V

    .line 107
    .end local v0  # "packageName":Ljava/lang/String;
    .end local v2  # "on":Z
    goto :goto_8d

    .line 98
    :cond_70
    invoke-virtual {p0}, Lcom/android/server/wm/FlymeWindowManagerService;->getMovedWinPoint()Landroid/graphics/Point;

    move-result-object v0

    .line 99
    .local v0, "point":Landroid/graphics/Point;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MovedWinPoint:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    .end local v0  # "point":Landroid/graphics/Point;
    goto :goto_8d

    .line 94
    :cond_89
    invoke-virtual {p0}, Lcom/android/server/wm/FlymeWindowManagerService;->toggleMoveWindow()V

    .line 96
    nop

    .line 113
    .end local v1  # "cmd":Ljava/lang/String;
    :cond_8d
    :goto_8d
    goto :goto_91

    .line 114
    :cond_8e
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 118
    :cond_91
    :goto_91
    return-void

    :sswitch_data_92
    .sparse-switch
        -0x57fddcdf -> :sswitch_47
        -0x4966b35b -> :sswitch_3d
        0x1f2fa195 -> :sswitch_34
        0x4e949f31 -> :sswitch_2a
    .end sparse-switch
.end method

.method public exitWindowModeToFullscreen(Z)V
    .registers 5
    .param p1, "anim"  # Z

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.START_TASKS_FROM_RECENTS"

    const-string v2, "exitWindowModeToFullscreen"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mWindowModeManager:Lcom/android/server/wm/FlymeWindowModeController;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/server/wm/FlymeWindowModeController;->moveTasksToFullscreen(Lcom/android/server/wm/TaskStack;Z)V

    .line 207
    return-void
.end method

.method public getLetterboxCausedByDisplayCutout()Landroid/graphics/Rect;
    .registers 7

    .line 329
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 330
    .local v0, "app":Lcom/android/server/wm/AppWindowToken;
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    .line 331
    .local v1, "displayCutout":Landroid/view/DisplayCutout;
    if-eqz v0, :cond_37

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_37

    .line 332
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v2

    .line 333
    .local v2, "letterbox":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v3

    .line 334
    .local v3, "displaycutout":Landroid/graphics/Rect;
    invoke-static {v2}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v4

    invoke-static {v3}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v4

    return-object v4

    .line 336
    .end local v2  # "letterbox":Landroid/graphics/Rect;
    .end local v3  # "displaycutout":Landroid/graphics/Rect;
    :cond_37
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    return-object v2
.end method

.method public getMovedWinPoint()Landroid/graphics/Point;
    .registers 3

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 135
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mMoveWindowManager:Lcom/android/server/wm/FlymeMoveWindowController;

    invoke-interface {v1}, Lcom/android/server/wm/FlymeMoveWindowController;->getMovedWinPoint()Landroid/graphics/Point;

    move-result-object v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 136
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getNonHighRefreshRatePackages()Landroid/os/Bundle;
    .registers 7

    .line 316
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.DUMP"

    const-string v2, "getNonHighRefreshRatePackages"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 318
    .local v0, "mWindowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->getNonHighRefreshRatePackages()Landroid/util/ArraySet;

    move-result-object v1

    .line 319
    .local v1, "nonHighRefreshRatePackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 320
    .local v2, "packages":[Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 321
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 322
    .local v3, "bundle":Landroid/os/Bundle;
    array-length v4, v2

    const-string v5, "count"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 323
    const-string v4, "packages"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 324
    return-object v3
.end method

.method public getTaskSnapshot(I)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 8
    .param p1, "taskId"  # I

    .line 257
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.READ_FRAME_BUFFER"

    const-string v2, "getTaskSnapshot"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 260
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 261
    .local v1, "rootActivityContainer":Lcom/android/server/wm/RootActivityContainer;
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/RootActivityContainer;->anyTaskForId(II)Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 262
    .local v2, "task":Lcom/android/server/wm/TaskRecord;
    if-nez v2, :cond_3f

    .line 263
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTaskSnapshot: taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v3, 0x0

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_e .. :try_end_3b} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v3

    .line 266
    :cond_3f
    :try_start_3f
    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v4, v2, Lcom/android/server/wm/TaskRecord;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTask(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskSnapshot;

    move-result-object v3

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3f .. :try_end_4a} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v3

    .line 267
    .end local v1  # "rootActivityContainer":Lcom/android/server/wm/RootActivityContainer;
    .end local v2  # "task":Lcom/android/server/wm/TaskRecord;
    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getWindowLayer(Landroid/os/IBinder;)I
    .registers 5
    .param p1, "windowToken"  # Landroid/os/IBinder;

    .line 246
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 247
    return v0

    .line 249
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 250
    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 251
    .local v2, "win":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_1a

    iget v0, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_9 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 252
    .end local v2  # "win":Lcom/android/server/wm/WindowState;
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public getWindowModeBound()Landroid/graphics/Rect;
    .registers 4

    .line 182
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 183
    .local v0, "rotation":I
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mWindowModeManager:Lcom/android/server/wm/FlymeWindowModeController;

    invoke-interface {v1, v0}, Lcom/android/server/wm/FlymeWindowModeController;->getWindowModeWindowFrame(I)Lcom/android/server/wm/FlymeWindowModeFrame;

    move-result-object v1

    .line 184
    .local v1, "windowModeFrame":Lcom/android/server/wm/FlymeWindowModeFrame;
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/android/server/wm/FlymeWindowModeFrame;->getVisibleBound()Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    return-object v2
.end method

.method public isLockOrientationForSensor()Z
    .registers 2

    .line 355
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mLockOrientationForSensor:Z

    return v0
.end method

.method public isWindowMode(Landroid/os/IBinder;)Z
    .registers 4
    .param p1, "windowToken"  # Landroid/os/IBinder;

    .line 229
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 230
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mWindowModeManager:Lcom/android/server/wm/FlymeWindowModeController;

    invoke-interface {v1, p1}, Lcom/android/server/wm/FlymeWindowModeController;->isWindowMode(Landroid/os/IBinder;)Z

    move-result v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 231
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public moveWindow(II)Z
    .registers 5
    .param p1, "command"  # I
    .param p2, "duration"  # I

    .line 148
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 149
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mMoveWindowManager:Lcom/android/server/wm/FlymeMoveWindowController;

    invoke-interface {v1, p1, p2}, Lcom/android/server/wm/FlymeMoveWindowController;->moveWindow(II)Z

    move-result v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 150
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerMoveWinListener(Lflyme/view/IMoveWinCallback;)V
    .registers 5
    .param p1, "callback"  # Lflyme/view/IMoveWinCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mMoveWindowManager:Lcom/android/server/wm/FlymeMoveWindowController;

    invoke-interface {v0, p1}, Lcom/android/server/wm/FlymeMoveWindowController;->registerMoveWinListener(Lflyme/view/IMoveWinCallback;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    .line 168
    nop

    .line 169
    return-void

    .line 166
    :catch_7
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public registerWindowModeListener(Lflyme/view/IWindowModeCallback;)V
    .registers 5
    .param p1, "callback"  # Lflyme/view/IWindowModeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mWindowModeManager:Lcom/android/server/wm/FlymeWindowModeController;

    invoke-interface {v0, p1}, Lcom/android/server/wm/FlymeWindowModeController;->registerWindowModeListener(Lflyme/view/IWindowModeCallback;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    .line 215
    nop

    .line 216
    return-void

    .line 213
    :catch_7
    move-exception v0

    .line 214
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeNonHighRefreshRatePackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.DUMP"

    const-string v2, "removeNonHighRefreshRatePackage"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    .line 304
    .local v0, "mWindowManagerInternal":Lcom/android/server/wm/WindowManagerInternal;
    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerInternal;->removeNonHighRefreshRatePackage(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public scrollTopActivity([Landroid/view/MotionEvent;I)V
    .registers 9
    .param p1, "event"  # [Landroid/view/MotionEvent;
    .param p2, "value"  # I

    .line 272
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.READ_FRAME_BUFFER"

    const-string v2, "scrollTopActivity"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 274
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 275
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_4b

    .line 276
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 277
    .local v2, "windowToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->inMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_4b

    .line 278
    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 279
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityStack$ActivityState;

    move-result-object v4

    sget-object v5, Lcom/android/server/wm/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/wm/ActivityStack$ActivityState;

    if-ne v4, v5, :cond_4b

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;
    :try_end_31
    .catchall {:try_start_e .. :try_end_31} :catchall_50

    if-eqz v4, :cond_4b

    .line 281
    :try_start_33
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    if-eqz v4, :cond_46

    .line 282
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v5, p1, p2}, Landroid/app/IApplicationThread;->scheduleScrollActivity(Landroid/os/IBinder;[Landroid/view/MotionEvent;I)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_46} :catch_47
    .catchall {:try_start_33 .. :try_end_46} :catchall_50

    .line 286
    :cond_46
    goto :goto_4b

    .line 284
    :catch_47
    move-exception v4

    .line 285
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_48
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 290
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2  # "windowToken":Lcom/android/server/wm/AppWindowToken;
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v4  # "e":Landroid/os/RemoteException;
    :cond_4b
    :goto_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_48 .. :try_end_4c} :catchall_50

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 291
    return-void

    .line 290
    :catchall_50
    move-exception v1

    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setLockOrientationForSensor(Z)V
    .registers 5
    .param p1, "locked"  # Z

    .line 342
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 343
    iput-boolean p1, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mLockOrientationForSensor:Z

    .line 344
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/-$$Lambda$FlymeWindowManagerService$EqEKw1mwKcYNYKMryF4jOomvaro;

    invoke-direct {v2, p1}, Lcom/android/server/wm/-$$Lambda$FlymeWindowManagerService$EqEKw1mwKcYNYKMryF4jOomvaro;-><init>(Z)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllAppWindows(Ljava/util/function/Consumer;)V

    .line 350
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 351
    return-void

    .line 350
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setMoveWinListener(Lflyme/view/IMoveWinCallback;)V
    .registers 5
    .param p1, "callback"  # Lflyme/view/IMoveWinCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mMoveWindowManager:Lcom/android/server/wm/FlymeMoveWindowController;

    invoke-interface {v0, p1}, Lcom/android/server/wm/FlymeMoveWindowController;->setMoveWinListener(Lflyme/view/IMoveWinCallback;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    .line 159
    nop

    .line 160
    return-void

    .line 157
    :catch_7
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setWindowModeClipMode(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "clipMode"  # Z

    .line 200
    invoke-static {}, Lcom/android/server/wm/FlymeWindowModeConfig;->getInstance()Lcom/android/server/wm/FlymeWindowModeConfig;

    move-result-object v0

    if-eqz p2, :cond_8

    const/4 v1, 0x2

    goto :goto_9

    :cond_8
    const/4 v1, 0x1

    :goto_9
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/FlymeWindowModeConfig;->setAppLayoutMode(Ljava/lang/String;I)V

    .line 201
    return-void
.end method

.method public toggleMoveWindow()V
    .registers 3

    .line 141
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 142
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mMoveWindowManager:Lcom/android/server/wm/FlymeMoveWindowController;

    invoke-interface {v1}, Lcom/android/server/wm/FlymeMoveWindowController;->toggleMoveWindow()V

    .line 143
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 144
    return-void

    .line 143
    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public unregisterMoveWinListener(Lflyme/view/IMoveWinCallback;)V
    .registers 5
    .param p1, "callback"  # Lflyme/view/IMoveWinCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mMoveWindowManager:Lcom/android/server/wm/FlymeMoveWindowController;

    invoke-interface {v0, p1}, Lcom/android/server/wm/FlymeMoveWindowController;->unregisterMoveWinListener(Lflyme/view/IMoveWinCallback;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    .line 177
    nop

    .line 178
    return-void

    .line 175
    :catch_7
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public unregisterWindowModeListener(Lflyme/view/IWindowModeCallback;)V
    .registers 5
    .param p1, "callback"  # Lflyme/view/IWindowModeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mWindowModeManager:Lcom/android/server/wm/FlymeWindowModeController;

    invoke-interface {v0, p1}, Lcom/android/server/wm/FlymeWindowModeController;->unregisterWindowModeListener(Lflyme/view/IWindowModeCallback;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    .line 224
    nop

    .line 225
    return-void

    .line 222
    :catch_7
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public updateWindowModeShowState(Z)V
    .registers 3
    .param p1, "show"  # Z

    .line 236
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService;->mWindowModeManager:Lcom/android/server/wm/FlymeWindowModeController;

    invoke-interface {v0, p1}, Lcom/android/server/wm/FlymeWindowModeController;->updateWindowModeShowState(Z)V

    .line 237
    return-void
.end method
