.class public Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;
.super Landroid/view/ISystemGestureListener$Stub;
.source "SystemUIGestureListener.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# static fields
.field private static GESTURE_BEHAVIOR_DETECT:I = 0x0

.field private static GESTURE_BEHAVIOR_IGNORE:I = -0x1

.field private static GESTURE_SLIDE_FROM_CENTER_BOTTOM:I = 0x2

.field private static GESTURE_SLIDE_FROM_LEFT:I = 0x3

.field private static GESTURE_SLIDE_FROM_RIGHT:I = 0x4

.field private static GESTURE_SLIDE_FROM_SIDE_BOTTOM:I = 0x1

.field private static mDisableRecents:Z

.field private static mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private static mToast:Landroid/widget/Toast;


# instance fields
.field private downTime:J

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private final mDisplayId:I

.field private mDownX:F

.field private mDownY:F

.field private final mExcludeRegion:Landroid/graphics/Region;

.field private mFingBack:Z

.field protected mGameModeController:Lcom/flyme/systemui/statusbar/policy/GameModeController;

.field private mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

.field final mHandler:Landroid/os/Handler;

.field private mInterceptFirst:Z

.field private mIsLandscape:Z

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private mNavBarMode:I

.field private final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private mSurfaceROTATION:I

.field private upTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;I)V
    .registers 6

    .line 85
    invoke-direct {p0}, Landroid/view/ISystemGestureListener$Stub;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mInterceptFirst:Z

    .line 68
    iput-boolean v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mFingBack:Z

    .line 77
    iput v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mNavBarMode:I

    .line 78
    iput-boolean v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mIsLandscape:Z

    .line 79
    iput v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mSurfaceROTATION:I

    .line 83
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mExcludeRegion:Landroid/graphics/Region;

    .line 400
    new-instance v0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener$3;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener$3;-><init>(Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;)V

    iput-object v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    .line 86
    iput-object p1, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mContext:Landroid/content/Context;

    .line 87
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mHandler:Landroid/os/Handler;

    .line 88
    iget-object v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mDisplay:Landroid/view/Display;

    .line 89
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    iget-object v1, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mGameModeController:Lcom/flyme/systemui/statusbar/policy/GameModeController;

    .line 90
    iput-object p2, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 91
    iget-object p2, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 93
    iput p3, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mNavBarMode:I

    .line 94
    iget-object p2, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/meizu/systemui/shared/OverViewUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/systemui/shared/OverViewUtil;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p2

    iput p2, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mDisplayId:I

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 99
    :try_start_68
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget p0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mDisplayId:I

    .line 100
    invoke-interface {p1, p2, p0}, Landroid/view/IWindowManager;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_73
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_73} :catch_74

    goto :goto_7c

    :catch_74
    move-exception p0

    const-string p1, "SystemUIGestureListener"

    const-string p2, "Failed to register window manager callbacks"

    .line 103
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7c
    return-void
.end method

.method static synthetic access$000()Landroid/widget/Toast;
    .registers 1

    .line 43
    sget-object v0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/Toast;)Landroid/widget/Toast;
    .registers 1

    .line 43
    sput-object p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mToast:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic access$100(Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;)Landroid/content/Context;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;)I
    .registers 1

    .line 43
    iget p0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mDisplayId:I

    return p0
.end method

