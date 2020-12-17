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

    .line 149
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$Vvv8jzH2oSE9-eakZwTuKd5NpsU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$Vvv8jzH2oSE9-eakZwTuKd5NpsU;

    sput-object v0, Lcom/android/server/wm/RootWindowContainer;->sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5
    .param p1, "service"  # Lcom/android/server/wm/WindowManagerService;

    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 102
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 103
    const/high16 v1, -0x40800000  # -1.0f

    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    .line 104
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 105
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 108
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 110
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 113
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 115
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 116
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 123
    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    .line 134
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Ljava/util/HashMap;

    .line 138
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 140
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$qT2ficAmvrvFcBdiJIGNKxJ8Z9Q;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$qT2ficAmvrvFcBdiJIGNKxJ8Z9Q;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    .line 158
    new-instance v0, Lcom/android/server/wm/RootWindowContainer$MyHandler;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/RootWindowContainer$MyHandler;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    .line 159
    return-void
.end method

.method private applySurfaceChangesTransaction(Z)V
    .registers 9
    .param p1, "recoveringMemory"  # Z

    .line 810
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    .line 811
    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    .line 814
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 815
    .local v0, "defaultDc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 816
    .local v1, "defaultInfo":Landroid/view/DisplayInfo;
    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 817
    .local v2, "defaultDw":I
    iget v3, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 818
    .local v3, "defaultDh":I
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v4, :cond_20

    .line 819
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/wm/Watermark;->positionSurface(II)V

    .line 821
    :cond_20
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-eqz v4, :cond_2d

    .line 822
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/wm/StrictModeFlash;->positionSurface(II)V

    .line 824
    :cond_2d
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    if-eqz v4, :cond_40

    .line 825
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 826
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v5

    .line 825
    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/wm/CircularDisplayMask;->positionSurface(III)V

    .line 828
    :cond_40
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    if-eqz v4, :cond_53

    .line 829
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 830
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v5

    .line 829
    invoke-virtual {v4, v2, v3, v5}, Lcom/android/server/wm/EmulatorDisplayOverlay;->positionSurface(III)V

    .line 833
    :cond_53
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    .line 834
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_5a
    if-ge v5, v4, :cond_6a

    .line 835
    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    .line 836
    .local v6, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v6, p1}, Lcom/android/server/wm/DisplayContent;->applySurfaceChangesTransaction(Z)V

    .line 834
    .end local v6  # "dc":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v5, v5, 0x1

    goto :goto_5a

    .line 841
    .end local v5  # "j":I
    :cond_6a
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManagerInternal;->performTraversal(Landroid/view/SurfaceControl$Transaction;)V

    .line 842
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v5}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 843
    return-void
.end method

