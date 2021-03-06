.class public abstract Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;
.super Lcom/android/systemui/statusbar/notification/row/ExpandableView;
.source "StackScrollerDecorView.java"


# instance fields
.field protected mContent:Landroid/view/View;

.field private mContentAnimating:Z

.field private final mContentVisibilityEndRunnable:Ljava/lang/Runnable;

.field private mContentVisible:Z

.field private mDuration:I

.field private mIsSecondaryVisible:Z

.field private mIsVisible:Z

.field protected mSecondaryView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsVisible:Z

    .line 37
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentVisible:Z

    .line 38
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsSecondaryVisible:Z

    const/16 p1, 0x104

    .line 39
    iput p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mDuration:I

    .line 41
    new-instance p1, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$StackScrollerDecorView$GE_2dwloJkJho6ozN7VXOOo7f2I;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/row/-$$Lambda$StackScrollerDecorView$GE_2dwloJkJho6ozN7VXOOo7f2I;-><init>(Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentVisibilityEndRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private setContentVisible(ZZ)V
    .registers 5

    .line 88
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentVisible:Z

    if-eq v0, p1, :cond_f

    .line 89
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentAnimating:Z

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentVisibilityEndRunnable:Ljava/lang/Runnable;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setViewVisible(Landroid/view/View;ZZLjava/lang/Runnable;)V

    .line 91
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentVisible:Z

    .line 92
    :cond_f
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentAnimating:Z

    if-nez p1, :cond_18

    .line 93
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentVisibilityEndRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_18
    return-void
.end method

.method private setViewVisible(Landroid/view/View;ZZLjava/lang/Runnable;)V
    .registers 6

    if-nez p1, :cond_3

    return-void

    .line 173
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p2, :cond_f

    const/high16 v0, 0x3f800000  # 1.0f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    if-nez p3, :cond_1b

    .line 176
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    if-eqz p4, :cond_1a

    .line 178
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :cond_1a
    return-void

    :cond_1b
    if-eqz p2, :cond_20

    .line 184
    sget-object p2, Lcom/android/systemui/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    goto :goto_22

    :cond_20
    sget-object p2, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 185
    :goto_22
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 186
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 187
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mDuration:I

    int-to-long p2, p0

    .line 188
    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 189
    invoke-virtual {p0, p4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method protected abstract findContentView()Landroid/view/View;
.end method

.method protected abstract findSecondaryView()Landroid/view/View;
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method isSecondaryVisible()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 145
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsSecondaryVisible:Z

    return p0
.end method

.method public isTransparent()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isVisible()Z
    .registers 1

    .line 153
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsVisible:Z

    return p0
.end method

.method public synthetic lambda$new$0$StackScrollerDecorView()V
    .registers 4

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContentAnimating:Z

    .line 43
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_18

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsVisible:Z

    if-nez v1, :cond_18

    .line 44
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 45
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setWillBeGone(Z)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->notifyHeightChanged(Z)V

    :cond_18
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 56
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->findContentView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mContent:Landroid/view/View;

    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->findSecondaryView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryView:Landroid/view/View;

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setVisible(ZZ)V

    .line 60
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setSecondaryVisible(ZZ)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 6

    .line 65
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->onLayout(ZIIII)V

    const/4 p1, 0x0

    .line 66
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public performAddAnimation(JJZ)V
    .registers 6

    const/4 p1, 0x1

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(Z)V

    return-void
.end method

.method public performRemoveAnimation(JJFZFLjava/lang/Runnable;Landroid/animation/AnimatorListenerAdapter;)J
    .registers 10

    const/4 p1, 0x0

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(Z)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public setContentVisible(Z)V
    .registers 3

    const/4 v0, 0x1

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(ZZ)V

    return-void
.end method

.method public setSecondaryVisible(ZZ)V
    .registers 5

    .line 137
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsSecondaryVisible:Z

    if-eq v0, p1, :cond_c

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mSecondaryView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setViewVisible(Landroid/view/View;ZZLjava/lang/Runnable;)V

    .line 139
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsSecondaryVisible:Z

    :cond_c
    return-void
.end method

.method public setVisible(ZZ)V
    .registers 4

    .line 110
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsVisible:Z

    if-eq v0, p1, :cond_2f

    .line 111
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->mIsVisible:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1d

    const/4 p2, 0x1

    if-eqz p1, :cond_16

    .line 114
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setWillBeGone(Z)V

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->notifyHeightChanged(Z)V

    goto :goto_19

    .line 118
    :cond_16
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setWillBeGone(Z)V

    .line 120
    :goto_19
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(ZZ)V

    goto :goto_2f

    :cond_1d
    if-eqz p1, :cond_21

    move p2, v0

    goto :goto_23

    :cond_21
    const/16 p2, 0x8

    .line 122
    :goto_23
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 123
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/row/StackScrollerDecorView;->setContentVisible(ZZ)V

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setWillBeGone(Z)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->notifyHeightChanged(Z)V

    :cond_2f
    :goto_2f
    return-void
.end method
