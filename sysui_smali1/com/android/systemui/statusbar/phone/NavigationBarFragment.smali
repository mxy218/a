.class public Lcom/android/systemui/statusbar/phone/NavigationBarFragment;
.super Lcom/android/systemui/util/LifecycleFragment;
.source "NavigationBarFragment.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;
    }
.end annotation


# instance fields
.field private final mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

.field private final mAssistContentObserver:Landroid/database/ContentObserver;

.field protected final mAssistManager:Lcom/android/systemui/assist/AssistManager;

.field private mAssistantAvailable:Z

.field private final mAutoDim:Ljava/lang/Runnable;

.field private mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field private mDisabledFlags1:I

.field private mDisabledFlags2:I

.field public mDisplayId:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayOn:Z

.field private mDivider:Lcom/android/systemui/stackdivider/Divider;

.field private mGameModeCallback:Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;

.field private mHandler:Landroid/os/Handler;

.field public mHomeBlockedThisTouch:Z

.field private mIsOnDefaultDisplay:Z

.field private mLastLockToAppLongPress:J

.field private mLastRotationSuggestion:I

.field private mLayoutDirection:I

.field private mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private mLocale:Ljava/util/Locale;

.field private mMagnificationObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNavBarMode:I

.field private mNavigationBarMode:I

.field protected mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mNavigationBarWindowState:I

.field private mNavigationIconHints:I

.field private mNavigationModeController:Lcom/android/systemui/statusbar/phone/NavigationModeController;

.field private final mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

.field private mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private mRealNavigationBarMode:I

.field private mRecents:Lcom/android/systemui/recents/Recents;

.field private final mRotationButtonListener:Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;

.field private final mRotationWatcher:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenDecorations:Lcom/android/systemui/ScreenDecorations;

.field private mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mSystemUiVisibility:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/assist/AssistManager;Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/statusbar/phone/NavigationModeController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .registers 12
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 254
    invoke-direct {p0}, Lcom/android/systemui/util/LifecycleFragment;-><init>()V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/4 v0, 0x0

    .line 149
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    .line 151
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    .line 170
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    .line 171
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    .line 183
    sget-object v1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHandler:Landroid/os/Handler;

    .line 185
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    .line 226
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$xnm4oWC06-iZWq-zBbKv8ubGVFU;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$xnm4oWC06-iZWq-zBbKv8ubGVFU;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationButtonListener:Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;

    .line 234
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$Wf_FUQzkbSdMD9hXKJaXOD_rVSY;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$Wf_FUQzkbSdMD9hXKJaXOD_rVSY;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoDim:Ljava/lang/Runnable;

    .line 236
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$2;

    new-instance v2, Landroid/os/Handler;

    .line 237
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistContentObserver:Landroid/database/ContentObserver;

    .line 1118
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$dxES00kAyC8r2RmY9FwTYgUhoj8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$dxES00kAyC8r2RmY9FwTYgUhoj8;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    .line 1133
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$JVziusX7tSv19aMDDuLOI-SWKI8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$JVziusX7tSv19aMDDuLOI-SWKI8;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationWatcher:Ljava/util/function/Consumer;

    .line 1140
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$3;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1263
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$5;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1285
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$6;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mGameModeCallback:Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;

    .line 1304
    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$7;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    const/4 v1, 0x4

    .line 1311
    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRealNavigationBarMode:I

    const/4 v1, 0x1

    .line 1313
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayOn:Z

    .line 255
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 256
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 257
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 258
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 259
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    .line 260
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Lcom/android/systemui/assist/AssistManager;->getAssistInfoForUser(I)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_82

    move v0, v1

    :cond_82
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistantAvailable:Z

    .line 261
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 262
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationModeController:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    .line 263
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationModeController:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->addListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .registers 1

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateScreenPinningGestures()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Z
    .registers 1

    .line 128
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistantAvailable:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)Z
    .registers 2

    .line 128
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayOn:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)Z
    .registers 2

    .line 128
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistantAvailable:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)V
    .registers 2

    .line 128
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->sendAssistantAvailability(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)I
    .registers 1

    .line 128
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/view/accessibility/AccessibilityManager;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/accessibility/AccessibilityManager;)V
    .registers 2

    .line 128
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V
    .registers 1

    .line 128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->notifyNavigationBarScreenOn()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)I
    .registers 1

    .line 128
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLastRotationSuggestion:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)Landroid/hardware/display/DisplayManager;
    .registers 1

    .line 128
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method private barMode(I)I
    .registers 4

    const/high16 p0, 0x8000000

    and-int/2addr p0, p1

    const/4 v0, 0x1

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/high16 p0, -0x80000000

    and-int/2addr p0, p1

    if-eqz p0, :cond_e

    const/4 p0, 0x2

    return p0

    :cond_e
    const p0, 0x8000001

    and-int v1, p1, p0

    if-ne v1, p0, :cond_17

    const/4 p0, 0x6

    return p0

    :cond_17
    const p0, 0x8000

    and-int/2addr p0, p1

    if-eqz p0, :cond_1f

    const/4 p0, 0x4

    return p0

    :cond_1f
    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_25

    const/4 p0, 0x3

    return p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method private checkBarModes()V
    .registers 2

    .line 1047
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mIsOnDefaultDisplay:Z

    if-eqz v0, :cond_a

    .line 1048
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->checkBarModes()V

    goto :goto_d

    .line 1050
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    :goto_d
    return-void
.end method

