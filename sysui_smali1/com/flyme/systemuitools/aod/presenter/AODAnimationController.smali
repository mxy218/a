.class public final Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;
.super Ljava/lang/Object;
.source "AODAnimationController.java"


# static fields
.field private static sInstance:Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;


# instance fields
.field private mAnimationOne:[Landroid/view/animation/AnimationSet;

.field private mAnimationTwo:[Landroid/view/animation/AnimationSet;

.field private mCommonAniamtion:Landroid/view/animation/AlphaAnimation;

.field private mContext:Landroid/content/Context;

.field private mSvgaInterpolator:Landroid/view/animation/PathInterpolator;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 7

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000  # 1.0f

    const/4 v2, 0x0

    const v3, 0x3ea8f5c3  # 0.33f

    const v4, 0x3f2b851f  # 0.67f

    invoke-direct {v0, v3, v2, v4, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->mSvgaInterpolator:Landroid/view/animation/PathInterpolator;

    .line 27
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->mCommonAniamtion:Landroid/view/animation/AlphaAnimation;

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/view/animation/AnimationSet;

    .line 28
    iput-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->mAnimationOne:[Landroid/view/animation/AnimationSet;

    new-array v0, v0, [Landroid/view/animation/AnimationSet;

    .line 29
    iput-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->mAnimationTwo:[Landroid/view/animation/AnimationSet;

    .line 39
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->mContext:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->initCommonAnimation()V

    .line 42
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->initAnimationOne()V

    .line 43
    invoke-direct {p0}, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->initAnimationTwo()V

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;
    .registers 3

    const-class v0, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;

    monitor-enter v0

    .line 32
    :try_start_3
    sget-object v1, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->sInstance:Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;

    if-nez v1, :cond_e

    .line 33
    new-instance v1, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;

    invoke-direct {v1, p0}, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->sInstance:Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;

    .line 35
    :cond_e
    sget-object p0, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->sInstance:Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private initAnimationOne()V
    .registers 11

    .line 47
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 48
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 49
    new-instance v3, Landroid/view/animation/TranslateXAnimation;

    iget-object v4, p0, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->mContext:Landroid/content/Context;

    const/high16 v5, 0x41000000  # 8.0f

    invoke-static {v4, v5}, Lcom/flyme/systemuitools/aod/utils/PixelUtil;->Dp2Px(Landroid/content/Context;F)F

    move-result v4

    neg-float v4, v4

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6}, Landroid/view/animation/TranslateXAnimation;-><init>(FF)V

    const-wide/16 v7, 0x39e

    .line 50
    invoke-virtual {v3, v7, v8}, Landroid/view/animation/TranslateXAnimation;->setDuration(J)V

    .line 51
    iget-object v4, p0, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->mSvgaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateXAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 53
    new-instance v4, Landroid/view/animation/TranslateXAnimation;

    iget-object v9, p0, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->mContext:Landroid/content/Context;

    invoke-static {v9, v5}, Lcom/flyme/systemuitools/aod/utils/PixelUtil;->Dp2Px(Landroid/content/Context;F)F

    move-result v5

    invoke-direct {v4, v5, v6}, Landroid/view/animation/TranslateXAnimation;-><init>(FF)V

    .line 54
    invoke-virtual {v4, v7, v8}, Landroid/view/animation/TranslateXAnimation;->setDuration(J)V

    .line 55
    iget-object v5, p0, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->mSvgaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/TranslateXAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 57
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000  # 1.0f

    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v6, 0x2bf

    .line 58
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const-wide/16 v6, 0xfa

    .line 59
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 60
    iget-object v6, p0, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->mSvgaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v6}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 62
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 63
    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 65
    invoke-virtual {v2, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 66
    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 68
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->mAnimationOne:[Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    aput-object v0, p0, v3

    .line 69
    aput-object v2, p0, v1

    return-void
.end method

.method private initAnimationTwo()V
    .registers 11

    .line 73
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 74
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 75
    new-instance v3, Landroid/view/animation/TranslateYAnimation;

    iget-object v4, p0, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->mContext:Landroid/content/Context;

    const v5, 0x40a9999a  # 5.3f

    invoke-static {v4, v5}, Lcom/flyme/systemuitools/aod/utils/PixelUtil;->Dp2Px(Landroid/content/Context;F)F

    move-result v4

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6}, Landroid/view/animation/TranslateYAnimation;-><init>(FF)V

    const-wide/16 v7, 0x355

    .line 76
    invoke-virtual {v3, v7, v8}, Landroid/view/animation/TranslateYAnimation;->setDuration(J)V

    .line 78
    iget-object v4, p0, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->mSvgaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/TranslateYAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 80
    new-instance v4, Landroid/view/animation/TranslateYAnimation;

    iget-object v9, p0, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->mContext:Landroid/content/Context;

    invoke-static {v9, v5}, Lcom/flyme/systemuitools/aod/utils/PixelUtil;->Dp2Px(Landroid/content/Context;F)F

    move-result v5

    neg-float v5, v5

    invoke-direct {v4, v5, v6}, Landroid/view/animation/TranslateYAnimation;-><init>(FF)V

    .line 81
    invoke-virtual {v4, v7, v8}, Landroid/view/animation/TranslateYAnimation;->setDuration(J)V

    .line 83
    iget-object v5, p0, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->mSvgaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/TranslateYAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 85
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000  # 1.0f

    invoke-direct {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v6, 0x2bf

    .line 86
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const-wide/16 v6, 0xfa

    .line 87
    invoke-virtual {v5, v6, v7}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 89
    iget-object v6, p0, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->mSvgaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v6}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 91
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 92
    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 94
    invoke-virtual {v2, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 95
    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 97
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->mAnimationTwo:[Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    aput-object v0, p0, v3

    .line 98
    aput-object v2, p0, v1

    return-void
.end method

.method private initCommonAnimation()V
    .registers 4

    .line 102
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->mCommonAniamtion:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->mSvgaInterpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 103
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->mCommonAniamtion:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 104
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->mCommonAniamtion:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v0, 0x190

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    return-void
.end method


# virtual methods
.method public getAnimationOne()[Landroid/view/animation/AnimationSet;
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->mAnimationOne:[Landroid/view/animation/AnimationSet;

    return-object p0
.end method

.method public getAnimationTwo()[Landroid/view/animation/AnimationSet;
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->mAnimationTwo:[Landroid/view/animation/AnimationSet;

    return-object p0
.end method

.method public getCommonAnimation()Landroid/view/animation/Animation;
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->mCommonAniamtion:Landroid/view/animation/AlphaAnimation;

    return-object p0
.end method

.method public getSvgaInterpolator()Landroid/view/animation/PathInterpolator;
    .registers 1

    .line 120
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/presenter/AODAnimationController;->mSvgaInterpolator:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method