.method private checkAppTransitionReady(Lcom/android/server/wm/WindowSurfacePlacer;)V
    .registers 6
    .param p1, "surfacePlacer"  # Lcom/android/server/wm/WindowSurfacePlacer;

    .line 779
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_49

    .line 780
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 784
    .local v1, "curDisplay":Lcom/android/server/wm/DisplayContent;
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 786
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransitionController;->handleAppTransitionReady()V

    .line 787
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v2, :cond_2a

    .line 788
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v3, "after handleAppTransitionReady"

    invoke-virtual {p1, v3, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 793
    :cond_2a
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isAppAnimating()Z

    move-result v2

    if-nez v2, :cond_46

    .line 800
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->handleAnimatingStoppedAndTransition()V

    .line 801
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v2, :cond_46

    .line 802
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v3, "after handleAnimStopAndXitionLock"

    invoke-virtual {p1, v3, v2}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 779
    .end local v1  # "curDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_46
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 807
    .end local v0  # "i":I
    :cond_49
    return-void
.end method

.method private getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .registers 6
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "objectId"  # I
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

    .line 311
    .local p1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$O6gArs92KbWUhitra1og4WTg69c;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$O6gArs92KbWUhitra1og4WTg69c;-><init>(Ljava/lang/String;Ljava/util/ArrayList;I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 320
    return-void
.end method

.method private handleResizingWindows()V
    .registers 4

    .line 849
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_30

    .line 850
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 851
    .local v1, "win":Lcom/android/server/wm/WindowState;
    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v2, :cond_2d

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-eqz v2, :cond_23

    .line 854
    goto :goto_2d

    .line 856
    :cond_23
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->reportResized()V

    .line 857
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 849
    .end local v1  # "win":Lcom/android/server/wm/WindowState;
    :cond_2d
    :goto_2d
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 859
    .end local v0  # "i":I
    :cond_30
    return-void
.end method

.method static synthetic lambda$canShowStrictModeViolation$7(ILcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "pid"  # I
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 454
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-ne v0, p0, :cond_e

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic lambda$dumpWindowsNoHeader$10(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZLcom/android/server/wm/WindowState;)V
    .registers 9
    .param p0, "windows"  # Ljava/util/ArrayList;
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "index"  # [I
    .param p3, "dumpAll"  # Z
    .param p4, "w"  # Lcom/android/server/wm/WindowState;

    .line 1028
    if-eqz p0, :cond_8

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 1029
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

    .line 1030
    const/4 v0, 0x1

    if-nez p3, :cond_34

    if-eqz p0, :cond_32

    goto :goto_34

    :cond_32
    move v2, v1

    goto :goto_35

    :cond_34
    :goto_34
    move v2, v0

    :goto_35
    const-string v3, "    "

    invoke-virtual {p4, p1, v3, v2}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1031
    aget v2, p2, v1

    add-int/2addr v2, v0

    aput v2, p2, v1

    .line 1033
    :cond_3f
    return-void
.end method

.method static synthetic lambda$getWindowsByName$2(Ljava/lang/String;Ljava/util/ArrayList;ILcom/android/server/wm/WindowState;)V
    .registers 5
    .param p0, "name"  # Ljava/lang/String;
    .param p1, "output"  # Ljava/util/ArrayList;
    .param p2, "objectId"  # I
    .param p3, "w"  # Lcom/android/server/wm/WindowState;

    .line 312
    if-eqz p0, :cond_16

    .line 313
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 314
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 316
    :cond_16
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_1f

    .line 317
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_1f
    :goto_1f
    return-void
.end method

.method static synthetic lambda$isAnyNonToastWindowVisibleForUid$3(ILcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p0, "callingUid"  # I
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 328
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v0

    if-ne v0, p0, :cond_1d

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-eq v0, v1, :cond_1d

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1d

    .line 329
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    .line 328
    :goto_1e
    return v0
.end method

.method static synthetic lambda$performSurfacePlacementNoTrace$9(Lcom/android/server/wm/DisplayContent;)V
    .registers 3
    .param p0, "dc"  # Lcom/android/server/wm/DisplayContent;

    .line 761
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 762
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateSystemGestureExclusion()Z

    .line 763
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->updateTouchExcludeRegion()V

    .line 764
    return-void
.end method

.method static synthetic lambda$setSecureSurfaceState$4(IZLcom/android/server/wm/WindowState;)V
    .registers 4
    .param p0, "userId"  # I
    .param p1, "disabled"  # Z
    .param p2, "w"  # Lcom/android/server/wm/WindowState;

    .line 433
    iget-boolean v0, p2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_11

    iget v0, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne p0, v0, :cond_11

    .line 434
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->setSecureLocked(Z)V

    .line 436
    :cond_11
    return-void
.end method

.method static synthetic lambda$static$1(Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p0, "w"  # Lcom/android/server/wm/WindowState;

    .line 150
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 151
    .local v0, "aToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_7

    .line 152
    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppWindowToken;->removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)V

    .line 154
    :cond_7
    return-void
.end method

.method static synthetic lambda$updateAppOpsState$6(Lcom/android/server/wm/WindowState;)V
    .registers 1
    .param p0, "w"  # Lcom/android/server/wm/WindowState;

    .line 449
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateAppOpsState()V

    .line 450
    return-void
.end method

.method static synthetic lambda$updateHiddenWhileSuspendedState$5(Landroid/util/ArraySet;ZLcom/android/server/wm/WindowState;)V
    .registers 4
    .param p0, "packages"  # Landroid/util/ArraySet;
    .param p1, "suspended"  # Z
    .param p2, "w"  # Lcom/android/server/wm/WindowState;

    .line 441
    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 442
    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowState;->setHiddenWhileSuspended(Z)V

    .line 444
    :cond_d
    return-void
.end method

.method static synthetic lambda$writeToProto$11(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/wm/WindowState;)V
    .registers 4
    .param p0, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 1062
    const-wide v0, 0x20b00000003L

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1063
    return-void
.end method

.method private prepareFreezingTaskBounds()V
    .registers 3

    .line 415
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 416
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->prepareFreezingTaskBounds()V

    .line 415
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 418
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method private setGlobalConfigurationIfNeeded(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfiguration"  # Landroid/content/res/Configuration;

    .line 401
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 402
    .local v0, "configChanged":Z
    :goto_d
    if-nez v0, :cond_10

    .line 403
    return-void

    .line 405
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 406
    return-void
.end method

.method private static toBrightnessOverride(F)I
    .registers 2
    .param p0, "value"  # F

    .line 967
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method canShowStrictModeViolation(I)Z
    .registers 4
    .param p1, "pid"  # I

    .line 454
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$-3EhML4qLwBt5KlZ9KF4rJB08Ac;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$-3EhML4qLwBt5KlZ9KF4rJB08Ac;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 455
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_d

    const/4 v1, 0x1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return v1
.end method

.method closeSystemDialogs(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"  # Ljava/lang/String;

    .line 459
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    .line 460
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 461
    return-void
.end method

.method copyAnimToLayoutParams()Z
    .registers 5

    .line 942
    const/4 v0, 0x0

    .line 944
    .local v0, "doRequest":Z
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 945
    .local v1, "bulkUpdateParams":I
    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_f

    .line 946
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 947
    const/4 v0, 0x1

    .line 949
    :cond_f
    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_17

    .line 950
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    goto :goto_28

    .line 952
    :cond_17
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 953
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    .line 954
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz v2, :cond_28

    .line 955
    const/4 v0, 0x1

    .line 959
    :cond_28
    :goto_28
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_2e

    .line 960
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    .line 963
    :cond_2e
    return v0
.end method

.method createDisplayContent(Landroid/view/Display;Lcom/android/server/wm/ActivityDisplay;)Lcom/android/server/wm/DisplayContent;
    .registers 8
    .param p1, "display"  # Landroid/view/Display;
    .param p2, "activityDisplay"  # Lcom/android/server/wm/ActivityDisplay;

    .line 226
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 231
    .local v0, "displayId":I
    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 233
    .local v1, "existing":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_10

    .line 234
    iput-object p2, v1, Lcom/android/server/wm/DisplayContent;->mAcitvityDisplay:Lcom/android/server/wm/ActivityDisplay;

    .line 235
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->initializeDisplayOverrideConfiguration()V

    .line 236
    return-object v1

    .line 239
    :cond_10
    new-instance v2, Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v2, p1, v3, p2}, Lcom/android/server/wm/DisplayContent;-><init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/ActivityDisplay;)V

    .line 241
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v3, :cond_31

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding display="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_31
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayWindowSettings;->applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 244
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->initializeDisplayOverrideConfiguration()V

    .line 246
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v3, :cond_4f

    .line 247
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 248
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    .line 247
    invoke-virtual {v3, v0, v4}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    .line 249
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    .line 252
    :cond_4f
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 254
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWmsExtInternal:Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/FlymeWindowManagerInternal;->onDisplayContentCreate(Lcom/android/server/wm/DisplayContent;)V

    .line 256
    return-object v2
.end method

.method dumpDisplayContents(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 994
    const-string v0, "WINDOW MANAGER DISPLAY CONTENTS (dumpsys window displays)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 995
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_26

    .line 996
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 997
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_25

    .line 998
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 999
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v3, 0x1

    const-string v4, "  "

    invoke-virtual {v2, p1, v4, v3}, Lcom/android/server/wm/DisplayContent;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 997
    .end local v2  # "displayContent":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 1001
    .end local v0  # "count":I
    .end local v1  # "i":I
    :cond_25
    goto :goto_2b

    .line 1002
    :cond_26
    const-string v0, "  NO DISPLAY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1004
    :goto_2b
    return-void
.end method

.method dumpLayoutNeededDisplayIds(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 1011
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1012
    return-void

    .line 1014
    :cond_7
    const-string v0, "  mLayoutNeeded on displays="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1015
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1016
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_13
    if-ge v1, v0, :cond_2d

    .line 1017
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 1018
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1019
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1016
    .end local v2  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1022
    .end local v1  # "displayNdx":I
    :cond_2d
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1023
    return-void
.end method

.method dumpTokens(Ljava/io/PrintWriter;Z)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "dumpAll"  # Z

    .line 1037
    const-string v0, "  All tokens:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1038
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_d
    if-ltz v0, :cond_1d

    .line 1039
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->dumpTokens(Ljava/io/PrintWriter;Z)V

    .line 1038
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 1041
    .end local v0  # "i":I
    :cond_1d
    return-void
.end method

.method dumpTopFocusedDisplayId(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 1007
    const-string v0, "  mTopFocusedDisplayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1008
    return-void
.end method

.method dumpWindowsNoHeader(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "dumpAll"  # Z
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

    .line 1026
    .local p3, "windows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 1027
    .local v1, "index":[I
    new-instance v2, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$nRMSe8o9Vhp4MBHMJJoyb6ObTQ0;

    invoke-direct {v2, p3, p1, v1, p2}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$nRMSe8o9Vhp4MBHMJJoyb6ObTQ0;-><init>(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZ)V

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1034
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

    .line 1112
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/DisplayPolicy;>;"
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1113
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1112
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1115
    .end local v0  # "i":I
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

    .line 1106
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/DisplayContent;>;"
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 1107
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1106
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1109
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    .registers 5
    .param p1, "binder"  # Landroid/os/IBinder;

    .line 339
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 340
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 341
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 342
    .local v2, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_19

    .line 343
    return-object v2

    .line 339
    .end local v1  # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2  # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 346
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;
    .registers 4

    .line 1122
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 1123
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 1124
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_19

    .line 1125
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    return-object v2

    .line 1122
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1128
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getDisplayContent(I)Lcom/android/server/wm/DisplayContent;
    .registers 5
    .param p1, "displayId"  # I

    .line 216
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 217
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 218
    .local v1, "current":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-ne v2, p1, :cond_19

    .line 219
    return-object v1

    .line 216
    .end local v1  # "current":Lcom/android/server/wm/DisplayContent;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 222
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 1070
    const-string v0, "ROOT"

    return-object v0
.end method

.method getStack(II)Lcom/android/server/wm/TaskStack;
    .registers 6
    .param p1, "windowingMode"  # I
    .param p2, "activityType"  # I

    .line 421
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 422
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 423
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 424
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v2, :cond_19

    .line 425
    return-object v2

    .line 421
    .end local v1  # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2  # "stack":Lcom/android/server/wm/TaskStack;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 428
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;
    .registers 3

    .line 205
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 206
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_f

    :cond_a
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    :goto_f
    return-object v1
.end method

.method getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .registers 5
    .param p1, "binder"  # Landroid/os/IBinder;

    .line 351
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 352
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    .line 353
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v2

    .line 354
    .local v2, "wtoken":Lcom/android/server/wm/WindowToken;
    if-eqz v2, :cond_19

    .line 355
    return-object v2

    .line 351
    .end local v1  # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v2  # "wtoken":Lcom/android/server/wm/WindowToken;
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 358
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method getWindowTokenDisplay(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayContent;
    .registers 6
    .param p1, "token"  # Lcom/android/server/wm/WindowToken;

    .line 363
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 364
    return-object v0

    .line 367
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_22

    .line 368
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 369
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v3, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v3

    .line 370
    .local v3, "current":Lcom/android/server/wm/WindowToken;
    if-ne v3, p1, :cond_1f

    .line 371
    return-object v2

    .line 367
    .end local v2  # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v3  # "current":Lcom/android/server/wm/WindowToken;
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 375
    .end local v1  # "i":I
    :cond_22
    return-object v0
.end method

.method getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 5
    .param p2, "name"  # Ljava/lang/String;
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

    .line 299
    .local p1, "output":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x0

    .line 302
    .local v0, "objectId":I
    const/16 v1, 0x10

    :try_start_3
    invoke-static {p2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_7} :catch_a

    move v0, v1

    .line 303
    const/4 p2, 0x0

    .line 305
    goto :goto_b

    .line 304
    :catch_a
    move-exception v1

    .line 307
    :goto_b
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/RootWindowContainer;->getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;I)V

    .line 308
    return-void
.end method

.method handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Z
    .registers 16
    .param p1, "w"  # Lcom/android/server/wm/WindowState;
    .param p2, "obscured"  # Z
    .param p3, "syswin"  # Z

    .line 869
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 870
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 871
    .local v1, "attrFlags":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v2

    .line 872
    .local v2, "onScreen":Z
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v3

    .line 873
    .local v3, "canBeSeen":Z
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 874
    .local v4, "privateflags":I
    const/4 v5, 0x0

    .line 876
    .local v5, "displayHasContent":Z
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEEP_SCREEN_ON:Z

    const-string v7, "DebugKeepScreenOn"

    if-eqz v6, :cond_53

    .line 877
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleNotObscuredLocked w: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", w.mHasSurface: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", w.isOnScreen(): "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", w.isDisplayedLw(): "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 880
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", w.mAttrs.userActivityTimeout: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v8, v8, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 877
    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_53
    iget-boolean v6, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v6, :cond_8d

    if-eqz v2, :cond_8d

    .line 884
    if-nez p3, :cond_8d

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v8, v6, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-ltz v6, :cond_8d

    iget-wide v8, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    cmp-long v6, v8, v10

    if-gez v6, :cond_8d

    .line 885
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v8, v6, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v8, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 886
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEEP_SCREEN_ON:Z

    if-eqz v6, :cond_8d

    .line 887
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mUserActivityTimeout set to "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "WindowManager"

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    :cond_8d
    iget-boolean v6, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v6, :cond_110

    if-eqz v3, :cond_110

    .line 892
    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_9e

    .line 893
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 894
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    goto :goto_ca

    .line 895
    :cond_9e
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEEP_SCREEN_ON:Z

    if-eqz v6, :cond_ca

    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    if-ne p1, v6, :cond_ca

    .line 896
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleNotObscuredLocked: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " was holding screen wakelock but no longer has FLAG_KEEP_SCREEN_ON!!! called by"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    .line 898
    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 896
    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    :cond_ca
    :goto_ca
    if-nez p3, :cond_e1

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_e1

    iget v6, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_e1

    .line 901
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v6, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    .line 904
    :cond_e1
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 907
    .local v6, "type":I
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    .line 908
    .local v7, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v8, 0x1

    if-eqz v7, :cond_fc

    iget-boolean v9, v7, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v9, :cond_fc

    .line 912
    const/16 v9, 0x7e7

    if-eq v6, v9, :cond_f8

    iget v9, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_fa

    .line 913
    :cond_f8
    iput-boolean v8, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 915
    :cond_fa
    const/4 v5, 0x1

    goto :goto_109

    .line 916
    :cond_fc
    if-eqz v7, :cond_109

    iget-boolean v9, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    if-eqz v9, :cond_108

    if-eqz p2, :cond_109

    const/16 v9, 0x7d9

    if-ne v6, v9, :cond_109

    .line 920
    :cond_108
    const/4 v5, 0x1

    .line 922
    :cond_109
    :goto_109
    const/high16 v9, 0x40000

    and-int/2addr v9, v4

    if-eqz v9, :cond_110

    .line 923
    iput-boolean v8, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 927
    .end local v6  # "type":I
    .end local v7  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_110
    return v5
.end method

.method hasPendingLayoutChanges(Lcom/android/server/wm/WindowAnimator;)Z
    .registers 8
    .param p1, "animator"  # Lcom/android/server/wm/WindowAnimator;

    .line 475
    const/4 v0, 0x0

    .line 477
    .local v0, "hasChanges":Z
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 478
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_2a

    .line 479
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 480
    .local v3, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v4

    .line 481
    .local v4, "pendingChanges":I
    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_24

    .line 482
    iget v5, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    .line 484
    :cond_24
    if-eqz v4, :cond_27

    .line 485
    const/4 v0, 0x1

    .line 478
    .end local v3  # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v4  # "pendingChanges":I
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 489
    .end local v2  # "i":I
    :cond_2a
    return v0
.end method

.method isAnyNonToastWindowVisibleForUid(I)Z
    .registers 4
    .param p1, "callingUid"  # I

    .line 327
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$IlD1lD49ui7gQmU2NkxgnXIhlOo;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$IlD1lD49ui7gQmU2NkxgnXIhlOo;-><init>(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method isLayoutNeeded()Z
    .registers 5

    .line 288
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 289
    .local v0, "numDisplays":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_7
    if-ge v1, v0, :cond_1c

    .line 290
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 291
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 292
    const/4 v3, 0x1

    return v3

    .line 289
    .end local v2  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 295
    .end local v1  # "displayNdx":I
    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method public synthetic lambda$new$0$RootWindowContainer(Lcom/android/server/wm/WindowState;)V
    .registers 4
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 141
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_d

    .line 143
    :try_start_4
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/view/IWindow;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 145
    goto :goto_d

    .line 144
    :catch_c
    move-exception v0

    .line 147
    :cond_d
    :goto_d
    return-void
.end method

.method public synthetic lambda$reclaimSomeSurfaceMemory$8$RootWindowContainer(Landroid/util/SparseIntArray;Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "pidCandidates"  # Landroid/util/SparseIntArray;
    .param p2, "w"  # Lcom/android/server/wm/WindowState;

    .line 517
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 518
    return-void

    .line 520
    :cond_b
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 521
    .local v0, "wsa":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_1c

    .line 522
    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 524
    :cond_1c
    return-void
.end method

.method onChildPositionChanged()V
    .registers 4

    .line 211
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mPerDisplayFocusEnabled:Z

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 213
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .param p1, "newParentConfig"  # Landroid/content/res/Configuration;

    .line 410
    invoke-direct {p0}, Lcom/android/server/wm/RootWindowContainer;->prepareFreezingTaskBounds()V

    .line 411
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 412
    return-void
.end method

.method onSettingsRetrieved()V
    .registers 9

    .line 263
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 264
    .local v0, "numDisplays":I
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_7
    if-ge v1, v0, :cond_3e

    .line 265
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 266
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayWindowSettings:Lcom/android/server/wm/DisplayWindowSettings;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayWindowSettings;->updateSettingsForDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result v3

    .line 268
    .local v3, "changed":Z
    if-nez v3, :cond_1c

    .line 269
    goto :goto_3b

    .line 272
    :cond_1c
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->initializeDisplayOverrideConfiguration()V

    .line 273
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    .line 278
    iget-boolean v4, v2, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v4, :cond_3b

    .line 279
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 280
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    .line 279
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v4

    .line 281
    .local v4, "newConfig":Landroid/content/res/Configuration;
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 264
    .end local v2  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v3  # "changed":Z
    .end local v4  # "newConfig":Landroid/content/res/Configuration;
    :cond_3b
    :goto_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 285
    .end local v1  # "displayNdx":I
    :cond_3e
    return-void
.end method

.method performSurfacePlacement(Z)V
    .registers 5
    .param p1, "recoveringMemory"  # Z

    .line 568
    const-wide/16 v0, 0x20

    const-string v2, "performSurfacePlacement"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 570
    :try_start_7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->performSurfacePlacementNoTrace(Z)V
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_f

    .line 572
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 573
    nop

    .line 574
    return-void

    .line 572
    :catchall_f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method performSurfacePlacementNoTrace(Z)V
    .registers 16
    .param p1, "recoveringMemory"  # Z

    .line 579
    const-string v0, "<<< CLOSE TRANSACTION performLayoutAndPlaceSurfaces"

    const-string v1, "performLayoutAndPlaceSurfaces"

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    const/4 v3, 0x3

    const-string v4, "WindowManager"

    if-eqz v2, :cond_23

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "performSurfacePlacementInner: entry. Called by "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 579
    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_23
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v5, 0x0

    if-eqz v2, :cond_33

    .line 585
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v5, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 586
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v3, v5}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 591
    :cond_33
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 592
    .local v2, "numDisplays":I
    const/4 v3, 0x0

    .local v3, "displayNdx":I
    :goto_3a
    if-ge v3, v2, :cond_4a

    .line 593
    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DisplayContent;

    .line 594
    .local v6, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v6, v5}, Lcom/android/server/wm/DisplayContent;->setExitingTokensHasVisible(Z)V

    .line 592
    .end local v6  # "displayContent":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 597
    .end local v3  # "displayNdx":I
    :cond_4a
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    .line 598
    const/high16 v6, -0x40800000  # -1.0f

    iput v6, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    .line 599
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    .line 600
    iput-boolean v5, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    .line 601
    iput-boolean v5, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    .line 602
    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v7, v6, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v6, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    .line 605
    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    .line 606
    .local v6, "defaultDisplay":Lcom/android/server/wm/DisplayContent;
    iget-object v7, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 608
    .local v7, "surfacePlacer":Lcom/android/server/wm/WindowSurfacePlacer;
    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v9, :cond_74

    const-string v9, ">>> OPEN TRANSACTION performLayoutAndPlaceSurfaces"

    invoke-static {v4, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_74
    const-wide/16 v9, 0x20

    const-string v11, "applySurfaceChanges"

    invoke-static {v9, v10, v11}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 611
    iget-object v11, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 613
    :try_start_80
    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->applySurfaceChangesTransaction(Z)V
    :try_end_83
    .catch Ljava/lang/RuntimeException; {:try_start_80 .. :try_end_83} :catch_96
    .catchall {:try_start_80 .. :try_end_83} :catchall_93

    .line 617
    iget-object v11, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 618
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 619
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_aa

    :goto_8f
    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    .line 617
    :catchall_93
    move-exception v3

    goto/16 :goto_2e0

    .line 614
    :catch_96
    move-exception v11

    .line 615
    .local v11, "e":Ljava/lang/RuntimeException;
    :try_start_97
    const-string v12, "Unhandled exception in Window Manager"

    invoke-static {v4, v12, v11}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9c
    .catchall {:try_start_97 .. :try_end_9c} :catchall_93

    .line 617
    nop

    .end local v11  # "e":Ljava/lang/RuntimeException;
    iget-object v11, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 618
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 619
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_aa

    goto :goto_8f

    .line 622
    :cond_aa
    :goto_aa
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowAnimator;->executeAfterPrepareSurfacesRunnables()V

    .line 624
    invoke-direct {p0, v7}, Lcom/android/server/wm/RootWindowContainer;->checkAppTransitionReady(Lcom/android/server/wm/WindowSurfacePlacer;)V

    .line 627
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 628
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 629
    .local v0, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v0, :cond_c1

    .line 630
    iget-object v1, v6, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentsAnimationController;->checkAnimationReady(Lcom/android/server/wm/WallpaperController;)V

    .line 633
    :cond_c1
    const/4 v1, 0x0

    .local v1, "displayNdx":I
    :goto_c2
    if-ge v1, v2, :cond_ed

    .line 634
    iget-object v9, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v9, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/DisplayContent;

    .line 635
    .local v9, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-boolean v10, v9, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    if-eqz v10, :cond_ea

    .line 636
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v10, :cond_d9

    const-string v10, "Wallpaper may change!  Adjusting"

    invoke-static {v4, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_d9
    iget v10, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v10, v10, 0x4

    iput v10, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 638
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v10, :cond_ea

    .line 639
    iget v10, v9, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v11, "WallpaperMayChange"

    invoke-virtual {v7, v11, v10}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 633
    .end local v9  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_ea
    add-int/lit8 v1, v1, 0x1

    goto :goto_c2

    .line 645
    .end local v1  # "displayNdx":I
    :cond_ed
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v9, 0x2

    if-eqz v1, :cond_fd

    .line 646
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v5, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 647
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v9, v5}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 651
    :cond_fd
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v1

    if-eqz v1, :cond_113

    .line 652
    iget v1, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, v8

    iput v1, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 653
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v1, :cond_113

    iget v1, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    const-string v10, "mLayoutNeeded"

    invoke-virtual {v7, v10, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 657
    :cond_113
    invoke-direct {p0}, Lcom/android/server/wm/RootWindowContainer;->handleResizingWindows()V

    .line 659
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_136

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v1, :cond_136

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "With display frozen, orientationChangeComplete="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    :cond_136
    iget-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-eqz v1, :cond_158

    .line 662
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz v1, :cond_153

    .line 663
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput v5, v1, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    .line 664
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v10, v1, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    .line 665
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v10, 0xb

    invoke-virtual {v1, v10}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 667
    :cond_153
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    .line 671
    :cond_158
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 672
    .local v1, "i":I
    const/4 v10, -0x1

    if-lez v1, :cond_19a

    .line 674
    :cond_163
    add-int/2addr v1, v10

    .line 675
    iget-object v11, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, v11, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowState;

    .line 676
    .local v11, "win":Lcom/android/server/wm/WindowState;
    iput-boolean v5, v11, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 677
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v12

    .line 678
    .local v12, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v13, v12, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v13, v11, :cond_17b

    .line 679
    invoke-virtual {v12, v3}, Lcom/android/server/wm/DisplayContent;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 681
    :cond_17b
    iget-object v13, v12, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v13, v11}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v13

    if-eqz v13, :cond_189

    .line 682
    iget v13, v12, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v13, v13, 0x4

    iput v13, v12, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 684
    :cond_189
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->destroySurfaceUnchecked()V

    .line 685
    iget-object v13, v11, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    .line 686
    .end local v11  # "win":Lcom/android/server/wm/WindowState;
    .end local v12  # "displayContent":Lcom/android/server/wm/DisplayContent;
    if-gtz v1, :cond_163

    .line 687
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 691
    :cond_19a
    const/4 v3, 0x0

    .restart local v3  # "displayNdx":I
    :goto_19b
    if-ge v3, v2, :cond_1ab

    .line 692
    iget-object v11, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v11, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/DisplayContent;

    .line 693
    .local v11, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->removeExistingTokensIfPossible()V

    .line 691
    .end local v11  # "displayContent":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v3, v3, 0x1

    goto :goto_19b

    .line 696
    .end local v3  # "displayNdx":I
    :cond_1ab
    const/4 v3, 0x0

    .restart local v3  # "displayNdx":I
    :goto_1ac
    if-ge v3, v2, :cond_1c0

    .line 697
    iget-object v11, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v11, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/DisplayContent;

    .line 698
    .restart local v11  # "displayContent":Lcom/android/server/wm/DisplayContent;
    iget v12, v11, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-eqz v12, :cond_1bd

    .line 699
    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 696
    .end local v11  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1bd
    add-int/lit8 v3, v3, 0x1

    goto :goto_1ac

    .line 703
    .end local v3  # "displayNdx":I
    :cond_1c0
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v11, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    invoke-virtual {v3, v11}, Lcom/android/server/wm/WindowManagerService;->setHoldScreenLocked(Lcom/android/server/wm/Session;)V

    .line 704
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v3, :cond_1fa

    .line 705
    iget v3, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    const/4 v11, 0x0

    cmpg-float v11, v3, v11

    if-ltz v11, :cond_1e0

    const/high16 v11, 0x3f800000  # 1.0f

    cmpl-float v11, v3, v11

    if-lez v11, :cond_1db

    goto :goto_1e0

    .line 706
    :cond_1db
    invoke-static {v3}, Lcom/android/server/wm/RootWindowContainer;->toBrightnessOverride(F)I

    move-result v10

    goto :goto_1e1

    :cond_1e0
    :goto_1e0
    nop

    :goto_1e1
    move v3, v10

    .line 710
    .local v3, "brightness":I
    iget-object v10, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v10, v8, v3, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 711
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    iget-wide v10, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 714
    .end local v3  # "brightness":I
    :cond_1fa
    iget-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    iget-boolean v5, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    if-eq v3, v5, :cond_20c

    .line 715
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 716
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v5, 0x6

    .line 718
    iget-boolean v9, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    .line 716
    invoke-virtual {v3, v5, v9}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    .line 721
    :cond_20c
    iget-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    if-eqz v3, :cond_21f

    .line 722
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_219

    const-string v3, "Performing post-rotate rotation"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_219
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->updateRotationUnchecked()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    .line 726
    :cond_21f
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    if-nez v3, :cond_233

    iget-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-eqz v3, :cond_238

    .line 727
    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v3

    if-nez v3, :cond_238

    iget-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    if-nez v3, :cond_238

    .line 729
    :cond_233
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    .line 732
    :cond_238
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 733
    .local v3, "N":I
    if-lez v3, :cond_299

    .line 734
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    array-length v5, v5

    if-ge v5, v3, :cond_251

    .line 735
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    add-int/lit8 v9, v3, 0xa

    new-array v9, v9, [Lcom/android/server/wm/WindowState;

    iput-object v9, v5, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    .line 737
    :cond_251
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 738
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 739
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 740
    .local v5, "displayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/DisplayContent;>;"
    const/4 v1, 0x0

    :goto_269
    if-ge v1, v3, :cond_286

    .line 741
    iget-object v9, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    aget-object v9, v9, v1

    .line 742
    .local v9, "w":Lcom/android/server/wm/WindowState;
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 743
    invoke-virtual {v9}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    .line 744
    .local v10, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v10, :cond_283

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_283

    .line 745
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 740
    .end local v9  # "w":Lcom/android/server/wm/WindowState;
    .end local v10  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_283
    add-int/lit8 v1, v1, 0x1

    goto :goto_269

    .line 749
    :cond_286
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v8

    .local v9, "j":I
    :goto_28b
    if-ltz v9, :cond_299

    .line 750
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/DisplayContent;

    .line 751
    .local v10, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v10, v8}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 749
    .end local v10  # "dc":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v9, v9, -0x1

    goto :goto_28b

    .line 756
    .end local v5  # "displayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/DisplayContent;>;"
    .end local v9  # "j":I
    :cond_299
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    sub-int/2addr v5, v8

    .local v5, "displayNdx":I
    :goto_2a0
    if-ltz v5, :cond_2b0

    .line 757
    iget-object v8, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v8, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->checkCompleteDeferredRemoval()Z

    .line 756
    add-int/lit8 v5, v5, -0x1

    goto :goto_2a0

    .line 760
    .end local v5  # "displayNdx":I
    :cond_2b0
    sget-object v5, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$7XcqfZjQLAbjpIyed3iDnVtZro4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$7XcqfZjQLAbjpIyed3iDnVtZro4;

    invoke-virtual {p0, v5}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 768
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 770
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 772
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz v5, :cond_2df

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "performSurfacePlacementInner exit: animating="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 774
    invoke-virtual {v8}, Lcom/android/server/wm/WindowAnimator;->isAnimating()Z

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 772
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :cond_2df
    return-void

    .line 617
    .end local v0  # "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    .end local v1  # "i":I
    .end local v3  # "N":I
    :goto_2e0
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 618
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 619
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_2ef

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2ef
    throw v3
.end method

.method positionChildAt(ILcom/android/server/wm/DisplayContent;)V
    .registers 4
    .param p1, "position"  # I
    .param p2, "child"  # Lcom/android/server/wm/DisplayContent;

    .line 1083
    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 1084
    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/DisplayContent;Z)V
    .registers 6
    .param p1, "position"  # I
    .param p2, "child"  # Lcom/android/server/wm/DisplayContent;
    .param p3, "includingParents"  # Z

    .line 1075
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 1076
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    if-eqz v0, :cond_c

    .line 1077
    iget-object v1, p2, Lcom/android/server/wm/DisplayContent;->mAcitvityDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/RootActivityContainer;->onChildPositionChanged(Lcom/android/server/wm/ActivityDisplay;I)V

    .line 1079
    :cond_c
    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 4

    .line 91
    check-cast p2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->positionChildAt(ILcom/android/server/wm/DisplayContent;Z)V

    return-void
.end method

.method reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z
    .registers 21
    .param p1, "winAnimator"  # Lcom/android/server/wm/WindowStateAnimator;
    .param p2, "operation"  # Ljava/lang/String;
    .param p3, "secure"  # Z

    .line 494
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "WindowManager"

    iget-object v4, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    .line 495
    .local v4, "surfaceController":Lcom/android/server/wm/WindowSurfaceController;
    const/4 v5, 0x0

    .line 496
    .local v5, "leakedSurface":Z
    const/4 v6, 0x0

    .line 498
    .local v6, "killedApps":Z
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v7, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v0, v8

    iget-object v7, v2, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v7, v7, Lcom/android/server/wm/Session;->mPid:I

    .line 499
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v0, v9

    const/4 v7, 0x2

    aput-object p2, v0, v7

    .line 498
    const/16 v7, 0x7918

    invoke-static {v7, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 501
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 506
    .local v10, "callingIdentity":J
    :try_start_2d
    const-string v0, "Out of memory for surface!  Looking for leaks..."

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    move v7, v0

    .line 508
    .local v7, "numDisplays":I
    const/4 v0, 0x0

    .local v0, "displayNdx":I
    :goto_3a
    if-ge v0, v7, :cond_4c

    .line 509
    iget-object v12, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v12, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->destroyLeakedSurfaces()Z

    move-result v12

    or-int/2addr v5, v12

    .line 508
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 512
    .end local v0  # "displayNdx":I
    :cond_4c
    if-nez v5, :cond_b0

    .line 513
    const-string v0, "No leaked surfaces; killing applications!"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V
    :try_end_58
    .catchall {:try_start_2d .. :try_end_58} :catchall_f6

    move-object v12, v0

    .line 515
    .local v12, "pidCandidates":Landroid/util/SparseIntArray;
    const/4 v0, 0x0

    move v13, v6

    move v6, v0

    .local v6, "displayNdx":I
    .local v13, "killedApps":Z
    :goto_5c
    if-ge v6, v7, :cond_ac

    .line 516
    :try_start_5e
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    new-instance v14, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$yUm1jRpi8w1ifmlGbgy1F1iTxu4;

    invoke-direct {v14, v1, v12}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$yUm1jRpi8w1ifmlGbgy1F1iTxu4;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/util/SparseIntArray;)V

    invoke-virtual {v0, v14, v8}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 526
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_a1

    .line 527
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [I

    move-object v14, v0

    .line 528
    .local v14, "pids":[I
    move v0, v8

    .local v0, "i":I
    :goto_7c
    array-length v15, v14

    if-ge v0, v15, :cond_88

    .line 529
    invoke-virtual {v12, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    aput v15, v14, v0
    :try_end_85
    .catchall {:try_start_5e .. :try_end_85} :catchall_a7

    .line 528
    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    .line 532
    .end local v0  # "i":I
    :cond_88
    :try_start_88
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string v15, "Free memory"
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_8e} :catch_9d
    .catchall {:try_start_88 .. :try_end_8e} :catchall_a7

    move/from16 v9, p3

    :try_start_90
    invoke-interface {v0, v14, v15, v9}, Landroid/app/IActivityManager;->killPids([ILjava/lang/String;Z)Z

    move-result v0
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_94} :catch_9b
    .catchall {:try_start_90 .. :try_end_94} :catchall_99

    if-eqz v0, :cond_98

    .line 533
    const/4 v0, 0x1

    move v13, v0

    .line 536
    :cond_98
    goto :goto_a3

    .line 561
    .end local v6  # "displayNdx":I
    .end local v7  # "numDisplays":I
    .end local v12  # "pidCandidates":Landroid/util/SparseIntArray;
    .end local v14  # "pids":[I
    :catchall_99
    move-exception v0

    goto :goto_aa

    .line 535
    .restart local v6  # "displayNdx":I
    .restart local v7  # "numDisplays":I
    .restart local v12  # "pidCandidates":Landroid/util/SparseIntArray;
    .restart local v14  # "pids":[I
    :catch_9b
    move-exception v0

    goto :goto_a3

    :catch_9d
    move-exception v0

    move/from16 v9, p3

    goto :goto_a3

    .line 526
    .end local v14  # "pids":[I
    :cond_a1
    move/from16 v9, p3

    .line 515
    :goto_a3
    add-int/lit8 v6, v6, 0x1

    const/4 v9, 0x1

    goto :goto_5c

    .line 561
    .end local v6  # "displayNdx":I
    .end local v7  # "numDisplays":I
    .end local v12  # "pidCandidates":Landroid/util/SparseIntArray;
    :catchall_a7
    move-exception v0

    move/from16 v9, p3

    :goto_aa
    move v6, v13

    goto :goto_f9

    .line 515
    .restart local v6  # "displayNdx":I
    .restart local v7  # "numDisplays":I
    .restart local v12  # "pidCandidates":Landroid/util/SparseIntArray;
    :cond_ac
    move/from16 v9, p3

    move v6, v13

    goto :goto_b2

    .line 512
    .end local v12  # "pidCandidates":Landroid/util/SparseIntArray;
    .end local v13  # "killedApps":Z
    .local v6, "killedApps":Z
    :cond_b0
    move/from16 v9, p3

    .line 541
    :goto_b2
    if-nez v5, :cond_b6

    if-eqz v6, :cond_e5

    .line 544
    :cond_b6
    :try_start_b6
    const-string v0, "Looks like we have reclaimed some memory, clearing surface for retry."

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    if-eqz v4, :cond_dc

    .line 547
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_c5

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_cc

    :cond_c5
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v3, "RECOVER DESTROY"

    invoke-static {v0, v3, v8}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    .line 549
    :cond_cc
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    .line 550
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_dc

    .line 551
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->removeStartingWindow()V
    :try_end_dc
    .catchall {:try_start_b6 .. :try_end_dc} :catchall_f4

    .line 556
    :cond_dc
    :try_start_dc
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_e3
    .catch Landroid/os/RemoteException; {:try_start_dc .. :try_end_e3} :catch_e4
    .catchall {:try_start_dc .. :try_end_e3} :catchall_f4

    .line 558
    goto :goto_e5

    .line 557
    :catch_e4
    move-exception v0

    .line 561
    .end local v7  # "numDisplays":I
    :cond_e5
    :goto_e5
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 562
    nop

    .line 564
    if-nez v5, :cond_f1

    if-eqz v6, :cond_ee

    goto :goto_f1

    :cond_ee
    move/from16 v16, v8

    goto :goto_f3

    :cond_f1
    :goto_f1
    const/16 v16, 0x1

    :goto_f3
    return v16

    .line 561
    :catchall_f4
    move-exception v0

    goto :goto_f9

    :catchall_f6
    move-exception v0

    move/from16 v9, p3

    :goto_f9
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method protected removeChild(Lcom/android/server/wm/DisplayContent;)V
    .registers 5
    .param p1, "dc"  # Lcom/android/server/wm/DisplayContent;

    .line 1093
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1094
    iget v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    if-ne v0, v1, :cond_12

    .line 1095
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 1098
    :cond_12
    return-void
.end method

.method protected bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 91
    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->removeChild(Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method removeReplacedWindows()V
    .registers 6

    .line 464
    const-string v0, "<<< CLOSE TRANSACTION removeReplacedWindows"

    const-string v1, "removeReplacedWindows"

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    const-string v3, "WindowManager"

    if-eqz v2, :cond_f

    const-string v2, ">>> OPEN TRANSACTION removeReplacedWindows"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_f
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 467
    :try_start_14
    sget-object v2, Lcom/android/server/wm/RootWindowContainer;->sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_27

    .line 469
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 470
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v1, :cond_26

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_26
    return-void

    .line 469
    :catchall_27
    move-exception v2

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 470
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v1, :cond_34

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    throw v2
.end method

.method scheduleAnimation()V
    .registers 2

    .line 1088
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1089
    return-void
.end method

.method setDisplayOverrideConfigurationIfNeeded(Landroid/content/res/Configuration;Lcom/android/server/wm/DisplayContent;)V
    .registers 6
    .param p1, "newConfiguration"  # Landroid/content/res/Configuration;
    .param p2, "displayContent"  # Lcom/android/server/wm/DisplayContent;

    .line 385
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 386
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 387
    .local v1, "configChanged":Z
    :goto_d
    if-nez v1, :cond_10

    .line 388
    return-void

    .line 391
    :cond_10
    invoke-virtual {p2, p1}, Lcom/android/server/wm/DisplayContent;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 393
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_1c

    .line 396
    invoke-direct {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->setGlobalConfigurationIfNeeded(Landroid/content/res/Configuration;)V

    .line 398
    :cond_1c
    return-void
.end method

.method setRootActivityContainer(Lcom/android/server/wm/RootActivityContainer;)V
    .registers 2
    .param p1, "container"  # Lcom/android/server/wm/RootActivityContainer;

    .line 162
    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 163
    if-eqz p1, :cond_7

    .line 164
    invoke-virtual {p1, p0}, Lcom/android/server/wm/RootActivityContainer;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 166
    :cond_7
    return-void
.end method

.method setSecureSurfaceState(IZ)V
    .registers 5
    .param p1, "userId"  # I
    .param p2, "disabled"  # Z

    .line 432
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$vMW2dyMvZQ0PDhptvNKN5WXpK_w;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$vMW2dyMvZQ0PDhptvNKN5WXpK_w;-><init>(IZ)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 437
    return-void
.end method

.method updateAppOpsState()V
    .registers 3

    .line 448
    sget-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$auMc5HUrsvttHP3CYY9dttuuvi8;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$auMc5HUrsvttHP3CYY9dttuuvi8;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 451
    return-void
.end method

.method updateFocusedWindowLocked(IZ)Z
    .registers 13
    .param p1, "mode"  # I
    .param p2, "updateInputWindows"  # Z

    .line 169
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "changed":Z
    const/4 v1, -0x1

    .line 172
    .local v1, "topFocusedDisplayId":I
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_f
    const/4 v3, -0x1

    if-ltz v2, :cond_52

    .line 173
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 174
    .local v4, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v4, p1, p2, v1}, Lcom/android/server/wm/DisplayContent;->updateFocusedWindowLocked(IZI)Z

    move-result v5

    or-int/2addr v0, v5

    .line 175
    iget-object v5, v4, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 176
    .local v5, "newFocus":Lcom/android/server/wm/WindowState;
    if-eqz v5, :cond_45

    .line 177
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v6, v6, Lcom/android/server/wm/Session;->mPid:I

    .line 178
    .local v6, "pidOfNewFocus":I
    iget-object v7, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3e

    .line 179
    iget-object v7, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedAppByProcess:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    :cond_3e
    if-ne v1, v3, :cond_44

    .line 182
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    .line 184
    .end local v6  # "pidOfNewFocus":I
    :cond_44
    goto :goto_4f

    :cond_45
    if-ne v1, v3, :cond_44

    iget-object v3, v4, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_44

    .line 188
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    .line 172
    .end local v4  # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v5  # "newFocus":Lcom/android/server/wm/WindowState;
    :goto_4f
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 191
    .end local v2  # "i":I
    :cond_52
    if-ne v1, v3, :cond_55

    .line 192
    const/4 v1, 0x0

    .line 194
    :cond_55
    iget v2, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    if-eq v2, v1, :cond_83

    .line 195
    iput v1, p0, Lcom/android/server/wm/RootWindowContainer;->mTopFocusedDisplayId:I

    .line 196
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/input/InputManagerService;->setFocusedDisplay(I)V

    .line 197
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v2, v1}, Lcom/android/server/policy/WindowManagerPolicy;->setTopFocusedDisplay(I)V

    .line 198
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v2, :cond_83

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New topFocusedDisplayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_83
    return v0
.end method

.method updateHiddenWhileSuspendedState(Landroid/util/ArraySet;Z)V
    .registers 5
    .param p2, "suspended"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 440
    .local p1, "packages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$jHLZ5ssJOPMd9KJ4tf6FHZ8ZLXI;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$jHLZ5ssJOPMd9KJ4tf6FHZ8ZLXI;-><init>(Landroid/util/ArraySet;Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 445
    return-void
.end method

.method updateRotationUnchecked()Z
    .registers 5

    .line 931
    const/4 v0, 0x0

    .line 932
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_1d

    .line 933
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 934
    .local v2, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->updateRotationAndSendNewConfigIfNeeded()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 935
    const/4 v0, 0x1

    .line 932
    .end local v2  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1a
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 938
    .end local v1  # "i":I
    :cond_1d
    return v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 12
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J
    .param p4, "logLevel"  # I

    .line 1047
    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1048
    return-void

    .line 1051
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1052
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1053
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v2, :cond_38

    .line 1054
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 1055
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_23
    if-ge v3, v2, :cond_38

    .line 1056
    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    .line 1057
    .local v4, "displayContent":Lcom/android/server/wm/DisplayContent;
    const-wide v5, 0x20b00000002L

    invoke-virtual {v4, p1, v5, v6, p4}, Lcom/android/server/wm/DisplayContent;->writeToProto(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1055
    .end local v4  # "displayContent":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 1060
    .end local v2  # "count":I
    .end local v3  # "i":I
    :cond_38
    if-nez p4, :cond_43

    .line 1061
    new-instance v2, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$RlRzlI_mvPut3IP0uoIxY4DU_c0;

    invoke-direct {v2, p1}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$RlRzlI_mvPut3IP0uoIxY4DU_c0;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 1065
    :cond_43
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1066
    return-void
.end method
