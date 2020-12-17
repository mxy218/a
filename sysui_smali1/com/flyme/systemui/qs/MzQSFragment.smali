.class public Lcom/flyme/systemui/qs/MzQSFragment;
.super Lcom/android/systemui/util/LifecycleFragment;
.source "MzQSFragment.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QS;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field private final mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

.field private mContainer:Lcom/flyme/systemui/qs/MzQSContainer;

.field private mDelay:J

.field protected mHeader:Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;

.field private mHeaderAnimating:Z

.field private final mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

.field private mKeyguardShowing:Z

.field private mLastQSExpansion:F

.field private mLayoutDirection:I

.field private mListening:Z

.field private mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

.field private mQSDetail:Lcom/flyme/systemui/qs/MzQSDetail;

.field protected mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQsDisabled:Z

.field private mQsExpanded:Z

.field private final mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

.field private mStackScrollerOverscrolling:Z

.field private final mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;Lcom/android/systemui/util/InjectionInflationController;Landroid/content/Context;Lcom/android/systemui/qs/QSTileHost;)V
    .registers 6
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/util/LifecycleFragment;-><init>()V

    const/high16 v0, -0x40800000  # -1.0f

    .line 70
    iput v0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mLastQSExpansion:F

    .line 379
    new-instance v0, Lcom/flyme/systemui/qs/MzQSFragment$2;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/MzQSFragment$2;-><init>(Lcom/flyme/systemui/qs/MzQSFragment;)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 396
    new-instance v0, Lcom/flyme/systemui/qs/MzQSFragment$3;

    invoke-direct {v0, p0}, Lcom/flyme/systemui/qs/MzQSFragment$3;-><init>(Lcom/flyme/systemui/qs/MzQSFragment;)V

    iput-object v0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    .line 82
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    .line 83
    iput-object p2, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

    .line 84
    const-class p1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p3, p1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/util/LifecycleFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p2

    invoke-interface {p1, p2, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/Lifecycle;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iput-object p4, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method

.method static synthetic access$002(Lcom/flyme/systemui/qs/MzQSFragment;Z)Z
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mHeaderAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/flyme/systemui/qs/MzQSFragment;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSFragment;->updateQsState()V

    return-void
.end method

.method static synthetic access$200(Lcom/flyme/systemui/qs/MzQSFragment;)Landroid/animation/Animator$AnimatorListener;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/flyme/systemui/qs/MzQSFragment;)J
    .registers 3

    .line 49
    iget-wide v0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mDelay:J

    return-wide v0
.end method

.method private updateQsState()V
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean p0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQsExpanded:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/QSPanel;->setExpanded(Z)V

    return-void
.end method


# virtual methods
.method public animateHeaderSlidingIn(J)V
    .registers 5

    const-string v0, "QS"

    const-string v1, "animateHeaderSlidingIn"

    .line 299
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-boolean v0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQsExpanded:Z

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    .line 303
    iput-boolean v0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mHeaderAnimating:Z

    .line 304
    iput-wide p1, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mDelay:J

    .line 305
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_1d
    return-void
.end method

.method public animateHeaderSlidingOut()V
    .registers 4

    const-string v0, "QS"

    const-string v1, "animateHeaderSlidingOut"

    .line 311
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 312
    iput-boolean v0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mHeaderAnimating:Z

    .line 313
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mHeader:Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 314
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x168

    .line 315
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 316
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/qs/MzQSFragment$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/qs/MzQSFragment$1;-><init>(Lcom/flyme/systemui/qs/MzQSFragment;)V

    .line 317
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 329
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public closeDetail()V
    .registers 1

    .line 339
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->closeDetail()V

    return-void
.end method

.method public disable(IIIZ)V
    .registers 6

    .line 187
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-eq p1, v0, :cond_b

    return-void

    .line 190
    :cond_b
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mRemoteInputQuickSettingsDisabler:Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;

    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/policy/RemoteInputQuickSettingsDisabler;->adjustDisableFlags(I)I

    move-result p1

    and-int/lit8 p3, p1, 0x1

    if-eqz p3, :cond_17

    const/4 p3, 0x1

    goto :goto_18

    :cond_17
    const/4 p3, 0x0

    .line 193
    :goto_18
    iget-boolean v0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQsDisabled:Z

    if-ne p3, v0, :cond_1d

    return-void

    .line 194
    :cond_1d
    iput-boolean p3, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQsDisabled:Z

    .line 195
    iget-object p3, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mContainer:Lcom/flyme/systemui/qs/MzQSContainer;

    invoke-virtual {p3, p2, p1, p4}, Lcom/flyme/systemui/qs/MzQSContainer;->disable(IIZ)V

    .line 196
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSFragment;->updateQsState()V

    return-void
