.class Lcom/android/server/wm/FlymeWindowModeControllerImpl;
.super Ljava/lang/Object;
.source "FlymeWindowModeControllerImpl.java"

# interfaces
.implements Lcom/android/server/wm/FlymeWindowModeController;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/FlymeWindowModeControllerImpl$BinderDeath;,
        Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;,
        Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x168

.field private static final MSG_CLEAR_WINDOW_MODE_CACHE:I = 0x7

.field private static final MSG_MOVE_NOTIFY_CLIENT_CHANGE:I = 0x6

.field private static final MSG_MOVE_TO_BACK_ON_CHANGE:I = 0x3

.field private static final MSG_MOVE_TO_BACK_ON_TOUCH:I = 0x2

.field private static final MSG_MOVE_TO_FULL_SCREEN:I = 0x4

.field private static final MSG_RESET_WINDOW_MODE:I = 0x5

.field private static final MSG_SHOW_TOAST_NO_WINDOW_MODE:I = 0x1

.field private static final MSG_UPDATE_DIM_WINDOW_STATE:I = 0x8

.field private static final MSG_UPDATE_WHITE_LIST:I = 0x0

.field private static final MSG_UPDATE_WINDOW_MODE_SHOW_STATE:I = 0x9

.field private static final SCREEN_TRUNED_OFF:I = 0x1

.field private static final SCREEN_TRUNED_ON:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final WINDOW_MODE_DOUBLE_TAP_TO_BACK:Ljava/lang/String; = "window_mode_double_tap_to_back"


# instance fields
.field private mActivityDisplay:Lcom/android/server/wm/ActivityDisplay;

.field private mDimWindow:Lcom/android/server/wm/FlymeDimWindow;

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mDisplayId:I

.field private mDoubleTapUpToBack:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

.field private mLastDensityDpi:I

.field private mLastInTopStack:Z

.field private mLastInWindowMode:Z

.field private mLastPackageName:Ljava/lang/String;

.field private mLastUid:I

.field private mPendingShow:Z

.field private mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

.field private final mSendClientBundle:Landroid/os/Bundle;

.field private mSpaceModeManger:Lcom/android/server/wm/FlymeSpaceModeManger;

.field private mUiHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field private final mWindowModeCallbackClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowModeConfig:Lcom/android/server/wm/FlymeWindowModeConfig;

.field private mWindowModeDisplayInfo:Landroid/view/DisplayInfo;

