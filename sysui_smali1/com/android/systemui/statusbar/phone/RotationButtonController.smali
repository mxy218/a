.class public Lcom/android/systemui/statusbar/phone/RotationButtonController;
.super Ljava/lang/Object;
.source "RotationButtonController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/RotationButtonController$ViewRippler;,
        Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;
    }
.end annotation


# instance fields
.field private mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

.field private final mCancelPendingRotationProposal:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mHoveringRotationSuggestion:Z

.field private mIsNavigationBarShowing:Z

.field private mLastRotationSuggestion:I

.field private mListenersRegistered:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mPendingRotationSuggestion:Z

.field private final mRemoveRotationProposal:Ljava/lang/Runnable;

.field private mRotWatcherListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRotateHideAnimator:Landroid/animation/Animator;

.field private final mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

.field private mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private final mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

.field private mStyleRes:I

.field private mTaskStackListener:Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;

.field private final mViewRippler:Lcom/android/systemui/statusbar/phone/RotationButtonController$ViewRippler;


# direct methods
.method constructor <init>(Landroid/content/Context;ILcom/android/systemui/statusbar/phone/RotationButton;)V
    .registers 7

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-class v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/logging/MetricsLogger;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 62
    new-instance v0, Lcom/android/systemui/statusbar/phone/RotationButtonController$ViewRippler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/RotationButtonController$ViewRippler;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;Lcom/android/systemui/statusbar/phone/RotationButtonController$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mViewRippler:Lcom/android/systemui/statusbar/phone/RotationButtonController$ViewRippler;

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mListenersRegistered:Z

    .line 75
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$9GntNFTDdKoyCtcSVI_eBCW3dMQ;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$9GntNFTDdKoyCtcSVI_eBCW3dMQ;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    .line 77
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$rLt402gKIdgNcqykKz16VIeLAMM;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$rLt402gKIdgNcqykKz16VIeLAMM;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mCancelPendingRotationProposal:Ljava/lang/Runnable;

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    .line 85
    new-instance v0, Lcom/android/systemui/statusbar/phone/RotationButtonController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController$1;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mContext:Landroid/content/Context;

    .line 118
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    .line 119
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/phone/RotationButton;->setRotationButtonController(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V

    .line 121
    iput p2, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mStyleRes:I

    const/4 p1, 0x1

    .line 122
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mIsNavigationBarShowing:Z

    .line 123
    const-class p1, Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/RotationLockController;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 124
    const-class p1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 127
    new-instance p1, Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;Lcom/android/systemui/statusbar/phone/RotationButtonController$1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mTaskStackListener:Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;

    .line 128
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$nGgIS1iCjy5uWWIfPZ9LUPKtUUc;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$nGgIS1iCjy5uWWIfPZ9LUPKtUUc;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/phone/RotationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$ITAepcsPx2pDX6xNt-4OEwYvoRc;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$ITAepcsPx2pDX6xNt-4OEwYvoRc;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/phone/RotationButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/RotationButtonController;)Landroid/os/Handler;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/RotationButtonController;)Lcom/android/systemui/statusbar/policy/RotationLockController;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/RotationButtonController;I)Z
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->shouldOverrideUserLockPrefs(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/RotationButtonController;)Ljava/util/function/Consumer;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotWatcherListener:Ljava/util/function/Consumer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/RotationButtonController;)Lcom/android/systemui/statusbar/phone/RotationButton;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    return-object p0
.end method

.method private computeRotationProposalTimeout()I
    .registers 3

    .line 386
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 387
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mHoveringRotationSuggestion:Z

    if-eqz p0, :cond_9

    const/16 p0, 0x3e80

    goto :goto_b

    :cond_9
    const/16 p0, 0x1388

    :goto_b
    const/4 v1, 0x4

    .line 386
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    move-result p0

    return p0
.end method

.method static hasDisable2RotateSuggestionFlag(I)Z
    .registers 1

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private incrementNumAcceptedRotationSuggestionsIfNeeded()V
    .registers 4

    .line 399
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "num_rotation_suggestions_accepted"

    const/4 v1, 0x0

    .line 400
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_15

    add-int/lit8 v1, v1, 0x1

    .line 405
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_15
    return-void
.end method

.method private isRotateSuggestionIntroduced()Z
    .registers 3

    .line 392
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "num_rotation_suggestions_accepted"

    .line 393
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x3

    if-lt p0, v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0
.end method