.end method

.method public getDesiredHeight()I
    .registers 3

    .line 359
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mHeader:Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0}, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->getExpandedHeight()I

    move-result v0

    iget-object v1, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getDesiredHeight()I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getHeader()Landroid/view/View;
    .registers 1

    .line 154
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mHeader:Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;

    return-object p0
.end method

.method public getQsMinExpansionHeight()I
    .registers 1

    .line 370
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mHeader:Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getQsPanel()Lcom/android/systemui/qs/QSPanel;
    .registers 1

    .line 214
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object p0
.end method

.method public hideImmediately()V
    .registers 2

    .line 375
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 376
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mHeader:Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method public isCustomizing()Z
    .registers 1

    .line 177
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isShowingCustomize()Z

    move-result p0

    return p0
.end method

.method isExpanded()Z
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 149
    iget-boolean p0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQsExpanded:Z

    return p0
.end method

.method isListening()Z
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 144
    iget-boolean p0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mListening:Z

    return p0
.end method

.method public isShowingDetail()Z
    .registers 1

    .line 219
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQSDetail:Lcom/flyme/systemui/qs/MzQSDetail;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/flyme/systemui/qs/MzQSDetail;->isShowingDetail()Z

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public notifyCustomizeChanged()V
    .registers 3

    .line 344
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mContainer:Lcom/flyme/systemui/qs/MzQSContainer;

    invoke-virtual {v0}, Lcom/flyme/systemui/qs/MzQSContainer;->updateExpansion()V

    .line 345
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/flyme/systemui/qs/MzQSFragment;->isCustomizing()Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x0

    goto :goto_10

    :cond_f
    const/4 v1, 0x4

    :goto_10
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 348
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS$HeightListener;->onQsHeightChanged()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    .line 164
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 165
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iget v1, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mLayoutDirection:I

    if-eq v0, v1, :cond_11

    .line 166
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iput p1, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mLayoutDirection:I

    :cond_11
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6
    .param p2  # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 92
    iget-object p3, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mInjectionInflater:Lcom/android/systemui/util/InjectionInflationController;

    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 93
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$style;->qs_theme:I

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 92
    invoke-virtual {p3, p0}, Lcom/android/systemui/util/InjectionInflationController;->injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p0

    .line 94
    sget p1, Lcom/android/systemui/R$layout;->flyme_qs_panel:I

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .registers 2

    .line 123
    invoke-super {p0}, Lcom/android/systemui/util/LifecycleFragment;->onDestroy()V

    .line 124
    iget-boolean v0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mListening:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, v0}, Lcom/flyme/systemui/qs/MzQSFragment;->setListening(Z)V

    :cond_b
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 224
    invoke-virtual {p0}, Lcom/flyme/systemui/qs/MzQSFragment;->isCustomizing()Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 131
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 132
    iget-boolean v0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQsExpanded:Z

    const-string v1, "expanded"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    iget-boolean v0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mListening:Z

    const-string v1, "listening"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    iget-boolean v0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQsExpanded:Z

    if-eqz v0, :cond_1e

    .line 135
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->saveInstanceState(Landroid/os/Bundle;)V

    .line 138
    :cond_1e
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mContainer:Lcom/flyme/systemui/qs/MzQSContainer;

    invoke-virtual {p0}, Lcom/flyme/systemui/qs/MzQSContainer;->getHeightOverride()I

    move-result p0

    const-string v0, "height_override"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4
    .param p2  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 99
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 100
    sget v0, Lcom/android/systemui/R$id;->quick_settings_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iput-object v0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 102
    sget v0, Lcom/android/systemui/R$id;->header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;

    iput-object v0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mHeader:Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;

    .line 103
    sget v0, Lcom/android/systemui/R$id;->quick_settings_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/flyme/systemui/qs/MzQSContainer;

    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mContainer:Lcom/flyme/systemui/qs/MzQSContainer;

    if-eqz p2, :cond_51

    const-string p1, "expanded"

    .line 108
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/qs/MzQSFragment;->setExpanded(Z)V

    const/4 p1, 0x1

    .line 110
    invoke-virtual {p0, p1}, Lcom/flyme/systemui/qs/MzQSFragment;->setListening(Z)V

    .line 111
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mContainer:Lcom/flyme/systemui/qs/MzQSContainer;

    const-string v0, "height_override"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/flyme/systemui/qs/MzQSContainer;->setHeightOverride(I)V

    const-string p1, "listening"

    .line 113
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/qs/MzQSFragment;->setListening(Z)V

    .line 114
    iget-boolean p1, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQsExpanded:Z

    if-eqz p1, :cond_51

    .line 115
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 118
    :cond_51
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/qs/MzQSFragment;->setHost(Lcom/android/systemui/qs/QSTileHost;)V

    return-void
