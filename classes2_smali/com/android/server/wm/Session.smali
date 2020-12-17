.class Lcom/android/server/wm/Session;
.super Landroid/view/IWindowSession$Stub;
.source "Session.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

.field private final mAlertWindowSurfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/wm/WindowSurfaceController;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppOverlaySurfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/wm/WindowSurfaceController;",
            ">;"
        }
    .end annotation
.end field

.field final mCallback:Landroid/view/IWindowSessionCallback;

.field final mCanAcquireSleepToken:Z

.field final mCanAddInternalSystemWindow:Z

.field final mCanHideNonSystemOverlayWindows:Z

.field private mClientDead:Z

.field private final mDragDropController:Lcom/android/server/wm/DragDropController;

.field private mLastReportedAnimatorScale:F

.field private mNumWindow:I

.field private mPackageName:Ljava/lang/String;

.field final mPid:I

.field private mRelayoutTag:Ljava/lang/String;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field private mShowingAlertWindowNotificationAllowed:Z

.field private final mStringName:Ljava/lang/String;

.field mSurfaceSession:Landroid/view/SurfaceSession;

.field final mUid:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IWindowSessionCallback;)V
    .registers 7
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;
    .param p2, "callback"  # Landroid/view/IWindowSessionCallback;

    .line 92
    invoke-direct {p0}, Landroid/view/IWindowSession$Stub;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    .line 78
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Ljava/util/Set;

    .line 80
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Ljava/util/Set;

    .line 87
    iput-boolean v0, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    .line 93
    iput-object p1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 94
    iput-object p2, p0, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    .line 95
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/Session;->mUid:I

    .line 96
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/Session;->mPid:I

    .line 97
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v1

    iput v1, p0, Lcom/android/server/wm/Session;->mLastReportedAnimatorScale:F

    .line 98
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_39

    move v1, v2

    goto :goto_3a

    :cond_39
    move v1, v0

    :goto_3a
    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    .line 100
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.HIDE_NON_SYSTEM_OVERLAY_WINDOWS"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_48

    move v1, v2

    goto :goto_49

    :cond_48
    move v1, v0

    :goto_49
    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mCanHideNonSystemOverlayWindows:Z

    .line 102
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DEVICE_POWER"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_56

    goto :goto_57

    :cond_56
    move v2, v0

    :goto_57
    iput-boolean v2, p0, Lcom/android/server/wm/Session;->mCanAcquireSleepToken:Z

    .line 104
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mShowingAlertWindowNotificationAllowed:Z

    .line 105
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iput-object v1, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "Session{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget v2, p0, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    iget v2, p0, Lcom/android/server/wm/Session;->mUid:I

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_95

    .line 112
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget v2, p0, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_b1

    .line 115
    :cond_95
    const-string v2, ":u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget v2, p0, Lcom/android/server/wm/Session;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    const/16 v2, 0x61

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    iget v2, p0, Lcom/android/server/wm/Session;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    :goto_b1
    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/Session;->mStringName:Ljava/lang/String;

    .line 124
    :try_start_bc
    iget-object v2, p0, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    invoke-interface {v2}, Landroid/view/IWindowSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_c5
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_c5} :catch_c6

    .line 128
    goto :goto_c7

    .line 125
    :catch_c6
    move-exception v0

    .line 129
    :goto_c7
    return-void
.end method

.method private actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V
    .registers 5
    .param p1, "window"  # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/util/function/BiConsumer<",
            "Lcom/android/server/wm/WallpaperController;",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 356
    .local p2, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 357
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-interface {p2, v1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 358
    return-void
.end method

.method private cancelAlertWindowNotification()V
    .registers 3

    .line 602
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    if-nez v0, :cond_5

    .line 603
    return-void

    .line 605
    :cond_5
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AlertWindowNotification;->cancel(Z)V

    .line 606
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    .line 607
    return-void
.end method

.method private killSessionLocked()V
    .registers 5

    .line 572
    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    if-gtz v0, :cond_9a

    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    if-nez v0, :cond_a

    goto/16 :goto_9a

    .line 576
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 577
    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v0, :cond_16

    .line 578
    return-void

    .line 581
    :cond_16
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last window removed from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", destroying "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_3a
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_54

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  KILL SURFACE SESSION "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_54
    :try_start_54
    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0}, Landroid/view/SurfaceSession;->kill()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_59} :catch_5a

    .line 589
    goto :goto_85

    .line 586
    :catch_5a
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception thrown when killing surface session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 587
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 591
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 592
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 593
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Session;->setHasOverlayUi(Z)V

    .line 594
    invoke-direct {p0}, Lcom/android/server/wm/Session;->cancelAlertWindowNotification()V

    .line 595
    return-void

    .line 573
    :cond_9a
    :goto_9a
    return-void
