.class public Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
.super Ljava/lang/Object;
.source "BrightnessMirrorController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;",
        ">;"
    }
.end annotation


# instance fields
.field public TRANSITION_DURATION_IN:J

.field public TRANSITION_DURATION_OUT:J

.field private mBrightnessMirror:Landroid/view/View;

.field private final mBrightnessMirrorListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mInt2Cache:[I

.field private mIsShowingMirror:Z

.field private final mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private final mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

.field private final mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

.field private final mVisibilityCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/StatusBarWindowView;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 47
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    const-wide/16 v0, 0xc8

    .line 179
    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->TRANSITION_DURATION_OUT:J

    .line 180
    iput-wide v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->TRANSITION_DURATION_IN:J

    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    .line 53
    sget v0, Lcom/android/systemui/R$id;->brightness_mirror:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    .line 54
    sget v0, Lcom/android/systemui/R$id;->notification_panel:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$$Lambda$BrightnessMirrorController$6Ez050oVQOhwQ3Mf-NjJAvUx4_k;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/-$$Lambda$BrightnessMirrorController$6Ez050oVQOhwQ3Mf-NjJAvUx4_k;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setPanelAlphaEndAction(Ljava/lang/Runnable;)V

    .line 58
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mVisibilityCallback:Ljava/util/function/Consumer;

    .line 60
    sget p2, Lcom/android/systemui/R$id;->scrim_behind:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/ScrimView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    return-void
.end method

.method private reinflate()V
    .registers 6

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 146
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 147
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->mz_brightness_mirror:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    .line 149
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 151
    :goto_2b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v4, v0, :cond_43

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;->onBrightnessMirrorReinflated(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_43
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V
    .registers 2

    .line 158
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    .line 40
    check-cast p1, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->addCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    return-void
.end method

.method public getMirror()Landroid/view/View;
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    return-object p0
.end method

.method public hideMirror()V
    .registers 7

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mVisibilityCallback:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 81
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mIsShowingMirror:Z

    if-eqz v0, :cond_3e

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->TRANSITION_DURATION_IN:J

    .line 84
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 85
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    iget-wide v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->TRANSITION_DURATION_IN:J

    sget-object v5, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/ScrimView;->animateViewAlpha(FJLandroid/view/animation/Interpolator;)V

    .line 87
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mIsShowingMirror:Z

    :cond_3e
    return-void
.end method

.method public synthetic lambda$new$0$BrightnessMirrorController()V
    .registers 2

    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .registers 1

    .line 141
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->reinflate()V

    return-void
.end method

.method public onOverlayChanged()V
    .registers 1

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->reinflate()V

    return-void
.end method

.method public onUiModeChanged()V
    .registers 1

    .line 168
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->reinflate()V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V
    .registers 2

    .line 164
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirrorListeners:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .registers 2

    .line 40
    check-cast p1, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->removeCallback(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController$BrightnessMirrorListener;)V

    return-void
.end method

.method public setLocation(Landroid/view/View;)V
    .registers 7

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 98
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v2, p1

    .line 99
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 100
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 101
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 102
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    aget p1, p1, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    .line 103
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mInt2Cache:[I

    aget v1, v1, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    .line 104
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    sub-int/2addr v0, p1

    int-to-float p1, v0

    invoke-virtual {v3, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 105
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    sub-int/2addr v2, v1

    int-to-float p1, v2

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public showMirror()V
    .registers 7

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mVisibilityCallback:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    iget-wide v3, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->TRANSITION_DURATION_OUT:J

    sget-object v5, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/ScrimView;->animateViewAlpha(FJLandroid/view/animation/Interpolator;)V

    .line 72
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mIsShowingMirror:Z

    return-void
.end method

.method public updateResources()V
    .registers 7

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    .line 114
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 116
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_42

    .line 117
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->qs_brightness_height_landscape:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 119
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->qs_brightness_padding_side_landscape:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    .line 120
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->qs_brightness_padding_side_landscape:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 119
    invoke-virtual {v1, v3, v2, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_6b

    .line 122
    :cond_42
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->qs_brightness_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 124
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->qs_brightness_padding_side:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    .line 125
    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->qs_brightness_padding_side:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 124
    invoke-virtual {v1, v3, v2, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 127
    :goto_6b
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getPanelWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 129
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 132
    sget v2, Lcom/android/systemui/R$integer;->notification_panel_layout_gravity:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 133
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->mBrightnessMirror:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