.end method

.method public setContainer(Landroid/view/ViewGroup;)V
    .registers 2

    return-void
.end method

.method public setExpandClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    return-void
.end method

.method public setExpanded(Z)V
    .registers 4

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExpanded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iput-boolean p1, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQsExpanded:Z

    .line 236
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mListening:Z

    iget-boolean v1, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQsExpanded:Z

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/qs/QSPanel;->setListening(ZZ)V

    .line 237
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSFragment;->updateQsState()V

    return-void
.end method

.method public setHeaderClickable(Z)V
    .registers 3

    .line 229
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setHeaderClickable "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "QS"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setHeaderListening(Z)V
    .registers 2

    .line 270
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mHeader:Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->setListening(Z)V

    return-void
.end method

.method public setHeightOverride(I)V
    .registers 2

    .line 365
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mContainer:Lcom/flyme/systemui/qs/MzQSContainer;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/qs/MzQSContainer;->setHeightOverride(I)V

    return-void
.end method

.method public setHost(Lcom/android/systemui/qs/QSTileHost;)V
    .registers 4

    .line 181
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/QSPanel;->setHost(Lcom/android/systemui/qs/QSTileHost;Lcom/android/systemui/qs/customize/QSCustomizer;)V

    .line 182
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mHeader:Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;

    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1, p0}, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .registers 4

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setKeyguardShowing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iput-boolean p1, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mKeyguardShowing:Z

    const/high16 v0, -0x40800000  # -1.0f

    .line 244
    iput v0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mLastQSExpansion:F

    .line 246
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSFragment;->updateQsState()V

    .line 249
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setKeyguardShowing(Z)V

    return-void
.end method

.method public setListening(Z)V
    .registers 4

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setListening "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iput-boolean p1, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mListening:Z

    .line 264
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mHeader:Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/statusbar/phone/StatusBarHeaderView;->setListening(Z)V

    .line 265
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mListening:Z

    iget-boolean p0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQsExpanded:Z

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/qs/QSPanel;->setListening(ZZ)V

    return-void
.end method

.method public setOverscrolling(Z)V
    .registers 4

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOverscrolling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QS"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iput-boolean p1, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mStackScrollerOverscrolling:Z

    .line 257
    invoke-direct {p0}, Lcom/flyme/systemui/qs/MzQSFragment;->updateQsState()V

    return-void
.end method

.method public setPanelView(Lcom/android/systemui/plugins/qs/QS$HeightListener;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mPanelView:Lcom/android/systemui/plugins/qs/QS$HeightListener;

    return-void
.end method

.method public setQsDetail(Landroid/widget/RelativeLayout;)V
    .registers 3

    .line 412
    check-cast p1, Lcom/flyme/systemui/qs/MzQSDetail;

    iput-object p1, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQSDetail:Lcom/flyme/systemui/qs/MzQSDetail;

    .line 413
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQSDetail:Lcom/flyme/systemui/qs/MzQSDetail;

    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1, v0}, Lcom/flyme/systemui/qs/MzQSDetail;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    .line 414
    iget-object p1, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQSDetail:Lcom/flyme/systemui/qs/MzQSDetail;

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSPanel;->setQSDetail(Lcom/flyme/systemui/qs/MzQSDetail;)V

    return-void
.end method

.method public setQsExpansion(FF)V
    .registers 5

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setQSExpansion "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "QS"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object p2, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mContainer:Lcom/flyme/systemui/qs/MzQSContainer;

    invoke-virtual {p2, p1}, Lcom/flyme/systemui/qs/MzQSContainer;->setExpansion(F)V

    .line 289
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object p2

    iget v0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mLastQSExpansion:F

    invoke-virtual {p2, p1, v0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->compareFloatValue(FF)Z

    move-result p2

    if-eqz p2, :cond_35

    return-void

    .line 292
    :cond_35
    iput p1, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mLastQSExpansion:F

    .line 294
    iget-object p0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/qs/QSPanel$QSTileLayout;->setExpansion(F)V

    return-void
.end method

.method public setQsTranslation(ZFF)V
    .registers 5

    .line 407
    iget-object v0, p0, Lcom/flyme/systemui/qs/MzQSFragment;->mContainer:Lcom/flyme/systemui/qs/MzQSContainer;

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/flyme/systemui/qs/MzQSFragment;->getDesiredHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p2, p0

    add-float/2addr p3, p2

    :cond_b
    invoke-virtual {v0, p3}, Landroid/widget/FrameLayout;->setY(F)V

    return-void
.end method