.end method

.method static synthetic lambda$setWallpaperDisplayOffset$2(IILcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 4
    .param p0, "x"  # I
    .param p1, "y"  # I
    .param p2, "wpController"  # Lcom/android/server/wm/WallpaperController;
    .param p3, "windowState"  # Lcom/android/server/wm/WindowState;

    .line 387
    invoke-virtual {p2, p3, p0, p1}, Lcom/android/server/wm/WallpaperController;->setWindowWallpaperDisplayOffset(Lcom/android/server/wm/WindowState;II)V

    return-void
.end method

.method static synthetic lambda$setWallpaperPosition$0(FFFFLcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 12
    .param p0, "x"  # F
    .param p1, "y"  # F
    .param p2, "xStep"  # F
    .param p3, "yStep"  # F
    .param p4, "wpController"  # Lcom/android/server/wm/WallpaperController;
    .param p5, "windowState"  # Lcom/android/server/wm/WindowState;

    .line 366
    move-object v0, p4

    move-object v1, p5

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WallpaperController;->setWindowWallpaperPosition(Lcom/android/server/wm/WindowState;FFFF)V

    return-void
.end method

.method static synthetic lambda$wallpaperCommandComplete$3(Landroid/os/IBinder;Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p0, "window"  # Landroid/os/IBinder;
    .param p1, "wpController"  # Lcom/android/server/wm/WallpaperController;
    .param p2, "windowState"  # Lcom/android/server/wm/WindowState;

    .line 413
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WallpaperController;->wallpaperCommandComplete(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic lambda$wallpaperOffsetsComplete$1(Landroid/os/IBinder;Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p0, "window"  # Landroid/os/IBinder;
    .param p1, "wpController"  # Lcom/android/server/wm/WallpaperController;
    .param p2, "windowState"  # Lcom/android/server/wm/WindowState;

    .line 377
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WallpaperController;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    return-void
.end method

.method private setHasOverlayUi(Z)V
    .registers 5
    .param p1, "hasOverlayUi"  # Z

    .line 598
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget v1, p0, Lcom/android/server/wm/Session;->mPid:I

    const/16 v2, 0x3a

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 599
    return-void
.end method


# virtual methods
.method public addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;Landroid/view/InsetsState;)I
    .registers 28
    .param p1, "window"  # Landroid/view/IWindow;
    .param p2, "seq"  # I
    .param p3, "attrs"  # Landroid/view/WindowManager$LayoutParams;
    .param p4, "viewVisibility"  # I
    .param p5, "displayId"  # I
    .param p6, "outFrame"  # Landroid/graphics/Rect;
    .param p7, "outContentInsets"  # Landroid/graphics/Rect;
    .param p8, "outStableInsets"  # Landroid/graphics/Rect;
    .param p9, "outOutsets"  # Landroid/graphics/Rect;
    .param p10, "outDisplayCutout"  # Landroid/view/DisplayCutout$ParcelableWrapper;
    .param p11, "outInputChannel"  # Landroid/view/InputChannel;
    .param p12, "outInsetsState"  # Landroid/view/InsetsState;

    .line 160
    move-object v14, p0

    iget-object v0, v14, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/wm/WindowManagerService;->addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;Landroid/view/InsetsState;)I

    move-result v0

    return v0
.end method

.method public addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsState;)I
    .registers 24
    .param p1, "window"  # Landroid/view/IWindow;
    .param p2, "seq"  # I
    .param p3, "attrs"  # Landroid/view/WindowManager$LayoutParams;
    .param p4, "viewVisibility"  # I
    .param p5, "displayId"  # I
    .param p6, "outContentInsets"  # Landroid/graphics/Rect;
    .param p7, "outStableInsets"  # Landroid/graphics/Rect;
    .param p8, "outInsetsState"  # Landroid/view/InsetsState;

    .line 169
    move-object v14, p0

    iget-object v0, v14, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    new-instance v11, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v11}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/wm/WindowManagerService;->addWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;Landroid/view/InsetsState;)I

    move-result v0

    return v0