.method public static synthetic lambda$ITAepcsPx2pDX6xNt-4OEwYvoRc(Lcom/android/systemui/statusbar/phone/RotationButtonController;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->onRotateSuggestionHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$nGgIS1iCjy5uWWIfPZ9LUPKtUUc(Lcom/android/systemui/statusbar/phone/RotationButtonController;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->onRotateSuggestionClick(Landroid/view/View;)V

    return-void
.end method

.method private onRotateSuggestionClick(Landroid/view/View;)V
    .registers 3

    .line 321
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x507

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 322
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->incrementNumAcceptedRotationSuggestionsIfNeeded()V

    .line 323
    iget p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mLastRotationSuggestion:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotationLockedAtAngle(I)V

    return-void
.end method

.method private onRotateSuggestionHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    .line 327
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_10

    const/4 v1, 0x7

    if-ne p1, v1, :cond_e

    goto :goto_10

    :cond_e
    move p1, p2

    goto :goto_11

    :cond_10
    :goto_10
    move p1, v0

    .line 328
    :goto_11
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mHoveringRotationSuggestion:Z

    .line 330
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->rescheduleRotationTimeout(Z)V

    return p2
.end method

.method private onRotationSuggestionsDisabled()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 336
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    .line 337
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private rescheduleRotationTimeout(Z)V
    .registers 5

    if-eqz p1, :cond_16

    .line 373
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_d

    return-void

    .line 375
    :cond_d
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/RotationButton;->isVisible()Z

    move-result p1

    if-nez p1, :cond_16

    return-void

    .line 379
    :cond_16
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 381
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    .line 382
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->computeRotationProposalTimeout()I

    move-result p0

    int-to-long v1, p0

    .line 381
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private shouldOverrideUserLockPrefs(I)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x0

    :goto_5
    return p0
.end method

.method private showAndLogRotationSuggestion()V
    .registers 2

    const/4 v0, 0x1

    .line 341
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    const/4 v0, 0x0

    .line 342
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->rescheduleRotationTimeout(Z)V

    .line 343
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x508

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    return-void
.end method


# virtual methods
.method addRotationCallback(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotWatcherListener:Ljava/util/function/Consumer;

    return-void
.end method

.method getRotationButton()Lcom/android/systemui/statusbar/phone/RotationButton;
    .registers 1

    .line 317
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    return-object p0
.end method

.method getStyleRes()I
    .registers 1

    .line 313
    iget p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mStyleRes:I

    return p0
.end method

.method public isRotationLocked()Z
    .registers 1

    .line 172
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$new$0$RotationButtonController()V
    .registers 2

    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    return-void
.end method

.method public synthetic lambda$new$1$RotationButtonController()V
    .registers 2

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mPendingRotationSuggestion:Z

    return-void
.end method

.method onDisable2FlagChanged(I)V
    .registers 2

    .line 297
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->hasDisable2RotateSuggestionFlag(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 298
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->onRotationSuggestionsDisabled()V

    :cond_9
    return-void
.end method

.method onNavigationBarWindowVisibilityChange(Z)V
    .registers 3

    .line 302
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mIsNavigationBarShowing:Z

    if-eq v0, p1, :cond_f

    .line 303
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mIsNavigationBarShowing:Z

    if-eqz p1, :cond_f

    .line 306
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mPendingRotationSuggestion:Z

    if-eqz p1, :cond_f

    .line 307
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->showAndLogRotationSuggestion()V

    :cond_f
    return-void
.end method

.method registerListeners()V
    .registers 4

    .line 133
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mListenersRegistered:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mListenersRegistered:Z

    .line 139
    :try_start_8
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mContext:Landroid/content/Context;

    .line 140
    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1b} :catch_25

    .line 145
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mTaskStackListener:Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void

    :catch_25
    move-exception p0

    .line 142
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method setDarkIntensity(F)V
    .registers 2

    .line 248
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/RotationButton;->setDarkIntensity(F)V

    return-void
.end method

.method setRotateSuggestionButtonState(Z)V
    .registers 3

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    return-void
.end method

.method setRotateSuggestionButtonState(ZZ)V
    .registers 8

    if-nez p1, :cond_b

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/RotationButton;->isVisible()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 186
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/RotationButton;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_14

    return-void

    .line 189
    :cond_14
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/RotationButton;->getImageDrawable()Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    if-nez v1, :cond_1d

    return-void

    :cond_1d
    const/4 v2, 0x0

    .line 193
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mPendingRotationSuggestion:Z

    .line 194
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mCancelPendingRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_5d

    .line 199
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_38

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_38

    .line 200
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_38
    const/4 p1, 0x0

    .line 202
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    const/high16 p1, 0x3f800000  # 1.0f

    .line 205
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 208
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->canAnimate()Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 209
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->resetAnimation()V

    .line 210
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->startAnimation()V

    .line 213
    :cond_4c
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->isRotateSuggestionIntroduced()Z

    move-result p1

    if-nez p1, :cond_57

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mViewRippler:Lcom/android/systemui/statusbar/phone/RotationButtonController$ViewRippler;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController$ViewRippler;->start(Landroid/view/View;)V

    .line 216
    :cond_57
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/RotationButton;->show()Z

    goto :goto_a7

    .line 218
    :cond_5d
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mViewRippler:Lcom/android/systemui/statusbar/phone/RotationButtonController$ViewRippler;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController$ViewRippler;->stop()V

    if-eqz p2, :cond_79

    .line 222
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_73

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_73

    .line 223
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->pause()V

    .line 225
    :cond_73
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationButton:Lcom/android/systemui/statusbar/phone/RotationButton;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/RotationButton;->hide()Z

    return-void

    .line 230
    :cond_79
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_84

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_84

    return-void

    :cond_84
    const/4 p1, 0x1

    new-array p1, p1, [F

    const/4 p2, 0x0

    aput p2, p1, v2

    const-string p2, "alpha"

    .line 232
    invoke-static {v0, p2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    .line 233
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 234
    sget-object p2, Lcom/android/systemui/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 235
    new-instance p2, Lcom/android/systemui/statusbar/phone/RotationButtonController$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController$2;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 242
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    .line 243
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :goto_a7
    return-void
.end method

.method setRotationLockedAtAngle(I)V
    .registers 3

    .line 168
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLockedAtAngle(ZI)V

    return-void
.end method

.method unregisterListeners()V
    .registers 3

    .line 149
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mListenersRegistered:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 153
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mListenersRegistered:Z

    .line 155
    :try_start_8
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_1b

    .line 160
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController;->mTaskStackListener:Lcom/android/systemui/statusbar/phone/RotationButtonController$TaskStackListenerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void

    :catch_1b
    move-exception p0

    .line 157
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
