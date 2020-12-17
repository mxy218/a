.class public Lcom/meizu/common/widget/PressAnimLayout;
.super Landroid/widget/FrameLayout;
.source "PressAnimLayout.java"


# instance fields
.field private final ANIM_DOWN_DURATION:J

.field private final ANIM_UP_DURATION:J

.field private mDownTime:J

.field private mDownX:F

.field private mDownY:F

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mIsTouchCanceled:Z

.field private mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

.field private mLayoutHeight:I

.field private mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

.field private mLayoutWidth:I

.field private mOutSlop:F

.field private mScaleBaseline:F

.field private mScaleTarget:F

.field private mUpTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/PressAnimLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/PressAnimLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x80

    .line 23
    iput-wide p1, p0, Lcom/meizu/common/widget/PressAnimLayout;->ANIM_DOWN_DURATION:J

    const-wide/16 p1, 0x160

    .line 24
    iput-wide p1, p0, Lcom/meizu/common/widget/PressAnimLayout;->ANIM_UP_DURATION:J

    const/high16 p1, 0x3f800000  # 1.0f

    .line 26
    iput p1, p0, Lcom/meizu/common/widget/PressAnimLayout;->mScaleBaseline:F

    const p1, 0x3f733333  # 0.95f

    .line 27
    iput p1, p0, Lcom/meizu/common/widget/PressAnimLayout;->mScaleTarget:F

    const/4 p1, 0x0

    .line 36
    iput-boolean p1, p0, Lcom/meizu/common/widget/PressAnimLayout;->mIsTouchCanceled:Z

    .line 52
    invoke-direct {p0}, Lcom/meizu/common/widget/PressAnimLayout;->init()V

    return-void
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .registers 4

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mDownTime:J

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mDownX:F

    .line 114
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/PressAnimLayout;->mDownY:F

    .line 115
    invoke-direct {p0}, Lcom/meizu/common/widget/PressAnimLayout;->setupLayoutDownAnimator()V

    .line 116
    iget-object p0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private handleActionMove(Landroid/view/MotionEvent;)V
    .registers 7

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 121
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 122
    iget v2, p0, Lcom/meizu/common/widget/PressAnimLayout;->mOutSlop:F

    const/4 v3, 0x0

    sub-float v4, v3, v2

    cmpg-float v4, v0, v4

    if-ltz v4, :cond_24

    iget v4, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutWidth:I

    int-to-float v4, v4

    add-float/2addr v4, v2

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_24

    cmpg-float v0, v1, v3

    if-ltz v0, :cond_24

    iget v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutHeight:I

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_27

    :cond_24
    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mIsTouchCanceled:Z

    .line 126
    :cond_27
    iget-boolean v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mIsTouchCanceled:Z

    if-eqz v0, :cond_2e

    .line 127
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PressAnimLayout;->handleActionUp(Landroid/view/MotionEvent;)V

    :cond_2e
    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .registers 6

    .line 133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mUpTime:J

    .line 134
    iget-wide v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mUpTime:J

    iget-wide v2, p0, Lcom/meizu/common/widget/PressAnimLayout;->mDownTime:J

    sub-long/2addr v0, v2

    .line 136
    invoke-direct {p0}, Lcom/meizu/common/widget/PressAnimLayout;->setupLayoutUpAnimator()V

    const-wide/16 v2, 0x80

    cmp-long p1, v0, v2

    if-gez p1, :cond_1b

    sub-long/2addr v2, v0

    .line 139
    iget-object p1, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto :goto_22

    .line 141
    :cond_1b
    iget-object p1, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 143
    :goto_22
    iget-object p0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private init()V
    .registers 5

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_14

    .line 57
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    const v3, 0x3ea8f5c3  # 0.33f

    invoke-direct {v0, v3, v1, v3, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1b

    .line 59
    :cond_14
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    :goto_1b
    return-void
.end method

.method private setupLayoutDownAnimator()V
    .registers 8

    .line 149
    sget-object v0, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Lcom/meizu/common/widget/PressAnimLayout;->mScaleBaseline:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/meizu/common/widget/PressAnimLayout;->mScaleTarget:F

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 150
    sget-object v2, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    new-array v3, v1, [F

    iget v6, p0, Lcom/meizu/common/widget/PressAnimLayout;->mScaleBaseline:F

    aput v6, v3, v4

    iget v6, p0, Lcom/meizu/common/widget/PressAnimLayout;->mScaleTarget:F

    aput v6, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 152
    iget-object v3, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    if-nez v3, :cond_42

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v4

    aput-object v2, v1, v5

    .line 153
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    .line 154
    iget-object v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/PressAnimLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 155
    iget-object p0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutDownAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x80

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_4b

    :cond_42
    new-array p0, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, p0, v4

    aput-object v2, p0, v5

    .line 157
    invoke-virtual {v3, p0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_4b
    return-void
.end method

.method private setupLayoutUpAnimator()V
    .registers 8

    .line 164
    sget-object v0, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v2, v1, [F

    iget v3, p0, Lcom/meizu/common/widget/PressAnimLayout;->mScaleTarget:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/meizu/common/widget/PressAnimLayout;->mScaleBaseline:F

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 165
    sget-object v2, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    new-array v3, v1, [F

    iget v6, p0, Lcom/meizu/common/widget/PressAnimLayout;->mScaleTarget:F

    aput v6, v3, v4

    iget v6, p0, Lcom/meizu/common/widget/PressAnimLayout;->mScaleBaseline:F

    aput v6, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 167
    iget-object v3, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    if-nez v3, :cond_42

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v1, v4

    aput-object v2, v1, v5

    .line 168
    invoke-static {p0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    .line 169
    iget-object v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/meizu/common/widget/PressAnimLayout;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 170
    iget-object p0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutUpAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x160

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_4b

    :cond_42
    new-array p0, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, p0, v4

    aput-object v2, p0, v5

    .line 172
    invoke-virtual {v3, p0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :goto_4b
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .line 84
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 87
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2a

    if-eq v0, v1, :cond_1f

    const/4 v1, 0x2

    if-eq v0, v1, :cond_17

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1f

    goto :goto_2d

    .line 95
    :cond_17
    iget-boolean v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mIsTouchCanceled:Z

    if-nez v0, :cond_2d

    .line 96
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PressAnimLayout;->handleActionMove(Landroid/view/MotionEvent;)V

    goto :goto_2d

    .line 102
    :cond_1f
    iget-boolean v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mIsTouchCanceled:Z

    if-nez v0, :cond_26

    .line 103
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PressAnimLayout;->handleActionUp(Landroid/view/MotionEvent;)V

    :cond_26
    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/meizu/common/widget/PressAnimLayout;->mIsTouchCanceled:Z

    goto :goto_2d

    .line 91
    :cond_2a
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/PressAnimLayout;->handleActionDown(Landroid/view/MotionEvent;)V

    .line 108
    :cond_2d
    :goto_2d
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 66
    iput p1, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutWidth:I

    .line 67
    iput p2, p0, Lcom/meizu/common/widget/PressAnimLayout;->mLayoutHeight:I

    return-void
.end method

.method public setEnabled(Z)V
    .registers 4

    .line 72
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 73
    :goto_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 74
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 76
    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_16
    return-void
.end method
