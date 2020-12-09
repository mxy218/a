.class Lcom/android/server/wm/RootWindowContainer;
.super Lcom/android/server/wm/WindowContainer;
.source "RootWindowContainer.java"

# interfaces
.implements Lcom/android/server/wm/ConfigurationContainerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RootWindowContainer$MyHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/DisplayContent;",
        ">;",
        "Lcom/android/server/wm/ConfigurationContainerListener;"
    }
.end annotation


# static fields
.field private static final SET_BUTTON_BRIGHTNESS_OVERRIDE:I = 0x0

.field private static final SET_SCREEN_BRIGHTNESS_OVERRIDE:I = 0x1

.field private static final SET_USER_ACTIVITY_TIMEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mButtonBrightness:F

.field private final mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseSystemDialogsReason:Ljava/lang/String;

.field private final mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mHandler:Landroid/os/Handler;

.field private mHoldScreen:Lcom/android/server/wm/Session;

.field mHoldScreenWindow:Lcom/android/server/wm/WindowState;

.field private mLastWindowFreezeSource:Ljava/lang/Object;

.field private mObscureApplicationContentOnSecondaryDisplays:Z

.field mObscuringWindow:Lcom/android/server/wm/WindowState;

.field mOrientationChangeComplete:Z

.field private mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

.field private mScreenBrightness:F

.field private mSustainedPerformanceModeCurrent:Z

.field private mSustainedPerformanceModeEnabled:Z

.field final mTopFocusedAppByProcess:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mTopFocusedDisplayId:I

.field private mUpdateRotation:Z

.field private mUserActivityTimeout:J

.field mWallpaperActionPending:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 150
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$Vvv8jzH2oSE9-eakZwTuKd5NpsU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$Vvv8jzH2oSE9-eakZwTuKd5NpsU;

    sput-object v0, Lcom/android/server/wm/RootWindowContainer;->sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5

    .line 158
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 102
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 103
    const/high16 v1, -0x40800000  # -1.0f

    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mButtonBrightness:F

    .line 104
    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    .line 105
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 106
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 109
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 111
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 114
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 116
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 124
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    .line 135
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Ljava/util/HashMap;

    .line 139
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 141
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$qT2ficAmvrvFcBdiJIGNKxJ8Z9Q;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$qT2ficAmvrvFcBdiJIGNKxJ8Z9Q;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    .line 159
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$MyHandler;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/RootWindowContainer$MyHandler;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    .line 160
    return-void
.end method

.method private applySurfaceChangesTransaction(Z)V
    .registers 6

    .line 816
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 817
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 820
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 821
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 822
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 823
    iget v0, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 824
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v2, :cond_20

    .line 825
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/wm/Watermark;->positionSurface(II)V

    .line 827
    :cond_20
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-eqz v2, :cond_2d

    .line 828
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/wm/StrictModeFlash;->positionSurface(II)V

    .line 830
    :cond_2d
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    if-eqz v2, :cond_40

    .line 831
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 832
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v3

    .line 831
    invoke-virtual {v2, v1, v0, v3}, Lcom/android/server/wm/CircularDisplayMask;->positionSurface(III)V

    .line 834
    :cond_40
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    if-eqz v2, :cond_53

    .line 835
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 836
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v3

    .line 835
    invoke-virtual {v2, v1, v0, v3}, Lcom/android/server/wm/EmulatorDisplayOverlay;->positionSurface(III)V

    .line 839
    :cond_53
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 840
    const/4 v1, 0x0

    :goto_5a
    if-ge v1, v0, :cond_6a

    .line 841
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 842
    invoke-virtual {v2, p1}, Lcom/android/server/wm/DisplayContent;->applySurfaceChangesTransaction(Z)V

    .line 840
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 847
    :cond_6a
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManagerInternal;->performTraversal(Landroid/view/SurfaceControl$Transaction;)V

    .line 848
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {p1}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 849
    return-void
.end method

.method private checkAppTransitionReady(Lcom/android/server/wm/WindowSurfacePlacer;)V
    .registers 4

    .line 785
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_8
    if-ltz p1, :cond_33

    .line 786
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    .line 790
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 792
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransitionController;->handleAppTransitionReady()V

    .line 799
    :cond_1f
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isAppAnimating()Z

    move-result v1

    if-nez v1, :cond_30

    .line 806
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->handleAnimatingStoppedAndTransition()V

    .line 785
    :cond_30
    add-int/lit8 p1, p1, -0x1

    goto :goto_8

    .line 813
    :cond_33
    return-void
.end method