.end method

.method public binderDied()V
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 148
    iget-object v1, p0, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    invoke-interface {v1}, Landroid/view/IWindowSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 149
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    .line 150
    invoke-direct {p0}, Lcom/android/server/wm/Session;->killSessionLocked()V

    .line 151
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 152
    return-void

    .line 151
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public cancelDragAndDrop(Landroid/os/IBinder;Z)V
    .registers 6
    .param p1, "dragToken"  # Landroid/os/IBinder;
    .param p2, "skipAnimation"  # Z

    .line 288
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 290
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/DragDropController;->cancelDragAndDrop(Landroid/os/IBinder;Z)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 292
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 293
    nop

    .line 294
    return-void

    .line 292
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public dragRecipientEntered(Landroid/view/IWindow;)V
    .registers 3
    .param p1, "window"  # Landroid/view/IWindow;

    .line 298
    iget-object v0, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DragDropController;->dragRecipientEntered(Landroid/view/IWindow;)V

    .line 299
    return-void
.end method

.method public dragRecipientExited(Landroid/view/IWindow;)V
    .registers 3
    .param p1, "window"  # Landroid/view/IWindow;

    .line 303
    iget-object v0, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DragDropController;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 304
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 610
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNumWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 611
    const-string v0, " mCanAddInternalSystemWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 612
    const-string v0, " mAppOverlaySurfaces="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Ljava/util/Set;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 613
    const-string v0, " mAlertWindowSurfaces="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Ljava/util/Set;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 614
    const-string v0, " mClientDead="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 615
    const-string v0, " mSurfaceSession="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 616
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPackageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    return-void
.end method

.method public finishDrawing(Landroid/view/IWindow;)V
    .registers 4
    .param p1, "window"  # Landroid/view/IWindow;

    .line 230
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IWindow finishDrawing called for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_1a
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->finishDrawingWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V

    .line 233
    return-void
.end method

