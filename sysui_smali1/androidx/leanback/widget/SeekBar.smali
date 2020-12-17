.class public final Landroidx/leanback/widget/SeekBar;
.super Landroid/view/View;
.source "SeekBar.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/leanback/widget/SeekBar$AccessibilitySeekListener;
    }
.end annotation


# instance fields
.field private mAccessibilitySeekListener:Landroidx/leanback/widget/SeekBar$AccessibilitySeekListener;

.field private mActiveBarHeight:I

.field private mActiveRadius:I

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mBackgroundRect:Landroid/graphics/RectF;

.field private mBarHeight:I

.field private final mKnobPaint:Landroid/graphics/Paint;

.field private mKnobx:I

.field private mMax:I

.field private mProgress:I

.field private final mProgressPaint:Landroid/graphics/Paint;

.field private final mProgressRect:Landroid/graphics/RectF;

.field private mSecondProgress:I

.field private final mSecondProgressPaint:Landroid/graphics/Paint;

.field private final mSecondProgressRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Landroidx/leanback/widget/SeekBar;->mProgressRect:Landroid/graphics/RectF;

    .line 59
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgressRect:Landroid/graphics/RectF;

    .line 60
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Landroidx/leanback/widget/SeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    .line 61
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgressPaint:Landroid/graphics/Paint;

    .line 62
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Landroidx/leanback/widget/SeekBar;->mProgressPaint:Landroid/graphics/Paint;

    .line 63
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Landroidx/leanback/widget/SeekBar;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 64
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Landroidx/leanback/widget/SeekBar;->mKnobPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 79
    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 80
    iget-object p2, p0, Landroidx/leanback/widget/SeekBar;->mBackgroundPaint:Landroid/graphics/Paint;

    const v0, -0x777778

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object p2, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgressPaint:Landroid/graphics/Paint;

    const v0, -0x333334

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget-object p2, p0, Landroidx/leanback/widget/SeekBar;->mProgressPaint:Landroid/graphics/Paint;

    const/high16 v0, -0x10000

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object p2, p0, Landroidx/leanback/widget/SeekBar;->mKnobPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Landroidx/leanback/R$dimen;->lb_playback_transport_progressbar_bar_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/SeekBar;->mBarHeight:I

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Landroidx/leanback/R$dimen;->lb_playback_transport_progressbar_active_bar_height:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Landroidx/leanback/widget/SeekBar;->mActiveBarHeight:I

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroidx/leanback/R$dimen;->lb_playback_transport_progressbar_active_radius:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/leanback/widget/SeekBar;->mActiveRadius:I

    return-void
.end method

.method private calculate()V
    .registers 9

    .line 218
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Landroidx/leanback/widget/SeekBar;->mActiveBarHeight:I

    goto :goto_b

    :cond_9
    iget v0, p0, Landroidx/leanback/widget/SeekBar;->mBarHeight:I

    .line 220
    :goto_b
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v0, v2, v0

    .line 222
    div-int/lit8 v0, v0, 0x2

    .line 224
    iget-object v3, p0, Landroidx/leanback/widget/SeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    iget v4, p0, Landroidx/leanback/widget/SeekBar;->mBarHeight:I

    div-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    int-to-float v6, v0

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v1, v4

    int-to-float v4, v4

    sub-int/2addr v2, v0

    int-to-float v0, v2

    invoke-virtual {v3, v5, v6, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 227
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_32

    iget v2, p0, Landroidx/leanback/widget/SeekBar;->mActiveRadius:I

    goto :goto_36

    :cond_32
    iget v2, p0, Landroidx/leanback/widget/SeekBar;->mBarHeight:I

    div-int/lit8 v2, v2, 0x2

    :goto_36
    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    .line 229
    iget v3, p0, Landroidx/leanback/widget/SeekBar;->mProgress:I

    int-to-float v3, v3

    iget v4, p0, Landroidx/leanback/widget/SeekBar;->mMax:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v1, v1

    mul-float/2addr v3, v1

    .line 230
    iget-object v4, p0, Landroidx/leanback/widget/SeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v5, p0, Landroidx/leanback/widget/SeekBar;->mBarHeight:I

    div-int/lit8 v7, v5, 0x2

    int-to-float v7, v7

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v5, v3

    invoke-virtual {v4, v7, v6, v5, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 233
    iget v4, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgress:I

    int-to-float v4, v4

    iget v5, p0, Landroidx/leanback/widget/SeekBar;->mMax:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v4, v1

    .line 234
    iget-object v1, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgressRect:Landroid/graphics/RectF;

    iget-object v5, p0, Landroidx/leanback/widget/SeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    iget v7, p0, Landroidx/leanback/widget/SeekBar;->mBarHeight:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v7, v4

    invoke-virtual {v1, v5, v6, v7, v0}, Landroid/graphics/RectF;->set(FFFF)V

    float-to-int v0, v3

    add-int/2addr v2, v0

    .line 237
    iput v2, p0, Landroidx/leanback/widget/SeekBar;->mKnobx:I

    .line 238
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 1

    .line 243
    const-class p0, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 131
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Landroidx/leanback/widget/SeekBar;->mActiveRadius:I

    goto :goto_10

    :cond_c
    iget v0, p0, Landroidx/leanback/widget/SeekBar;->mBarHeight:I

    div-int/lit8 v0, v0, 0x2

    .line 133
    :goto_10
    iget-object v1, p0, Landroidx/leanback/widget/SeekBar;->mBackgroundRect:Landroid/graphics/RectF;

    int-to-float v0, v0

    iget-object v2, p0, Landroidx/leanback/widget/SeekBar;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 134
    iget-object v1, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgressRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->right:F

    iget v3, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_27

    .line 135
    iget-object v2, p0, Landroidx/leanback/widget/SeekBar;->mSecondProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 137
    :cond_27
    iget-object v1, p0, Landroidx/leanback/widget/SeekBar;->mProgressRect:Landroid/graphics/RectF;

    iget-object v2, p0, Landroidx/leanback/widget/SeekBar;->mProgressPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 138
    iget v1, p0, Landroidx/leanback/widget/SeekBar;->mKnobx:I

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object p0, p0, Landroidx/leanback/widget/SeekBar;->mKnobPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4

    .line 119
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 120
    invoke-direct {p0}, Landroidx/leanback/widget/SeekBar;->calculate()V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 125
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 126
    invoke-direct {p0}, Landroidx/leanback/widget/SeekBar;->calculate()V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 5

    .line 252
    iget-object v0, p0, Landroidx/leanback/widget/SeekBar;->mAccessibilitySeekListener:Landroidx/leanback/widget/SeekBar$AccessibilitySeekListener;

    if-eqz v0, :cond_17

    const/16 v1, 0x1000

    if-eq p1, v1, :cond_12

    const/16 v1, 0x2000

    if-eq p1, v1, :cond_d

    goto :goto_17

    .line 257
    :cond_d
    invoke-virtual {v0}, Landroidx/leanback/widget/SeekBar$AccessibilitySeekListener;->onAccessibilitySeekBackward()Z

    move-result p0

    return p0

    .line 255
    :cond_12
    invoke-virtual {v0}, Landroidx/leanback/widget/SeekBar$AccessibilitySeekListener;->onAccessibilitySeekForward()Z

    move-result p0

    return p0

    .line 260
    :cond_17
    :goto_17
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