.method private computeBarMode(II)I
    .registers 3

    .line 619
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->barMode(I)I

    move-result p1

    .line 620
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->barMode(I)I

    move-result p0

    if-ne p1, p0, :cond_b

    const/4 p0, -0x1

    :cond_b
    return p0
.end method

.method public static create(Landroid/content/Context;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)Landroid/view/View;
    .registers 9

    .line 1178
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7e3

    const v4, 0x20840068

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1188
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NavigationBar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1190
    sget v0, Lcom/android/systemui/R$string;->nav_bar:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    .line 1191
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1192
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x1000000

    or-int/2addr v0, v2

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1194
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$layout;->navigation_bar_window:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addNavigationBar: about to add "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_61

    return-object v3

    .line 1200
    :cond_61
    invoke-static {v0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object v1

    const-class v2, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .line 1201
    invoke-virtual {v1, v2}, Lcom/android/systemui/fragments/FragmentHostManager;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    .line 1202
    new-instance v2, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$4;

    invoke-direct {v2, v1, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$4;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1217
    const-class p1, Landroid/view/WindowManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0, v0, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private initMBackListener()V
    .registers 3

    .line 1228
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 1230
    const-class v0, Lcom/flyme/systemui/statusbar/policy/GameModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/GameModeController;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/Listenable;->setListening(Z)V

    .line 1231
    const-class v0, Lcom/flyme/systemui/statusbar/policy/GameModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/GameModeController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mGameModeCallback:Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/GameModeController;->addGameModeControllerCallback(Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;)V

    .line 1233
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_31

    .line 1234
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :cond_31
    return-void
.end method

.method public static synthetic lambda$0mmLLxBq7RxotphHQB_RtYb4SpQ(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onRecentsClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$RtBTLxltRKo37YrTKiaCXCxwRDg(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onAccessibilityLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$VEqqEZFjg0f3lWOW2BJ66Oo_2aE(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onRecentsTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$X9JO9eLzlFoQkYf8XrZG-l2EMsk(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onNavigationTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$Ylizyb5K7ZQr77j1Ehc8SUjcI6E(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onAccessibilityClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$dtGeJfWz2E4_XAoQgX8peIw4kU8(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressBackRecents(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$dxES00kAyC8r2RmY9FwTYgUhoj8(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/accessibility/AccessibilityManager;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V

    return-void
.end method

.method public static synthetic lambda$eFJm5m1txtISSi8Cx3m3pc8Nvjw(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onVerticalChanged(Z)V

    return-void
.end method

.method public static synthetic lambda$oZtQ9jE1OTI8AtitIxsN6ETT4sc(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressBackHome(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$y_1OHmWTpLl8uCcO3A0Am620g94(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onHomeTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private notifyNavigationBarScreenOn()V
    .registers 1

    .line 718
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V

    return-void
.end method

.method private onAccessibilityClick(Landroid/view/View;)V
    .registers 2

    .line 929
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    .line 930
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_d

    .line 931
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    .line 930
    :goto_e
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonClicked(I)V

    return-void
.end method

.method private onAccessibilityLongClick(Landroid/view/View;)Z
    .registers 3

    .line 935
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.android.internal.intent.action.CHOOSE_ACCESSIBILITY_BUTTON"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v0, 0x10008000

    .line 936
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 937
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 p0, 0x1

    return p0
.end method

.method private onHomeTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 746
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHomeBlockedThisTouch:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_c

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eqz p1, :cond_c

    return v0

    .line 752
    :cond_c
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1f

    if-eq p1, v0, :cond_19

    const/4 v0, 0x3

    if-eq p1, v0, :cond_19

    goto :goto_47

    .line 768
    :cond_19
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->awakenDreams()V

    goto :goto_47

    .line 754
    :cond_1f
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHomeBlockedThisTouch:Z

    .line 756
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v1, Landroid/telecom/TelecomManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    if-eqz p1, :cond_47

    .line 757
    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result p1

    if-eqz p1, :cond_47

    .line 758
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result p1

    if-eqz p1, :cond_47

    const-string p1, "NavigationBar"

    const-string p2, "Ignoring HOME; there\'s a ringing incoming call. No heads up"

    .line 759
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHomeBlockedThisTouch:Z

    return v0

    :cond_47
    :goto_47
    return p2
.end method

.method private onLongPressBackHome(Landroid/view/View;)Z
    .registers 4

    .line 831
    sget v0, Lcom/android/systemui/R$id;->back:I

    sget v1, Lcom/android/systemui/R$id;->home:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressNavigationButtons(Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method private onLongPressBackRecents(Landroid/view/View;)Z
    .registers 4

    .line 835
    sget v0, Lcom/android/systemui/R$id;->back:I

    sget v1, Lcom/android/systemui/R$id;->recent_apps:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressNavigationButtons(Landroid/view/View;II)Z

    move-result p0

    return p0
.end method

.method private onLongPressNavigationButtons(Landroid/view/View;II)Z
    .registers 13

    const/4 v0, 0x0

    .line 855
    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v1

    .line 856
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    .line 857
    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->isInLockTaskMode()Z

    move-result v3
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_96

    const/4 v4, 0x1

    if-eqz v3, :cond_52

    if-nez v2, :cond_52

    .line 861
    :try_start_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 865
    iget-wide v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLastLockToAppLongPress:J
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_94

    sub-long v5, v2, v5

    const-wide/16 v7, 0xc8

    cmp-long v5, v5, v7

    if-gez v5, :cond_2b

    .line 897
    :try_start_22
    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V

    .line 899
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2a} :catch_96

    return v4

    .line 868
    :cond_2b
    :try_start_2b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, p2, :cond_4e

    .line 869
    sget p2, Lcom/android/systemui/R$id;->recent_apps:I

    if-ne p3, p2, :cond_3c

    .line 870
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p2

    goto :goto_42

    .line 871
    :cond_3c
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p2

    .line 872
    :goto_42
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->isPressed()Z

    move-result p2

    if-nez p2, :cond_4e

    move p2, v4

    goto :goto_4f

    :cond_4e
    move p2, v0

    .line 878
    :goto_4f
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLastLockToAppLongPress:J

    goto :goto_86

    .line 881
    :cond_52
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5
    :try_end_56
    .catchall {:try_start_2b .. :try_end_56} :catchall_94

    if-ne v5, p2, :cond_5a

    move p2, v4

    goto :goto_86

    :cond_5a
    if-eqz v2, :cond_67

    if-eqz v3, :cond_67

    .line 897
    :try_start_5e
    invoke-interface {v1}, Landroid/app/IActivityTaskManager;->stopSystemLockTaskMode()V

    .line 899
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateNavButtonIcons()V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_66} :catch_96

    return v4

    .line 888
    :cond_67
    :try_start_67
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p2

    if-ne p2, p3, :cond_85

    .line 889
    sget p1, Lcom/android/systemui/R$id;->recent_apps:I

    if-ne p3, p1, :cond_76

    .line 890
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressRecents()Z

    move-result p0

    goto :goto_84

    .line 891
    :cond_76
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 892
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object p1

    .line 891
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onHomeLongClick(Landroid/view/View;)Z

    move-result p0
    :try_end_84
    .catchall {:try_start_67 .. :try_end_84} :catchall_94

    :goto_84
    return p0

    :cond_85
    move p2, v0

    :goto_86
    if-eqz p2, :cond_9e

    .line 904
    :try_start_88
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/16 p0, 0x80

    .line 905
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    const/4 p0, 0x2

    .line 906
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->sendAccessibilityEvent(I)V

    return v4

    :catchall_94
    move-exception p0

    .line 899
    throw p0
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_88 .. :try_end_96} :catch_96

    :catch_96
    move-exception p0

    const-string p1, "NavigationBar"

    const-string p2, "Unable to reach activity manager"

    .line 910
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9e
    return v0
.end method

.method private onLongPressRecents()Z
    .registers 3

    .line 916
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRecents:Lcom/android/systemui/recents/Recents;

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    .line 917
    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isSplitScreenFeasible()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 918
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 920
    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_2d

    goto :goto_38

    .line 924
    :cond_2d
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/16 v0, 0x10f

    const/16 v1, 0x11e

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->toggleSplitScreenMode(II)Z

    move-result p0

    return p0

    :cond_38
    :goto_38
    const/4 p0, 0x0

    return p0
.end method

.method private onNavigationTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 779
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/AutoHideController;->checkUserAutoHide(Landroid/view/MotionEvent;)V

    const/4 p0, 0x0

    return p0
.end method

.method private onRecentsClick(Landroid/view/View;)V
    .registers 3

    .line 822
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 823
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    .line 826
    :cond_16
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->awakenDreams()V

    .line 827
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->toggleRecentApps()V

    return-void
.end method

.method private onRecentsTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    .line 808
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    and-int/lit16 p2, p2, 0xff

    if-nez p2, :cond_e

    .line 810
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->preloadRecentApps()V

    goto :goto_25

    :cond_e
    const/4 v0, 0x3

    if-ne p2, v0, :cond_17

    .line 812
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->cancelPreloadRecentApps()V

    goto :goto_25

    :cond_17
    const/4 v0, 0x1

    if-ne p2, v0, :cond_25

    .line 814
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result p1

    if-nez p1, :cond_25

    .line 815
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->cancelPreloadRecentApps()V

    :cond_25
    :goto_25
    const/4 p0, 0x0

    return p0
.end method

.method private onVerticalChanged(Z)V
    .registers 2

    .line 775
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setQsScrimEnabled(Z)V

    return-void
.end method

.method private prepareNavigationBarView()V
    .registers 4

    .line 722
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 724
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    .line 725
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$0mmLLxBq7RxotphHQB_RtYb4SpQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$0mmLLxBq7RxotphHQB_RtYb4SpQ;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 726
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$VEqqEZFjg0f3lWOW2BJ66Oo_2aE;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$VEqqEZFjg0f3lWOW2BJ66Oo_2aE;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v1, 0x1

    .line 727
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setLongClickable(Z)V

    .line 728
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$dtGeJfWz2E4_XAoQgX8peIw4kU8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$dtGeJfWz2E4_XAoQgX8peIw4kU8;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 730
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    .line 731
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setLongClickable(Z)V

    .line 733
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    .line 734
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$y_1OHmWTpLl8uCcO3A0Am620g94;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$y_1OHmWTpLl8uCcO3A0Am620g94;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 735
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$8vcstZEv0YyG7EUTK_UrsNSFXRo;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$8vcstZEv0YyG7EUTK_UrsNSFXRo;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 737
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    .line 738
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$Ylizyb5K7ZQr77j1Ehc8SUjcI6E;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$Ylizyb5K7ZQr77j1Ehc8SUjcI6E;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$RtBTLxltRKo37YrTKiaCXCxwRDg;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$RtBTLxltRKo37YrTKiaCXCxwRDg;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 740
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V

    .line 742
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateScreenPinningGestures()V

    return-void
.end method

.method private refreshLayout(I)V
    .registers 2

    .line 683
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p0, :cond_7

    .line 684
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutDirection(I)V

    :cond_7
    return-void
.end method

.method private repositionNavigationBar()V
    .registers 3

    .line 694
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_27

    .line 696
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->prepareNavigationBarView()V

    .line 698
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 699
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 698
    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_27
    :goto_27
    return-void
.end method

.method private sendAssistantAvailability(Z)V
    .registers 3

    .line 1008
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 1010
    :try_start_8
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getProxy()Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    if-eqz p1, :cond_1a

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    .line 1011
    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    .line 1010
    :goto_1b
    invoke-interface {v0, p0}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onAssistantAvailable(Z)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1e} :catch_1f

    goto :goto_26

    :catch_1f
    const-string p0, "NavigationBar"

    const-string p1, "Unable to send assistant availability data to launcher"

    .line 1013
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    :goto_26
    return-void
.end method

.method private setDisabled2Flags(I)V
    .registers 2

    .line 675
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p0, :cond_b

    .line 676
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotationButtonController()Lcom/android/systemui/statusbar/phone/RotationButtonController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->onDisable2FlagChanged(I)V

    :cond_b
    return-void
.end method

.method private shouldDisableNavbarGestures()Z
    .registers 2

    .line 689
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->isDeviceProvisioned()Z

    move-result v0

    if-eqz v0, :cond_12

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    const/high16 v0, 0x2000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p0, 0x1

    :goto_13
    return p0
.end method

.method private updateAccessibilityServicesState(Landroid/view/accessibility/AccessibilityManager;)V
    .registers 6

    const/4 p1, 0x1

    new-array v0, p1, [Z

    .line 943
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getA11yButtonState([Z)I

    move-result v0

    and-int/lit8 v1, v0, 0x10

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    move v1, p1

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_14

    goto :goto_15

    :cond_14
    move p1, v2

    .line 947
    :goto_15
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v2, v1, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setAccessibilityButtonState(ZZ)V

    .line 949
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateSystemUiStateFlags(I)V

    return-void
.end method

.method private updateScreenPinningGestures()V
    .registers 3

    .line 703
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_5

    return-void

    .line 708
    :cond_5
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isRecentsButtonVisible()Z

    move-result v0

    .line 709
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    if-eqz v0, :cond_1a

    .line 711
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$dtGeJfWz2E4_XAoQgX8peIw4kU8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$dtGeJfWz2E4_XAoQgX8peIw4kU8;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_22

    .line 713
    :cond_1a
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$oZtQ9jE1OTI8AtitIxsN6ETT4sc;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$oZtQ9jE1OTI8AtitIxsN6ETT4sc;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_22
    return-void
.end method


# virtual methods
.method public checkNavBarModes()V
    .registers 3

    .line 1062
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 1064
    :goto_10
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    return-void
.end method

.method public disable(IIIZ)V
    .registers 5

    .line 647
    iget p4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    if-eq p1, p4, :cond_5

    return-void

    :cond_5
    const/high16 p1, 0x3600000

    and-int/2addr p1, p2

    .line 655
    iget p4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    if-eq p1, p4, :cond_18

    .line 656
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    .line 657
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p1, :cond_15

    .line 658
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 660
    :cond_15
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateScreenPinningGestures()V

    .line 664
    :cond_18
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mIsOnDefaultDisplay:Z

    if-eqz p1, :cond_27

    and-int/lit8 p1, p3, 0x10

    .line 666
    iget p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    if-eq p1, p2, :cond_27

    .line 667
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    .line 668
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setDisabled2Flags(I)V

    :cond_27
    return-void
.end method

.method public disableAnimationsDuringHide(J)V
    .registers 7

    .line 1095
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutTransitionsEnabled(Z)V

    .line 1096
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$i3mhmHWtnMuMGNO528iejYx75q0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$i3mhmHWtnMuMGNO528iejYx75q0;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    const-wide/16 v2, 0x1c0

    add-long/2addr p1, v2

    invoke-virtual {v0, v1, p1, p2}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 435
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p1, :cond_2b

    const-string p1, "  mNavigationBarWindowState="

    .line 436
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 437
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    invoke-static {p1}, Landroid/app/StatusBarManager;->windowStateToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mNavigationBarMode="

    .line 438
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 439
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/BarTransitions;->modeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 440
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object p1

    const-string v0, "mNavigationBarView"

    invoke-static {p3, v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->dumpBarTransitions(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/BarTransitions;)V

    :cond_2b
    const-string p1, "  mNavigationBarView="

    .line 443
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 444
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez p0, :cond_3a

    const-string p0, "null"

    .line 445
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3d

    .line 447
    :cond_3a
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_3d
    return-void
.end method

.method public finishBarAnimations()V
    .registers 1

    .line 1115
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BarTransitions;->finishAnimations()V

    return-void
.end method

.method public getA11yButtonState([Z)I
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 973
    :try_start_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "accessibility_display_magnification_navbar_enabled"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_b} :catch_f

    if-ne v2, v1, :cond_f

    move v2, v1

    goto :goto_10

    :catch_f
    :cond_f
    move v2, v0

    .line 984
    :goto_10
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v3, -0x1

    .line 985
    invoke-virtual {p0, v3}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object p0

    .line 987
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    move v4, v2

    move v2, v0

    :goto_1e
    const/16 v5, 0x10

    if-ltz v3, :cond_3a

    .line 988
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 989
    iget v7, v6, Landroid/accessibilityservice/AccessibilityServiceInfo;->flags:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_30

    add-int/lit8 v4, v4, 0x1

    .line 993
    :cond_30
    iget v6, v6, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    if-eqz v6, :cond_37

    if-eq v6, v5, :cond_37

    move v2, v1

    :cond_37
    add-int/lit8 v3, v3, -0x1

    goto :goto_1e

    :cond_3a
    if-eqz p1, :cond_3e

    .line 1000
    aput-boolean v2, p1, v0

    :cond_3e
    if-lt v4, v1, :cond_41

    goto :goto_42

    :cond_41
    move v5, v0

    :goto_42
    const/4 p0, 0x2

    if-lt v4, p0, :cond_47

    const/16 v0, 0x20

    :cond_47
    or-int p0, v5, v0

    return p0
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;
    .registers 1

    .line 1111
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object p0

    return-object p0
.end method

.method getNavigationIconHints()I
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1223
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    return p0
.end method

.method public isNavBarWindowVisible()Z
    .registers 1

    .line 1055
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isSemiTransparent()Z
    .registers 2

    .line 1042
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public synthetic lambda$disableAnimationsDuringHide$3$NavigationBarFragment()V
    .registers 2

    .line 1096
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLayoutTransitionsEnabled(Z)V

    return-void
.end method

.method public synthetic lambda$new$0$NavigationBarFragment(Lcom/android/systemui/statusbar/phone/ContextualButton;Z)V
    .registers 3

    if-eqz p2, :cond_7

    .line 230
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    :cond_7
    return-void
.end method

.method public synthetic lambda$new$1$NavigationBarFragment()V
    .registers 2

    .line 234
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setAutoDim(Z)V

    return-void
.end method

.method public synthetic lambda$new$4$NavigationBarFragment(Ljava/lang/Integer;)V
    .registers 3

    .line 1134
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_11

    .line 1135
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->needsReorient(I)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1136
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->repositionNavigationBar()V

    :cond_11
    return-void
.end method

.method public synthetic lambda$onNavigationModeChanged$2$NavigationBarFragment()V
    .registers 1

    .line 1083
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->get(Landroid/view/View;)Lcom/android/systemui/fragments/FragmentHostManager;

    move-result-object p0

    .line 1084
    invoke-virtual {p0}, Lcom/android/systemui/fragments/FragmentHostManager;->reloadFragments()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    .line 417
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 418
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 419
    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    .line 420
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLayoutDirection:I

    if-eq v0, v1, :cond_4e

    :cond_21
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 422
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLocale:Ljava/util/Locale;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLayoutDirection:I

    .line 423
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    .line 424
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "config changed locale/LD: %s (%d) -> %s (%d)"

    .line 422
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NavigationBar"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLocale:Ljava/util/Locale;

    .line 427
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLayoutDirection:I

    .line 428
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->refreshLayout(I)V

    .line 430
    :cond_4e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->repositionNavigationBar()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 270
    invoke-super {p0, p1}, Lcom/android/systemui/util/LifecycleFragment;->onCreate(Landroid/os/Bundle;)V

    .line 271
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/util/LifecycleFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 274
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/recents/Recents;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/Recents;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRecents:Lcom/android/systemui/recents/Recents;

    .line 275
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/stackdivider/Divider;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/Divider;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    .line 276
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mWindowManager:Landroid/view/WindowManager;

    .line 277
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 278
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 279
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;

    .line 280
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mMagnificationObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mMagnificationObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "assistant"

    .line 285
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistContentObserver:Landroid/database/ContentObserver;

    .line 284
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    if-eqz p1, :cond_b0

    const-string v0, "disabled_state"

    .line 289
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    const-string v0, "disabled2_state"

    .line 290
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    const-string/jumbo v0, "system_ui_visibility"

    .line 291
    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    .line 293
    :cond_b0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->addCallback(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    .line 296
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    invoke-virtual {p1, v0, v4}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    .line 299
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 300
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateHomeChipEnableIfNeed()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    .line 324
    sget p0, Lcom/android/systemui/R$layout;->navigation_bar:I

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .registers 3

    .line 306
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleFragment;->onDestroy()V

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAccessibilityListener:Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->removeCallback(Landroid/view/accessibility/AccessibilityManager$AccessibilityServicesStateChangeListener;)V

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mMagnificationObserver:Lcom/android/systemui/statusbar/phone/NavigationBarFragment$MagnificationContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationModeController:Lcom/android/systemui/statusbar/phone/NavigationModeController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationModeController;->removeListener(Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeChangedListener;)V

    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 314
    const-class v0, Lcom/flyme/systemui/statusbar/policy/GameModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/policy/GameModeController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mGameModeCallback:Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;

    invoke-interface {v0, v1}, Lcom/flyme/systemui/statusbar/policy/GameModeController;->removeGameModeControllerCallback(Lcom/flyme/systemui/statusbar/policy/GameModeController$GameModeControllerCallback;)V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_3a

    .line 316
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :cond_3a
    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .line 394
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 395
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_26

    .line 396
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mScreenDecorations:Lcom/android/systemui/ScreenDecorations;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->removeDarkIntensityListener(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$DarkIntensityListener;)V

    .line 397
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->destroy()V

    .line 398
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->destroy(Landroid/content/Context;)V

    .line 400
    :cond_26
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->removeCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 401
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method onHomeLongClick(Landroid/view/View;)Z
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 785
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isRecentsButtonVisible()Z

    move-result v0

    if-nez v0, :cond_17

    .line 786
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 787
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onLongPressBackHome(Landroid/view/View;)Z

    move-result p0

    return p0

    .line 789
    :cond_17
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->shouldDisableNavbarGestures()Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p0, 0x0

    return p0

    .line 792
    :cond_1f
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0xef

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 793
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x5

    const-string v1, "invocation_type"

    .line 794
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 796
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/assist/AssistManager;->startAssist(Landroid/os/Bundle;)V

    .line 797
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->awakenDreams()V

    .line 799
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p0, :cond_42

    .line 800
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->abortCurrentGesture()V

    :cond_42
    const/4 p0, 0x1

    return p0
.end method

.method public onNavigationModeChanged(I)V
    .registers 4

    .line 1070
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_9

    const/16 v1, 0x8

    .line 1071
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1074
    :cond_9
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    .line 1075
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateScreenPinningGestures()V

    .line 1080
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getCurrentUserId()I

    move-result p1

    if-eqz p1, :cond_22

    .line 1082
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$NAJe_hU0PesszyJ9wLZ6PYoS4_0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$NAJe_hU0PesszyJ9wLZ6PYoS4_0;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_22
    const/4 p1, 0x1

    .line 1089
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/utils/MBackUtils;->isMBackMode(I)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/flyme/systemui/statusbar/utils/MBackUtils;->setNavigationBarMode(ZZ)V

    .line 1090
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateHomeChipEnableIfNeed()V

    return-void
.end method

.method public onRotationProposal(IZ)V
    .registers 9

    .line 512
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 513
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    .line 514
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->hasDisable2RotateSuggestionFlag(I)Z

    move-result v1

    .line 515
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 516
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotationButtonController()Lcom/android/systemui/statusbar/phone/RotationButtonController;

    move-result-object v2

    .line 517
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->getRotationButton()Lcom/android/systemui/statusbar/phone/RotationButton;

    if-eqz v1, :cond_1c

    return-void

    .line 535
    :cond_1c
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    const/4 v3, 0x1

    const-string/jumbo v4, "show_rotation_suggestions"

    invoke-static {v1, v4, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v3, :cond_31

    goto :goto_32

    :cond_31
    move v3, v2

    :goto_32
    if-nez v3, :cond_35

    return-void

    :cond_35
    const-string v1, "com.meizu.suggestion.permission.SEND_ROTATE_SUGGESTION"

    const/high16 v3, 0x10000000

    const/16 v4, 0x20

    const-string v5, "com.meizu.suggestion"

    if-eqz p2, :cond_7c

    if-ne p1, v0, :cond_42

    goto :goto_7c

    .line 550
    :cond_42
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLastRotationSuggestion:I

    .line 551
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.meizu.suggestion.action.ROTATE_SUGGESTION"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 552
    invoke-virtual {p2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    invoke-virtual {p2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 554
    invoke-virtual {p2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 555
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.systemui.ROTATION_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v3, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const-string v2, "click_action"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "rotation"

    .line 557
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 558
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string p0, "NavigationBar"

    const-string p1, "send aicy rotation broadcast."

    .line 559
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 542
    :cond_7c
    :goto_7c
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.meizu.suggestion.action.HIDE_ROTATE_SUGGESTION"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 545
    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 546
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 406
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 407
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    const-string v1, "disabled_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 408
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    const-string v1, "disabled2_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 409
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    const-string/jumbo v1, "system_ui_visibility"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 410
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p0, :cond_24

    .line 411
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->saveState(Landroid/os/Bundle;)V

    :cond_24
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 11

    .line 329
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 330
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 331
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1e

    .line 334
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    .line 335
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    if-nez v1, :cond_1b

    move v1, v0

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mIsOnDefaultDisplay:Z

    .line 338
    :cond_1e
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanel()Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAssistManager:Lcom/android/systemui/assist/AssistManager;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setComponents(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/systemui/assist/AssistManager;)V

    .line 339
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags1:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 340
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$eFJm5m1txtISSi8Cx3m3pc8Nvjw;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$eFJm5m1txtISSi8Cx3m3pc8Nvjw;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setOnVerticalChangedListener(Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;)V

    .line 341
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$X9JO9eLzlFoQkYf8XrZG-l2EMsk;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$NavigationBarFragment$X9JO9eLzlFoQkYf8XrZG-l2EMsk;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    if-eqz p2, :cond_51

    .line 343
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->restoreState(Landroid/os/Bundle;)V

    .line 345
    :cond_51
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(I)V

    .line 346
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->isNavBarWindowVisible()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWindowVisible(Z)V

    .line 348
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->prepareNavigationBarView()V

    .line 349
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    .line 351
    new-instance v5, Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v5, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.action.SCREEN_ON"

    .line 352
    invoke-virtual {v5, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.USER_SWITCHED"

    .line 353
    invoke-virtual {v5, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "com.android.systemui.ROTATION_CHANGE"

    .line 355
    invoke-virtual {v5, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 356
    invoke-virtual {v5, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 359
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->notifyNavigationBarScreenOn()V

    .line 361
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;

    invoke-virtual {p2, v1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    const/4 p2, -0x1

    .line 362
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateSystemUiStateFlags(I)V

    .line 365
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mIsOnDefaultDisplay:Z

    if-eqz p2, :cond_c7

    .line 366
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotateSuggestionButton()Lcom/android/systemui/statusbar/phone/RotationContextButton;

    move-result-object p2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationButtonListener:Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/phone/ContextualButton;->setListener(Lcom/android/systemui/statusbar/phone/ContextualButton$ContextButtonListener;)V

    .line 368
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 369
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRotationButtonController()Lcom/android/systemui/statusbar/phone/RotationButtonController;

    move-result-object p2

    .line 370
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRotationWatcher:Ljava/util/function/Consumer;

    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->addRotationCallback(Ljava/util/function/Consumer;)V

    if-eqz p1, :cond_cd

    .line 374
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->isRotationLocked()Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 375
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotationLockedAtAngle(I)V

    goto :goto_cd

    .line 378
    :cond_c7
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    .line 380
    :cond_cd
    :goto_cd
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisabledFlags2:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->setDisabled2Flags(I)V

    .line 382
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class p2, Lcom/android/systemui/ScreenDecorations;

    invoke-static {p1, p2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/ScreenDecorations;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mScreenDecorations:Lcom/android/systemui/ScreenDecorations;

    .line 384
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mScreenDecorations:Lcom/android/systemui/ScreenDecorations;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->addDarkIntensityListener(Lcom/android/systemui/statusbar/phone/NavigationBarTransitions$DarkIntensityListener;)F

    .line 387
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->initMBackListener()V

    .line 388
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/utils/MBackUtils;->isMBackMode(I)Z

    move-result p0

    invoke-static {v0, p0}, Lcom/flyme/systemui/statusbar/utils/MBackUtils;->setNavigationBarMode(ZZ)V

    return-void
.end method

.method public resetNavBarMode()V
    .registers 2

    .line 1256
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRealNavigationBarMode:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    return-void
.end method

.method public restoreSystemUiVisibilityState()V
    .registers 8

    .line 565
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->computeBarMode(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 567
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    .line 569
    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    .line 570
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    .line 572
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationVisibilityChanged(IIZIZ)V

    return-void
.end method

.method public setAutoHideController(Lcom/android/systemui/statusbar/phone/AutoHideController;)V
    .registers 2

    .line 1037
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    .line 1038
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->setNavigationBar(Lcom/android/systemui/statusbar/phone/NavigationBarFragment;)V

    return-void
.end method

.method public setImeWindowStatus(ILandroid/os/IBinder;IIZ)V
    .registers 7

    .line 456
    iget p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    if-eq p1, p2, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x2

    and-int/lit8 p2, p3, 0x2

    const/4 p3, 0x1

    if-eqz p2, :cond_d

    move p2, p3

    goto :goto_e

    :cond_d
    const/4 p2, 0x0

    .line 460
    :goto_e
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    if-eqz p4, :cond_1d

    if-eq p4, p3, :cond_1d

    if-eq p4, p1, :cond_1d

    const/4 p2, 0x3

    if-eq p4, p2, :cond_1a

    goto :goto_21

    :cond_1a
    and-int/lit8 v0, v0, -0x2

    goto :goto_21

    :cond_1d
    if-eqz p2, :cond_1a

    or-int/lit8 v0, v0, 0x1

    :goto_21
    if-eqz p5, :cond_25

    or-int/2addr p1, v0

    goto :goto_27

    :cond_25
    and-int/lit8 p1, v0, -0x3

    .line 480
    :goto_27
    iget p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    if-ne p1, p2, :cond_2c

    return-void

    .line 482
    :cond_2c
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationIconHints:I

    .line 484
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p2, :cond_35

    .line 485
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(I)V

    .line 487
    :cond_35
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkBarModes()V

    return-void
.end method

.method public setLightBarController(Lcom/android/systemui/statusbar/phone/LightBarController;)V
    .registers 2

    .line 1031
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 1032
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->setNavigationBar(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V

    return-void
.end method

.method public setNavBarMode(I)V
    .registers 2

    .line 1260
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    return-void
.end method

.method public setSystemUiVisibility(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    .registers 15

    .line 580
    iget p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    if-eq p1, p3, :cond_5

    return-void

    .line 583
    :cond_5
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    not-int p3, p5

    and-int/2addr p3, p1

    and-int p4, p2, p5

    or-int/2addr p3, p4

    xor-int p4, p3, p1

    const/4 p6, 0x0

    if-eqz p4, :cond_52

    .line 588
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mSystemUiVisibility:I

    .line 591
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p4

    const/4 p7, -0x1

    if-nez p4, :cond_1c

    move p1, p7

    goto :goto_20

    .line 592
    :cond_1c
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->computeBarMode(II)I

    move-result p1

    :goto_20
    if-eq p1, p7, :cond_24

    const/4 p3, 0x1

    move p6, p3

    :cond_24
    if-eqz p6, :cond_52

    .line 595
    iget p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    if-ne p3, p1, :cond_2e

    iget p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRealNavigationBarMode:I

    if-eq p3, p1, :cond_4d

    .line 599
    :cond_2e
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mRealNavigationBarMode:I

    .line 601
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 p4, 0x4

    if-eqz p3, :cond_3c

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/StatusBar;->isExpandedVisibleInStatusShade()Z

    move-result p3

    if-eqz p3, :cond_3c

    move p1, p4

    .line 602
    :cond_3c
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    .line 604
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    if-eq p1, p4, :cond_45

    const/4 p3, 0x6

    if-ne p1, p3, :cond_4a

    .line 606
    :cond_45
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->hideRecentsOnboarding()V

    .line 609
    :cond_4a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->checkNavBarModes()V

    .line 611
    :cond_4d
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoHideController:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->touchAutoHide()V

    :cond_52
    move v3, p6

    .line 614
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarMode:I

    move v1, p2

    move v2, p5

    move v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationVisibilityChanged(IIZIZ)V

    return-void
.end method

.method public setWindowState(III)V
    .registers 5

    .line 493
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    if-ne p1, v0, :cond_1e

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz p1, :cond_1e

    const/4 p1, 0x2

    if-ne p2, p1, :cond_1e

    iget p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    if-eq p1, p3, :cond_1e

    .line 497
    iput p3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    const/4 p1, -0x1

    .line 500
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateSystemUiStateFlags(I)V

    .line 501
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->isNavBarWindowVisible()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setWindowVisible(Z)V

    .line 504
    :cond_1e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->isNavBarWindowVisible()Z

    move-result p1

    iget p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    invoke-static {p2}, Lcom/flyme/systemui/statusbar/utils/MBackUtils;->isMBackMode(I)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/flyme/systemui/statusbar/utils/MBackUtils;->setNavigationBarMode(ZZ)V

    .line 505
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->updateHomeChipEnableIfNeed()V

    .line 506
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateTopWindowIsFullscreen()V

    return-void
.end method

.method public touchAutoDim()V
    .registers 4

    .line 1022
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->setAutoDim(Z)V

    .line 1023
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoDim:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1024
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    const/4 v1, 0x2

    if-eq v0, v1, :cond_24

    .line 1026
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mAutoDim:Ljava/lang/Runnable;

    const-wide/16 v1, 0x8ca

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_24
    return-void
.end method

.method public transitionTo(IZ)V
    .registers 3

    .line 1107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getBarTransitions()Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->transitionTo(IZ)V

    return-void
.end method

.method public updateHomeChipEnableIfNeed()V
    .registers 8

    .line 1239
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v0, :cond_a

    goto/16 :goto_a7

    :cond_a
    const/4 v0, 0x0

    const-string v1, "service.bootanim.exit"

    .line 1240
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    move v1, v2

    goto :goto_17

    :cond_16
    move v1, v0

    :goto_17
    if-eqz v1, :cond_33

    .line 1241
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 1242
    invoke-interface {v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v3

    if-nez v3, :cond_33

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1243
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v3

    if-nez v3, :cond_33

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavBarMode:I

    .line 1244
    invoke-static {v3}, Lcom/flyme/systemui/statusbar/utils/MBackUtils;->isMBackMode(I)Z

    move-result v3

    if-eqz v3, :cond_33

    move v3, v2

    goto :goto_34

    :cond_33
    move v3, v0

    .line 1245
    :goto_34
    const-class v4, Lcom/flyme/systemui/statusbar/policy/GameModeController;

    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flyme/systemui/statusbar/policy/GameModeController;

    invoke-interface {v4}, Lcom/flyme/systemui/statusbar/policy/GameModeController;->isGameMode()Z

    move-result v4

    if-eqz v4, :cond_52

    const-class v4, Lcom/flyme/systemui/statusbar/policy/GameModeController;

    .line 1246
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flyme/systemui/statusbar/policy/GameModeController;

    invoke-interface {v4}, Lcom/flyme/systemui/statusbar/policy/GameModeController;->isGameModeDisableMback()Z

    move-result v4

    if-eqz v4, :cond_52

    move v4, v2

    goto :goto_53

    :cond_52
    move v4, v0

    :goto_53
    if-eqz v3, :cond_5d

    .line 1247
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    if-eqz v3, :cond_5b

    if-nez v4, :cond_5d

    :cond_5b
    move v3, v2

    goto :goto_5e

    :cond_5d
    move v3, v0

    .line 1248
    :goto_5e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateHomeChipEnableIfNeed mBootanimExit："

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",StatusBarState:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 1249
    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",disableForGame:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mNavigationBarWindowState"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mNavigationBarWindowState:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",enable:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "NavigationBar"

    .line 1248
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_a4

    .line 1252
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayOn:Z

    if-eqz p0, :cond_a4

    move v0, v2

    :cond_a4
    invoke-static {v0}, Lcom/flyme/systemui/statusbar/utils/MBackUtils;->setHomeChipEnable(Z)V

    :cond_a7
    :goto_a7
    return-void
.end method

.method public updateSystemUiStateFlags(I)V
    .registers 8

    if-gez p1, :cond_7

    const/4 p1, 0x0

    .line 954
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->getA11yButtonState([Z)I

    move-result p1

    :cond_7
    and-int/lit8 v0, p1, 0x10

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    const/16 v3, 0x20

    and-int/2addr p1, v3

    if-eqz p1, :cond_16

    move v1, v2

    .line 958
    :cond_16
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    const/16 v5, 0x10

    invoke-virtual {p1, v5, v0, v4}, Lcom/android/systemui/recents/OverviewProxyService;->setSystemUiStateFlag(IZI)V

    .line 960
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    invoke-virtual {p1, v3, v1, v0}, Lcom/android/systemui/recents/OverviewProxyService;->setSystemUiStateFlag(IZI)V

    .line 962
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v0, 0x2

    .line 963
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->isNavBarWindowVisible()Z

    move-result v1

    xor-int/2addr v1, v2

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->mDisplayId:I

    .line 962
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/systemui/recents/OverviewProxyService;->setSystemUiStateFlag(IZI)V

    return-void
.end method