.method public finishMovingTask(Landroid/view/IWindow;)V
    .registers 5
    .param p1, "window"  # Landroid/view/IWindow;

    .line 321
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_b

    const-string v0, "WindowManager"

    const-string v1, "finishMovingTask"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 325
    .local v0, "ident":J
    :try_start_f
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning(Landroid/view/IWindow;)V
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_1b

    .line 327
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 328
    nop

    .line 329
    return-void

    .line 327
    :catchall_1b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "window"  # Landroid/view/IWindow;
    .param p2, "outDisplayFrame"  # Landroid/graphics/Rect;

    .line 225
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getWindowDisplayFrame(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V

    .line 226
    return-void
.end method

.method public getInTouchMode()Z
    .registers 3

    .line 244
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 245
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 246
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;
    .registers 3
    .param p1, "window"  # Landroid/os/IBinder;

    .line 431
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v0

    return-object v0
.end method

.method public getWindowModeTouchOffset(Landroid/view/IWindow;Z)Landroid/graphics/PointF;
    .registers 8
    .param p1, "window"  # Landroid/view/IWindow;
    .param p2, "includeScale"  # Z

    .line 343
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 345
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_29

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 346
    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, p1, v4}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 347
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v4, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v4, v3, p2}, Lcom/android/server/wm/FlymeWindowManagerInternal;->getWindowModeTouchOffset(Lcom/android/server/wm/WindowState;Z)Landroid/graphics/PointF;

    move-result-object v4

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_23

    .line 350
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 347
    return-object v4

    .line 348
    .end local v3  # "win":Lcom/android/server/wm/WindowState;
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/Session;
    .end local p1  # "window":Landroid/view/IWindow;
    .end local p2  # "includeScale":Z
    throw v3
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_29

    .line 350
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/Session;
    .restart local p1  # "window":Landroid/view/IWindow;
    .restart local p2  # "includeScale":Z
    :catchall_29
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method hasAlertWindowSurfaces()Z
    .registers 2

    .line 625
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public insetsModified(Landroid/view/IWindow;Landroid/view/InsetsState;)V
    .registers 6
    .param p1, "window"  # Landroid/view/IWindow;
    .param p2, "state"  # Landroid/view/InsetsState;

    .line 476
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 477
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 479
    .local v1, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_1c

    .line 480
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Lcom/android/server/wm/InsetsStateController;->onInsetsModified(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;)V

    .line 483
    .end local v1  # "windowState":Lcom/android/server/wm/WindowState;
    :cond_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 484
    return-void

    .line 483
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "rectangle"  # Landroid/graphics/Rect;

    .line 419
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 420
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1f

    .line 422
    .local v1, "identity":J
    :try_start_c
    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/WindowManagerService;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1a

    .line 424
    :try_start_11
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 425
    nop

    .line 426
    .end local v1  # "identity":J
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 427
    return-void

    .line 424
    .restart local v1  # "identity":J
    :catchall_1a
    move-exception v3

    :try_start_1b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/Session;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "rectangle":Landroid/graphics/Rect;
    throw v3

    .line 426
    .end local v1  # "identity":J
    .restart local p0  # "this":Lcom/android/server/wm/Session;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "rectangle":Landroid/graphics/Rect;
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"  # I
    .param p2, "data"  # Landroid/os/Parcel;
    .param p3, "reply"  # Landroid/os/Parcel;
    .param p4, "flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowSession$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 136
    :catch_5
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 139
    const-string v1, "WindowManager"

    const-string v2, "Window Session Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    :cond_11
    throw v0
.end method

.method onWindowSurfaceVisibilityChanged(Lcom/android/server/wm/WindowSurfaceController;ZI)V
    .registers 9
    .param p1, "surfaceController"  # Lcom/android/server/wm/WindowSurfaceController;
    .param p2, "visible"  # Z
    .param p3, "type"  # I

    .line 512
    invoke-static {p3}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 513
    return-void

    .line 518
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4f

    .line 521
    if-eqz p2, :cond_1c

    .line 522
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 523
    .local v0, "changed":Z
    iget v2, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v3, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3, v0, p3, v1}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayEnter(ILjava/lang/String;ZIZ)V

    goto :goto_29

    .line 525
    .end local v0  # "changed":Z
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 526
    .restart local v0  # "changed":Z
    iget v2, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v3, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3, v0, p3, v1}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayExit(ILjava/lang/String;ZIZ)V

    .line 529
    :goto_29
    if-eqz v0, :cond_4f

    .line 530
    iget-object v2, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 531
    invoke-direct {p0}, Lcom/android/server/wm/Session;->cancelAlertWindowNotification()V

    goto :goto_4f

    .line 532
    :cond_37
    iget-object v2, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    if-nez v2, :cond_4f

    .line 533
    new-instance v2, Lcom/android/server/wm/AlertWindowNotification;

    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/android/server/wm/AlertWindowNotification;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    .line 534
    iget-boolean v2, p0, Lcom/android/server/wm/Session;->mShowingAlertWindowNotificationAllowed:Z

    if-eqz v2, :cond_4f

    .line 535
    iget-object v2, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    invoke-virtual {v2}, Lcom/android/server/wm/AlertWindowNotification;->post()V

    .line 541
    .end local v0  # "changed":Z
    :cond_4f
    :goto_4f
    const/16 v0, 0x7f6

    if-eq p3, v0, :cond_54

    .line 542
    return-void

    .line 545
    :cond_54
    const/4 v0, 0x0

    if-eqz p2, :cond_65

    .line 546
    iget-object v2, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 547
    .local v2, "changed":Z
    iget v3, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v4, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4, v2, p3, v0}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayEnter(ILjava/lang/String;ZIZ)V

    goto :goto_72

    .line 549
    .end local v2  # "changed":Z
    :cond_65
    iget-object v2, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    .line 550
    .restart local v2  # "changed":Z
    iget v3, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v4, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4, v2, p3, v0}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayExit(ILjava/lang/String;ZIZ)V

    .line 553
    :goto_72
    if-eqz v2, :cond_7e

    .line 556
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/server/wm/Session;->setHasOverlayUi(Z)V

    .line 558
    :cond_7e
    return-void
