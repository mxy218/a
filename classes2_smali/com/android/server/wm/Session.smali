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
    .registers 6

    .line 91
    invoke-direct {p0}, Landroid/view/IWindowSession$Stub;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    .line 77
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Ljava/util/Set;

    .line 79
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Ljava/util/Set;

    .line 86
    iput-boolean v0, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    .line 92
    iput-object p1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 93
    iput-object p2, p0, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    .line 94
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/Session;->mUid:I

    .line 95
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/Session;->mPid:I

    .line 96
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result p2

    iput p2, p0, Lcom/android/server/wm/Session;->mLastReportedAnimatorScale:F

    .line 97
    iget-object p2, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {p2, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x1

    if-nez p2, :cond_39

    move p2, v1

    goto :goto_3a

    :cond_39
    move p2, v0

    :goto_3a
    iput-boolean p2, p0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    .line 99
    iget-object p2, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.HIDE_NON_SYSTEM_OVERLAY_WINDOWS"

    invoke-virtual {p2, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_48

    move p2, v1

    goto :goto_49

    :cond_48
    move p2, v0

    :goto_49
    iput-boolean p2, p0, Lcom/android/server/wm/Session;->mCanHideNonSystemOverlayWindows:Z

    .line 101
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string p2, "android.permission.DEVICE_POWER"

    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_56

    goto :goto_57

    :cond_56
    move v1, v0

    :goto_57
    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mCanAcquireSleepToken:Z

    .line 103
    iget-object p1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowManagerService;->mShowAlertWindowNotifications:Z

    iput-boolean p1, p0, Lcom/android/server/wm/Session;->mShowingAlertWindowNotificationAllowed:Z

    .line 104
    iget-object p1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iput-object p1, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    const-string p2, "Session{"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget p2, p0, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    iget p2, p0, Lcom/android/server/wm/Session;->mUid:I

    const/16 v1, 0x2710

    if-ge p2, v1, :cond_95

    .line 111
    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget p2, p0, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_b1

    .line 114
    :cond_95
    const-string p2, ":u"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget p2, p0, Lcom/android/server/wm/Session;->mUid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const/16 p2, 0x61

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    iget p2, p0, Lcom/android/server/wm/Session;->mUid:I

    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    :goto_b1
    const-string p2, "}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/Session;->mStringName:Ljava/lang/String;

    .line 123
    :try_start_bc
    iget-object p1, p0, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    invoke-interface {p1}, Landroid/view/IWindowSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_c5
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_c5} :catch_c6

    .line 127
    goto :goto_c7

    .line 124
    :catch_c6
    move-exception p1

    .line 128
    :goto_c7
    return-void
.end method

.method private actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V
    .registers 5
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

    .line 342
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 343
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-interface {p2, v0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 344
    return-void
.end method

.method private cancelAlertWindowNotification()V
    .registers 3

    .line 588
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    if-nez v0, :cond_5

    .line 589
    return-void

    .line 591
    :cond_5
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AlertWindowNotification;->cancel(Z)V

    .line 592
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    .line 593
    return-void
.end method

.method private killSessionLocked()V
    .registers 4

    .line 558
    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    if-gtz v0, :cond_5b

    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    if-nez v0, :cond_9

    goto :goto_5b

    .line 562
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 563
    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v0, :cond_15

    .line 564
    return-void

    .line 571
    :cond_15
    :try_start_15
    invoke-virtual {v0}, Landroid/view/SurfaceSession;->kill()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_19

    .line 575
    goto :goto_46

    .line 572
    :catch_19
    move-exception v0

    .line 573
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown when killing surface session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " in session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 573
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :goto_46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 577
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 578
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 579
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Session;->setHasOverlayUi(Z)V

    .line 580
    invoke-direct {p0}, Lcom/android/server/wm/Session;->cancelAlertWindowNotification()V

    .line 581
    return-void

    .line 559
    :cond_5b
    :goto_5b
    return-void
.end method

.method static synthetic lambda$setWallpaperDisplayOffset$2(IILcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 373
    invoke-virtual {p2, p3, p0, p1}, Lcom/android/server/wm/WallpaperController;->setWindowWallpaperDisplayOffset(Lcom/android/server/wm/WindowState;II)V

    return-void
.end method

.method static synthetic lambda$setWallpaperPosition$0(FFFFLcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 12

    .line 352
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

    .line 399
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WallpaperController;->wallpaperCommandComplete(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic lambda$wallpaperOffsetsComplete$1(Landroid/os/IBinder;Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 363
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WallpaperController;->wallpaperOffsetsComplete(Landroid/os/IBinder;)V

    return-void
.end method

.method private setHasOverlayUi(Z)V
    .registers 5

    .line 584
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget v1, p0, Lcom/android/server/wm/Session;->mPid:I

    const/16 v2, 0x3a

    invoke-virtual {v0, v2, v1, p1}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 585
    return-void
.end method


# virtual methods
.method public addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;Landroid/view/InsetsState;)I
    .registers 27

    .line 159
    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v2, p1

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
    .registers 23

    .line 168
    move-object v1, p0

    iget-object v0, v1, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    new-instance v11, Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-direct {v11}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>()V

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v2, p1

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

    .line 146
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 147
    iget-object v1, p0, Lcom/android/server/wm/Session;->mCallback:Landroid/view/IWindowSessionCallback;

    invoke-interface {v1}, Landroid/view/IWindowSessionCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 148
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    .line 149
    invoke-direct {p0}, Lcom/android/server/wm/Session;->killSessionLocked()V

    .line 150
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 151
    return-void

    .line 150
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

    .line 287
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 289
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/DragDropController;->cancelDragAndDrop(Landroid/os/IBinder;Z)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 291
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 292
    nop

    .line 293
    return-void

    .line 291
    :catchall_e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public dragRecipientEntered(Landroid/view/IWindow;)V
    .registers 3

    .line 297
    iget-object v0, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DragDropController;->dragRecipientEntered(Landroid/view/IWindow;)V

    .line 298
    return-void
.end method

.method public dragRecipientExited(Landroid/view/IWindow;)V
    .registers 3

    .line 302
    iget-object v0, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DragDropController;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 303
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 596
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mNumWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 597
    const-string v0, " mCanAddInternalSystemWindow="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 598
    const-string v0, " mAppOverlaySurfaces="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Ljava/util/Set;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 599
    const-string v0, " mAlertWindowSurfaces="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Ljava/util/Set;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 600
    const-string v0, " mClientDead="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mClientDead:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 601
    const-string v0, " mSurfaceSession="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 602
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mPackageName="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    return-void
.end method

.method public finishDrawing(Landroid/view/IWindow;)V
    .registers 3

    .line 231
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->finishDrawingWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V

    .line 232
    return-void
.end method

.method public finishMovingTask(Landroid/view/IWindow;)V
    .registers 5

    .line 322
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 324
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning(Landroid/view/IWindow;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_10

    .line 326
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 327
    nop

    .line 328
    return-void

    .line 326
    :catchall_10
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public getDisplayFrame(Landroid/view/IWindow;Landroid/graphics/Rect;)V
    .registers 4

    .line 224
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->getWindowDisplayFrame(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Rect;)V

    .line 225
    return-void
.end method

.method public getInTouchMode()Z
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 244
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 245
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

    .line 417
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object p1

    return-object p1
.end method

.method hasAlertWindowSurfaces()Z
    .registers 2

    .line 611
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public insetsModified(Landroid/view/IWindow;Landroid/view/InsetsState;)V
    .registers 6

    .line 462
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 463
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, v2}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/view/IWindow;Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 465
    if-eqz p1, :cond_1c

    .line 466
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/InsetsStateController;->onInsetsModified(Lcom/android/server/wm/WindowState;Landroid/view/InsetsState;)V

    .line 469
    :cond_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 470
    return-void

    .line 469
    :catchall_21
    move-exception p1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 7

    .line 405
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 406
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1f

    .line 408
    :try_start_c
    iget-object v3, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/WindowManagerService;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1a

    .line 410
    :try_start_11
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 411
    nop

    .line 412
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 413
    return-void

    .line 410
    :catchall_1a
    move-exception p1

    :try_start_1b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 412
    :catchall_1f
    move-exception p1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/IWindowSession$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p1

    .line 135
    :catch_5
    move-exception p1

    .line 137
    instance-of p2, p1, Ljava/lang/SecurityException;

    if-nez p2, :cond_11

    .line 138
    const-string p2, "WindowManager"

    const-string p3, "Window Session Crash"

    invoke-static {p2, p3, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    :cond_11
    throw p1
.end method

.method onWindowSurfaceVisibilityChanged(Lcom/android/server/wm/WindowSurfaceController;ZI)V
    .registers 8

    .line 498
    invoke-static {p3}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 499
    return-void

    .line 504
    :cond_7
    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mCanAddInternalSystemWindow:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4f

    .line 507
    if-eqz p2, :cond_1c

    .line 508
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 509
    iget v2, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v3, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3, v0, p3, v1}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayEnter(ILjava/lang/String;ZIZ)V

    goto :goto_29

    .line 511
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 512
    iget v2, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v3, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3, v0, p3, v1}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayExit(ILjava/lang/String;ZIZ)V

    .line 515
    :goto_29
    if-eqz v0, :cond_4f

    .line 516
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowSurfaces:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 517
    invoke-direct {p0}, Lcom/android/server/wm/Session;->cancelAlertWindowNotification()V

    goto :goto_4f

    .line 518
    :cond_37
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    if-nez v0, :cond_4f

    .line 519
    new-instance v0, Lcom/android/server/wm/AlertWindowNotification;

    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/android/server/wm/AlertWindowNotification;-><init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    .line 520
    iget-boolean v0, p0, Lcom/android/server/wm/Session;->mShowingAlertWindowNotificationAllowed:Z

    if-eqz v0, :cond_4f

    .line 521
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    invoke-virtual {v0}, Lcom/android/server/wm/AlertWindowNotification;->post()V

    .line 527
    :cond_4f
    :goto_4f
    const/16 v0, 0x7f6

    if-eq p3, v0, :cond_54

    .line 528
    return-void

    .line 531
    :cond_54
    const/4 v0, 0x0

    if-eqz p2, :cond_65

    .line 532
    iget-object p2, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    .line 533
    iget p2, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v2, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {p2, v2, p1, p3, v0}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayEnter(ILjava/lang/String;ZIZ)V

    goto :goto_72

    .line 535
    :cond_65
    iget-object p2, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 536
    iget p2, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v2, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-static {p2, v2, p1, p3, v0}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logAppOverlayExit(ILjava/lang/String;ZIZ)V

    .line 539
    :goto_72
    if-eqz p1, :cond_7e

    .line 542
    iget-object p1, p0, Lcom/android/server/wm/Session;->mAppOverlaySurfaces:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    invoke-direct {p0, p1}, Lcom/android/server/wm/Session;->setHasOverlayUi(Z)V

    .line 544
    :cond_7e
    return-void
.end method

.method public outOfMemory(Landroid/view/IWindow;)Z
    .registers 3

    .line 207
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->outOfMemoryWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)Z

    move-result p1

    return p1
.end method

.method public performDrag(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;
    .registers 25

    .line 264
    move-object v0, p0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 265
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 266
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 268
    :try_start_d
    iget-object v1, v0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    iget-object v4, v0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    move-object v0, v1

    move-object v1, v4

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/DragDropController;->performDrag(Landroid/view/SurfaceSession;IILandroid/view/IWindow;ILandroid/view/SurfaceControl;IFFFFLandroid/content/ClipData;)Landroid/os/IBinder;

    move-result-object v0
    :try_end_29
    .catchall {:try_start_d .. :try_end_29} :catchall_2d

    .line 271
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 268
    return-object v0

    .line 271
    :catchall_2d
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public performHapticFeedback(IZ)Z
    .registers 12

    .line 250
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 252
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v4, p0, Lcom/android/server/wm/Session;->mUid:I

    iget-object v5, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    const/4 v8, 0x0

    move v6, p1

    move v7, p2

    invoke-interface/range {v3 .. v8}, Lcom/android/server/policy/WindowManagerPolicy;->performHapticFeedback(ILjava/lang/String;IZLjava/lang/String;)Z

    move-result p1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 255
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 252
    return p1

    .line 255
    :catchall_17
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public pokeDrawLock(Landroid/os/IBinder;)V
    .registers 5

    .line 422
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 424
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0, p1}, Lcom/android/server/wm/WindowManagerService;->pokeDrawLock(Lcom/android/server/wm/Session;Landroid/os/IBinder;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 426
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 427
    nop

    .line 428
    return-void

    .line 426
    :catchall_e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public prepareToReplaceWindows(Landroid/os/IBinder;Z)V
    .registers 4

    .line 181
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setWillReplaceWindows(Landroid/os/IBinder;Z)V

    .line 182
    return-void
.end method

.method public relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;)I
    .registers 45

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

    .line 193
    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/server/wm/Session;->mRelayoutTag:Ljava/lang/String;

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 194
    iget-object v0, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v1, v22

    move-wide/from16 v22, v2

    move-object/from16 v2, p1

    move/from16 v3, p2

    invoke-virtual/range {v0 .. v21}, Lcom/android/server/wm/WindowManagerService;->relayoutWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;)I

    move-result v0

    .line 199
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 202
    return v0
.end method

.method public remove(Landroid/view/IWindow;)V
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/WindowManagerService;->removeWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;)V

    .line 177
    return-void
.end method

.method public reparentDisplayContent(Landroid/view/IWindow;Landroid/view/SurfaceControl;I)V
    .registers 5

    .line 442
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->reparentDisplayContent(Landroid/view/IWindow;Landroid/view/SurfaceControl;I)V

    .line 443
    return-void
.end method

.method public reportDropResult(Landroid/view/IWindow;Z)V
    .registers 6

    .line 277
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 279
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/DragDropController;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 281
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 282
    nop

    .line 283
    return-void

    .line 281
    :catchall_e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public reportSystemGestureExclusionChanged(Landroid/view/IWindow;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/IWindow;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 332
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 334
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->reportSystemGestureExclusionChanged(Lcom/android/server/wm/Session;Landroid/view/IWindow;Ljava/util/List;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 336
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 337
    nop

    .line 338
    return-void

    .line 336
    :catchall_e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .registers 22

    .line 383
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 384
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_38

    .line 386
    :try_start_d
    iget-object v4, v0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v5, 0x1

    move-object v6, p1

    invoke-virtual {v4, p0, p1, v5}, Lcom/android/server/wm/WindowManagerService;->windowForClientLocked(Lcom/android/server/wm/Session;Landroid/os/IBinder;Z)Lcom/android/server/wm/WindowState;

    move-result-object v7

    .line 387
    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    .line 388
    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    move/from16 v13, p7

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/wm/WallpaperController;->sendWindowWallpaperCommand(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0
    :try_end_2b
    .catchall {:try_start_d .. :try_end_2b} :catchall_33

    .line 390
    :try_start_2b
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_38

    .line 387
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 390
    :catchall_33
    move-exception v0

    :try_start_34
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 392
    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public setInTouchMode(Z)V
    .registers 4

    .line 236
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 237
    iget-object v1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean p1, v1, Lcom/android/server/wm/WindowManagerService;->mInTouchMode:Z

    .line 238
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 239
    return-void

    .line 238
    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    .registers 13

    .line 218
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowManagerService;->setInsetsWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V

    .line 220
    return-void
.end method

.method setShowingAlertWindowNotificationAllowed(Z)V
    .registers 3

    .line 547
    iput-boolean p1, p0, Lcom/android/server/wm/Session;->mShowingAlertWindowNotificationAllowed:Z

    .line 548
    iget-object v0, p0, Lcom/android/server/wm/Session;->mAlertWindowNotification:Lcom/android/server/wm/AlertWindowNotification;

    if-eqz v0, :cond_10

    .line 549
    if-eqz p1, :cond_c

    .line 550
    invoke-virtual {v0}, Lcom/android/server/wm/AlertWindowNotification;->post()V

    goto :goto_10

    .line 552
    :cond_c
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AlertWindowNotification;->cancel(Z)V

    .line 555
    :cond_10
    :goto_10
    return-void
.end method

.method public setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    .registers 4

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setTransparentRegionWindow(Lcom/android/server/wm/Session;Landroid/view/IWindow;Landroid/graphics/Region;)V

    .line 213
    return-void
.end method

.method public setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    .registers 8

    .line 369
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 370
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_22

    .line 372
    :try_start_c
    new-instance v3, Lcom/android/server/wm/-$$Lambda$Session$3q7E1KtcKfO8_a7pOH0nnVURP8w;

    invoke-direct {v3, p2, p3}, Lcom/android/server/wm/-$$Lambda$Session$3q7E1KtcKfO8_a7pOH0nnVURP8w;-><init>(II)V

    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_1d

    .line 375
    :try_start_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 376
    nop

    .line 377
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 378
    return-void

    .line 375
    :catchall_1d
    move-exception p1

    :try_start_1e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 377
    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    .registers 10

    .line 348
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 349
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_22

    .line 351
    :try_start_c
    new-instance v3, Lcom/android/server/wm/-$$Lambda$Session$zgdcs0nAb8hCdS-6ugnFMadbhU8;

    invoke-direct {v3, p2, p3, p4, p5}, Lcom/android/server/wm/-$$Lambda$Session$zgdcs0nAb8hCdS-6ugnFMadbhU8;-><init>(FFFF)V

    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_1d

    .line 354
    :try_start_14
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 355
    nop

    .line 356
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 357
    return-void

    .line 354
    :catchall_1d
    move-exception p1

    :try_start_1e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 356
    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public startMovingTask(Landroid/view/IWindow;FF)Z
    .registers 7

    .line 310
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 312
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/TaskPositioningController;->startMovingTask(Landroid/view/IWindow;FF)Z

    move-result p1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10

    .line 314
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 312
    return p1

    .line 314
    :catchall_10
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 607
    iget-object v0, p0, Lcom/android/server/wm/Session;->mStringName:Ljava/lang/String;

    return-object v0
.end method

.method public updateDisplayContentLocation(Landroid/view/IWindow;III)V
    .registers 6

    .line 447
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowManagerService;->updateDisplayContentLocation(Landroid/view/IWindow;III)V

    .line 448
    return-void
.end method

.method public updatePointerIcon(Landroid/view/IWindow;)V
    .registers 5

    .line 432
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 434
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->updatePointerIcon(Landroid/view/IWindow;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 436
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 437
    nop

    .line 438
    return-void

    .line 436
    :catchall_e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public updateTapExcludeRegion(Landroid/view/IWindow;ILandroid/graphics/Region;)V
    .registers 7

    .line 452
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 454
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->updateTapExcludeRegion(Landroid/view/IWindow;ILandroid/graphics/Region;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    .line 456
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 457
    nop

    .line 458
    return-void

    .line 456
    :catchall_e
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 4

    .line 397
    iget-object p2, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p2

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 398
    new-instance v0, Lcom/android/server/wm/-$$Lambda$Session$6cG7louvKZjAfcc7DtiA7aAzr7U;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$Session$6cG7louvKZjAfcc7DtiA7aAzr7U;-><init>(Landroid/os/IBinder;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V

    .line 400
    monitor-exit p2
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 401
    return-void

    .line 400
    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit p2
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .registers 4

    .line 361
    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 362
    new-instance v1, Lcom/android/server/wm/-$$Lambda$Session$15hO_YO9_yR6FTMdPPe87fZzL1c;

    invoke-direct {v1, p1}, Lcom/android/server/wm/-$$Lambda$Session$15hO_YO9_yR6FTMdPPe87fZzL1c;-><init>(Landroid/os/IBinder;)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/Session;->actionOnWallpaper(Landroid/os/IBinder;Ljava/util/function/BiConsumer;)V

    .line 364
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 365
    return-void

    .line 364
    :catchall_15
    move-exception p1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method windowAddedLocked(Ljava/lang/String;)V
    .registers 3

    .line 473
    iput-object p1, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    .line 474
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "relayoutWindow: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/wm/Session;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/Session;->mRelayoutTag:Ljava/lang/String;

    .line 475
    iget-object p1, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez p1, :cond_3a

    .line 478
    new-instance p1, Landroid/view/SurfaceSession;

    invoke-direct {p1}, Landroid/view/SurfaceSession;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 481
    iget-object p1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 482
    iget p1, p0, Lcom/android/server/wm/Session;->mLastReportedAnimatorScale:F

    iget-object v0, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_3a

    .line 483
    iget-object p1, p0, Lcom/android/server/wm/Session;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowManagerService;->dispatchNewAnimatorScaleLocked(Lcom/android/server/wm/Session;)V

    .line 486
    :cond_3a
    iget p1, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    .line 487
    return-void
.end method

.method windowRemovedLocked()V
    .registers 2

    .line 490
    iget v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/Session;->mNumWindow:I

    .line 491
    invoke-direct {p0}, Lcom/android/server/wm/Session;->killSessionLocked()V

    .line 492
    return-void
.end method