.field private mWindowModeFrames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/FlymeWindowModeFrame;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mDisplayId:I

    .line 83
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeFrames:Landroid/util/SparseArray;

    .line 88
    new-instance v1, Lcom/android/server/wm/FlymeSpaceModeManger;

    invoke-direct {v1, p0}, Lcom/android/server/wm/FlymeSpaceModeManger;-><init>(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)V

    iput-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mSpaceModeManger:Lcom/android/server/wm/FlymeSpaceModeManger;

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeCallbackClients:Ljava/util/List;

    .line 90
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mLastDensityDpi:I

    .line 91
    iput-boolean v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mLastInWindowMode:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mLastInTopStack:Z

    .line 95
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mSendClientBundle:Landroid/os/Bundle;

    .line 110
    iput-boolean v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mDoubleTapUpToBack:Z

    .line 112
    new-instance v0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$1;-><init>(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    .line 74
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mDoubleTapUpToBack:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowModeControllerImpl;
    .param p1, "x1"  # Z

    .line 74
    iput-boolean p1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mDoubleTapUpToBack:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Landroid/view/MotionEvent;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowModeControllerImpl;
    .param p1, "x1"  # Landroid/view/MotionEvent;

    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->handleTouchForMoveBack(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    .line 74
    invoke-direct {p0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->resetWindowMode()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    .line 74
    invoke-direct {p0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->updateNotifyClientData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    .line 74
    invoke-direct {p0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->notifyWindowChangeToClient()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    .line 74
    invoke-direct {p0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->updateDimWindowState()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Lcom/android/server/wm/TaskStack;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowModeControllerImpl;
    .param p1, "x1"  # Lcom/android/server/wm/TaskStack;

    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->removePackageWindowModeCache(Lcom/android/server/wm/TaskStack;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/wm/FlymeWindowModeControllerImpl;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowModeControllerImpl;
    .param p1, "x1"  # I

    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->removePackageWindowModeCache(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowModeControllerImpl;
    .param p1, "x1"  # Z

    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->updateWindowModeShowStateInner(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeCallbackClients:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Lcom/android/server/wm/FlymeWindowModeConfig;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeConfig:Lcom/android/server/wm/FlymeWindowModeConfig;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mUiHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Lcom/android/server/wm/TaskStack;ZZ)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowModeControllerImpl;
    .param p1, "x1"  # Lcom/android/server/wm/TaskStack;
    .param p2, "x2"  # Z
    .param p3, "x3"  # Z

    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->moveWindowTaskToBackInner(Lcom/android/server/wm/TaskStack;ZZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Lcom/android/server/wm/DisplayContent;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    .line 74
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)Lcom/android/server/wm/TaskStack;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowModeControllerImpl;

    .line 74
    invoke-direct {p0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->getTopStackExcludeAlwaysOnTop()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/TaskStack;)Z
    .registers 4
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowModeControllerImpl;
    .param p1, "x1"  # Lcom/android/server/wm/TaskStack;
    .param p2, "x2"  # Lcom/android/server/wm/TaskStack;

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->shouldToBack(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/TaskStack;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Lcom/android/server/wm/TaskStack;Z)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowModeControllerImpl;
    .param p1, "x1"  # Lcom/android/server/wm/TaskStack;
    .param p2, "x2"  # Z

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->moveTasksToFullscreenInner(Lcom/android/server/wm/TaskStack;Z)V

    return-void
.end method

.method private exitSplitMode(Lcom/android/server/wm/TaskStack;)V
    .registers 5
    .param p1, "taskStack"  # Lcom/android/server/wm/TaskStack;

    .line 399
    if-eqz p1, :cond_37

    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 400
    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topTask()Lcom/android/server/wm/TaskRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskRecord;->supportsSplitScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_37

    .line 401
    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    .line 402
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getSplitScreenPrimaryStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 403
    .local v0, "dockedStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_37

    .line 406
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    .line 407
    invoke-virtual {v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityDismissingDockedStack()V

    .line 408
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/ActivityStackSupervisor;->moveTasksToFullscreenStackLocked(Lcom/android/server/wm/ActivityStack;Z)V

    .line 412
    .end local v0  # "dockedStack":Lcom/android/server/wm/ActivityStack;
    :cond_37
    return-void
.end method

.method private getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;
    .registers 8
    .param p2, "ignoreHidden"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;Z)",
            "Lcom/android/server/wm/AppWindowToken;"
        }
    .end annotation

    .line 1185
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    const/high16 v0, -0x80000000

    .line 1186
    .local v0, "topPrefixOrderIndex":I
    const/4 v1, 0x0

    .line 1187
    .local v1, "topApp":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_9
    if-ltz v2, :cond_25

    .line 1188
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    .line 1189
    .local v3, "app":Lcom/android/server/wm/AppWindowToken;
    if-eqz p2, :cond_1a

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1190
    goto :goto_22

    .line 1192
    :cond_1a
    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getPrefixOrderIndex()I

    move-result v4

    .line 1193
    .local v4, "prefixOrderIndex":I
    if-le v4, v0, :cond_22

    .line 1194
    move v0, v4

    .line 1195
    move-object v1, v3

    .line 1187
    .end local v3  # "app":Lcom/android/server/wm/AppWindowToken;
    .end local v4  # "prefixOrderIndex":I
    :cond_22
    :goto_22
    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    .line 1198
    .end local v2  # "i":I
    :cond_25
    return-object v1
.end method

.method private getTopStack(Ljava/util/function/Predicate;)Lcom/android/server/wm/TaskStack;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/TaskStack;",
            ">;)",
            "Lcom/android/server/wm/TaskStack;"
        }
    .end annotation

    .line 446
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/TaskStack;>;"
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getStacks()Lcom/android/server/wm/WindowList;

    move-result-object v0

    .line 447
    .local v0, "taskStacks":Lcom/android/server/wm/WindowList;, "Lcom/android/server/wm/WindowList<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_c
    if-ltz v1, :cond_1e

    .line 448
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    .line 449
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 450
    return-object v2

    .line 447
    .end local v2  # "stack":Lcom/android/server/wm/TaskStack;
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 453
    .end local v1  # "i":I
    :cond_1e
    const/4 v1, 0x0

    return-object v1
.end method

.method private getTopStackExcludeAlwaysOnTop()Lcom/android/server/wm/TaskStack;
    .registers 2

    .line 457
    sget-object v0, Lcom/android/server/wm/-$$Lambda$FlymeWindowModeControllerImpl$kb2vU9n3N_PIzUd_tAWdR-YJXZI;->INSTANCE:Lcom/android/server/wm/-$$Lambda$FlymeWindowModeControllerImpl$kb2vU9n3N_PIzUd_tAWdR-YJXZI;

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->getTopStack(Ljava/util/function/Predicate;)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method private getUnderFullTaskStack()Lcom/android/server/wm/TaskStack;
    .registers 2

    .line 464
    sget-object v0, Lcom/android/server/wm/-$$Lambda$FlymeWindowModeControllerImpl$_WXIw9QhEX9EcxECIcdU_qsSDCc;->INSTANCE:Lcom/android/server/wm/-$$Lambda$FlymeWindowModeControllerImpl$_WXIw9QhEX9EcxECIcdU_qsSDCc;

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->getTopStack(Ljava/util/function/Predicate;)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method private handleTouchForMoveBack(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "event"  # Landroid/view/MotionEvent;

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 133
    .local v0, "rotation":I
    invoke-virtual {p0, v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->getWindowModeWindowFrame(I)Lcom/android/server/wm/FlymeWindowModeFrame;

    move-result-object v1

    .line 134
    .local v1, "windowModeFrame":Lcom/android/server/wm/FlymeWindowModeFrame;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 135
    .local v2, "includeRect":Landroid/graphics/Rect;
    invoke-virtual {v1}, Lcom/android/server/wm/FlymeWindowModeFrame;->getVisibleBound()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 136
    const/16 v3, -0x1e

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_39

    .line 138
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->moveWindowTaskToBack(Lcom/android/server/wm/TaskStack;ZI)V

    .line 140
    :cond_39
    return-void
.end method

.method private initWindowModeFrames(Lcom/android/server/wm/DisplayContent;)V
    .registers 5
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;

    .line 645
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeFrames:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 646
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeFrames:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/wm/FlymeWindowModeFrame;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/server/wm/FlymeWindowModeFrame;-><init>(Lcom/android/server/wm/DisplayContent;I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 647
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeFrames:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/wm/FlymeWindowModeFrame;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/android/server/wm/FlymeWindowModeFrame;-><init>(Lcom/android/server/wm/DisplayContent;I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 648
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeFrames:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/wm/FlymeWindowModeFrame;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lcom/android/server/wm/FlymeWindowModeFrame;-><init>(Lcom/android/server/wm/DisplayContent;I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 649
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeFrames:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/wm/FlymeWindowModeFrame;

    const/4 v2, 0x3

    invoke-direct {v1, p1, v2}, Lcom/android/server/wm/FlymeWindowModeFrame;-><init>(Lcom/android/server/wm/DisplayContent;I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 650
    return-void
.end method

.method private initWindowModeFramesIfNeed(Lcom/android/server/wm/DisplayContent;)Z
    .registers 4
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;

    .line 635
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 636
    .local v0, "densityDpi":I
    iget v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mLastDensityDpi:I

    if-eq v1, v0, :cond_11

    .line 637
    iput v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mLastDensityDpi:I

    .line 638
    invoke-direct {p0, p1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->initWindowModeFrames(Lcom/android/server/wm/DisplayContent;)V

    .line 639
    const/4 v1, 0x1

    return v1

    .line 641
    :cond_11
    const/4 v1, 0x0

    return v1
.end method

.method public static synthetic lambda$-YcbWc-74UEuH8dfh22VmTp5PaM(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Lcom/android/server/wm/TaskStack;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->updateWindowModeFrame(Lcom/android/server/wm/TaskStack;)V

    return-void
.end method

.method static synthetic lambda$getTopStackExcludeAlwaysOnTop$2(Lcom/android/server/wm/TaskStack;)Z
    .registers 3
    .param p0, "t"  # Lcom/android/server/wm/TaskStack;

    .line 458
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v0

    .line 459
    .local v0, "windowingMode":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    const/4 v1, 0x5

    if-eq v0, v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method static synthetic lambda$getUnderFullTaskStack$3(Lcom/android/server/wm/TaskStack;)Z
    .registers 4
    .param p0, "t"  # Lcom/android/server/wm/TaskStack;

    .line 465
    invoke-virtual {p0}, Lcom/android/server/wm/TaskStack;->getWindowingMode()I

    move-result v0

    .line 466
    .local v0, "windowingMode":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    const/4 v2, 0x4

    if-eq v0, v2, :cond_f

    const/4 v2, 0x3

    if-ne v0, v2, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :cond_f
    :goto_f
    return v1
.end method

.method static synthetic lambda$removePackageWindowModeCache$0(ILcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p0, "uid"  # I
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 245
    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const/4 v1, 0x0

    if-ne v0, p0, :cond_1e

    .line 246
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_10

    .line 247
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    return v0

    .line 249
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isMzWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    :cond_1d
    return v1

    .line 252
    :cond_1e
    return v1
.end method

.method static synthetic lambda$removePackageWindowModeCache$1(ILcom/android/server/wm/WindowState;)Z
    .registers 4
    .param p0, "uid"  # I
    .param p1, "w"  # Lcom/android/server/wm/WindowState;

    .line 261
    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const/4 v1, 0x0

    if-ne v0, p0, :cond_19

    .line 262
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 263
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isMzWindowMode()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1

    .line 266
    :cond_19
    return v1
.end method

.method private moveTasksToFullscreenInner(Lcom/android/server/wm/TaskStack;Z)V
    .registers 14
    .param p1, "taskStack"  # Lcom/android/server/wm/TaskStack;
    .param p2, "anim"  # Z

    .line 373
    if-eqz p1, :cond_6a

    .line 374
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    if-eqz v0, :cond_24

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveTasksToFullscreenInner taskStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",anim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_24
    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->moveUnderWindowTaskToBack(Lcom/android/server/wm/ActivityStack;)V

    .line 378
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x168

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 379
    iget-object v4, p1, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v6, p2

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZZZZZ)V

    .line 380
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mActivityDisplay:Lcom/android/server/wm/ActivityDisplay;

    iget-object v1, p1, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    iget-object v1, v1, Lcom/android/server/wm/ActivityStack;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/server/wm/ActivityDisplay;->pauseBackStacks(ZLcom/android/server/wm/ActivityRecord;Z)Z

    .line 382
    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 383
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_61

    .line 384
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RecentTasks;->addTaskOnMoveToFullscreen(Lcom/android/server/wm/TaskRecord;)V

    .line 386
    :cond_61
    iget-object v1, p1, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    .line 387
    .local v1, "activityStack":Lcom/android/server/wm/ActivityStack;
    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mSpaceModeManger:Lcom/android/server/wm/FlymeSpaceModeManger;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/FlymeSpaceModeManger;->onActivityStackExitWindowMode(Lcom/android/server/wm/ActivityStack;Z)Z

    .line 388
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v1  # "activityStack":Lcom/android/server/wm/ActivityStack;
    goto :goto_7c

    .line 389
    :cond_6a
    invoke-direct {p0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->getTopStackExcludeAlwaysOnTop()Lcom/android/server/wm/TaskStack;

    move-result-object p1

    .line 390
    if-eqz p1, :cond_7c

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isMzWindowMode()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 391
    invoke-direct {p0, p1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->exitSplitMode(Lcom/android/server/wm/TaskStack;)V

    .line 392
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->moveTasksToFullscreenInner(Lcom/android/server/wm/TaskStack;Z)V

    .line 395
    :cond_7c
    :goto_7c
    return-void
.end method

.method private moveUnderWindowTaskToBack(Lcom/android/server/wm/ActivityStack;)V
    .registers 12
    .param p1, "activityStack"  # Lcom/android/server/wm/ActivityStack;

    .line 345
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mActivityDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 346
    .local v0, "index":I
    if-ltz v0, :cond_6b

    .line 348
    :cond_a
    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mActivityDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 349
    .local v2, "stack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 350
    goto :goto_6b

    .line 352
    :cond_17
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isMzWindowMode()Z

    move-result v3

    if-eqz v3, :cond_67

    if-eq v2, p1, :cond_67

    .line 353
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    if-eqz v3, :cond_39

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveUnderWindowTaskToBack activityStack ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_39
    iget-object v3, v2, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-direct {p0, v3}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->removePackageWindowModeCache(Lcom/android/server/wm/TaskStack;)V

    .line 357
    iget-object v3, v2, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/wm/TaskStack;->mDeferBack:Z

    .line 358
    iget-object v3, v2, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskStack;->setAlwaysOnTop(Z)V

    .line 359
    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mActivityDisplay:Lcom/android/server/wm/ActivityDisplay;

    const-string v5, "moveWindowTaskToBack"

    invoke-virtual {v3, v2, v5}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtBottom(Lcom/android/server/wm/ActivityStack;Ljava/lang/String;)V

    .line 360
    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mSpaceModeManger:Lcom/android/server/wm/FlymeSpaceModeManger;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/FlymeSpaceModeManger;->onActivityStackExitWindowMode(Lcom/android/server/wm/ActivityStack;Z)Z

    move-result v3

    if-nez v3, :cond_69

    .line 361
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZZZZZ)V

    .line 362
    iget-object v3, v2, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-direct {p0, v3, v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->setTaskStackVisibility(Lcom/android/server/wm/TaskStack;Z)V

    goto :goto_69

    .line 365
    :cond_67
    add-int/lit8 v0, v0, -0x1

    .line 368
    .end local v2  # "stack":Lcom/android/server/wm/ActivityStack;
    :cond_69
    :goto_69
    if-gez v0, :cond_a

    .line 370
    :cond_6b
    :goto_6b
    return-void
.end method

.method private moveWindowTaskToBack(Lcom/android/server/wm/TaskStack;ZI)V
    .registers 5
    .param p1, "taskStack"  # Lcom/android/server/wm/TaskStack;
    .param p2, "anim"  # Z
    .param p3, "delay"  # I

    .line 534
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->moveWindowTaskToBack(Lcom/android/server/wm/TaskStack;ZZI)V

    .line 535
    return-void
.end method

.method private moveWindowTaskToBackInner(Lcom/android/server/wm/TaskStack;ZZ)V
    .registers 13
    .param p1, "taskStack"  # Lcom/android/server/wm/TaskStack;
    .param p2, "anim"  # Z
    .param p3, "notMovePosition"  # Z

    .line 473
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    if-eqz v0, :cond_2a

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "moveWindowTaskToBackInner taskStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",anim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",notMovePosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_2a
    if-eqz p1, :cond_ed

    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    iget v0, v0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    iget v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mDisplayId:I

    if-ne v0, v1, :cond_ed

    .line 477
    if-nez p3, :cond_3b

    .line 478
    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->moveUnderWindowTaskToBack(Lcom/android/server/wm/ActivityStack;)V

    .line 480
    :cond_3b
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_ab

    .line 481
    invoke-direct {p0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->getUnderFullTaskStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 482
    .local v2, "fullTaskStack":Lcom/android/server/wm/TaskStack;
    if-eqz v2, :cond_aa

    .line 483
    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 485
    :try_start_4a
    const-class v3, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    .line 486
    iget-object v3, v2, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 487
    .local v3, "fullActivityRecord":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_64

    iget-object v4, v2, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    goto :goto_65

    :cond_64
    move-object v4, v3

    :goto_65
    move-object v3, v4

    .line 488
    iget-object v4, p1, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 489
    .local v4, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    if-nez v4, :cond_75

    iget-object v5, p1, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    goto :goto_76

    :cond_75
    move-object v5, v4

    :goto_76
    move-object v4, v5

    .line 490
    iput-boolean v0, p1, Lcom/android/server/wm/TaskStack;->mDeferBack:Z

    .line 491
    invoke-virtual {p1, v0}, Lcom/android/server/wm/TaskStack;->setAlwaysOnTop(Z)V

    .line 492
    iget-object v5, p1, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v5, v0, v1, v3, v1}, Lcom/android/server/wm/ActivityStack;->startPausingLocked(ZZLcom/android/server/wm/ActivityRecord;Z)Z

    .line 493
    if-eqz v4, :cond_9d

    .line 494
    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskRecord()Lcom/android/server/wm/TaskRecord;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/TaskRecord;->taskId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStack;->moveTaskToBackLocked(I)Z

    .line 495
    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    iget-object v0, v0, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootActivityContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    const-string v5, "moveWindowTaskToBack"

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    :try_end_9d
    .catchall {:try_start_4a .. :try_end_9d} :catchall_a3

    .line 498
    .end local v3  # "fullActivityRecord":Lcom/android/server/wm/ActivityRecord;
    .end local v4  # "activityRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_9d
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 499
    goto :goto_aa

    .line 498
    :catchall_a3
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0

    .line 501
    .end local v2  # "fullTaskStack":Lcom/android/server/wm/TaskStack;
    :cond_aa
    :goto_aa
    goto :goto_fc

    .line 502
    :cond_ab
    invoke-direct {p0, p1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->removePackageWindowModeCache(Lcom/android/server/wm/TaskStack;)V

    .line 503
    iput-boolean v1, p1, Lcom/android/server/wm/TaskStack;->mDeferBack:Z

    .line 504
    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskStack;->setAlwaysOnTop(Z)V

    .line 505
    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mSpaceModeManger:Lcom/android/server/wm/FlymeSpaceModeManger;

    iget-object v3, p1, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/FlymeSpaceModeManger;->onActivityStackExitWindowMode(Lcom/android/server/wm/ActivityStack;Z)Z

    move-result v2

    if-nez v2, :cond_fc

    .line 506
    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 508
    if-nez p3, :cond_cb

    .line 509
    :try_start_c4
    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mActivityDisplay:Lcom/android/server/wm/ActivityDisplay;

    iget-object v3, p1, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityDisplay;->positionChildAtBottom(Lcom/android/server/wm/ActivityStack;)V

    .line 511
    :cond_cb
    iget-object v2, p1, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZZZZZ)V

    .line 512
    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v1}, Lcom/android/server/wm/RootActivityContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 513
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->setTaskStackVisibility(Lcom/android/server/wm/TaskStack;Z)V
    :try_end_df
    .catchall {:try_start_c4 .. :try_end_df} :catchall_e6

    .line 515
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 516
    nop

    .line 515
    goto :goto_fc

    :catchall_e6
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0

    .line 520
    :cond_ed
    invoke-direct {p0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->getTopStackExcludeAlwaysOnTop()Lcom/android/server/wm/TaskStack;

    move-result-object p1

    .line 521
    if-eqz p1, :cond_fc

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isMzWindowMode()Z

    move-result v0

    if-eqz v0, :cond_fc

    .line 522
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->moveWindowTaskToBackInner(Lcom/android/server/wm/TaskStack;ZZ)V

    .line 525
    :cond_fc
    :goto_fc
    return-void
.end method

.method private notifyActivityStackModeChange(Lcom/android/server/wm/ActivityStack;Z)V
    .registers 6
    .param p1, "activityStack"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "isWindowMode"  # Z

    .line 692
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    if-eqz v0, :cond_22

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyActivityStackModeChange activityStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",isWindowMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_22
    if-eqz p2, :cond_2f

    .line 696
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mDimWindow:Lcom/android/server/wm/FlymeDimWindow;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v2, v1, v1}, Lcom/android/server/wm/FlymeDimWindow;->updateWindowState(ZZZI)V

    .line 697
    invoke-direct {p0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->postNotifyWindowChangeToClient()V

    goto :goto_3b

    .line 699
    :cond_2f
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 700
    .local v0, "taskStack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_3b

    .line 701
    invoke-direct {p0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->postNotifyWindowChangeToClient()V

    .line 704
    .end local v0  # "taskStack":Lcom/android/server/wm/TaskStack;
    :cond_3b
    :goto_3b
    return-void
.end method

.method private notifyWindowChangeToClient()V
    .registers 6

    .line 789
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeCallbackClients:Ljava/util/List;

    monitor-enter v0

    .line 790
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeCallbackClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5f

    .line 791
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    if-eqz v1, :cond_45

    .line 792
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyWindowChangeToClient isWindowMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mLastInWindowMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", topStack ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mLastInTopStack:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mLastUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_45
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeCallbackClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;

    .line 797
    .local v2, "client":Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;
    iget-boolean v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mLastInWindowMode:Z

    iget-object v4, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mSendClientBundle:Landroid/os/Bundle;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->notifyWindowChangeToClient(Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;ZLandroid/os/Bundle;)V

    .line 798
    .end local v2  # "client":Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;
    goto :goto_4b

    .line 800
    :cond_5f
    monitor-exit v0

    .line 801
    return-void

    .line 800
    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_61

    throw v1
.end method

.method private notifyWindowChangeToClient(Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;ZLandroid/os/Bundle;)V
    .registers 7
    .param p1, "client"  # Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;
    .param p2, "isWindowMode"  # Z
    .param p3, "bundle"  # Landroid/os/Bundle;

    .line 805
    :try_start_0
    invoke-static {p1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;->access$1800(Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;)Lflyme/view/IWindowModeCallback;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lflyme/view/IWindowModeCallback;->onStackWindowModeChanged(ZLandroid/os/Bundle;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 808
    goto :goto_23

    .line 806
    :catch_8
    move-exception v0

    .line 807
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyClient error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_23
    return-void
.end method

.method private postNotifyWindowChangeToClient()V
    .registers 3

    .line 734
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->removeMessages(I)V

    .line 735
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 736
    return-void
.end method

.method private postNotifyWindowMoveToBack(I)V
    .registers 6
    .param p1, "delay"  # I

    .line 729
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->removeMessages(I)V

    .line 730
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->sendEmptyMessageDelayed(IJ)Z

    .line 731
    return-void
.end method

.method private removePackageWindowModeCache(I)V
    .registers 6
    .param p1, "uid"  # I

    .line 243
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeConfig:Lcom/android/server/wm/FlymeWindowModeConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/FlymeWindowModeConfig;->hasPackageWindowModeCache(I)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 244
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$FlymeWindowModeControllerImpl$Sc-B_SPa3AcrRrhI5rrW3hFTe2U;

    invoke-direct {v1, p1}, Lcom/android/server/wm/-$$Lambda$FlymeWindowModeControllerImpl$Sc-B_SPa3AcrRrhI5rrW3hFTe2U;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 254
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    const-string v2, "WindowManager"

    if-eqz v1, :cond_2d

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removePackageWindowModeCache has visible float window ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_2d
    if-nez v0, :cond_35

    .line 258
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeConfig:Lcom/android/server/wm/FlymeWindowModeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/FlymeWindowModeConfig;->removePackageWindowModeCache(I)V

    goto :goto_5f

    .line 260
    :cond_35
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v3, Lcom/android/server/wm/-$$Lambda$FlymeWindowModeControllerImpl$W1g2uEQubNWZbFOVyGJ2Jh5L_cA;

    invoke-direct {v3, p1}, Lcom/android/server/wm/-$$Lambda$FlymeWindowModeControllerImpl$W1g2uEQubNWZbFOVyGJ2Jh5L_cA;-><init>(I)V

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_5f

    .line 269
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    if-eqz v1, :cond_5a

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removePackageWindowModeCache has visible task window ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_5a
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeConfig:Lcom/android/server/wm/FlymeWindowModeConfig;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/FlymeWindowModeConfig;->removePackageWindowModeCache(I)V

    .line 276
    .end local v0  # "windowState":Lcom/android/server/wm/WindowState;
    :cond_5f
    :goto_5f
    return-void
.end method

.method private removePackageWindowModeCache(Lcom/android/server/wm/TaskStack;)V
    .registers 5
    .param p1, "taskStack"  # Lcom/android/server/wm/TaskStack;

    .line 231
    if-nez p1, :cond_7

    invoke-direct {p0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->getTopStackExcludeAlwaysOnTop()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p1

    :goto_8
    move-object p1, v0

    .line 232
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 233
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_22

    .line 234
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .line 235
    .local v1, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_22

    .line 236
    iget-object v2, v1, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    .line 237
    .local v2, "uid":I
    invoke-direct {p0, v2}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->removePackageWindowModeCache(I)V

    .line 240
    .end local v1  # "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    .end local v2  # "uid":I
    :cond_22
    return-void
.end method

.method private resetWindowMode()V
    .registers 11

    .line 421
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mActivityDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v0

    .line 422
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_60

    .line 423
    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mActivityDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    .line 424
    .local v2, "activityStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 425
    goto :goto_60

    .line 427
    :cond_16
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityStack;->isMzWindowMode()Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 428
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    if-eqz v3, :cond_36

    .line 429
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetWindowMode setWindowingMode activityStack ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WindowManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_36
    iget-object v3, v2, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-direct {p0, v3}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->removePackageWindowModeCache(Lcom/android/server/wm/TaskStack;)V

    .line 432
    iget-object v3, v2, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/wm/TaskStack;->mDeferBack:Z

    .line 433
    iget-object v3, v2, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskStack;->setAlwaysOnTop(Z)V

    .line 434
    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mSpaceModeManger:Lcom/android/server/wm/FlymeSpaceModeManger;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/FlymeSpaceModeManger;->onActivityStackExitWindowMode(Lcom/android/server/wm/ActivityStack;Z)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 435
    goto :goto_60

    .line 437
    :cond_4e
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, v2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZZZZZ)V

    .line 438
    iget-object v3, v2, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-direct {p0, v3, v4}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->setTaskStackVisibility(Lcom/android/server/wm/TaskStack;Z)V

    .line 422
    .end local v2  # "activityStack":Lcom/android/server/wm/ActivityStack;
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 443
    .end local v1  # "i":I
    :cond_60
    :goto_60
    return-void
.end method

.method private setTaskStackVisibility(Lcom/android/server/wm/TaskStack;Z)V
    .registers 5
    .param p1, "taskStack"  # Lcom/android/server/wm/TaskStack;
    .param p2, "visible"  # Z

    .line 1249
    if-eqz p1, :cond_3a

    .line 1250
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    if-eqz v0, :cond_24

    .line 1251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTaskStackVisibility: visible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", taskStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_24
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 1253
    .local v0, "sc":Landroid/view/SurfaceControl;
    if-eqz v0, :cond_39

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_31

    goto :goto_39

    .line 1256
    :cond_31
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    goto :goto_3a

    .line 1254
    :cond_39
    :goto_39
    return-void

    .line 1258
    .end local v0  # "sc":Landroid/view/SurfaceControl;
    :cond_3a
    :goto_3a
    return-void
.end method

.method private shouldToBack(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/TaskStack;)Z
    .registers 7
    .param p1, "topStack"  # Lcom/android/server/wm/TaskStack;
    .param p2, "taskStack"  # Lcom/android/server/wm/TaskStack;

    .line 826
    const/4 v0, 0x0

    if-eqz p1, :cond_2e

    if-eqz p2, :cond_2e

    .line 827
    if-eq p1, p2, :cond_2e

    invoke-virtual {p2}, Lcom/android/server/wm/TaskStack;->isMzWindowMode()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 828
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->inSplitScreenWindowingMode()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1f

    iget-object v1, p1, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityStack;->isStackTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    if-eqz v1, :cond_1f

    move v1, v2

    goto :goto_20

    :cond_1f
    move v1, v0

    .line 829
    .local v1, "isStackTranslucent":Z
    :goto_20
    iget-boolean v3, p2, Lcom/android/server/wm/TaskStack;->mDeferBack:Z

    if-nez v3, :cond_2c

    if-eqz v1, :cond_2c

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_2d

    :cond_2c
    move v0, v2

    :cond_2d
    return v0

    .line 832
    .end local v1  # "isStackTranslucent":Z
    :cond_2e
    return v0
.end method

.method private startProviders()V
    .registers 6

    .line 613
    const-string v0, "window_mode_app_white_list"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 614
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 615
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    new-instance v2, Lcom/android/server/wm/FlymeWindowModeControllerImpl$2;

    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$2;-><init>(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 622
    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->sendEmptyMessage(I)Z

    .line 623
    const-string v2, "window_mode_double_tap_to_back"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 624
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2c

    goto :goto_2d

    :cond_2c
    move v4, v3

    :goto_2d
    iput-boolean v4, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mDoubleTapUpToBack:Z

    .line 625
    new-instance v2, Lcom/android/server/wm/FlymeWindowModeControllerImpl$3;

    iget-object v4, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    invoke-direct {v2, p0, v4, v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$3;-><init>(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 632
    return-void
.end method

.method private updateDimWindowState()V
    .registers 6

    .line 780
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mLastInWindowMode:Z

    .line 781
    .local v0, "showDim":Z
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 782
    .local v1, "taskStack":Lcom/android/server/wm/TaskStack;
    const/4 v3, 0x0

    if-nez v0, :cond_19

    if-eqz v1, :cond_17

    iget-object v4, v1, Lcom/android/server/wm/TaskStack;->mDeferHideDimTokens:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_17

    goto :goto_19

    :cond_17
    move v4, v3

    goto :goto_1a

    :cond_19
    :goto_19
    move v4, v2

    :goto_1a
    move v0, v4

    .line 783
    if-nez v0, :cond_22

    .line 784
    iget-object v4, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mDimWindow:Lcom/android/server/wm/FlymeDimWindow;

    invoke-virtual {v4, v3, v2, v3, v3}, Lcom/android/server/wm/FlymeDimWindow;->updateWindowState(ZZZI)V

    .line 786
    :cond_22
    return-void
.end method

.method private updateNotifyClientData()Z
    .registers 13

    .line 739
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 740
    .local v0, "taskStack":Lcom/android/server/wm/TaskStack;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    iget-boolean v3, v0, Lcom/android/server/wm/TaskStack;->mDeferBack:Z

    if-nez v3, :cond_1c

    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mActivityDisplay:Lcom/android/server/wm/ActivityDisplay;

    iget-object v4, v0, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityDisplay;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1c

    move v3, v1

    goto :goto_1d

    :cond_1c
    move v3, v2

    .line 741
    .local v3, "isWindowMode":Z
    :goto_1d
    const/4 v4, 0x0

    .line 742
    .local v4, "inTopStack":Z
    const/4 v5, 0x0

    .line 743
    .local v5, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    const/4 v6, 0x0

    .line 744
    .local v6, "packageName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 745
    .local v7, "uid":I
    const/4 v8, 0x0

    if-eqz v3, :cond_53

    .line 746
    iget-object v9, v0, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStack;->getTopActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 747
    if-eqz v5, :cond_2f

    iget-object v9, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_30

    :cond_2f
    move-object v9, v8

    :goto_30
    move-object v6, v9

    .line 748
    if-eqz v5, :cond_38

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v9

    goto :goto_39

    :cond_38
    move v9, v2

    :goto_39
    move v7, v9

    .line 749
    invoke-direct {p0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->getTopStackExcludeAlwaysOnTop()Lcom/android/server/wm/TaskStack;

    move-result-object v9

    .line 750
    .local v9, "topTaskStack":Lcom/android/server/wm/TaskStack;
    if-ne v9, v0, :cond_42

    move v10, v1

    goto :goto_43

    :cond_42
    move v10, v2

    :goto_43
    move v4, v10

    .line 751
    if-nez v4, :cond_51

    iget-object v10, v9, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {v10, v8}, Lcom/android/server/wm/ActivityStack;->isStackTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v10

    if-eqz v10, :cond_4f

    goto :goto_51

    :cond_4f
    move v10, v2

    goto :goto_52

    :cond_51
    :goto_51
    move v10, v1

    :goto_52
    move v3, v10

    .line 753
    .end local v9  # "topTaskStack":Lcom/android/server/wm/TaskStack;
    :cond_53
    iget-boolean v9, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mLastInWindowMode:Z

    if-ne v9, v3, :cond_6f

    iget-boolean v9, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mLastInTopStack:Z

    if-ne v9, v4, :cond_6f

    if-eqz v3, :cond_6e

    if-eqz v4, :cond_6e

    if-eqz v6, :cond_6e

    iget-object v9, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mLastPackageName:Ljava/lang/String;

    .line 755
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6f

    iget v9, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mLastUid:I

    if-eq v7, v9, :cond_6e

    goto :goto_6f

    .line 776
    :cond_6e
    return v2

    .line 756
    :cond_6f
    :goto_6f
    iget-boolean v2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mLastInWindowMode:Z

    if-nez v2, :cond_90

    if-eqz v3, :cond_90

    if-eqz v4, :cond_90

    .line 757
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 758
    .local v2, "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "pkgname"

    invoke-virtual {v2, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    iget-object v9, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->getInstance(Landroid/content/Context;)Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;

    move-result-object v9

    .line 760
    const-string v10, "float_window_show"

    const-string v11, "com.flyme.systemuitools"

    invoke-virtual {v9, v10, v8, v2, v11}, Landroid/nonvccUsageStats/UsageStatsNonVccProxy3;->onAppEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 762
    .end local v2  # "properties":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_90
    iput-boolean v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mLastInWindowMode:Z

    .line 763
    iput-boolean v4, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mLastInTopStack:Z

    .line 764
    iput-object v6, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mLastPackageName:Ljava/lang/String;

    .line 765
    iput v7, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mLastUid:I

    .line 766
    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mSendClientBundle:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->clear()V

    .line 767
    if-eqz v0, :cond_c5

    if-eqz v5, :cond_c5

    .line 768
    iget-object v2, v5, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_ab

    iget-object v2, v5, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    :cond_ab
    move-object v2, v8

    .line 769
    .local v2, "className":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mSendClientBundle:Landroid/os/Bundle;

    iget-object v9, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mLastPackageName:Ljava/lang/String;

    const-string v10, "packageName"

    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    iget-object v8, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mSendClientBundle:Landroid/os/Bundle;

    const-string v9, "className"

    invoke-virtual {v8, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-object v8, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mSendClientBundle:Landroid/os/Bundle;

    iget v9, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mLastUid:I

    const-string v10, "uid"

    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 773
    .end local v2  # "className":Ljava/lang/String;
    :cond_c5
    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mSendClientBundle:Landroid/os/Bundle;

    iget-boolean v8, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mLastInTopStack:Z

    const-string v9, "topStack"

    invoke-virtual {v2, v9, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 774
    return v1
.end method

.method private updateWindowModeFrame(Lcom/android/server/wm/TaskStack;)V
    .registers 3
    .param p1, "taskStack"  # Lcom/android/server/wm/TaskStack;

    .line 674
    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->updateWindowModeFrame(Lcom/android/server/wm/ActivityStack;)V

    .line 675
    return-void
.end method

.method private updateWindowModeShowStateInner(Z)V
    .registers 16
    .param p1, "show"  # Z

    .line 1203
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    if-eqz v0, :cond_24

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWindowModeShowStateInner: mPendingShow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mPendingShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " show = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_24
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mPendingShow:Z

    if-eq p1, v0, :cond_29

    .line 1207
    return-void

    .line 1210
    :cond_29
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mPendingShow:Z

    .line 1211
    const/4 v0, 0x0

    .line 1212
    .local v0, "update":Z
    const/4 v1, 0x1

    .line 1213
    .local v1, "topAnim":Z
    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mActivityDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_37
    const/4 v4, 0x0

    if-ltz v2, :cond_b3

    .line 1214
    iget-object v5, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mActivityDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v5

    .line 1215
    .local v5, "activityStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStack;->isMzWindowMode()Z

    move-result v6

    if-eqz v6, :cond_b3

    .line 1216
    const/4 v0, 0x1

    .line 1217
    iget-object v6, v5, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    .line 1218
    .local v6, "taskStack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->getWindowModeFrame()Lcom/android/server/wm/FlymeWindowModeFrame;

    move-result-object v7

    .line 1219
    .local v7, "windowModeFrame":Lcom/android/server/wm/FlymeWindowModeFrame;
    if-eqz v7, :cond_ac

    if-eqz v1, :cond_ac

    .line 1220
    const/4 v8, 0x0

    .line 1221
    .local v8, "anim":Landroid/view/animation/Animation;
    if-eqz p1, :cond_63

    .line 1222
    invoke-direct {p0, v6, v3}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->setTaskStackVisibility(Lcom/android/server/wm/TaskStack;Z)V

    .line 1223
    iget-object v9, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v10, 0xa010045

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    goto :goto_6e

    .line 1225
    :cond_63
    iget-object v9, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v10, 0xa010044

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    .line 1227
    :goto_6e
    invoke-virtual {v7}, Lcom/android/server/wm/FlymeWindowModeFrame;->getDisplayBound()Landroid/graphics/Rect;

    move-result-object v9

    .line 1228
    .local v9, "rect":Landroid/graphics/Rect;
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v8, v10, v11, v12, v13}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1229
    iget-object v10, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v10

    invoke-virtual {v8, v10}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 1230
    new-instance v10, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v11, Lcom/android/server/wm/WindowAnimationSpec;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v11, v8, v12, v4, v13}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;ZF)V

    iget-object v4, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v10, v11, v4}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    move-object v4, v10

    .line 1233
    .local v4, "adapter":Lcom/android/server/wm/AnimationAdapter;
    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v10

    xor-int/lit8 v11, p1, 0x1

    invoke-virtual {v6, v10, v4, v11}, Lcom/android/server/wm/TaskStack;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    .line 1234
    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->commitPendingTransaction()V

    .line 1235
    .end local v4  # "adapter":Lcom/android/server/wm/AnimationAdapter;
    .end local v8  # "anim":Landroid/view/animation/Animation;
    .end local v9  # "rect":Landroid/graphics/Rect;
    goto :goto_af

    .line 1236
    :cond_ac
    invoke-direct {p0, v6, p1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->setTaskStackVisibility(Lcom/android/server/wm/TaskStack;Z)V

    .line 1238
    :goto_af
    const/4 v1, 0x0

    .line 1213
    .end local v5  # "activityStack":Lcom/android/server/wm/ActivityStack;
    .end local v6  # "taskStack":Lcom/android/server/wm/TaskStack;
    .end local v7  # "windowModeFrame":Lcom/android/server/wm/FlymeWindowModeFrame;
    add-int/lit8 v2, v2, -0x1

    goto :goto_37

    .line 1243
    .end local v2  # "i":I
    :cond_b3
    if-eqz v0, :cond_ba

    .line 1244
    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mDimWindow:Lcom/android/server/wm/FlymeDimWindow;

    invoke-virtual {v2, p1, v3, v4, v4}, Lcom/android/server/wm/FlymeDimWindow;->updateWindowState(ZZZI)V

    .line 1246
    :cond_ba
    return-void
.end method

.method private useWindowModeDisplayInfo(Lcom/android/server/wm/ActivityStack;I)Z
    .registers 9
    .param p1, "topStack"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "callingUid"  # I

    .line 924
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_28

    .line 925
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStack;->getChildAt(I)Lcom/android/server/wm/TaskRecord;

    move-result-object v2

    .line 926
    .local v2, "taskRecord":Lcom/android/server/wm/TaskRecord;
    if-eqz v2, :cond_25

    .line 927
    invoke-virtual {v2}, Lcom/android/server/wm/TaskRecord;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "j":I
    :goto_13
    if-ltz v3, :cond_25

    .line 928
    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskRecord;->getChildAt(I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 929
    .local v4, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_22

    .line 930
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v5

    if-ne v5, p2, :cond_22

    .line 931
    return v1

    .line 927
    .end local v4  # "activityRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_22
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .line 924
    .end local v2  # "taskRecord":Lcom/android/server/wm/TaskRecord;
    .end local v3  # "j":I
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 937
    .end local v0  # "i":I
    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method private willLaunchInSpaceMode(Lcom/android/server/wm/AppWindowToken;)Z
    .registers 6
    .param p1, "closingApp"  # Lcom/android/server/wm/AppWindowToken;

    .line 1167
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mSpaceModeManger:Lcom/android/server/wm/FlymeSpaceModeManger;

    invoke-virtual {v0}, Lcom/android/server/wm/FlymeSpaceModeManger;->getSpaceModePackageUid()I

    move-result v0

    .line 1168
    .local v0, "spaceUid":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_43

    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1169
    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    .line 1170
    .local v2, "openingApp":Lcom/android/server/wm/AppWindowToken;
    if-eqz v2, :cond_42

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->isMzWindowMode()Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_42

    .line 1173
    :cond_25
    if-eqz p1, :cond_41

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->isMzWindowMode()Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_41

    .line 1176
    :cond_2e
    iget-object v3, v2, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v3

    if-eq v3, v0, :cond_37

    .line 1177
    return v1

    .line 1179
    :cond_37
    iget-object v3, p1, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v3

    if-ne v3, v0, :cond_40

    const/4 v1, 0x1

    :cond_40
    return v1

    .line 1174
    :cond_41
    :goto_41
    return v1

    .line 1171
    :cond_42
    :goto_42
    return v1

    .line 1181
    .end local v2  # "openingApp":Lcom/android/server/wm/AppWindowToken;
    :cond_43
    return v1
.end method


# virtual methods
.method public adjustDisplayInfoLock(Landroid/view/DisplayInfo;II)Landroid/view/DisplayInfo;
    .registers 9
    .param p1, "displayInfo"  # Landroid/view/DisplayInfo;
    .param p2, "displayId"  # I
    .param p3, "callingUid"  # I

    .line 942
    sget-boolean v0, Lcom/android/server/wm/FlymeFeatureConfig;->FLYME_FEATURE_WINDOW_MODE_CHANGE_DISPLAY:Z

    if-eqz v0, :cond_55

    .line 943
    if-eqz p3, :cond_55

    iget v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mDisplayId:I

    if-ne p2, v0, :cond_55

    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeConfig:Lcom/android/server/wm/FlymeWindowModeConfig;

    if-eqz v0, :cond_55

    .line 944
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mActivityDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getTopStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 945
    .local v0, "topStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isMzWindowMode()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 946
    invoke-direct {p0, v0, p3}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->useWindowModeDisplayInfo(Lcom/android/server/wm/ActivityStack;I)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 947
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 948
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeFrames:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/FlymeWindowModeFrame;

    invoke-virtual {v1}, Lcom/android/server/wm/FlymeWindowModeFrame;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 949
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 950
    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 951
    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v4, v3, Landroid/view/DisplayInfo;->appWidth:I

    .line 952
    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v4, v3, Landroid/view/DisplayInfo;->appHeight:I

    .line 953
    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeDisplayInfo:Landroid/view/DisplayInfo;

    iput v2, v3, Landroid/view/DisplayInfo;->rotation:I

    .line 954
    return-object v3

    .line 959
    .end local v0  # "topStack":Lcom/android/server/wm/ActivityStack;
    .end local v1  # "rect":Landroid/graphics/Rect;
    :cond_55
    return-object p1
.end method

.method public applyAnimation(Lcom/android/server/wm/AppWindowToken;Landroid/view/animation/Animation;Landroid/content/res/Configuration;IZ)Landroid/view/animation/Animation;
    .registers 16
    .param p1, "appWindowToken"  # Lcom/android/server/wm/AppWindowToken;
    .param p2, "anim"  # Landroid/view/animation/Animation;
    .param p3, "config"  # Landroid/content/res/Configuration;
    .param p4, "transit"  # I
    .param p5, "enter"  # Z

    .line 1102
    const-string v0, "WindowManager"

    if-nez p5, :cond_11

    invoke-direct {p0, p1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->willLaunchInSpaceMode(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1103
    const-string v1, "not do Animation in SpaceMode for close app"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const/4 v0, 0x0

    return-object v0

    .line 1106
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->isMzWindowMode()Z

    move-result v1

    if-eqz v1, :cond_f2

    invoke-static {p4}, Lcom/android/server/wm/AppTransition;->isActivityTransit(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    goto/16 :goto_f2

    .line 1109
    :cond_1f
    move-object v1, p2

    .line 1110
    .local v1, "a":Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 1111
    .local v2, "context":Landroid/content/Context;
    iget v3, p3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2b

    move v3, v4

    goto :goto_2c

    :cond_2b
    const/4 v3, 0x0

    .line 1112
    .local v3, "portrait":Z
    :goto_2c
    if-eqz p4, :cond_64

    const/16 v5, 0x8

    if-eq p4, v5, :cond_64

    const/16 v5, 0xa

    if-eq p4, v5, :cond_64

    const/16 v5, 0xb

    if-eq p4, v5, :cond_58

    .line 1133
    const/16 v5, 0xc

    if-eq p4, v5, :cond_70

    const/16 v5, 0xd

    if-eq p4, v5, :cond_70

    .line 1135
    if-eqz p5, :cond_4b

    .line 1136
    const/high16 v5, 0x10a0000

    invoke-static {v2, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_52

    .line 1138
    :cond_4b
    const v5, 0x10a0001

    invoke-static {v2, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1140
    :goto_52
    const-wide/16 v5, 0xc8

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_70

    .line 1125
    :cond_58
    if-nez p5, :cond_62

    .line 1126
    const v5, 0xa010044

    invoke-static {v2, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_70

    .line 1128
    :cond_62
    const/4 v1, 0x0

    .line 1131
    goto :goto_70

    .line 1116
    :cond_64
    if-eqz p5, :cond_6e

    .line 1117
    const v5, 0xa010045

    invoke-static {v2, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_70

    .line 1119
    :cond_6e
    const/4 v1, 0x0

    .line 1122
    nop

    .line 1144
    :cond_70
    :goto_70
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v5, :cond_a4

    .line 1145
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyAnimation:loadWindowModeAnimation: anim="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " isPortrait="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " transit="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    invoke-static {p4}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " isEntrance="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1145
    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_a4
    if-eqz v1, :cond_f1

    .line 1149
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1150
    .local v0, "animationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v0, v4}, Landroid/view/animation/AnimationSet;->setHasRoundedCorners(Z)V

    .line 1151
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1152
    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1153
    iget-object v4, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeFrames:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/FlymeWindowModeFrame;

    .line 1154
    .local v4, "frame":Lcom/android/server/wm/FlymeWindowModeFrame;
    invoke-virtual {v4}, Lcom/android/server/wm/FlymeWindowModeFrame;->getCornerRadius()F

    move-result v5

    .line 1155
    .local v5, "radius":F
    new-instance v6, Lcom/android/server/wm/animation/RadiusAnimation;

    invoke-direct {v6, v5, v5}, Lcom/android/server/wm/animation/RadiusAnimation;-><init>(FF)V

    .line 1156
    .local v6, "animation":Lcom/android/server/wm/animation/RadiusAnimation;
    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/animation/RadiusAnimation;->setDuration(J)V

    .line 1157
    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1158
    new-instance v7, Landroid/view/animation/ClipRectAnimation;

    invoke-virtual {v4}, Lcom/android/server/wm/FlymeWindowModeFrame;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/wm/FlymeWindowModeFrame;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1159
    .local v7, "clipAnim":Landroid/view/animation/Animation;
    invoke-virtual {v1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1160
    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1161
    return-object v0

    .line 1163
    .end local v0  # "animationSet":Landroid/view/animation/AnimationSet;
    .end local v4  # "frame":Lcom/android/server/wm/FlymeWindowModeFrame;
    .end local v5  # "radius":F
    .end local v6  # "animation":Lcom/android/server/wm/animation/RadiusAnimation;
    .end local v7  # "clipAnim":Landroid/view/animation/Animation;
    :cond_f1
    return-object v1

    .line 1107
    .end local v1  # "a":Landroid/view/animation/Animation;
    .end local v2  # "context":Landroid/content/Context;
    .end local v3  # "portrait":Z
    :cond_f2
    :goto_f2
    return-object p2
.end method

.method public applyAnimation(Lcom/android/server/wm/WindowState;Landroid/view/animation/Animation;IZI)Landroid/view/animation/Animation;
    .registers 8
    .param p1, "windowState"  # Lcom/android/server/wm/WindowState;
    .param p2, "anim"  # Landroid/view/animation/Animation;
    .param p3, "transit"  # I
    .param p4, "isEntrance"  # Z
    .param p5, "attr"  # I

    .line 1081
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isMzWindowMode()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1082
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 1083
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x1

    if-eq p3, v1, :cond_22

    const/4 v1, 0x2

    if-eq p3, v1, :cond_1a

    const/4 v1, 0x3

    if-eq p3, v1, :cond_22

    const/4 v1, 0x4

    if-eq p3, v1, :cond_1a

    const/4 v1, 0x5

    if-eq p3, v1, :cond_22

    goto :goto_29

    .line 1091
    :cond_1a
    const v1, 0xa010044

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    .line 1092
    goto :goto_29

    .line 1087
    :cond_22
    const v1, 0xa010045

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    .line 1097
    .end local v0  # "context":Landroid/content/Context;
    :cond_29
    :goto_29
    return-object p2
.end method

.method public closeWindowMode(Z)V
    .registers 6
    .param p1, "anim"  # Z

    .line 1298
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    if-eqz v0, :cond_24

    .line 1299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeWindowMode: anim = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPendingShow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mPendingShow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :cond_24
    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mPendingShow:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    move v1, v2

    goto :goto_2d

    :cond_2c
    move v1, p1

    :goto_2d
    iget-boolean v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mPendingShow:Z

    if-eqz v3, :cond_33

    const/16 v2, 0xc8

    :cond_33
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->moveWindowTaskToBack(Lcom/android/server/wm/TaskStack;ZI)V

    .line 1301
    return-void
.end method

.method public computeFrameForWindowMode(Lcom/android/server/wm/WindowState;Z)I
    .registers 14
    .param p1, "windowState"  # Lcom/android/server/wm/WindowState;
    .param p2, "isImeTarget"  # Z

    .line 1052
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isMzWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_ce

    .line 1053
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v0

    .line 1054
    .local v0, "windowFrames":Lcom/android/server/wm/WindowFrames;
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 1055
    .local v2, "taskStack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 1056
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    .line 1057
    .local v4, "displayFrames":Lcom/android/server/wm/DisplayFrames;
    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->updateSurfacePosition()V

    .line 1058
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p1, v5}, Lcom/android/server/wm/PolicyControl;->getWindowFlags(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    .line 1059
    .local v5, "fl":I
    const/4 v6, 0x0

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v6, v7}, Lcom/android/server/wm/PolicyControl;->getSystemUiVisibility(Lcom/android/server/wm/WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v6

    .line 1060
    .local v6, "requestedSysUiFl":I
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    if-eqz v7, :cond_57

    .line 1061
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "computeFrameForWindowMode fl="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v8, Landroid/view/WindowManager$LayoutParams;

    const-string v9, "flags"

    invoke-static {v8, v9, v5}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",requestedSysUiFl="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v8, Landroid/view/View;

    .line 1062
    const-string v9, "mSystemUiVisibility"

    invoke-static {v8, v9, v6}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1061
    const-string v8, "WindowManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :cond_57
    and-int/lit16 v7, v5, 0x400

    if-nez v7, :cond_62

    and-int/lit8 v7, v6, 0x4

    if-eqz v7, :cond_60

    goto :goto_62

    :cond_60
    move v7, v1

    goto :goto_63

    :cond_62
    :goto_62
    const/4 v7, 0x1

    .line 1065
    .local v7, "requestedFullscreen":Z
    :goto_63
    if-eqz v7, :cond_ce

    .line 1066
    iget-object v8, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/server/wm/WindowFrames;->mVisibleFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, v4, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 1067
    iget-object v8, v0, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/server/wm/WindowFrames;->mContentFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, v4, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 1068
    const/high16 v8, 0x200000

    and-int/2addr v8, v5

    if-eqz v8, :cond_8e

    sget-boolean v8, Lcom/android/server/wm/FlymeFeatureConfig;->FLYME_FEATURE_WINDOW_MODE_FULL_SCREEN_DEBUG:Z

    if-eqz v8, :cond_ce

    .line 1069
    :cond_8e
    iget-object v8, v0, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/server/wm/WindowFrames;->mContainingFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, v4, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 1070
    iget-object v8, v0, Lcom/android/server/wm/WindowFrames;->mDecorFrame:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/server/wm/WindowFrames;->mDecorFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, v4, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 1071
    iget-object v8, v0, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, v4, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 1072
    iget-object v8, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, v4, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v8, Landroid/graphics/Rect;->top:I

    .line 1076
    .end local v0  # "windowFrames":Lcom/android/server/wm/WindowFrames;
    .end local v2  # "taskStack":Lcom/android/server/wm/TaskStack;
    .end local v3  # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v4  # "displayFrames":Lcom/android/server/wm/DisplayFrames;
    .end local v5  # "fl":I
    .end local v6  # "requestedSysUiFl":I
    .end local v7  # "requestedFullscreen":Z
    :cond_ce
    return v1
.end method

.method public getAppAnimationLayer(Lcom/android/server/wm/AppWindowToken;)Landroid/view/SurfaceControl;
    .registers 11
    .param p1, "windowToken"  # Lcom/android/server/wm/AppWindowToken;

    .line 969
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->isMzWindowMode()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 970
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getWindowModeFrame()Lcom/android/server/wm/FlymeWindowModeFrame;

    move-result-object v0

    .line 971
    .local v0, "windowModeFrame":Lcom/android/server/wm/FlymeWindowModeFrame;
    if-eqz v0, :cond_5f

    .line 972
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/android/server/wm/AppWindowToken;->getAppAnimationLayer(I)Landroid/view/SurfaceControl;

    move-result-object v1

    .line 973
    .local v1, "appAnimationLayer":Landroid/view/SurfaceControl;
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v8

    .line 974
    .local v8, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {v0}, Lcom/android/server/wm/FlymeWindowModeFrame;->getScale()F

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/android/server/wm/FlymeWindowModeFrame;->getScale()F

    move-result v7

    move-object v2, v8

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 975
    invoke-virtual {v0}, Lcom/android/server/wm/FlymeWindowModeFrame;->getDisplayBound()Landroid/graphics/Rect;

    move-result-object v2

    .line 976
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Lcom/android/server/wm/FlymeWindowModeFrame;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 977
    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v8, v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 978
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->getAppTransition()I

    move-result v3

    .line 979
    .local v3, "transit":I
    invoke-static {v3}, Lcom/android/server/wm/AppTransition;->isActivityTransit(I)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 980
    invoke-virtual {v0}, Lcom/android/server/wm/FlymeWindowModeFrame;->getCornerRadius()F

    move-result v4

    invoke-virtual {v8, v1, v4}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_5e

    .line 982
    :cond_5a
    const/4 v4, 0x0

    invoke-virtual {v8, v1, v4}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 984
    :goto_5e
    return-object v1

    .line 987
    .end local v0  # "windowModeFrame":Lcom/android/server/wm/FlymeWindowModeFrame;
    .end local v1  # "appAnimationLayer":Landroid/view/SurfaceControl;
    .end local v2  # "rect":Landroid/graphics/Rect;
    .end local v3  # "transit":I
    .end local v8  # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_5f
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayFrames(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)Lcom/android/server/wm/DisplayFrames;
    .registers 6
    .param p1, "win"  # Lcom/android/server/wm/WindowState;
    .param p2, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;

    .line 1045
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 1046
    .local v0, "taskStack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getWindowModeFrame()Lcom/android/server/wm/FlymeWindowModeFrame;

    move-result-object v1

    .line 1047
    .local v1, "windowModeFrame":Lcom/android/server/wm/FlymeWindowModeFrame;
    invoke-virtual {v1, p2}, Lcom/android/server/wm/FlymeWindowModeFrame;->getDisplayFrames(Lcom/android/server/wm/DisplayFrames;)Lcom/android/server/wm/DisplayFrames;

    move-result-object v2

    return-object v2
.end method

.method public getWindowModeWindowFrame(I)Lcom/android/server/wm/FlymeWindowModeFrame;
    .registers 3
    .param p1, "rotation"  # I

    .line 553
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeFrames:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/FlymeWindowModeFrame;

    return-object v0
.end method

.method public init(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 7
    .param p1, "wms"  # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"  # Lcom/android/server/wm/DisplayContent;

    .line 595
    iput-object p1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 596
    iput-object p2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 597
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 598
    iget-object v0, p2, Lcom/android/server/wm/DisplayContent;->mAcitvityDisplay:Lcom/android/server/wm/ActivityDisplay;

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mActivityDisplay:Lcom/android/server/wm/ActivityDisplay;

    .line 599
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mActivityDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityDisplay;->registerStackOrderChangedListener(Lcom/android/server/wm/ActivityDisplay$OnStackOrderChangedListener;)V

    .line 600
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mDisplayId:I

    .line 601
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeDisplayInfo:Landroid/view/DisplayInfo;

    .line 602
    new-instance v0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;-><init>(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    .line 603
    new-instance v0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;-><init>(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mUiHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    .line 604
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mUiHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mGestureDetector:Landroid/view/GestureDetector;

    .line 605
    invoke-static {p2}, Lcom/android/server/wm/FlymeDimWindow;->getDimWindow(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/FlymeDimWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mDimWindow:Lcom/android/server/wm/FlymeDimWindow;

    .line 606
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mDimWindow:Lcom/android/server/wm/FlymeDimWindow;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/FlymeDimWindow;->registerOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 607
    invoke-static {}, Lcom/android/server/wm/FlymeWindowModeConfig;->getInstance()Lcom/android/server/wm/FlymeWindowModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeConfig:Lcom/android/server/wm/FlymeWindowModeConfig;

    .line 608
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->initWindowModeFramesIfNeed(Lcom/android/server/wm/DisplayContent;)Z

    .line 609
    invoke-direct {p0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->startProviders()V

    .line 610
    return-void
.end method

.method public isLaunchInSpaceMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z
    .registers 14
    .param p1, "activity"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reusedActivity"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "source"  # Lcom/android/server/wm/ActivityRecord;
    .param p4, "options"  # Landroid/app/ActivityOptions;
    .param p5, "result"  # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 1030
    invoke-virtual {p5}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredDisplay()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget v0, p5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    goto :goto_b

    :cond_a
    move v0, v1

    .line 1031
    .local v0, "displayId":I
    :goto_b
    if-nez v0, :cond_30

    .line 1032
    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeConfig:Lcom/android/server/wm/FlymeWindowModeConfig;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/FlymeWindowModeConfig;->isLaunchInSpaceMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z

    move-result v2

    .line 1033
    .local v2, "inSpaceMode":Z
    const/4 v3, 0x1

    if-eqz v2, :cond_25

    iget-object v4, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mSpaceModeManger:Lcom/android/server/wm/FlymeSpaceModeManger;

    invoke-virtual {v4, p2, p1}, Lcom/android/server/wm/FlymeSpaceModeManger;->addSpaceMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_25

    move v4, v3

    goto :goto_26

    :cond_25
    move v4, v1

    :goto_26
    move v2, v4

    .line 1034
    if-eqz v2, :cond_30

    .line 1035
    const/4 v1, 0x6

    iput v1, p5, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 1036
    invoke-virtual {p4, v1}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 1037
    return v3

    .line 1040
    .end local v2  # "inSpaceMode":Z
    :cond_30
    return v1
.end method

.method public isWindowMode(Landroid/os/IBinder;)Z
    .registers 4
    .param p1, "token"  # Landroid/os/IBinder;

    .line 585
    if-nez p1, :cond_5

    .line 586
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mLastInWindowMode:Z

    return v0

    .line 588
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v0

    .line 589
    .local v0, "appWindowToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isMzWindowMode()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1
.end method

.method public synthetic lambda$registerWindowModeListener$4$FlymeWindowModeControllerImpl(Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;)V
    .registers 4
    .param p1, "callbackClient"  # Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;

    .line 899
    iget-boolean v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mLastInWindowMode:Z

    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mSendClientBundle:Landroid/os/Bundle;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->notifyWindowChangeToClient(Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;ZLandroid/os/Bundle;)V

    return-void
.end method

.method public moveTasksToFullscreen(Lcom/android/server/wm/TaskStack;Z)V
    .registers 9
    .param p1, "taskStack"  # Lcom/android/server/wm/TaskStack;
    .param p2, "anim"  # Z

    .line 417
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->postMessage(ILcom/android/server/wm/TaskStack;ZZI)V

    .line 418
    return-void
.end method

.method public moveWindowTaskToBack(Lcom/android/server/wm/TaskStack;ZZI)V
    .registers 13
    .param p1, "taskStack"  # Lcom/android/server/wm/TaskStack;
    .param p2, "anim"  # Z
    .param p3, "notMovePosition"  # Z
    .param p4, "delay"  # I

    .line 529
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->removeMessages(I)V

    .line 530
    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    const/4 v3, 0x2

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->postMessage(ILcom/android/server/wm/TaskStack;ZZI)V

    .line 531
    return-void
.end method

.method public onActivityStackMoveToBack(Lcom/android/server/wm/ActivityStack;)V
    .registers 6
    .param p1, "activityStack"  # Lcom/android/server/wm/ActivityStack;

    .line 708
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isMzWindowMode()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 709
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    if-eqz v0, :cond_20

    .line 710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityStackMoveToBack activityStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_20
    iget-object v0, p1, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/TaskStack;->mDeferBack:Z

    .line 713
    iget-object v0, p1, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->setAlwaysOnTop(Z)V

    .line 714
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mActivityDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v0

    if-le v0, v1, :cond_51

    .line 715
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mActivityDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityDisplay;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityDisplay;->getChildAt(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    .line 716
    .local v0, "nextTopStack":Lcom/android/server/wm/ActivityStack;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->isMzWindowMode()Z

    move-result v1

    if-nez v1, :cond_51

    .line 717
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStack;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 718
    .local v1, "topResumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_51

    .line 719
    iget-object v2, p1, Lcom/android/server/wm/ActivityStack;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const-string v3, "moveWindowTaskToBack"

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 723
    .end local v0  # "nextTopStack":Lcom/android/server/wm/ActivityStack;
    .end local v1  # "topResumedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_51
    invoke-direct {p0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->postNotifyWindowChangeToClient()V

    .line 724
    const/16 v0, 0x168

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->postNotifyWindowMoveToBack(I)V

    .line 726
    :cond_59
    return-void
.end method

.method public onActivityStackWindowModeChange(Lcom/android/server/wm/ActivityStack;)V
    .registers 4
    .param p1, "activityStack"  # Lcom/android/server/wm/ActivityStack;

    .line 669
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    .line 670
    .local v0, "windowMode":I
    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->notifyActivityStackModeChange(Lcom/android/server/wm/ActivityStack;Z)V

    .line 671
    return-void
.end method

.method public onAppWindowTokenAnimationLeashCreated(Lcom/android/server/wm/AppWindowToken;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 6
    .param p1, "appWindowToken"  # Lcom/android/server/wm/AppWindowToken;
    .param p2, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p3, "leash"  # Landroid/view/SurfaceControl;

    .line 848
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->removeMessages(I)V

    .line 849
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->isMzWindowMode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 850
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->setAlwaysOnTop(Z)V

    .line 852
    :cond_14
    return-void
.end method

.method public onAppWindowTokenAnimationLeashLost(Lcom/android/server/wm/AppWindowToken;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5
    .param p1, "appWindowToken"  # Lcom/android/server/wm/AppWindowToken;
    .param p2, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 837
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 838
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mDeferHideDimTokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/TaskStack;->mDeferBack:Z

    if-eqz v0, :cond_2a

    .line 839
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mDeferHideDimTokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 840
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->sendEmptyMessage(I)Z

    .line 843
    :cond_2a
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->postNotifyWindowMoveToBack(I)V

    .line 844
    return-void
.end method

.method public onCalculate(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .registers 28
    .param p1, "task"  # Lcom/android/server/wm/TaskRecord;
    .param p2, "layout"  # Landroid/content/pm/ActivityInfo$WindowLayout;
    .param p3, "activity"  # Lcom/android/server/wm/ActivityRecord;
    .param p4, "source"  # Lcom/android/server/wm/ActivityRecord;
    .param p5, "options"  # Landroid/app/ActivityOptions;
    .param p6, "phase"  # I
    .param p7, "currentParams"  # Lcom/android/server/wm/LaunchParamsController$LaunchParams;
    .param p8, "outParams"  # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 995
    move-object/from16 v1, p0

    move-object/from16 v13, p8

    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->hasPreferredDisplay()Z

    move-result v0

    const/4 v14, 0x0

    if-eqz v0, :cond_10

    move-object/from16 v15, p7

    iget v0, v15, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mPreferredDisplayId:I

    goto :goto_13

    :cond_10
    move-object/from16 v15, p7

    move v0, v14

    :goto_13
    move/from16 v16, v0

    .line 996
    .local v16, "displayId":I
    const/4 v0, 0x0

    .line 997
    .local v0, "res":I
    if-nez v16, :cond_9f

    .line 998
    if-eqz p6, :cond_9f

    .line 999
    iget v12, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    .line 1000
    .local v12, "preWindowMode":I
    const/4 v11, 0x1

    new-array v10, v11, [I

    .line 1001
    .local v10, "result":[I
    iget-object v2, v1, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeConfig:Lcom/android/server/wm/FlymeWindowModeConfig;

    iget-object v3, v1, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mActivityDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityDisplay;->getFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v17

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v18, v10

    .end local v10  # "result":[I
    .local v18, "result":[I
    move-object/from16 v10, p8

    move-object/from16 v11, v17

    move/from16 v17, v12

    .end local v12  # "preWindowMode":I
    .local v17, "preWindowMode":I
    move-object/from16 v12, v18

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/wm/FlymeWindowModeConfig;->onCalculate(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/ActivityStack;[I)I

    move-result v2

    .line 1002
    .end local v0  # "res":I
    .local v2, "res":I
    if-eqz v2, :cond_7d

    .line 1003
    iget-object v0, v1, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    .line 1005
    :try_start_4a
    iget v0, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-eqz v0, :cond_70

    .line 1006
    if-eqz p1, :cond_70

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 1007
    iget v0, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v3

    if-eq v0, v3, :cond_70

    .line 1008
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/TaskRecord;->getStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v4

    iget v5, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/wm/ActivityStack;->setWindowingMode(IZZZZZ)V
    :try_end_70
    .catchall {:try_start_4a .. :try_end_70} :catchall_76

    .line 1013
    :cond_70
    iget-object v0, v1, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    .line 1014
    goto :goto_7d

    .line 1013
    :catchall_76
    move-exception v0

    iget-object v3, v1, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    throw v0

    .line 1016
    :cond_7d
    :goto_7d
    aget v0, v18, v14

    const/4 v3, 0x1

    if-ne v0, v3, :cond_9e

    if-nez v17, :cond_9e

    iget v0, v13, Lcom/android/server/wm/LaunchParamsController$LaunchParams;->mWindowingMode:I

    if-ne v0, v3, :cond_9e

    .line 1017
    if-eqz p5, :cond_91

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->isStartWindowMode()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_9e

    .line 1018
    :cond_91
    if-eqz p3, :cond_99

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 1019
    :cond_99
    iget-object v0, v1, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mUiHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->sendEmptyMessage(I)Z

    .line 1025
    .end local v17  # "preWindowMode":I
    .end local v18  # "result":[I
    :cond_9e
    move v0, v2

    .end local v2  # "res":I
    .restart local v0  # "res":I
    :cond_9f
    return v0
.end method

.method public onConfigurationChanged(Lcom/android/server/wm/DisplayContent;II)V
    .registers 7
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "lastOrientation"  # I
    .param p3, "newOrientation"  # I

    .line 654
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_1c

    .line 655
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 656
    .local v0, "newRotation":I
    invoke-direct {p0, p1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->initWindowModeFramesIfNeed(Lcom/android/server/wm/DisplayContent;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 657
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getStacks()Lcom/android/server/wm/WindowList;

    move-result-object v1

    new-instance v2, Lcom/android/server/wm/-$$Lambda$FlymeWindowModeControllerImpl$-YcbWc-74UEuH8dfh22VmTp5PaM;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$FlymeWindowModeControllerImpl$-YcbWc-74UEuH8dfh22VmTp5PaM;-><init>(Lcom/android/server/wm/FlymeWindowModeControllerImpl;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowList;->forEach(Ljava/util/function/Consumer;)V

    .line 660
    .end local v0  # "newRotation":I
    :cond_1c
    return-void
.end method

.method public onDisplayBeginLayoutLw(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayFrames;I)V
    .registers 4
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;
    .param p3, "uiMode"  # I

    .line 665
    return-void
.end method

.method public onFocusedAppChange(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V
    .registers 6
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "oldFocus"  # Lcom/android/server/wm/AppWindowToken;
    .param p3, "newFocus"  # Lcom/android/server/wm/AppWindowToken;

    .line 813
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    if-eqz v0, :cond_22

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFocusedAppChange oldFocus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newFocus ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_22
    if-eqz p2, :cond_3d

    if-eqz p3, :cond_3d

    .line 817
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 818
    .local v0, "taskStack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_3d

    invoke-virtual {p3}, Lcom/android/server/wm/AppWindowToken;->isMzWindowMode()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 819
    const/16 v1, 0x168

    invoke-direct {p0, v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->postNotifyWindowMoveToBack(I)V

    .line 820
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mPendingShow:Z

    .line 823
    .end local v0  # "taskStack":Lcom/android/server/wm/TaskStack;
    :cond_3d
    return-void
.end method

.method public onKeyguardState(Z)V
    .registers 3
    .param p1, "showing"  # Z

    .line 559
    invoke-static {}, Lcom/android/server/wm/FlymeWindowModeConfig;->getInstance()Lcom/android/server/wm/FlymeWindowModeConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/FlymeWindowModeConfig;->setKeyguardShowing(Z)V

    .line 560
    return-void
.end method

.method public onPowerKeyDown(Z)V
    .registers 4
    .param p1, "isScreenOn"  # Z

    .line 564
    if-nez p1, :cond_7

    .line 565
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->moveWindowTaskToBack(Lcom/android/server/wm/TaskStack;ZI)V

    .line 567
    :cond_7
    return-void
.end method

.method public onRecentsAnimationFinish()V
    .registers 1

    .line 571
    invoke-direct {p0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->resetWindowMode()V

    .line 572
    return-void
.end method

.method public onScreenTurningState(I)V
    .registers 5
    .param p1, "state"  # I

    .line 576
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1b

    .line 577
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 578
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->moveWindowTaskToBackInner(Lcom/android/server/wm/TaskStack;ZZ)V

    .line 579
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_1b

    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 581
    :cond_1b
    :goto_1b
    return-void
.end method

.method public onStackOrderChanged(Lcom/android/server/wm/ActivityStack;)V
    .registers 6
    .param p1, "stack"  # Lcom/android/server/wm/ActivityStack;

    .line 856
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    if-eqz v0, :cond_1a

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStackOrderChanged stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_1a
    if-eqz p1, :cond_62

    .line 860
    invoke-direct {p0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->postNotifyWindowChangeToClient()V

    .line 861
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 862
    .local v0, "taskStack":Lcom/android/server/wm/TaskStack;
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mActivityDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityDisplay;->isTopStack(Lcom/android/server/wm/ActivityStack;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 863
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->removeMessages(I)V

    .line 864
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isMzWindowMode()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 865
    iget-boolean v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mPendingShow:Z

    if-eqz v1, :cond_62

    .line 866
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->updateWindowModeShowState(Z)V

    goto :goto_62

    .line 869
    :cond_43
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mPendingShow:Z

    .line 870
    if-eqz v0, :cond_62

    .line 871
    const/16 v1, 0x168

    invoke-direct {p0, v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->postNotifyWindowMoveToBack(I)V

    goto :goto_62

    .line 875
    :cond_4e
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->isMzWindowMode()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 876
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mActivityDisplay:Lcom/android/server/wm/ActivityDisplay;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityDisplay;->getIndexOf(Lcom/android/server/wm/ActivityStack;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_62

    .line 877
    iget-object v1, p1, Lcom/android/server/wm/ActivityStack;->mTaskStack:Lcom/android/server/wm/TaskStack;

    invoke-direct {p0, v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->removePackageWindowModeCache(Lcom/android/server/wm/TaskStack;)V

    .line 882
    .end local v0  # "taskStack":Lcom/android/server/wm/TaskStack;
    :cond_62
    :goto_62
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->removeMessages(I)V

    .line 883
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    const-wide/16 v2, 0x168

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->sendEmptyMessageDelayed(IJ)Z

    .line 884
    return-void
.end method

.method public onTaskStackAnimationLeashCreated(Lcom/android/server/wm/TaskStack;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "taskStack"  # Lcom/android/server/wm/TaskStack;
    .param p2, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p3, "leash"  # Landroid/view/SurfaceControl;

    .line 540
    return-void
.end method

.method public onTaskStackAnimationLeashLost(Lcom/android/server/wm/TaskStack;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5
    .param p1, "taskStack"  # Lcom/android/server/wm/TaskStack;
    .param p2, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 544
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 545
    iget-boolean v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mPendingShow:Z

    if-eqz v1, :cond_10

    .line 546
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->setTaskStackVisibility(Lcom/android/server/wm/TaskStack;Z)V

    .line 548
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 549
    return-void

    .line 548
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"  # Landroid/view/View;
    .param p2, "event"  # Landroid/view/MotionEvent;

    .line 1305
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowRemove(Lcom/android/server/wm/WindowState;)V
    .registers 6
    .param p1, "win"  # Lcom/android/server/wm/WindowState;

    .line 280
    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_17

    .line 281
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    const/4 v1, 0x7

    iget v2, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x168

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 283
    :cond_17
    return-void
.end method

.method public registerWindowModeListener(Lflyme/view/IWindowModeCallback;)V
    .registers 9
    .param p1, "callback"  # Lflyme/view/IWindowModeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 888
    if-eqz p1, :cond_6f

    .line 889
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    if-eqz v0, :cond_1c

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerWindowModeListener callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_1c
    new-instance v0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;-><init>(IILflyme/view/IWindowModeCallback;)V

    .line 893
    .local v0, "callbackClient":Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;
    const/4 v1, 0x0

    .line 894
    .local v1, "isAdd":Z
    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeCallbackClients:Ljava/util/List;

    monitor-enter v2

    .line 895
    :try_start_2d
    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeCallbackClients:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_54

    .line 896
    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeCallbackClients:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 897
    iget-object v3, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 898
    .local v3, "taskStack":Lcom/android/server/wm/TaskStack;
    if-eqz v3, :cond_46

    const/4 v5, 0x1

    goto :goto_47

    :cond_46
    move v5, v4

    :goto_47
    iput-boolean v5, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mLastInWindowMode:Z

    .line 899
    iget-object v5, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    new-instance v6, Lcom/android/server/wm/-$$Lambda$FlymeWindowModeControllerImpl$yqDtOUp33Ho_KsJ0SJrkkx550RE;

    invoke-direct {v6, p0, v0}, Lcom/android/server/wm/-$$Lambda$FlymeWindowModeControllerImpl$yqDtOUp33Ho_KsJ0SJrkkx550RE;-><init>(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;)V

    invoke-virtual {v5, v6}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->post(Ljava/lang/Runnable;)Z

    .line 900
    const/4 v1, 0x1

    .line 902
    .end local v3  # "taskStack":Lcom/android/server/wm/TaskStack;
    :cond_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_2d .. :try_end_55} :catchall_6c

    .line 903
    if-eqz v1, :cond_6f

    .line 904
    new-instance v2, Lcom/android/server/wm/FlymeWindowModeControllerImpl$BinderDeath;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-direct {v2, p0, v3, v5, v0}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$BinderDeath;-><init>(Lcom/android/server/wm/FlymeWindowModeControllerImpl;IILcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;)V

    .line 905
    .local v2, "binderDeath":Lcom/android/server/wm/FlymeWindowModeControllerImpl$BinderDeath;
    invoke-interface {p1}, Lflyme/view/IWindowModeCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    goto :goto_6f

    .line 902
    .end local v2  # "binderDeath":Lcom/android/server/wm/FlymeWindowModeControllerImpl$BinderDeath;
    :catchall_6c
    move-exception v3

    :try_start_6d
    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v3

    .line 908
    .end local v0  # "callbackClient":Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;
    .end local v1  # "isAdd":Z
    :cond_6f
    :goto_6f
    return-void
.end method

.method removeActivityStackDelay(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/WindowProcessController;ZI)V
    .registers 10
    .param p1, "activityStack"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "app"  # Lcom/android/server/wm/WindowProcessController;
    .param p3, "needScale"  # Z
    .param p4, "delay"  # I

    .line 1267
    if-eqz p1, :cond_1a

    .line 1268
    if-eqz p3, :cond_b

    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getCurrentAnimatorScale()F

    move-result v0

    goto :goto_d

    :cond_b
    const/high16 v0, 0x3f800000  # 1.0f

    .line 1269
    .local v0, "scale":F
    :goto_d
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    new-instance v2, Lcom/android/server/wm/FlymeWindowModeControllerImpl$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$4;-><init>(Lcom/android/server/wm/FlymeWindowModeControllerImpl;Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/WindowProcessController;)V

    float-to-int v3, v0

    mul-int/2addr v3, p4

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1294
    .end local v0  # "scale":F
    :cond_1a
    return-void
.end method

.method public shouldRelaunchOnWindowChange(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "activityRecord"  # Lcom/android/server/wm/ActivityRecord;

    .line 964
    sget-boolean v0, Lcom/android/server/wm/FlymeFeatureConfig;->FLYME_FEATURE_WINDOW_MODE_SHOULD_RELAUNCH:Z

    return v0
.end method

.method public unregisterWindowModeListener(Lflyme/view/IWindowModeCallback;)V
    .registers 5
    .param p1, "callback"  # Lflyme/view/IWindowModeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 912
    if-eqz p1, :cond_36

    .line 913
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    if-eqz v0, :cond_1c

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterWindowModeListener callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_1c
    new-instance v0, Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;-><init>(IILflyme/view/IWindowModeCallback;)V

    .line 917
    .local v0, "callbackClient":Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeCallbackClients:Ljava/util/List;

    monitor-enter v1

    .line 918
    :try_start_2c
    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mWindowModeCallbackClients:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 919
    monitor-exit v1

    goto :goto_36

    :catchall_33
    move-exception v2

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_2c .. :try_end_35} :catchall_33

    throw v2

    .line 921
    .end local v0  # "callbackClient":Lcom/android/server/wm/FlymeWindowModeControllerImpl$IWindowModeCallbackClient;
    :cond_36
    :goto_36
    return-void
.end method

.method public updateWindowModeFrame(Lcom/android/server/wm/ActivityStack;)V
    .registers 6
    .param p1, "activityStack"  # Lcom/android/server/wm/ActivityStack;

    .line 679
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_MODE:Z

    if-eqz v0, :cond_1a

    .line 680
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWindowModeFrame activityStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowingMode()I

    move-result v0

    .line 683
    .local v0, "windowMode":I
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v1

    .line 684
    .local v1, "newRotation":I
    const/4 v2, 0x6

    const/4 v3, 0x1

    if-ne v0, v2, :cond_32

    .line 685
    invoke-virtual {p0, v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->getWindowModeWindowFrame(I)Lcom/android/server/wm/FlymeWindowModeFrame;

    move-result-object v2

    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/ActivityStack;->setWindowModeFrame(Lcom/android/server/wm/FlymeWindowModeFrame;Z)V

    goto :goto_3c

    .line 687
    :cond_32
    const/4 v2, 0x0

    if-eq v0, v3, :cond_39

    if-nez v0, :cond_38

    goto :goto_39

    :cond_38
    const/4 v3, 0x0

    :cond_39
    :goto_39
    invoke-virtual {p1, v2, v3}, Lcom/android/server/wm/ActivityStack;->setWindowModeFrame(Lcom/android/server/wm/FlymeWindowModeFrame;Z)V

    .line 689
    :goto_3c
    return-void
.end method

.method public updateWindowModeShowState(Z)V
    .registers 5
    .param p1, "show"  # Z

    .line 1262
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->removeMessages(I)V

    .line 1263
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowModeControllerImpl;->mHandler:Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/wm/FlymeWindowModeControllerImpl$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1264
    return-void
.end method
