.class public Lcom/android/systemui/statusbar/phone/StatusBarWindowController;
.super Ljava/lang/Object;
.source "StatusBarWindowController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/RemoteInputController$Callback;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarWindowController$ForcePluginOpenListener;,
        Lcom/android/systemui/statusbar/phone/StatusBarWindowController$OtherwisedCollapsedListener;,
        Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final mActivityManager:Landroid/app/IActivityManager;

.field private mBarHeight:I

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mForcePluginOpenListener:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$ForcePluginOpenListener;

.field private mHasTopUi:Z

.field private mHasTopUiChanged:Z

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mKeyguardDisplayMode:Landroid/view/Display$Mode;

.field private final mKeyguardScreenRotation:Z

.field private mListener:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$OtherwisedCollapsedListener;

.field private final mLockScreenDisplayTimeout:J

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private final mLpChanged:Landroid/view/WindowManager$LayoutParams;

.field private mScreenBrightnessDoze:F

.field private mScreenBrightnessFaceRecognition:F

.field private final mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mStatusBarView:Landroid/view/ViewGroup;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/app/IActivityManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    .line 96
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCallbacks:Ljava/util/ArrayList;

    .line 98
    const-class v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 737
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 116
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContext:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    .line 118
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mActivityManager:Landroid/app/IActivityManager;

    .line 119
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->shouldEnableKeyguardScreenRotation()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mKeyguardScreenRotation:Z

    .line 120
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 121
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getScreenBrightnessDoze()F

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mScreenBrightnessDoze:F

    .line 122
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 123
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 124
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/systemui/R$integer;->config_lockScreenDisplayTimeout:I

    .line 125
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long p2, p2

    iput-wide p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLockScreenDisplayTimeout:J

    .line 126
    check-cast p5, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    const/4 p3, 0x1

    .line 127
    invoke-interface {p5, p2, p3}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;I)V

    .line 129
    invoke-interface {p6, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object p2

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object p3

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p4, Lcom/android/systemui/R$integer;->config_keyguardRefreshRate:I

    .line 137
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 139
    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p4, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarWindowController$oQ5uMbmLGGiJ-Y9OIfGd2BLwohw;

    invoke-direct {p4, p1, p3}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarWindowController$oQ5uMbmLGGiJ-Y9OIfGd2BLwohw;-><init>(ILandroid/view/Display$Mode;)V

    invoke-interface {p2, p4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 143
    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Display$Mode;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mKeyguardDisplayMode:Landroid/view/Display$Mode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .registers 14
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 105
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/WindowManager;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    .line 106
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .line 105
    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/app/IActivityManager;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/StatusBarWindowController;I)V
    .registers 2

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setStatusBarState(I)V

    return-void
.end method

.method private adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .registers 3

    .line 259
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->dozing:Z

    if-eqz p1, :cond_b

    goto :goto_11

    .line 266
    :cond_b
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, -0x1

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_20

    .line 260
    :cond_11
    :goto_11
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mKeyguardScreenRotation:Z

    if-eqz p1, :cond_1b

    .line 261
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, 0x2

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_20

    .line 263
    :cond_1b
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, 0x5

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    :goto_20
    return-void
.end method

.method private apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .registers 4

    .line 360
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 361
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyForceStatusBarVisibleFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 362
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyFocusableFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 363
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyForceShowNavigationFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 364
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->adjustScreenOrientation(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 365
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyHeight(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 366
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyUserActivityTimeout(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 367
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyInputFeatures(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 368
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 369
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyModalFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 370
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyBrightness(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 371
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyHasTopUi(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 372
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyNotTouchable(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 373
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyStatusBarColorSpaceAgnosticFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 374
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_3f

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result p1

    if-eqz p1, :cond_3f

    .line 375
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    :cond_3f
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mHasTopUi:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mHasTopUiChanged:Z

    if-eq p1, v0, :cond_57

    .line 379
    :try_start_45
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {p1, v0}, Landroid/app/IActivityManager;->setHasTopUi(Z)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4a} :catch_4b

    goto :goto_53

    :catch_4b
    move-exception p1

    const-string v0, "StatusBarWindowController"

    const-string v1, "Failed to call setHasTopUi"

    .line 381
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    :goto_53
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mHasTopUiChanged:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mHasTopUi:Z

    .line 385
    :cond_57
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->notifyStateChangedCallbacks()V

    return-void
.end method

.method private applyBrightness(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .registers 4

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceFaceRecognitionBrightness "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceFaceRecognitionBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mScreenBrightnessFaceRecognition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mScreenBrightnessFaceRecognition:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StatusBarWindowController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceFaceRecognitionBrightness:Z

    if-eqz v0, :cond_2d

    .line 427
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mScreenBrightnessFaceRecognition:F

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_3e

    .line 428
    :cond_2d
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceDozeBrightness:Z

    if-eqz p1, :cond_38

    .line 429
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mScreenBrightnessDoze:F

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_3e

    .line 431
    :cond_38
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/high16 p1, -0x40800000  # -1.0f

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    :goto_3e
    return-void
.end method

.method private applyFitsSystemWindows(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .registers 3

    .line 320
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getFitsSystemWindows()Z

    move-result v0

    if-eq v0, p1, :cond_1a

    .line 322
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 323
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestApplyInsets()V

    :cond_1a
    return-void
.end method

.method private applyFocusableFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .registers 5

    .line 271
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->statusBarFocusable:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->panelExpanded:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 272
    :goto_b
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bouncerShowing:Z

    const v2, -0x20001

    if-eqz v1, :cond_1a

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardOccluded:Z

    if-nez v1, :cond_26

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardNeedsInput:Z

    if-nez v1, :cond_26

    :cond_1a
    sget-boolean v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    if-eqz v1, :cond_22

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->remoteInputActive:Z

    if-nez v1, :cond_26

    :cond_22
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bubbleExpanded:Z

    if-eqz v1, :cond_34

    .line 275
    :cond_26
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 276
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_5a

    .line 277
    :cond_34
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z

    move-result p1

    if-nez p1, :cond_4b

    if-eqz v0, :cond_3d

    goto :goto_4b

    .line 281
    :cond_3d
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 282
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v0, v2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_5a

    .line 278
    :cond_4b
    :goto_4b
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 279
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 285
    :goto_5a
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/16 p1, 0x10

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    return-void
.end method

.method private applyForceShowNavigationFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .registers 3

    .line 289
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bouncerShowing:Z

    if-nez v0, :cond_18

    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    if-eqz v0, :cond_d

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->remoteInputActive:Z

    if-eqz p1, :cond_d

    goto :goto_18

    .line 293
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v0, -0x800001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_21

    .line 291
    :cond_18
    :goto_18
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_21
    return-void
.end method

.method private applyForceStatusBarVisibleFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .registers 3

    .line 400
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceStatusBarVisible:Z

    if-nez v0, :cond_12

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forcePluginOpen:Z

    if-eqz p1, :cond_9

    goto :goto_12

    .line 404
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 p1, p1, -0x1001

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_1a

    .line 401
    :cond_12
    :goto_12
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_1a
    return-void
.end method

.method private applyHasTopUi(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .registers 3

    .line 437
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceHasTopUi:Z

    if-nez v0, :cond_d

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->isExpanded(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_d

    :cond_b
    const/4 p1, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p1, 0x1

    :goto_e
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mHasTopUiChanged:Z

    return-void
.end method

.method private applyHeight(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .registers 3

    .line 298
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->isExpanded(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z

    move-result v0

    .line 299
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forcePluginOpen:Z

    if-eqz p1, :cond_10

    .line 300
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mListener:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$OtherwisedCollapsedListener;

    if-eqz p1, :cond_f

    .line 301
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$OtherwisedCollapsedListener;->setWouldOtherwiseCollapse(Z)V

    :cond_f
    const/4 v0, 0x1

    :cond_10
    if-eqz v0, :cond_18

    .line 306
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const/4 p1, -0x1

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1e

    .line 308
    :cond_18
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_1e
    return-void
.end method

.method private applyInputFeatures(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .registers 4

    .line 339
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->statusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->qsExpanded:Z

    if-nez v0, :cond_1c

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceUserActivity:Z

    if-nez p1, :cond_1c

    .line 342
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    goto :goto_24

    .line 345
    :cond_1c
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 p1, p1, -0x5

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    :goto_24
    return-void
.end method

.method private applyKeyguardFlags(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .registers 8

    .line 220
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardShowing:Z

    if-eqz v0, :cond_d

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_15

    .line 223
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 226
    :goto_15
    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->scrimsVisibility:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1e

    move v0, v2

    goto :goto_1f

    :cond_1e
    move v0, v3

    .line 228
    :goto_1f
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardShowing:Z

    if-nez v1, :cond_32

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->dozing:Z

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 229
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_32

    :cond_30
    move v1, v3

    goto :goto_33

    :cond_32
    :goto_32
    move v1, v2

    .line 231
    :goto_33
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->hasLiveWallpaper()Z

    move-result v4

    if-eqz v1, :cond_51

    .line 233
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->backdropShowing:Z

    if-nez v1, :cond_45

    if-eqz v0, :cond_47

    :cond_45
    if-eqz v4, :cond_51

    .line 234
    :cond_47
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x100000

    or-int/2addr v1, v5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_5b

    .line 236
    :cond_51
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v5, -0x100001

    and-int/2addr v1, v5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 239
    :goto_5b
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->dozing:Z

    if-eqz v0, :cond_6b

    if-nez v4, :cond_6b

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x80000

    or-int/2addr v1, v4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_75

    .line 242
    :cond_6b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v4, -0x80001

    and-int/2addr v1, v4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 245
    :goto_75
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mKeyguardDisplayMode:Landroid/view/Display$Mode;

    if-eqz v0, :cond_af

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_8e

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->statusBarState:I

    if-ne v0, v2, :cond_8e

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardFadingAway:Z

    if-nez v0, :cond_8e

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardGoingAway:Z

    if-nez v0, :cond_8e

    goto :goto_8f

    :cond_8e
    move v2, v3

    .line 249
    :goto_8f
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->dozing:Z

    if-nez p1, :cond_9b

    if-eqz v2, :cond_96

    goto :goto_9b

    .line 252
    :cond_96
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iput v3, p1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    goto :goto_a5

    .line 250
    :cond_9b
    :goto_9b
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mKeyguardDisplayMode:Landroid/view/Display$Mode;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getModeId()I

    move-result v0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 254
    :goto_a5
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    int-to-long p0, p0

    const-string v0, "display_mode_id"

    invoke-static {v0, p0, p1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    :cond_af
    return-void
.end method

.method private applyModalFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .registers 2

    .line 410
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->headsUpShowing:Z

    if-eqz p1, :cond_d

    .line 411
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_15

    .line 413
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, -0x21

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_15
    return-void
.end method

.method private applyNotTouchable(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .registers 2

    .line 441
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->notTouchable:Z

    if-eqz p1, :cond_d

    .line 442
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_15

    .line 444
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_15
    return-void
.end method

.method private applyStatusBarColorSpaceAgnosticFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .registers 3

    .line 351
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->isExpanded(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 352
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v0, 0x1000000

    or-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_1a

    .line 354
    :cond_10
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v0, -0x1000001

    and-int/2addr p1, v0

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_1a
    return-void
.end method

.method private applyUserActivityTimeout(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .registers 4

    .line 328
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->statusBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1d

    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->qsExpanded:Z

    if-nez v0, :cond_1d

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bouncerShowing:Z

    if-eqz p1, :cond_18

    const-wide/16 p0, 0x2710

    goto :goto_1a

    .line 332
    :cond_18
    iget-wide p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLockScreenDisplayTimeout:J

    :goto_1a
    iput-wide p0, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    goto :goto_23

    .line 334
    :cond_1d
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    :goto_23
    return-void
.end method

.method private isExpanded(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z
    .registers 2

    .line 313
    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceCollapsed:Z

    if-nez p0, :cond_24

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)Z

    move-result p0

    if-nez p0, :cond_22

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->panelVisible:Z

    if-nez p0, :cond_22

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardFadingAway:Z

    if-nez p0, :cond_22

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bouncerShowing:Z

    if-nez p0, :cond_22

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->headsUpShowing:Z

    if-nez p0, :cond_22

    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bubblesShowing:Z

    if-nez p0, :cond_22

    iget p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->scrimsVisibility:I

    if-eqz p0, :cond_24

    :cond_22
    const/4 p0, 0x1

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    :goto_25
    return p0
.end method

.method static synthetic lambda$new$0(ILandroid/view/Display$Mode;Landroid/view/Display$Mode;)Z
    .registers 4

    .line 140
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v0

    float-to-int v0, v0

    if-ne v0, p0, :cond_1d

    .line 141
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    if-ne p0, v0, :cond_1d

    .line 142
    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result p1

    if-ne p0, p1, :cond_1d

    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0
.end method

.method private setKeyguardDark(Z)V
    .registers 3

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_d

    or-int/lit8 p1, v0, 0x10

    or-int/lit16 p1, p1, 0x2000

    goto :goto_11

    :cond_d
    and-int/lit8 p1, v0, -0x11

    and-int/lit16 p1, p1, -0x2001

    .line 216
    :goto_11
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    return-void
.end method

.method private setStatusBarState(I)V
    .registers 3

    .line 518
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->statusBarState:I

    .line 519
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method private shouldEnableKeyguardScreenRotation()Z
    .registers 3

    .line 160
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "lockscreen.rot_override"

    .line 161
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_17

    sget v1, Lcom/android/systemui/R$bool;->config_enableLockScreenRotation:I

    .line 162
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_18

    :cond_17
    const/4 v0, 0x1

    :cond_18
    return v0
.end method


# virtual methods
.method public add(Landroid/view/ViewGroup;I)V
    .registers 10

    .line 176
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const v4, -0x7f7bffb8

    const/4 v5, -0x3

    move-object v0, v6

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0x10

    .line 188
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const-string v1, "StatusBar"

    .line 189
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 192
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    .line 193
    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    .line 194
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 196
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->onThemeChanged()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, "StatusBarWindowController:"

    .line 633
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mKeyguardDisplayMode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mKeyguardDisplayMode:Landroid/view/Display$Mode;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 635
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public getBubblesShowing()Z
    .registers 1

    .line 599
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bubblesShowing:Z

    return p0
.end method

.method public getForceHasTopUi()Z
    .registers 1

    .line 662
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceHasTopUi:Z

    return p0
.end method

.method public getForcePluginOpen()Z
    .registers 1

    .line 579
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forcePluginOpen:Z

    return p0
.end method

.method public getPanelExpanded()Z
    .registers 1

    .line 621
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->panelExpanded:Z

    return p0
.end method

.method public getStatusBarView()Landroid/view/ViewGroup;
    .registers 1

    .line 200
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public isShowingWallpaper()Z
    .registers 1

    .line 639
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->backdropShowing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public notifyStateChangedCallbacks()V
    .registers 6

    const/4 v0, 0x0

    .line 389
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 390
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

    if-eqz v1, :cond_24

    .line 392
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iget-boolean v3, v2, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardShowing:Z

    iget-boolean v4, v2, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardOccluded:Z

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bouncerShowing:Z

    invoke-interface {v1, v3, v4, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;->onStateChanged(ZZZ)V

    :cond_24
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_27
    return-void
.end method

.method public onRemoteInputActive(Z)V
    .registers 3

    .line 544
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->remoteInputActive:Z

    .line 545
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public onThemeChanged()V
    .registers 2

    .line 644
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    return-void

    .line 648
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {v0}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v0

    .line 650
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setKeyguardDark(Z)V

    return-void
.end method

.method public registerCallback(Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;)V
    .registers 4

    const/4 v0, 0x0

    .line 151
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 152
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_18

    return-void

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    :cond_1b
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBackdropShowing(Z)V
    .registers 3

    .line 480
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->backdropShowing:Z

    .line 481
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setBarHeight(I)V
    .registers 2

    .line 563
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    .line 564
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setBouncerShowing(Z)V
    .registers 3

    .line 475
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bouncerShowing:Z

    .line 476
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setBubbleExpanded(Z)V
    .registers 3

    .line 606
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bubbleExpanded:Z

    .line 607
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setBubblesShowing(Z)V
    .registers 3

    .line 591
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->bubblesShowing:Z

    .line 592
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .registers 3

    int-to-float p1, p1

    const/high16 v0, 0x437f0000  # 255.0f

    div-float/2addr p1, v0

    .line 204
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mScreenBrightnessDoze:F

    return-void
.end method

.method public setDozing(Z)V
    .registers 3

    .line 558
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->dozing:Z

    .line 559
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setFaceRecognitionBrightness(I)V
    .registers 4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    .line 777
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceFaceRecognitionBrightness:Z

    goto :goto_20

    :cond_9
    const/16 v0, 0x50

    if-gtz p1, :cond_e

    goto :goto_15

    :cond_e
    const/16 v1, 0xff

    if-le p1, v1, :cond_13

    goto :goto_15

    :cond_13
    add-int/lit8 v0, p1, 0xa

    :goto_15
    int-to-float p1, v0

    const/high16 v0, 0x437f0000  # 255.0f

    div-float/2addr p1, v0

    .line 786
    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mScreenBrightnessFaceRecognition:F

    .line 787
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceFaceRecognitionBrightness:Z

    .line 789
    :goto_20
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setForceDozeBrightness(Z)V
    .registers 3

    .line 553
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceDozeBrightness:Z

    .line 554
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setForceHasTopUi(Z)V
    .registers 3

    .line 666
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceHasTopUi:Z

    .line 667
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setForcePluginOpen(Z)V
    .registers 3

    .line 568
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forcePluginOpen:Z

    .line 569
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 570
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mForcePluginOpenListener:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$ForcePluginOpenListener;

    if-eqz p0, :cond_e

    .line 571
    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$ForcePluginOpenListener;->onChange(Z)V

    :cond_e
    return-void
.end method

.method public setForcePluginOpenListener(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$ForcePluginOpenListener;)V
    .registers 2

    .line 629
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mForcePluginOpenListener:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$ForcePluginOpenListener;

    return-void
.end method

.method public setForceStatusBarVisible(Z)V
    .registers 3

    .line 523
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceStatusBarVisible:Z

    .line 524
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setForceWindowCollapsed(Z)V
    .registers 3

    .line 533
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->forceCollapsed:Z

    .line 534
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setHeadsUpShowing(Z)V
    .registers 3

    .line 505
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->headsUpShowing:Z

    .line 506
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setKeyguardFadingAway(Z)V
    .registers 3

    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardFadingAway:Z

    .line 486
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setKeyguardGoingAway(Z)V
    .registers 3

    .line 657
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardGoingAway:Z

    .line 658
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setKeyguardNeedsInput(Z)V
    .registers 3

    .line 459
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardNeedsInput:Z

    .line 460
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .registers 3

    .line 454
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardOccluded:Z

    .line 455
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .registers 3

    .line 449
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->keyguardShowing:Z

    .line 450
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setNotTouchable(Z)V
    .registers 3

    .line 583
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->notTouchable:Z

    .line 584
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setPanelExpanded(Z)V
    .registers 3

    .line 538
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->panelExpanded:Z

    .line 539
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setPanelVisible(Z)V
    .registers 3

    .line 464
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->panelVisible:Z

    .line 465
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->statusBarFocusable:Z

    .line 466
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setQsExpanded(Z)V
    .registers 3

    .line 490
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->qsExpanded:Z

    .line 491
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setScrimsVisibility(I)V
    .registers 3

    .line 500
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->scrimsVisibility:I

    .line 501
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setStateListener(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$OtherwisedCollapsedListener;)V
    .registers 2

    .line 625
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mListener:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$OtherwisedCollapsedListener;

    return-void
.end method

.method public setStatusBarFocusable(Z)V
    .registers 3

    .line 470
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->statusBarFocusable:Z

    .line 471
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setWallpaperSupportsAmbientMode(Z)V
    .registers 3

    .line 510
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->wallpaperSupportsAmbientMode:Z

    .line 511
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method
