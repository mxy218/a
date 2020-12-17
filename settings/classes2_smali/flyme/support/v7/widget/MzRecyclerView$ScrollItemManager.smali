.class Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;
.super Ljava/lang/Object;
.source "MzRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/MzRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScrollItemManager"
.end annotation


# instance fields
.field private mBaseDuration:I

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mIsParallaxAnimationComplete:Z

.field private mOffsetState:I

.field private mScrollItemCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollItemHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;",
            ">;"
        }
    .end annotation
.end field

.field private mScrollProportion:F

.field private mSensitivity:I

.field private mSmoothBackAnimationDuration:I

.field private mSmoothBackAnimator:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lflyme/support/v7/widget/MzRecyclerView;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/MzRecyclerView;)V
    .registers 2

    .line 2842
    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2843
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mScrollItemHashMap:Ljava/util/HashMap;

    .line 2844
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mScrollItemCache:Ljava/util/ArrayList;

    .line 2846
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mInterpolator:Landroid/animation/TimeInterpolator;

    const/16 p1, 0x1f4

    .line 2847
    iput p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mBaseDuration:I

    const/4 p1, 0x3

    .line 2851
    iput p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mOffsetState:I

    const/4 p1, 0x0

    .line 2852
    iput p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mScrollProportion:F

    const/4 p1, 0x5

    .line 2854
    iput p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mSensitivity:I

    const/4 p1, 0x1

    .line 2857
    iput-boolean p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mIsParallaxAnimationComplete:Z

    return-void
.end method

.method static synthetic access$3300(Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;)Ljava/util/HashMap;
    .registers 1

    .line 2842
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mScrollItemHashMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$3400(Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;)Z
    .registers 1

    .line 2842
    iget-boolean p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mIsParallaxAnimationComplete:Z

    return p0
.end method

.method static synthetic access$3402(Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;Z)Z
    .registers 2

    .line 2842
    iput-boolean p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mIsParallaxAnimationComplete:Z

    return p1
.end method

.method static synthetic access$3602(Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;I)I
    .registers 2

    .line 2842
    iput p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mOffsetState:I

    return p1
.end method

.method private calculateOffset(Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;F)F
    .registers 7

    .line 2933
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getCurrentOffset()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_80

    cmpl-float v0, p2, v1

    if-lez v0, :cond_49

    .line 2937
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getDownThreshold()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_17

    goto/16 :goto_fa

    .line 2940
    :cond_17
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getOffsetAfterSmoothBack()F

    move-result v0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2d

    .line 2942
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getDownThreshold()F

    move-result v1

    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getUpThreshold()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    .line 2944
    :cond_2d
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getDownScrollOffsetRatio()F

    move-result v1

    iget p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mSensitivity:I

    int-to-float p0, p0

    div-float/2addr p2, p0

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    .line 2945
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getDownThreshold()F

    move-result p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_46

    .line 2946
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getDownThreshold()F

    move-result p0

    :cond_43
    :goto_43
    move v1, p0

    goto/16 :goto_fa

    :cond_46
    move v1, v0

    goto/16 :goto_fa

    .line 2950
    :cond_49
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getUpThreshold()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_53

    goto/16 :goto_fa

    .line 2953
    :cond_53
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getOffsetAfterSmoothBack()F

    move-result v0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_69

    .line 2955
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getUpThreshold()F

    move-result v1

    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getDownThreshold()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    .line 2957
    :cond_69
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getUpScrollOffsetRatio()F

    move-result v1

    iget p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mSensitivity:I

    int-to-float p0, p0

    div-float/2addr p2, p0

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    .line 2958
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getUpThreshold()F

    move-result p0

    cmpg-float p0, v0, p0

    if-gez p0, :cond_46

    .line 2959
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getUpThreshold()F

    move-result p0

    goto :goto_43

    :cond_80
    if-lez v0, :cond_bf

    .line 2965
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getDownThreshold()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_8c

    goto/16 :goto_fa

    .line 2968
    :cond_8c
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getOffsetAfterSmoothBack()F

    move-result v0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_a2

    .line 2970
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getDownThreshold()F

    move-result v2

    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getUpThreshold()F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v0, v2

    .line 2972
    :cond_a2
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getDownScrollOffsetRatio()F

    move-result v2

    iget p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mSensitivity:I

    int-to-float p0, p0

    div-float/2addr p2, p0

    mul-float/2addr v2, p2

    add-float p0, v0, v2

    cmpg-float p2, p0, v1

    if-gez p2, :cond_b2

    move p0, v1

    .line 2977
    :cond_b2
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getDownThreshold()F

    move-result p2

    cmpl-float p2, p0, p2

    if-lez p2, :cond_43

    .line 2978
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getDownThreshold()F

    move-result p0

    goto :goto_43

    .line 2982
    :cond_bf
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getUpThreshold()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_c8

    goto :goto_fa

    .line 2985
    :cond_c8
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getOffsetAfterSmoothBack()F

    move-result v0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_de

    .line 2987
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getUpThreshold()F

    move-result v2

    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getDownThreshold()F

    move-result v3

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float/2addr v0, v2

    .line 2989
    :cond_de
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getUpScrollOffsetRatio()F

    move-result v2

    iget p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mSensitivity:I

    int-to-float p0, p0

    div-float/2addr p2, p0

    mul-float/2addr v2, p2

    add-float/2addr v0, v2

    cmpl-float p0, v0, v1

    if-lez p0, :cond_ed

    goto :goto_ee

    :cond_ed
    move v1, v0

    .line 2993
    :goto_ee
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getUpThreshold()F

    move-result p0

    cmpg-float p0, v1, p0

    if-gez p0, :cond_fa

    .line 2994
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getUpThreshold()F

    move-result v1

    :cond_fa
    :goto_fa
    return v1