.method static synthetic access$300(Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mMainExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$400(Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;)Landroid/graphics/Region;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mExcludeRegion:Landroid/graphics/Region;

    return-object p0
.end method

.method private hideToast()V
    .registers 3

    .line 291
    iget-object v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 292
    new-instance v1, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener$2;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener$2;-><init>(Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method private isGameHangUp()Z
    .registers 3

    .line 317
    iget-object p0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "mz_screen_hangup"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private isGameMode()Z
    .registers 5

    .line 304
    invoke-static {}, Lcom/meizu/common/alphame/AlphaMe;->getInstance()Lcom/meizu/common/alphame/AlphaMe;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "getScene"

    invoke-virtual {v0, v3, v2}, Lcom/meizu/common/alphame/AlphaMe;->invoke(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "game"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    .line 307
    :cond_16
    iget-object v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mGameModeController:Lcom/flyme/systemui/statusbar/policy/GameModeController;

    if-nez v0, :cond_23

    .line 308
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;

    iget-object v2, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/flyme/systemui/statusbar/policy/GameModeControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mGameModeController:Lcom/flyme/systemui/statusbar/policy/GameModeController;

    .line 310
    :cond_23
    iget-object p0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mGameModeController:Lcom/flyme/systemui/statusbar/policy/GameModeController;

    if-eqz p0, :cond_2c

    .line 311
    invoke-interface {p0}, Lcom/flyme/systemui/statusbar/policy/GameModeController;->isGameModeDisableBottomSlide()Z

    move-result p0

    return p0

    :cond_2c
    return v1
.end method

.method private isGameModeAndHangUp()Z
    .registers 2

    .line 322
    invoke-direct {p0}, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->isGameMode()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->isGameHangUp()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private isKeyguardShowingAndNotOccluded()Z
    .registers 1

    .line 341
    sget-object p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result p0

    if-eqz p0, :cond_14

    sget-object p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowingAndNotOccluded()Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private isKeyguardShowingAndOccluded()Z
    .registers 1

    .line 330
    sget-object p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result p0

    if-eqz p0, :cond_14

    sget-object p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowingAndNotOccluded()Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private judgeForSwipeUpMode(I)Z
    .registers 5

    .line 348
    iget v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isSwipeUpMode(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_37

    .line 349
    iget p0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mSurfaceROTATION:I

    const/4 v0, 0x0

    if-eqz p0, :cond_2d

    if-eq p0, v1, :cond_27

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2d

    const/4 v2, 0x3

    if-eq p0, v2, :cond_21

    .line 368
    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_SLIDE_FROM_LEFT:I

    if-eq p1, p0, :cond_20

    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_SLIDE_FROM_RIGHT:I

    if-ne p1, p0, :cond_1f

    goto :goto_20

    :cond_1f
    return v0

    :cond_20
    :goto_20
    return v1

    .line 363
    :cond_21
    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_SLIDE_FROM_RIGHT:I

    if-ne p1, p0, :cond_26

    return v1

    :cond_26
    return v0

    .line 357
    :cond_27
    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_SLIDE_FROM_LEFT:I

    if-ne p1, p0, :cond_2c

    return v1

    :cond_2c
    return v0

    .line 352
    :cond_2d
    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_SLIDE_FROM_LEFT:I

    if-eq p1, p0, :cond_37

    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_SLIDE_FROM_RIGHT:I

    if-ne p1, p0, :cond_36

    goto :goto_37

    :cond_36
    return v0

    :cond_37
    :goto_37
    return v1
.end method

.method private showToast()V
    .registers 3

    .line 279
    iget-object v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_c

    .line 280
    new-instance v1, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener$1;-><init>(Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 3

    .line 393
    iget-object p1, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 394
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 395
    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 396
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mSurfaceROTATION:I

    .line 397
    iget p1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-le p1, v0, :cond_24

    const/4 p1, 0x1

    goto :goto_25

    :cond_24
    const/4 p1, 0x0

    :goto_25
    iput-boolean p1, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mIsLandscape:Z

    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method

.method public onGestureCanceled(I)V
    .registers 19

    move-object/from16 v0, p0

    const-string v1, "SystemUIGestureListener"

    const-string v2, "onGestureCanceled"

    .line 262
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-wide v3, v0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->downTime:J

    .line 264
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget v8, v0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mDownX:F

    iget v9, v0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mDownY:F

    const/4 v7, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 263
    invoke-static/range {v3 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    .line 265
    iget-boolean v2, v0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mInterceptFirst:Z

    if-eqz v2, :cond_28

    const/4 v1, 0x0

    .line 266
    iput-boolean v1, v0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mInterceptFirst:Z

    goto :goto_31

    .line 268
    :cond_28
    iget-object v0, v0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    sget-boolean v2, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mDisableRecents:Z

    move/from16 v3, p1

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/recents/OverviewProxyService;->updateFullScreenGesture(Landroid/view/MotionEvent;IZ)V

    :goto_31
    return-void
.end method

.method public onGestureFunctionExit(I)V
    .registers 2

    const-string p0, "SystemUIGestureListener"

    const-string p1, "onGestureFunctionExit"

    .line 274
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onGesturePreTrigger(ILandroid/view/MotionEvent;)V
    .registers 10

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGesturePreTrigger gesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIGestureListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-direct {p0}, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->isGameMode()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_42

    .line 219
    invoke-direct {p0, p1}, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->judgeForSwipeUpMode(I)Z

    move-result v0

    if-eqz v0, :cond_44

    const/4 v0, 0x1

    .line 220
    iput-boolean v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mInterceptFirst:Z

    .line 221
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->upTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x7d0

    cmp-long v0, v3, v5

    if-gez v0, :cond_44

    .line 222
    iput-boolean v2, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mInterceptFirst:Z

    goto :goto_44

    .line 226
    :cond_42
    iput-boolean v2, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mInterceptFirst:Z

    .line 228
    :cond_44
    :goto_44
    sput-boolean v2, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mDisableRecents:Z

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGesturePreTrigger mInterceptFirst = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mInterceptFirst:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDisableRecents = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mDisableRecents:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->downTime:J

    .line 233
    iget-boolean v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mInterceptFirst:Z

    if-nez v0, :cond_9a

    .line 234
    invoke-direct {p0}, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->hideToast()V

    .line 235
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mDownX:F

    .line 236
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mDownY:F

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGesturePreTrigger mDir = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object p0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    sget-boolean v0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mDisableRecents:Z

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/systemui/recents/OverviewProxyService;->updateFullScreenGesture(Landroid/view/MotionEvent;IZ)V

    :cond_9a
    return-void
.end method

.method public onGesturePreTriggerBefore(ILandroid/view/MotionEvent;)I
    .registers 7

    .line 116
    iget v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isLegacyMode(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 117
    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_BEHAVIOR_IGNORE:I

    return p0

    .line 119
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGesturePreTriggerBefore gesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIGestureListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mFingBack:Z

    .line 121
    iget-object v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_4d

    sget v0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_SLIDE_FROM_LEFT:I

    if-eq p1, v0, :cond_4a

    sget v0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_SLIDE_FROM_RIGHT:I

    if-ne p1, v0, :cond_4d

    .line 123
    :cond_4a
    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_BEHAVIOR_IGNORE:I

    return p0

    .line 126
    :cond_4d
    sget-object v0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v0, :cond_5d

    .line 127
    iget-object v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    sput-object v0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 131
    :cond_5d
    invoke-direct {p0}, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->isKeyguardShowingAndOccluded()Z

    move-result v0

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/systemui/shared/OverViewUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/systemui/shared/OverViewUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/systemui/shared/OverViewUtil;->isSaveMode()Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 132
    :cond_6f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGesturePreTriggerBefore isKeyguardShowingAndOccluded() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->isKeyguardShowingAndOccluded()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " saveMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/meizu/systemui/shared/OverViewUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/systemui/shared/OverViewUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/systemui/shared/OverViewUtil;->isSaveMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_ab

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isExpandedAndNotQsEdit()Z

    move-result v0

    if-eqz v0, :cond_ab

    const-string p0, "onGesturePreTriggerBefore ignore 0"

    .line 135
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_BEHAVIOR_IGNORE:I

    return p0

    .line 139
    :cond_ab
    iget v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 140
    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_SLIDE_FROM_LEFT:I

    if-eq p1, p0, :cond_bf

    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_SLIDE_FROM_RIGHT:I

    if-ne p1, p0, :cond_bc

    goto :goto_bf

    .line 144
    :cond_bc
    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_BEHAVIOR_IGNORE:I

    return p0

    .line 142
    :cond_bf
    :goto_bf
    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_BEHAVIOR_DETECT:I

    return p0

    .line 146
    :cond_c2
    iget v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isSwipeUpMode(I)Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 147
    iget-boolean v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mIsLandscape:Z

    if-eqz v0, :cond_ea

    .line 148
    iget v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mSurfaceROTATION:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_dd

    .line 149
    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_SLIDE_FROM_RIGHT:I

    if-ne p1, p0, :cond_da

    .line 150
    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_BEHAVIOR_IGNORE:I

    return p0

    .line 152
    :cond_da
    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_BEHAVIOR_DETECT:I

    return p0

    :cond_dd
    const/4 v2, 0x3

    if-ne v0, v2, :cond_f9

    .line 155
    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_SLIDE_FROM_RIGHT:I

    if-ne p1, p0, :cond_e7

    .line 156
    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_BEHAVIOR_DETECT:I

    return p0

    .line 158
    :cond_e7
    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_BEHAVIOR_IGNORE:I

    return p0

    .line 162
    :cond_ea
    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_SLIDE_FROM_LEFT:I

    if-eq p1, p0, :cond_f6

    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_SLIDE_FROM_RIGHT:I

    if-ne p1, p0, :cond_f3

    goto :goto_f6

    .line 166
    :cond_f3
    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_BEHAVIOR_IGNORE:I

    return p0

    .line 164
    :cond_f6
    :goto_f6
    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_BEHAVIOR_DETECT:I

    return p0

    .line 172
    :cond_f9
    invoke-direct {p0}, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_107

    const-string p0, "onGesturePreTriggerBefore ignore 1"

    .line 173
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_BEHAVIOR_IGNORE:I

    return p0

    .line 177
    :cond_107
    invoke-direct {p0, p1}, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->judgeForSwipeUpMode(I)Z

    move-result v0

    if-nez v0, :cond_127

    sget-object v0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_127

    .line 178
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isExpandedAndNotQsEdit()Z

    move-result v0

    if-nez v0, :cond_11f

    sget-object v0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isNavigationBarViewShowing()Z

    move-result v0

    if-nez v0, :cond_127

    :cond_11f
    const-string p0, "onGesturePreTriggerBefore ignore 2"

    .line 179
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_BEHAVIOR_IGNORE:I

    return p0

    .line 184
    :cond_127
    iget v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isSwipeUpMode(I)Z

    move-result v0

    if-eqz v0, :cond_143

    sget-object v0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_143

    iget-boolean v2, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mIsLandscape:Z

    .line 185
    invoke-virtual {v0, p2, v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInMBackButtonArea(Landroid/view/MotionEvent;Z)Z

    move-result p2

    if-eqz p2, :cond_143

    const-string p0, "onGesturePreTriggerBefore ignore 3"

    .line 186
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_BEHAVIOR_IGNORE:I

    return p0

    .line 191
    :cond_143
    sget-object p2, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p2, :cond_165

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isQsEditShowing()Z

    move-result p2

    if-eqz p2, :cond_165

    .line 192
    iget p2, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mNavBarMode:I

    invoke-static {p2}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p2

    if-eqz p2, :cond_165

    .line 193
    sget p2, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_SLIDE_FROM_SIDE_BOTTOM:I

    if-eq p1, p2, :cond_15d

    sget p2, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_SLIDE_FROM_CENTER_BOTTOM:I

    if-ne p1, p2, :cond_165

    :cond_15d
    const-string p0, "onGesturePreTriggerBefore ignore 4"

    .line 194
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_BEHAVIOR_IGNORE:I

    return p0

    .line 200
    :cond_165
    invoke-direct {p0}, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->isGameModeAndHangUp()Z

    move-result p0

    if-eqz p0, :cond_173

    const-string p0, "onGesturePreTriggerBefore ignore 5"

    .line 201
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_BEHAVIOR_IGNORE:I

    return p0

    .line 206
    :cond_173
    sget-object p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_185

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isExpandedAndNotQsEdit()Z

    move-result p0

    if-eqz p0, :cond_185

    const-string p0, "onGesturePreTriggerBefore ignore 6"

    .line 207
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_BEHAVIOR_IGNORE:I

    return p0

    .line 211
    :cond_185
    sget p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->GESTURE_BEHAVIOR_DETECT:I

    return p0
.end method

.method public onGestureTriggered(ILandroid/view/MotionEvent;)V
    .registers 5

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGestureTriggered gesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIGestureListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-boolean v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mInterceptFirst:Z

    if-eqz v0, :cond_57

    .line 246
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_34

    .line 247
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_6a

    :cond_34
    const/4 p1, 0x0

    .line 248
    iput-boolean p1, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mInterceptFirst:Z

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onGestureTriggered mInterceptFirst = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mInterceptFirst:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->upTime:J

    .line 251
    invoke-direct {p0}, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->showToast()V

    goto :goto_6a

    .line 254
    :cond_57
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mDownX:F

    .line 255
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mDownY:F

    .line 256
    iget-object p0, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    sget-boolean v0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mDisableRecents:Z

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/systemui/recents/OverviewProxyService;->updateFullScreenGesture(Landroid/view/MotionEvent;IZ)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method public onNavigationModeChanged(I)V
    .registers 2

    .line 378
    iput p1, p0, Lcom/flyme/systemui/fullscreen/SystemUIGestureListener;->mNavBarMode:I

    return-void
.end method
