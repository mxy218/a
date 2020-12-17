.class public Lcom/meizu/common/widget/FlymeListView;
.super Landroid/widget/ListView;
.source "FlymeListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/FlymeListView$ScrollItem;,
        Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;,
        Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;
    }
.end annotation


# static fields
.field private static INVALUE_VALUE:F = 3.4028235E38f


# instance fields
.field private mCurrentTouchPosition:F

.field private mEnableParallax:Z

.field private mLastTouchPosition:F

.field private mMoveLength:F

.field private mParallaxAnimationListener:Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;

.field private mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

.field private mViewHolderHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 36
    sget p1, Lcom/meizu/common/widget/FlymeListView;->INVALUE_VALUE:F

    iput p1, p0, Lcom/meizu/common/widget/FlymeListView;->mMoveLength:F

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/meizu/common/widget/FlymeListView;->mEnableParallax:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    sget p1, Lcom/meizu/common/widget/FlymeListView;->INVALUE_VALUE:F

    iput p1, p0, Lcom/meizu/common/widget/FlymeListView;->mMoveLength:F

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/meizu/common/widget/FlymeListView;->mEnableParallax:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    sget p1, Lcom/meizu/common/widget/FlymeListView;->INVALUE_VALUE:F

    iput p1, p0, Lcom/meizu/common/widget/FlymeListView;->mMoveLength:F

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/meizu/common/widget/FlymeListView;->mEnableParallax:Z

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/FlymeListView;)Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/meizu/common/widget/FlymeListView;->mParallaxAnimationListener:Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;

    return-object p0
.end method

.method static synthetic access$300()F
    .registers 1

    .line 23
    sget v0, Lcom/meizu/common/widget/FlymeListView;->INVALUE_VALUE:F

    return v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 82
    iget-boolean v0, p0, Lcom/meizu/common/widget/FlymeListView;->mEnableParallax:Z

    if-eqz v0, :cond_91

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/FlymeListView;->mCurrentTouchPosition:F

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_68

    if-eq v0, v1, :cond_5a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_18

    goto/16 :goto_8d

    .line 97
    :cond_18
    iget v0, p0, Lcom/meizu/common/widget/FlymeListView;->mMoveLength:F

    sget v2, Lcom/meizu/common/widget/FlymeListView;->INVALUE_VALUE:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_8d

    .line 98
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_39

    iget v0, p0, Lcom/meizu/common/widget/FlymeListView;->mLastTouchPosition:F

    iget v1, p0, Lcom/meizu/common/widget/FlymeListView;->mCurrentTouchPosition:F

    sub-float v2, v0, v1

    const/high16 v3, 0x41700000  # 15.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_39

    .line 99
    iget v2, p0, Lcom/meizu/common/widget/FlymeListView;->mMoveLength:F

    sub-float/2addr v0, v1

    add-float/2addr v2, v0

    iput v2, p0, Lcom/meizu/common/widget/FlymeListView;->mMoveLength:F

    goto :goto_52

    :cond_39
    const/4 v0, -0x1

    .line 100
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_52

    iget v0, p0, Lcom/meizu/common/widget/FlymeListView;->mLastTouchPosition:F

    iget v1, p0, Lcom/meizu/common/widget/FlymeListView;->mCurrentTouchPosition:F

    sub-float v2, v0, v1

    const/high16 v3, -0x3e900000  # -15.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_52

    .line 101
    iget v2, p0, Lcom/meizu/common/widget/FlymeListView;->mMoveLength:F

    sub-float/2addr v0, v1

    add-float/2addr v2, v0

    iput v2, p0, Lcom/meizu/common/widget/FlymeListView;->mMoveLength:F

    .line 103
    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    iget v1, p0, Lcom/meizu/common/widget/FlymeListView;->mMoveLength:F

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->translateItemY(F)V

    goto :goto_8d

    .line 107
    :cond_5a
    iget v0, p0, Lcom/meizu/common/widget/FlymeListView;->mMoveLength:F

    sget v1, Lcom/meizu/common/widget/FlymeListView;->INVALUE_VALUE:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8d

    .line 108
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    invoke-virtual {v0}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->startSmoothBackToOriginalPosition()V

    goto :goto_8d

    .line 86
    :cond_68
    iget v0, p0, Lcom/meizu/common/widget/FlymeListView;->mCurrentTouchPosition:F

    iput v0, p0, Lcom/meizu/common/widget/FlymeListView;->mLastTouchPosition:F

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/meizu/common/widget/FlymeListView;->mMoveLength:F

    .line 88
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    invoke-virtual {v0}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->cancleSmoothBackToOriginalPosition()V

    .line 89
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    invoke-virtual {v0}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->isParallaxAnimationComplete()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 90
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->setParallaxAnimationComplete(Z)V

    .line 91
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mParallaxAnimationListener:Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;

    if-eqz v0, :cond_8d

    .line 92
    invoke-virtual {p0}, Lcom/meizu/common/widget/FlymeListView;->getViewHoldSet()Ljava/util/HashSet;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;->onAnimationStateChange(ILjava/util/HashSet;)V

    .line 115
    :cond_8d
    :goto_8d
    iget v0, p0, Lcom/meizu/common/widget/FlymeListView;->mCurrentTouchPosition:F

    iput v0, p0, Lcom/meizu/common/widget/FlymeListView;->mLastTouchPosition:F

    .line 117
    :cond_91
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getViewHoldSet()Ljava/util/HashSet;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/meizu/common/widget/FlymeListView;->mViewHolderHashSet:Ljava/util/HashSet;

    return-object p0
.end method

.method public setBaseDuration(I)V
    .registers 2

    .line 199
    iget-object p0, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    if-eqz p0, :cond_7

    .line 200
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->setBaseDuration(I)V

    :cond_7
    return-void
.end method

.method public setEnableParallax(Z)V
    .registers 3

    if-eqz p1, :cond_18

    .line 60
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    if-nez v0, :cond_d

    .line 61
    new-instance v0, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;-><init>(Lcom/meizu/common/widget/FlymeListView;)V

    iput-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    .line 63
    :cond_d
    iget-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mViewHolderHashSet:Ljava/util/HashSet;

    if-nez v0, :cond_18

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/FlymeListView;->mViewHolderHashSet:Ljava/util/HashSet;

    .line 67
    :cond_18
    iput-boolean p1, p0, Lcom/meizu/common/widget/FlymeListView;->mEnableParallax:Z

    return-void
.end method

.method public setParallaxAnimationListener(Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;)V
    .registers 2

    .line 261
    iput-object p1, p0, Lcom/meizu/common/widget/FlymeListView;->mParallaxAnimationListener:Lcom/meizu/common/widget/FlymeListView$ParallaxAnimationListener;

    return-void
.end method

.method public setScrollSensitivity(I)V
    .registers 2

    .line 210
    iget-object p0, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    if-eqz p0, :cond_7

    .line 211
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->setSensitivity(I)V

    :cond_7
    return-void
.end method

.method public setSmoothBackInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 2

    if-eqz p1, :cond_9

    .line 188
    iget-object p0, p0, Lcom/meizu/common/widget/FlymeListView;->mScrollItemManager:Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;

    if-eqz p0, :cond_9

    .line 189
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/FlymeListView$ScrollItemManager;->setSmoothBackInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_9
    return-void
.end method