.method private getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 310
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$O6gArs92KbWUhitra1og4WTg69c;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$O6gArs92KbWUhitra1og4WTg69c;-><init>(Ljava/lang/String;Ljava/util/ArrayList;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 319
    return-void
.end method

.method private handleResizingWindows()V
    .registers 4

    .line 855
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_30

    .line 856
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 857
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v2, :cond_2d

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v2, :cond_23

    .line 860
    goto :goto_2d

    .line 862
    :cond_23
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->reportResized()V

    .line 863
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 855
    :cond_2d
    :goto_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 865
    :cond_30
    return-void
.end method

.method static synthetic lambda$canShowStrictModeViolation$7(ILcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 453
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-ne v0, p0, :cond_e

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method static synthetic lambda$dumpWindowsNoHeader$10(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZLcom/android/server/wm/WindowState;)V
    .registers 8

    .line 1041
    if-eqz p0, :cond_8

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1042
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Window #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    const/4 v0, 0x1

    if-nez p3, :cond_34

    if-eqz p0, :cond_32

    goto :goto_34

    :cond_32
    move p0, v1

    goto :goto_35

    :cond_34
    :goto_34
    move p0, v0

    :goto_35
    const-string p3, "    "

    invoke-virtual {p4, p1, p3, p0}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1044
    aget p0, p2, v1

    add-int/2addr p0, v0

    aput p0, p2, v1

    .line 1046
    :cond_3f
    return-void
.end method

.method static synthetic lambda$getWindowsByName$2(Ljava/lang/String;Ljava/util/ArrayList;ILcom/android/server/wm/WindowState;)V
    .registers 4

    .line 311
    if-eqz p0, :cond_16

    .line 312
    iget-object p2, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 313
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 315
    :cond_16
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    if-ne p0, p2, :cond_1f

    .line 316
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_1f
    :goto_1f
    return-void
.end method

.method static synthetic lambda$isAnyNonToastWindowVisibleForUid$3(ILcom/android/server/wm/WindowState;)Z
    .registers 3

    .line 327
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v0

    if-ne v0, p0, :cond_1d

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x7d5

    if-eq p0, v0, :cond_1d

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1d

    .line 328
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    .line 327
    :goto_1e
    return p0
.end method

.method static synthetic lambda$performSurfacePlacementNoTrace$9(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 767
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 768
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 769
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateTouchExcludeRegion()V

    .line 770
    return-void
.end method

.method static synthetic lambda$setSecureSurfaceState$4(IZLcom/android/server/wm/WindowState;)V
    .registers 4

    .line 432
    iget-boolean v0, p2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_11

    iget v0, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne p0, v0, :cond_11

    .line 433
    iget-object p0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowStateAnimator;->setSecureLocked(Z)V

    .line 435
    :cond_11
    return-void
.end method

.method static synthetic lambda$static$1(Lcom/android/server/wm/WindowState;)V
    .registers 2

    .line 151
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 152
    if-eqz v0, :cond_7

    .line 153
    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppWindowToken;->removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)V

    .line 155
    :cond_7
    return-void
.end method

.method static synthetic lambda$updateAppOpsState$6(Lcom/android/server/wm/WindowState;)V
    .registers 1

    .line 448
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateAppOpsState()V

    .line 449
    return-void
.end method

.method static synthetic lambda$updateHiddenWhileSuspendedState$5(Landroid/util/ArraySet;ZLcom/android/server/wm/WindowState;)V
    .registers 4

    .line 440
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 441
    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowState;->setHiddenWhileSuspended(Z)V

    .line 443
    :cond_d
    return-void
.end method

.method static synthetic lambda$writeToProto$11(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 1075
    const-wide v0, 0x20b00000003L

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1076
    return-void
.end method

.method private prepareFreezingTaskBounds()V
    .registers 3

    .line 414
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 415
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->prepareFreezingTaskBounds()V

    .line 414
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 417
    :cond_18
    return-void
.end method

.method private setGlobalConfigurationIfNeeded(Landroid/content/res/Configuration;)V
    .registers 3

    .line 400
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 401
    :goto_d
    if-nez v0, :cond_10

    .line 402
    return-void

    .line 404
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 405
    return-void
.end method

.method private static toBrightnessOverride(F)I
    .registers 2

    .line 976
    const/high16 v0, 0x437f0000  # 255.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method canShowStrictModeViolation(I)Z
    .registers 3

    .line 453
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$-3EhML4qLwBt5KlZ9KF4rJB08Ac;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$-3EhML4qLwBt5KlZ9KF4rJB08Ac;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object p1

    .line 454
    if-eqz p1, :cond_d

    const/4 p1, 0x1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    return p1
.end method

.method closeSystemDialogs(Ljava/lang/String;)V
    .registers 3

    .line 458
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    .line 459
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 460
    return-void
.end method

.method copyAnimToLayoutParams()Z
    .registers 6

    .line 951
    nop

    .line 953
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 954
    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_11

    .line 955
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 956
    move v1, v3

    goto :goto_12

    .line 954
    :cond_11
    move v1, v2

    .line 958
    :goto_12
    and-int/lit8 v4, v0, 0x4

    if-nez v4, :cond_19

    .line 959
    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    goto :goto_2a

    .line 961
    :cond_19
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 962
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 963
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz v2, :cond_2a

    .line 964
    move v1, v3

    .line 968
    :cond_2a
    :goto_2a
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_30

    .line 969
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 972
    :cond_30
    return v1
.end method

.method createDisplayContent(Landroid/view/Display;Lcom/android/server/wm/ActivityDisplay;)Lcom/android/server/wm/DisplayContent;
    .registers 6

    .line 227
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 234
    if-eqz v1, :cond_10

    .line 235
    iput-object p2, v1, Lcom/android/server/wm/DisplayContent;->mAcitvityDisplay:Lcom/android/server/wm/ActivityDisplay;

    .line 236
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->initializeDisplayOverrideConfiguration()V

    .line 237
    return-object v1

    .line 240
    :cond_10
    new-instance v1, Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v1, p1, v2, p2}, Lcom/android/server/wm/DisplayContent;-><init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ActivityDisplay;)V

    .line 244
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayWindowSettings;->applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 245
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->initializeDisplayOverrideConfiguration()V

    .line 247
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz p1, :cond_35

    .line 248
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 249
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p2

    .line 248
    invoke-virtual {p1, v0, p2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    .line 250
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    .line 253
    :cond_35
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 255
    return-object v1
.end method

.method dumpDisplayContents(Ljava/io/PrintWriter;)V
    .registers 7

    .line 1007
    const-string v0, "WINDOW MANAGER DISPLAY CONTENTS (dumpsys window displays)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_26

    .line 1009
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1010
    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_25

    .line 1011
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 1012
    const/4 v3, 0x1

    const-string v4, "  "

    invoke-virtual {v2, p1, v4, v3}, Lcom/android/server/wm/DisplayContent;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1010
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1014
    :cond_25
    goto :goto_2b

    .line 1015
    :cond_26
    const-string v0, "  NO DISPLAY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1017
    :goto_2b
    return-void
.end method

.method dumpLayoutNeededDisplayIds(Ljava/io/PrintWriter;)V
    .registers 6

    .line 1024
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1025
    return-void

    .line 1027
    :cond_7
    const-string v0, "  mLayoutNeeded on displays="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1028
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1029
    const/4 v1, 0x0

    :goto_13
    if-ge v1, v0, :cond_2d

    .line 1030
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 1031
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1032
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1029
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1035
    :cond_2d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1036
    return-void
.end method

.method dumpTokens(Ljava/io/PrintWriter;Z)V
    .registers 5

    .line 1050
    const-string v0, "  All tokens:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz v0, :cond_1d

    .line 1052
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->dumpTokens(Ljava/io/PrintWriter;Z)V

    .line 1051
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 1054
    :cond_1d
    return-void
.end method

.method dumpTopFocusedDisplayId(Ljava/io/PrintWriter;)V
    .registers 3

    .line 1020
    const-string v0, "  mTopFocusedDisplayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1021
    return-void
.end method

.method dumpWindowsNoHeader(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .line 1039
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 1040
    new-instance v2, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$nRMSe8o9Vhp4MBHMJJoyb6ObTQ0;

    invoke-direct {v2, p3, p1, v1, p2}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$nRMSe8o9Vhp4MBHMJJoyb6ObTQ0;-><init>(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZ)V

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1047
    return-void
.end method

.method forAllDisplayPolicies(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/DisplayPolicy;",
            ">;)V"
        }
    .end annotation

    .line 1125
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 1126
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1125
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1128
    :cond_1c
    return-void
.end method

.method forAllDisplays(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/DisplayContent;",
            ">;)V"
        }
    .end annotation

    .line 1119
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1120
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1119
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1122
    :cond_18
    return-void
.end method

.method getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    .registers 4

    .line 338
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 339
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 340
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    .line 341
    if-eqz v1, :cond_19

    .line 342
    return-object v1

    .line 338
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 345
    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;
    .registers 4

    .line 1135
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 1136
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1137
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_19

    .line 1138
    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    return-object v0

    .line 1135
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1141
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getDisplayContent(I)Lcom/android/server/wm/DisplayContent;
    .registers 5

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 218
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 219
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-ne v2, p1, :cond_19

    .line 220
    return-object v1

    .line 217
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 223
    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 1083
    const-string v0, "ROOT"

    return-object v0
.end method

.method getStack(II)Lcom/android/server/wm/TaskStack;
    .registers 5

    .line 420
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 421
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 422
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 423
    if-eqz v1, :cond_19

    .line 424
    return-object v1

    .line 420
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 427
    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 2

    .line 206
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_9

    goto :goto_e

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    :goto_e
    return-object v0
.end method

.method getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .registers 4

    .line 350
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_1c

    .line 351
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 352
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v1

    .line 353
    if-eqz v1, :cond_19

    .line 354
    return-object v1

    .line 350
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 357
    :cond_1c
    const/4 p1, 0x0

    return-object p1
.end method

.method getWindowTokenDisplay(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayContent;
    .registers 6

    .line 362
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 363
    return-object v0

    .line 366
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c
    if-ltz v1, :cond_22

    .line 367
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 368
    iget-object v3, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v3

    .line 369
    if-ne v3, p1, :cond_1f

    .line 370
    return-object v2

    .line 366
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 374
    :cond_22
    return-object v0
.end method

.method getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 298
    nop

    .line 301
    const/16 v0, 0x10

    :try_start_3
    invoke-static {p2, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p2
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_7} :catch_c

    .line 302
    const/4 v0, 0x0

    .line 304
    move-object v1, v0

    move v0, p2

    move-object p2, v1

    goto :goto_e

    .line 303
    :catch_c
    move-exception v0

    const/4 v0, 0x0

    .line 306
    :goto_e
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/RootWindowContainer;->getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 307
    return-void
.end method

.method handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Z
    .registers 13

    .line 875
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 876
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 877
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v2

    .line 878
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v3

    .line 879
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 880
    nop

    .line 889
    iget-boolean v5, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v5, :cond_2d

    if-eqz v2, :cond_2d

    .line 890
    if-nez p3, :cond_2d

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v5, v2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-ltz v2, :cond_2d

    iget-wide v5, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    cmp-long v2, v5, v7

    if-gez v2, :cond_2d

    .line 891
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v5, v2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v5, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 897
    :cond_2d
    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    const/4 v5, 0x0

    if-eqz v2, :cond_9a

    if-eqz v3, :cond_9a

    .line 898
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_3e

    .line 899
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 900
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 906
    :cond_3e
    const/4 v1, 0x0

    if-nez p3, :cond_55

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    cmpl-float v2, v2, v1

    if-ltz v2, :cond_55

    iget v2, p0, Lcom/android/server/wm/RootWindowContainer;->mButtonBrightness:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_55

    .line 907
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->buttonBrightness:F

    iput v2, p0, Lcom/android/server/wm/RootWindowContainer;->mButtonBrightness:F

    .line 909
    :cond_55
    if-nez p3, :cond_6b

    iget-object p3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p3, p3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    cmpl-float p3, p3, v1

    if-ltz p3, :cond_6b

    iget p3, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    cmpg-float p3, p3, v1

    if-gez p3, :cond_6b

    .line 910
    iget-object p3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p3, p3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput p3, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    .line 913
    :cond_6b
    iget p3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 916
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 917
    const/4 v1, 0x1

    if-eqz p1, :cond_86

    iget-boolean v2, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v2, :cond_86

    .line 921
    const/16 p1, 0x7e7

    if-eq p3, p1, :cond_82

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_84

    .line 922
    :cond_82
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 924
    :cond_84
    move v5, v1

    goto :goto_93

    .line 925
    :cond_86
    if-eqz p1, :cond_93

    iget-boolean p1, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    if-eqz p1, :cond_92

    if-eqz p2, :cond_93

    const/16 p1, 0x7d9

    if-ne p3, p1, :cond_93

    .line 929
    :cond_92
    move v5, v1

    .line 931
    :cond_93
    :goto_93
    const/high16 p1, 0x40000

    and-int/2addr p1, v4

    if-eqz p1, :cond_9a

    .line 932
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 936
    :cond_9a
    return v5
.end method

.method hasPendingLayoutChanges(Lcom/android/server/wm/WindowAnimator;)Z
    .registers 7

    .line 474
    nop

    .line 476
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 477
    const/4 v1, 0x0

    move v2, v1

    :goto_9
    if-ge v1, v0, :cond_2b

    .line 478
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 479
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v3

    .line 480
    and-int/lit8 v4, v3, 0x4

    if-eqz v4, :cond_25

    .line 481
    iget v4, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 483
    :cond_25
    if-eqz v3, :cond_28

    .line 484
    const/4 v2, 0x1

    .line 477
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 488
    :cond_2b
    return v2
.end method

.method isAnyNonToastWindowVisibleForUid(I)Z
    .registers 3

    .line 326
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$IlD1lD49ui7gQmU2NkxgnXIhlOo;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$IlD1lD49ui7gQmU2NkxgnXIhlOo;-><init>(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result p1

    return p1
.end method

.method isLayoutNeeded()Z
    .registers 5

    .line 287
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 288
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_1d

    .line 289
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 290
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 291
    const/4 v0, 0x1

    return v0

    .line 288
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 294
    :cond_1d
    return v1
.end method

.method public synthetic lambda$new$0$RootWindowContainer(Lcom/android/server/wm/WindowState;)V
    .registers 3

    .line 142
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_d

    .line 144
    :try_start_4
    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/IWindow;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 146
    goto :goto_d

    .line 145
    :catch_c
    move-exception p1

    .line 148
    :cond_d
    :goto_d
    return-void
.end method

.method public synthetic lambda$reclaimSomeSurfaceMemory$8$RootWindowContainer(Landroid/util/SparseIntArray;Lcom/android/server/wm/WindowState;)V
    .registers 4

    .line 516
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 517
    return-void

    .line 519
    :cond_b
    iget-object p2, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 520
    iget-object v0, p2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v0, :cond_1c

    .line 521
    iget-object v0, p2, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    iget-object p2, p2, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget p2, p2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseIntArray;->append(II)V

    .line 523
    :cond_1c
    return-void
.end method

.method onChildPositionChanged()V
    .registers 4

    .line 212
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mPerDisplayFocusEnabled:Z

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 214
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 409
    invoke-direct {p0}, Lcom/android/server/wm/RootWindowContainer;->prepareFreezingTaskBounds()V

    .line 410
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 411
    return-void
.end method

.method onSettingsRetrieved()V
    .registers 7

    .line 262
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 263
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_3e

    .line 264
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 265
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/DisplayWindowSettings;->updateSettingsForDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v4

    .line 267
    if-nez v4, :cond_1d

    .line 268
    goto :goto_3b

    .line 271
    :cond_1d
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->initializeDisplayOverrideConfiguration()V

    .line 272
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 277
    iget-boolean v4, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_3b

    .line 278
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 279
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    .line 278
    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v3

    .line 280
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 263
    :cond_3b
    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 284
    :cond_3e
    return-void
.end method

.method performSurfacePlacement(Z)V
    .registers 5

    .line 567
    const-wide/16 v0, 0x20

    const-string v2, "performSurfacePlacement"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 569
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacementNoTrace(Z)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_f

    .line 571
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 572
    nop

    .line 573
    return-void

    .line 571
    :catchall_f
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method performSurfacePlacementNoTrace(Z)V
    .registers 13

    .line 583
    const-string v0, "performLayoutAndPlaceSurfaces"

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_13

    .line 584
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 585
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x3

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 590
    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 591
    move v3, v2

    :goto_1a
    if-ge v3, v1, :cond_2a

    .line 592
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 593
    invoke-virtual {v4, v2}, Lcom/android/server/wm/DisplayContent;->setExitingTokensHasVisible(Z)V

    .line 591
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 596
    :cond_2a
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 597
    const/high16 v4, -0x40800000  # -1.0f

    iput v4, p0, Lcom/android/server/wm/RootWindowContainer;->mButtonBrightness:F

    .line 598
    iput v4, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    .line 599
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 600
    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 601
    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 602
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v5, v4, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    .line 605
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 606
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 610
    const-wide/16 v7, 0x20

    const-string v9, "applySurfaceChanges"

    invoke-static {v7, v8, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 611
    iget-object v9, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 613
    :try_start_59
    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->applySurfaceChangesTransaction(Z)V
    :try_end_5c
    .catch Ljava/lang/RuntimeException; {:try_start_59 .. :try_end_5c} :catch_68
    .catchall {:try_start_59 .. :try_end_5c} :catchall_65

    .line 617
    :goto_5c
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 618
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 621
    goto :goto_71

    .line 617
    :catchall_65
    move-exception p1

    goto/16 :goto_258

    .line 614
    :catch_68
    move-exception p1

    .line 615
    :try_start_69
    const-string v9, "WindowManager"

    const-string v10, "Unhandled exception in Window Manager"

    invoke-static {v9, v10, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_70
    .catchall {:try_start_69 .. :try_end_70} :catchall_65

    goto :goto_5c

    .line 622
    :goto_71
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowAnimator;->executeAfterPrepareSurfacesRunnables()V

    .line 624
    invoke-direct {p0, v5}, Lcom/android/server/wm/RootWindowContainer;->checkAppTransitionReady(Lcom/android/server/wm/WindowSurfacePlacer;)V

    .line 627
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 628
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object p1

    .line 629
    if-eqz p1, :cond_88

    .line 630
    iget-object v0, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/RecentsAnimationController;->checkAnimationReady(Lcom/android/server/wm/WallpaperController;)V

    .line 633
    :cond_88
    move p1, v2

    :goto_89
    if-ge p1, v1, :cond_a0

    .line 634
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    .line 635
    iget-boolean v5, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    if-eqz v5, :cond_9d

    .line 637
    iget v5, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 633
    :cond_9d
    add-int/lit8 p1, p1, 0x1

    goto :goto_89

    .line 645
    :cond_a0
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v0, 0x2

    if-eqz p1, :cond_b0

    .line 646
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, p1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 647
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1, v0, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 651
    :cond_b0
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result p1

    if-eqz p1, :cond_bb

    .line 652
    iget p1, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr p1, v6

    iput p1, v4, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 657
    :cond_bb
    invoke-direct {p0}, Lcom/android/server/wm/RootWindowContainer;->handleResizingWindows()V

    .line 661
    iget-boolean p1, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-eqz p1, :cond_e0

    .line 662
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget p1, p1, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz p1, :cond_db

    .line 663
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput v2, p1, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 664
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v4, p1, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 665
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0xb

    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 667
    :cond_db
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 671
    :cond_e0
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 672
    const/4 v4, -0x1

    if-lez p1, :cond_122

    .line 674
    :cond_eb
    add-int/2addr p1, v4

    .line 675
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 676
    iput-boolean v2, v5, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 677
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    .line 678
    iget-object v8, v7, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v8, v5, :cond_103

    .line 679
    invoke-virtual {v7, v3}, Lcom/android/server/wm/DisplayContent;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 681
    :cond_103
    iget-object v8, v7, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v8, v5}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v8

    if-eqz v8, :cond_111

    .line 682
    iget v8, v7, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v8, v8, 0x4

    iput v8, v7, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 684
    :cond_111
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->destroySurfaceUnchecked()V

    .line 685
    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    .line 686
    if-gtz p1, :cond_eb

    .line 687
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 691
    :cond_122
    move p1, v2

    :goto_123
    if-ge p1, v1, :cond_133

    .line 692
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 693
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->removeExistingTokensIfPossible()V

    .line 691
    add-int/lit8 p1, p1, 0x1

    goto :goto_123

    .line 696
    :cond_133
    move p1, v2

    :goto_134
    if-ge p1, v1, :cond_148

    .line 697
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 698
    iget v5, v3, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-eqz v5, :cond_145

    .line 699
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 696
    :cond_145
    add-int/lit8 p1, p1, 0x1

    goto :goto_134

    .line 703
    :cond_148
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowManagerService;->setHoldScreenLocked(Lcom/android/server/wm/Session;)V

    .line 704
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez p1, :cond_19b

    .line 705
    iget p1, p0, Lcom/android/server/wm/RootWindowContainer;->mButtonBrightness:F

    const/4 v1, 0x0

    cmpg-float v3, p1, v1

    const/high16 v5, 0x3f800000  # 1.0f

    if-ltz v3, :cond_168

    cmpl-float v3, p1, v5

    if-lez v3, :cond_163

    goto :goto_168

    .line 706
    :cond_163
    invoke-static {p1}, Lcom/android/server/wm/RootWindowContainer;->toBrightnessOverride(F)I

    move-result p1

    goto :goto_169

    :cond_168
    :goto_168
    move p1, v4

    .line 708
    :goto_169
    iget v3, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    cmpg-float v1, v3, v1

    if-ltz v1, :cond_179

    cmpl-float v1, v3, v5

    if-lez v1, :cond_174

    goto :goto_179

    .line 709
    :cond_174
    invoke-static {v3}, Lcom/android/server/wm/RootWindowContainer;->toBrightnessOverride(F)I

    move-result v4

    goto :goto_17a

    :cond_179
    :goto_179
    nop

    .line 713
    :goto_17a
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 714
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 715
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v6, v4, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 716
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 717
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 720
    :cond_19b
    iget-boolean p1, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    iget-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    if-eq p1, v0, :cond_1ad

    .line 721
    iput-boolean p1, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 722
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v0, 0x6

    .line 724
    iget-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 722
    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 727
    :cond_1ad
    iget-boolean p1, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    if-eqz p1, :cond_1b7

    .line 729
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->updateRotationUnchecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 732
    :cond_1b7
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    if-nez p1, :cond_1cb

    iget-boolean p1, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-eqz p1, :cond_1d0

    .line 733
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result p1

    if-nez p1, :cond_1d0

    iget-boolean p1, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    if-nez p1, :cond_1d0

    .line 735
    :cond_1cb
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    .line 738
    :cond_1d0
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 739
    if-lez p1, :cond_231

    .line 740
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    array-length v0, v0

    if-ge v0, p1, :cond_1e9

    .line 741
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    add-int/lit8 v1, p1, 0xa

    new-array v1, v1, [Lcom/android/server/wm/WindowState;

    iput-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    .line 743
    :cond_1e9
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 744
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 745
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 746
    nop

    :goto_201
    if-ge v2, p1, :cond_21e

    .line 747
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    aget-object v1, v1, v2

    .line 748
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 749
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 750
    if-eqz v1, :cond_21b

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21b

    .line 751
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    :cond_21b
    add-int/lit8 v2, v2, 0x1

    goto :goto_201

    .line 755
    :cond_21e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v6

    :goto_223
    if-ltz p1, :cond_231

    .line 756
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 757
    invoke-virtual {v1, v6}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 755
    add-int/lit8 p1, p1, -0x1

    goto :goto_223

    .line 762
    :cond_231
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result p1

    sub-int/2addr p1, v6

    :goto_238
    if-ltz p1, :cond_248

    .line 763
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->checkCompleteDeferredRemoval()Z

    .line 762
    add-int/lit8 p1, p1, -0x1

    goto :goto_238

    .line 766
    :cond_248
    sget-object p1, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$7XcqfZjQLAbjpIyed3iDnVtZro4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$7XcqfZjQLAbjpIyed3iDnVtZro4;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 774
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 776
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 781
    return-void

    .line 617
    :goto_258
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 618
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method positionChildAt(ILcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 1096
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 1097
    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/DisplayContent;Z)V
    .registers 4

    .line 1088
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 1089
    iget-object p3, p0, Lcom/android/server/wm/RootWindowContainer;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    if-eqz p3, :cond_c

    .line 1090
    iget-object p2, p2, Lcom/android/server/wm/DisplayContent;->mAcitvityDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {p3, p2, p1}, Lcom/android/server/wm/RootActivityContainer;->onChildPositionChanged(Lcom/android/server/wm/ActivityDisplay;I)V

    .line 1092
    :cond_c
    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 4

    .line 90
    check-cast p2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->positionChildAt(ILcom/android/server/wm/DisplayContent;Z)V

    return-void
.end method

.method reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z
    .registers 21

    .line 493
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "WindowManager"

    iget-object v4, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 494
    nop

    .line 495
    nop

    .line 497
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v5, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v0, v6

    iget-object v5, v2, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v5, v5, Lcom/android/server/wm/Session;->mPid:I

    .line 498
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v0, v7

    const/4 v5, 0x2

    aput-object p2, v0, v5

    .line 497
    const/16 v5, 0x7918

    invoke-static {v5, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 500
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 505
    :try_start_2d
    const-string v0, "Out of memory for surface!  Looking for leaks..."

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    .line 507
    move v0, v6

    move v10, v0

    :goto_3a
    if-ge v0, v5, :cond_4c

    .line 508
    iget-object v11, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v11, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->destroyLeakedSurfaces()Z

    move-result v11

    or-int/2addr v10, v11

    .line 507
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 511
    :cond_4c
    if-nez v10, :cond_a1

    .line 512
    const-string v0, "No leaked surfaces; killing applications!"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    new-instance v11, Landroid/util/SparseIntArray;

    invoke-direct {v11}, Landroid/util/SparseIntArray;-><init>()V

    .line 514
    move v12, v6

    move v13, v12

    :goto_5a
    if-ge v12, v5, :cond_a2

    .line 515
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    new-instance v14, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$yUm1jRpi8w1ifmlGbgy1F1iTxu4;

    invoke-direct {v14, v1, v11}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$yUm1jRpi8w1ifmlGbgy1F1iTxu4;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/util/SparseIntArray;)V

    invoke-virtual {v0, v14, v6}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 525
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_9b

    .line 526
    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 527
    move v14, v6

    :goto_79
    array-length v15, v0

    if-ge v14, v15, :cond_85

    .line 528
    invoke-virtual {v11, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    aput v15, v0, v14
    :try_end_82
    .catchall {:try_start_2d .. :try_end_82} :catchall_d5

    .line 527
    add-int/lit8 v14, v14, 0x1

    goto :goto_79

    .line 531
    :cond_85
    :try_start_85
    iget-object v14, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string v15, "Free memory"
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_8b} :catch_97
    .catchall {:try_start_85 .. :try_end_8b} :catchall_d5

    move/from16 v6, p3

    :try_start_8d
    invoke-interface {v14, v0, v15, v6}, Landroid/app/IActivityManager;->killPids([ILjava/lang/String;Z)Z

    move-result v0
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_91} :catch_95
    .catchall {:try_start_8d .. :try_end_91} :catchall_d5

    if-eqz v0, :cond_94

    .line 532
    move v13, v7

    .line 535
    :cond_94
    goto :goto_9d

    .line 534
    :catch_95
    move-exception v0

    goto :goto_9d

    :catch_97
    move-exception v0

    move/from16 v6, p3

    goto :goto_9d

    .line 525
    :cond_9b
    move/from16 v6, p3

    .line 514
    :goto_9d
    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x0

    goto :goto_5a

    .line 511
    :cond_a1
    const/4 v13, 0x0

    .line 540
    :cond_a2
    if-nez v10, :cond_a6

    if-eqz v13, :cond_c6

    .line 543
    :cond_a6
    :try_start_a6
    const-string v0, "Looks like we have reclaimed some memory, clearing surface for retry."

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    if-eqz v4, :cond_bd

    .line 548
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    .line 549
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_bd

    .line 550
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->removeStartingWindow()V
    :try_end_bd
    .catchall {:try_start_a6 .. :try_end_bd} :catchall_d5

    .line 555
    :cond_bd
    :try_start_bd
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_bd .. :try_end_c4} :catch_c5
    .catchall {:try_start_bd .. :try_end_c4} :catchall_d5

    .line 557
    goto :goto_c6

    .line 556
    :catch_c5
    move-exception v0

    .line 560
    :cond_c6
    :goto_c6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 561
    nop

    .line 563
    if-nez v10, :cond_d2

    if-eqz v13, :cond_cf

    goto :goto_d2

    :cond_cf
    const/16 v16, 0x0

    goto :goto_d4

    :cond_d2
    :goto_d2
    move/from16 v16, v7

    :goto_d4
    return v16

    .line 560
    :catchall_d5
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method protected removeChild(Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 1106
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1107
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    if-ne v0, p1, :cond_12

    .line 1108
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 1111
    :cond_12
    return-void
.end method

.method protected bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 90
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->removeChild(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method removeReplacedWindows()V
    .registers 4

    .line 464
    const-string v0, "removeReplacedWindows"

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 466
    :try_start_7
    sget-object v1, Lcom/android/server/wm/RootWindowContainer;->sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_14

    .line 468
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 470
    nop

    .line 471
    return-void

    .line 468
    :catchall_14
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    throw v1
.end method

.method scheduleAnimation()V
    .registers 2

    .line 1101
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1102
    return-void
.end method

.method setDisplayOverrideConfigurationIfNeeded(Landroid/content/res/Configuration;Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 384
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 385
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 386
    :goto_d
    if-nez v0, :cond_10

    .line 387
    return-void

    .line 390
    :cond_10
    invoke-virtual {p2, p1}, Lcom/android/server/wm/DisplayContent;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 392
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p2

    if-nez p2, :cond_1c

    .line 395
    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->setGlobalConfigurationIfNeeded(Landroid/content/res/Configuration;)V

    .line 397
    :cond_1c
    return-void
.end method

.method setRootActivityContainer(Lcom/android/server/wm/RootActivityContainer;)V
    .registers 2

    .line 163
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 164
    if-eqz p1, :cond_7

    .line 165
    invoke-virtual {p1, p0}, Lcom/android/server/wm/RootActivityContainer;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 167
    :cond_7
    return-void
.end method

.method setSecureSurfaceState(IZ)V
    .registers 4

    .line 431
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$vMW2dyMvZQ0PDhptvNKN5WXpK_w;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$vMW2dyMvZQ0PDhptvNKN5WXpK_w;-><init>(IZ)V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 436
    return-void
.end method

.method updateAppOpsState()V
    .registers 3

    .line 447
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$auMc5HUrsvttHP3CYY9dttuuvi8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$auMc5HUrsvttHP3CYY9dttuuvi8;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 450
    return-void
.end method

.method updateFocusedWindowLocked(IZ)Z
    .registers 13

    .line 170
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 171
    nop

    .line 172
    nop

    .line 173
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v4, v1

    move v3, v2

    :goto_13
    if-ltz v0, :cond_55

    .line 174
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    .line 175
    invoke-virtual {v5, p1, p2, v3}, Lcom/android/server/wm/DisplayContent;->updateFocusedWindowLocked(IZI)Z

    move-result v6

    or-int/2addr v4, v6

    .line 176
    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 177
    if-eqz v6, :cond_48

    .line 178
    iget-object v7, v6, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v7, v7, Lcom/android/server/wm/Session;->mPid:I

    .line 179
    iget-object v8, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_41

    .line 180
    iget-object v8, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v8, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_41
    if-ne v3, v2, :cond_47

    .line 183
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    .line 185
    :cond_47
    goto :goto_52

    :cond_48
    if-ne v3, v2, :cond_47

    iget-object v6, v5, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_47

    .line 189
    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    .line 173
    :goto_52
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 192
    :cond_55
    if-ne v3, v2, :cond_58

    .line 193
    goto :goto_59

    .line 192
    :cond_58
    move v1, v3

    .line 195
    :goto_59
    iget p1, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    if-eq p1, v1, :cond_6d

    .line 196
    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    .line 197
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1, v1}, Lcom/android/server/input/InputManagerService;->setFocusedDisplay(I)V

    .line 198
    iget-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p1, v1}, Lcom/android/server/policy/WindowManagerPolicy;->setTopFocusedDisplay(I)V

    .line 202
    :cond_6d
    return v4
.end method

.method updateHiddenWhileSuspendedState(Landroid/util/ArraySet;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 439
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$jHLZ5ssJOPMd9KJ4tf6FHZ8ZLXI;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$jHLZ5ssJOPMd9KJ4tf6FHZ8ZLXI;-><init>(Landroid/util/ArraySet;Z)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 444
    return-void
.end method

.method updateRotationUnchecked()Z
    .registers 5

    .line 940
    nop

    .line 941
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_a
    if-ltz v0, :cond_1e

    .line 942
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 943
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->updateRotationAndSendNewConfigIfNeeded()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 944
    move v2, v1

    .line 941
    :cond_1b
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 947
    :cond_1e
    return v2
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 10

    .line 1060
    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1061
    return-void

    .line 1064
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 1065
    const-wide v0, 0x10b00000001L

    invoke-super {p0, p1, v0, v1, p4}, Lcom/android/server/wm/WindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1066
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_38

    .line 1067
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1068
    const/4 v1, 0x0

    :goto_23
    if-ge v1, v0, :cond_38

    .line 1069
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 1070
    const-wide v3, 0x20b00000002L

    invoke-virtual {v2, p1, v3, v4, p4}, Lcom/android/server/wm/DisplayContent;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1068
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 1073
    :cond_38
    if-nez p4, :cond_43

    .line 1074
    new-instance p4, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$RlRzlI_mvPut3IP0uoIxY4DU_c0;

    invoke-direct {p4, p1}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$RlRzlI_mvPut3IP0uoIxY4DU_c0;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p4, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1078
    :cond_43
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1079
    return-void
.end method