.end method

.method public outOfMemory(Landroid/view/IWindow;)Z
    .registers 3
    .param p1, "window"  # Landroid/view/IWindow;

    .line 208
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->outOfMemoryWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Z

    move-result v0

    return v0
.end method

.method public performDrag(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;
    .registers 29
    .param p1, "window"  # Landroid/view/IWindow;
    .param p2, "flags"  # I
    .param p3, "surface"  # Landroid/view/SurfaceControl;
    .param p4, "touchSource"  # I
    .param p5, "touchX"  # F
    .param p6, "touchY"  # F
    .param p7, "thumbCenterX"  # F
    .param p8, "thumbCenterY"  # F
    .param p9, "data"  # Landroid/content/ClipData;

    .line 265
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    .line 266
    .local v15, "callerPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 267
    .local v16, "callerUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 269
    .local v17, "ident":J
    :try_start_e
    iget-object v2, v1, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-object v3, v1, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    move v4, v15

    move/from16 v5, v16

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move-object/from16 v14, p9

    invoke-virtual/range {v2 .. v14}, Lcom/android/server/wm/DragDropController;->performDrag(Landroid/view/SurfaceSession;IILandroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_2f

    .line 272
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 269
    return-object v0

    .line 272
    :catchall_2f
    move-exception v0

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public performHapticFeedback(IZ)Z
    .registers 12
    .param p1, "effectId"  # I
    .param p2, "always"  # Z

    .line 251
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 253
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v4, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v5, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    const/4 v8, 0x0

    move v6, p1

    move v7, p2

    invoke-interface/range {v3 .. v8}, Lcom/android/server/policy/WindowManagerPolicy;->performHapticFeedback(ILjava/lang/String;IZLjava/lang/String;)Z

    move-result v2
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 256
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 253
    return v2

    .line 256
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public pokeDrawLock(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "window"  # Landroid/os/IBinder;

    .line 436
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 438
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0, p1}, Lcom/android/server/wm/WindowManagerService;->pokeDrawLock(Lcom/android/server/wm/Session;Landroid/os/IBinder;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 440
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 441
    nop

    .line 442
    return-void

    .line 440
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public prepareToReplaceWindows(Landroid/os/IBinder;Z)V
    .registers 4
    .param p1, "appToken"  # Landroid/os/IBinder;
    .param p2, "childrenOnly"  # Z

    .line 182
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setWillReplaceWindows(Landroid/os/IBinder;Z)V

    .line 183
    return-void
.end method

.method public relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;)I
    .registers 48
    .param p1, "window"  # Landroid/view/IWindow;
    .param p2, "seq"  # I
    .param p3, "attrs"  # Landroid/view/WindowManager$LayoutParams;
    .param p4, "requestedWidth"  # I
    .param p5, "requestedHeight"  # I
    .param p6, "viewFlags"  # I
    .param p7, "flags"  # I
    .param p8, "frameNumber"  # J
    .param p10, "outFrame"  # Landroid/graphics/Rect;
    .param p11, "outOverscanInsets"  # Landroid/graphics/Rect;
    .param p12, "outContentInsets"  # Landroid/graphics/Rect;
    .param p13, "outVisibleInsets"  # Landroid/graphics/Rect;
    .param p14, "outStableInsets"  # Landroid/graphics/Rect;
    .param p15, "outsets"  # Landroid/graphics/Rect;
    .param p16, "outBackdropFrame"  # Landroid/graphics/Rect;
    .param p17, "cutout"  # Landroid/view/DisplayCutout$ParcelableWrapper;
    .param p18, "mergedConfiguration"  # Landroid/util/MergedConfiguration;
    .param p19, "outSurfaceControl"  # Landroid/view/SurfaceControl;
    .param p20, "outInsetsState"  # Landroid/view/InsetsState;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    .line 194
    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/server/wm/Session;->mRelayoutTag:Ljava/lang/String;

    move-object/from16 v23, v2

    move/from16 v24, v3

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 195
    iget-object v1, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v0, v1

    move-object/from16 v1, v22

    move-wide/from16 v25, v2

    move-object/from16 v2, v23

    move-wide/from16 v22, v25

    move/from16 v3, v24

    invoke-virtual/range {v0 .. v21}, Lcom/android/server/wm/WindowManagerService;->relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;)I

    move-result v0

    .line 200
    .local v0, "res":I
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 203
    return v0
.end method

.method public remove(Landroid/view/IWindow;)V
    .registers 3
    .param p1, "window"  # Landroid/view/IWindow;

    .line 177
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->removeWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V

    .line 178
    return-void
.end method

.method public reparentDisplayContent(Landroid/view/IWindow;Landroid/view/SurfaceControl;I)V
    .registers 5
    .param p1, "window"  # Landroid/view/IWindow;
    .param p2, "sc"  # Landroid/view/SurfaceControl;
    .param p3, "displayId"  # I

    .line 456
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->reparentDisplayContent(Landroid/view/IWindow;Landroid/view/SurfaceControl;I)V

    .line 457
    return-void
.end method

.method public reportDropResult(Landroid/view/IWindow;Z)V
    .registers 6
    .param p1, "window"  # Landroid/view/IWindow;
    .param p2, "consumed"  # Z

    .line 278
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 280
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/DragDropController;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 282
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 283
    nop

    .line 284
    return-void

    .line 282
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public reportSystemGestureExclusionChanged(Landroid/view/IWindow;Ljava/util/List;)V
    .registers 6
    .param p1, "window"  # Landroid/view/IWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/IWindow;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 333
    .local p2, "exclusionRects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 335
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->reportSystemGestureExclusionChanged(Lcom/android/server/wm/Session;Landroid/view/IWindow;Ljava/util/List;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 337
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 338
    nop

    .line 339
    return-void

    .line 337
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 23
    .param p1, "window"  # Landroid/os/IBinder;
    .param p2, "action"  # Ljava/lang/String;
    .param p3, "x"  # I
    .param p4, "y"  # I
    .param p5, "z"  # I
    .param p6, "extras"  # Landroid/os/Bundle;
    .param p7, "sync"  # Z

    .line 397
    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 398
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_3d

    .line 400
    .local v3, "ident":J
    :try_start_d
    iget-object v0, v1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_36

    const/4 v5, 0x1

    move-object/from16 v6, p1

    :try_start_12
    invoke-virtual {v0, p0, v6, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v8

    .line 401
    .local v8, "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v7, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 402
    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    move/from16 v14, p7

    invoke-virtual/range {v7 .. v14}, Lcom/android/server/wm/WallpaperController;->sendWindowWallpaperCommand(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_34

    .line 404
    :try_start_2c
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_45

    .line 401
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 404
    .end local v8  # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_34
    move-exception v0

    goto :goto_39

    :catchall_36
    move-exception v0

    move-object/from16 v6, p1

    :goto_39
    :try_start_39
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/Session;
    .end local p1  # "window":Landroid/os/IBinder;
    .end local p2  # "action":Ljava/lang/String;
    .end local p3  # "x":I
    .end local p4  # "y":I
    .end local p5  # "z":I
    .end local p6  # "extras":Landroid/os/Bundle;
    .end local p7  # "sync":Z
    throw v0

    .line 406
    .end local v3  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/Session;
    .restart local p1  # "window":Landroid/os/IBinder;
    .restart local p2  # "action":Ljava/lang/String;
    .restart local p3  # "x":I
    .restart local p4  # "y":I
    .restart local p5  # "z":I
    .restart local p6  # "extras":Landroid/os/Bundle;
    .restart local p7  # "sync":Z
    :catchall_3d
    move-exception v0

    move-object/from16 v6, p1

    :goto_40
    monitor-exit v2
    :try_end_41
    .catchall {:try_start_39 .. :try_end_41} :catchall_45

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_45
    move-exception v0

    goto :goto_40
.end method

.method public setInTouchMode(Z)V
    .registers 4
    .param p1, "mode"  # Z

    .line 237
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 238
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean p1, v1, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    .line 239
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 240
    return-void

    .line 239
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .registers 13
    .param p1, "window"  # Landroid/view/IWindow;
    .param p2, "touchableInsets"  # I
    .param p3, "contentInsets"  # Landroid/graphics/Rect;
    .param p4, "visibleInsets"  # Landroid/graphics/Rect;
    .param p5, "touchableArea"  # Landroid/graphics/Region;

    .line 219
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;->setInsetsWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    .line 221
    return-void
.end method

.method setShowingAlertWindowNotificationAllowed(Z)V
    .registers 4
    .param p1, "allowed"  # Z

    .line 561
    iput-boolean p1, p0, Lcom/android/server/wm/Session;->mShowingAlertWindowNotificationAllowed:Z

    .line 562
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    if-eqz v0, :cond_10

    .line 563
    if-eqz p1, :cond_c

    .line 564
    invoke-virtual {v0}, Lcom/android/server/wm/AlertWindowNotification;->post()V

    goto :goto_10

    .line 566
    :cond_c
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AlertWindowNotification;->cancel(Z)V

    .line 569
    :cond_10
    :goto_10
    return-void
.end method

.method public setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 4
    .param p1, "window"  # Landroid/view/IWindow;
    .param p2, "region"  # Landroid/graphics/Region;

    .line 213
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setTransparentRegionWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Region;)V

    .line 214
    return-void
.end method

.method public setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    .registers 8
    .param p1, "window"  # Landroid/os/IBinder;
    .param p2, "x"  # I
    .param p3, "y"  # I

    .line 383
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 384
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_22

    .line 386
    .local v1, "ident":J
    :try_start_c
    new-instance v3, Lcom/android/server/wm/-$$Lambda$Session$3q7E1KtcKfO8_a7pOH0nnVURP8w;

    invoke-direct {v3, p2, p3}, Lcom/android/server/wm/-$$Lambda$Session$3q7E1KtcKfO8_a7pOH0nnVURP8w;-><init>(II)V

    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_1d

    .line 389
    :try_start_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 390
    nop

    .line 391
    .end local v1  # "ident":J
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 392
    return-void

    .line 389
    .restart local v1  # "ident":J
    :catchall_1d
    move-exception v3

    :try_start_1e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/Session;
    .end local p1  # "window":Landroid/os/IBinder;
    .end local p2  # "x":I
    .end local p3  # "y":I
    throw v3

    .line 391
    .end local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/Session;
    .restart local p1  # "window":Landroid/os/IBinder;
    .restart local p2  # "x":I
    .restart local p3  # "y":I
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    .registers 10
    .param p1, "window"  # Landroid/os/IBinder;
    .param p2, "x"  # F
    .param p3, "y"  # F
    .param p4, "xStep"  # F
    .param p5, "yStep"  # F

    .line 362
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 363
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_22

    .line 365
    .local v1, "ident":J
    :try_start_c
    new-instance v3, Lcom/android/server/wm/-$$Lambda$Session$zgdcs0nAb8hCdS-6ugnFMadbhU8;

    invoke-direct {v3, p2, p3, p4, p5}, Lcom/android/server/wm/-$$Lambda$Session$zgdcs0nAb8hCdS-6ugnFMadbhU8;-><init>(FFFF)V

    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_1d

    .line 368
    :try_start_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 369
    nop

    .line 370
    .end local v1  # "ident":J
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 371
    return-void

    .line 368
    .restart local v1  # "ident":J
    :catchall_1d
    move-exception v3

    :try_start_1e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/wm/Session;
    .end local p1  # "window":Landroid/os/IBinder;
    .end local p2  # "x":F
    .end local p3  # "y":F
    .end local p4  # "xStep":F
    .end local p5  # "yStep":F
    throw v3

    .line 370
    .end local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/Session;
    .restart local p1  # "window":Landroid/os/IBinder;
    .restart local p2  # "x":F
    .restart local p3  # "y":F
    .restart local p4  # "xStep":F
    .restart local p5  # "yStep":F
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public startMovingTask(Landroid/view/IWindow;FF)Z
    .registers 7
    .param p1, "window"  # Landroid/view/IWindow;
    .param p2, "startX"  # F
    .param p3, "startY"  # F

    .line 308
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_POSITIONING:Z

    if-eqz v0, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startMovingTask: {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_27
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 313
    .local v0, "ident":J
    :try_start_2b
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/TaskPositioningController;->startMovingTask(Landroid/view/IWindow;FF)Z

    move-result v2
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_37

    .line 315
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 313
    return v2

    .line 315
    :catchall_37
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 621
    iget-object v0, p0, Lcom/android/server/wm/Session;->mStringName:Ljava/lang/String;

    return-object v0
.end method

.method public updateDisplayContentLocation(Landroid/view/IWindow;III)V
    .registers 6
    .param p1, "window"  # Landroid/view/IWindow;
    .param p2, "x"  # I
    .param p3, "y"  # I
    .param p4, "displayId"  # I

    .line 461
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;->updateDisplayContentLocation(Landroid/view/IWindow;III)V

    .line 462
    return-void
.end method

.method public updatePointerIcon(Landroid/view/IWindow;)V
    .registers 5
    .param p1, "window"  # Landroid/view/IWindow;

    .line 446
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 448
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->updatePointerIcon(Landroid/view/IWindow;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 450
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 451
    nop

    .line 452
    return-void

    .line 450
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public updateTapExcludeRegion(Landroid/view/IWindow;ILandroid/graphics/Region;)V
    .registers 7
    .param p1, "window"  # Landroid/view/IWindow;
    .param p2, "regionId"  # I
    .param p3, "region"  # Landroid/graphics/Region;

    .line 466
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 468
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->updateTapExcludeRegion(Landroid/view/IWindow;ILandroid/graphics/Region;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 470
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 471
    nop

    .line 472
    return-void

    .line 470
    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "window"  # Landroid/os/IBinder;
    .param p2, "result"  # Landroid/os/Bundle;

    .line 411
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 412
    new-instance v1, Lcom/android/server/wm/-$$Lambda$Session$6cG7louvKZjAfcc7DtiA7aAzr7U;

    invoke-direct {v1, p1}, Lcom/android/server/wm/-$$Lambda$Session$6cG7louvKZjAfcc7DtiA7aAzr7U;-><init>(Landroid/os/IBinder;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V

    .line 414
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 415
    return-void

    .line 414
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "window"  # Landroid/os/IBinder;

    .line 375
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 376
    new-instance v1, Lcom/android/server/wm/-$$Lambda$Session$15hO_YO9_yR6FTMdPPe87fZzL1c;

    invoke-direct {v1, p1}, Lcom/android/server/wm/-$$Lambda$Session$15hO_YO9_yR6FTMdPPe87fZzL1c;-><init>(Landroid/os/IBinder;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V

    .line 378
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 379
    return-void

    .line 378
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method windowAddedLocked(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;

    .line 487
    iput-object p1, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "relayoutWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/Session;->mRelayoutTag:Ljava/lang/String;

    .line 489
    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v0, :cond_73

    .line 490
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    const-string v1, "WindowManager"

    if-eqz v0, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "First window added to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", creating SurfaceSession"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_3a
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 493
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_5b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  NEW SURFACE SESSION "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_5b
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 496
    iget v0, p0, Lcom/android/server/wm/Session;->mLastReportedAnimatorScale:F

    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_73

    .line 497
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    .line 500
    :cond_73
    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    .line 501
    return-void
.end method

.method windowRemovedLocked()V
    .registers 2

    .line 504
    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    .line 505
    invoke-direct {p0}, Lcom/android/server/wm/Session;->killSessionLocked()V

    .line 506
    return-void
.end method