.end method


# virtual methods
.method public cancleSmoothBackToOriginalPosition()V
    .registers 2

    .line 3082
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mSmoothBackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3083
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mSmoothBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f
    return-void
.end method

.method public isParallaxAnimationComplete()Z
    .registers 1

    .line 3066
    iget-boolean p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mIsParallaxAnimationComplete:Z

    return p0
.end method

.method public resetOriginalTransilationY()V
    .registers 3

    .line 3138
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mScrollItemHashMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3139
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;

    .line 3140
    invoke-static {}, Lflyme/support/v7/widget/MzRecyclerView;->access$3500()F

    move-result v1

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->setOriginalTransilationY(F)V

    goto :goto_a

    :cond_1e
    return-void
.end method

.method public setBaseDuration(I)V
    .registers 2

    .line 3130
    iput p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mBaseDuration:I

    return-void
.end method

.method public setParallaxAnimationComplete(Z)V
    .registers 2

    .line 3075
    iput-boolean p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mIsParallaxAnimationComplete:Z

    return-void
.end method

.method public setSensitivity(I)V
    .registers 2

    .line 3093
    iput p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mSensitivity:I

    return-void
.end method

.method public setSmoothBackInterpolator(Landroid/animation/TimeInterpolator;)V
    .registers 2

    .line 3121
    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public startSmoothBackToOriginalPosition()V
    .registers 4

    .line 3005
    iget v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mOffsetState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_23

    .line 3006
    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->resetOriginalTransilationY()V

    const/4 v0, 0x1

    .line 3007
    iput-boolean v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mIsParallaxAnimationComplete:Z

    .line 3008
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$3200(Lflyme/support/v7/widget/MzRecyclerView;)Lflyme/support/v7/widget/MzRecyclerView$ParallaxAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 3009
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {v0}, Lflyme/support/v7/widget/MzRecyclerView;->access$3200(Lflyme/support/v7/widget/MzRecyclerView;)Lflyme/support/v7/widget/MzRecyclerView$ParallaxAnimationListener;

    move-result-object v0

    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {p0}, Lflyme/support/v7/widget/MzRecyclerView;->getViewHoldSet()Ljava/util/HashSet;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lflyme/support/v7/widget/MzRecyclerView$ParallaxAnimationListener;->onAnimationStateChange(ILjava/util/HashSet;)V

    :cond_22
    return-void

    .line 3013
    :cond_23
    iget v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mBaseDuration:I

    int-to-float v0, v0

    iget v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mScrollProportion:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mSmoothBackAnimationDuration:I

    .line 3014
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mScrollItemHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 3015
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;

    .line 3016
    invoke-virtual {v1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getCurrentOffset()F

    move-result v2

    invoke-virtual {v1, v2}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->setOffsetBeforeSmoothBack(F)V

    goto :goto_36

    :cond_4a
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 3019
    fill-array-data v0, :array_80

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mSmoothBackAnimator:Landroid/animation/ValueAnimator;

    .line 3020
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mSmoothBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager$1;

    invoke-direct {v1, p0}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager$1;-><init>(Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3030
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mSmoothBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager$2;

    invoke-direct {v1, p0}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager$2;-><init>(Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3055
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mSmoothBackAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mSmoothBackAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3056
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mSmoothBackAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3057
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mSmoothBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_80
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public translateItemY(F)V
    .registers 7

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    const/4 v2, 0x3

    if-nez v1, :cond_b

    .line 2906
    iget v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mOffsetState:I

    if-ne v1, v2, :cond_b

    return-void

    .line 2909
    :cond_b
    iput v2, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mOffsetState:I

    .line 2910
    iput v0, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mScrollProportion:F

    .line 2911
    iget-object v1, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mScrollItemHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 2912
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;

    .line 2913
    invoke-direct {p0, v2, p1}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->calculateOffset(Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;F)F

    move-result v3

    cmpl-float v4, v3, v0

    if-lez v4, :cond_3d

    const/4 v4, 0x1

    .line 2915
    iput v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mOffsetState:I

    .line 2916
    invoke-virtual {v2}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getDownThreshold()F

    move-result v4

    div-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iput v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mScrollProportion:F

    goto :goto_50

    :cond_3d
    cmpg-float v4, v3, v0

    if-gez v4, :cond_50

    const/4 v4, 0x2

    .line 2918
    iput v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mOffsetState:I

    .line 2919
    invoke-virtual {v2}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->getUpThreshold()F

    move-result v4

    div-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iput v4, p0, Lflyme/support/v7/widget/MzRecyclerView$ScrollItemManager;->mScrollProportion:F

    .line 2921
    :cond_50
    :goto_50
    invoke-virtual {v2, v3}, Lflyme/support/v7/widget/MzRecyclerView$ScrollItem;->translateItemY(F)V

    goto :goto_19

    :cond_54
    return-void
.end method
