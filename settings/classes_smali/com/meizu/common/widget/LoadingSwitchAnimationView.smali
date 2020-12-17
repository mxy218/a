.class public Lcom/meizu/common/widget/LoadingSwitchAnimationView;
.super Landroid/view/View;
.source "LoadingSwitchAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/LoadingSwitchAnimationView$AnimationEndListener;
    }
.end annotation


# static fields
.field public static LEFTSITION:I = 0x1

.field public static MIDDLEPOSITION:I = 0x3

.field public static RIGHTPOSITION:I = 0x2


# instance fields
.field private DEFALTDURATION:I

.field private DEFALTITEMCOUNT:I

.field animateDuration:I

.field animationEndListener:Lcom/meizu/common/widget/LoadingSwitchAnimationView$AnimationEndListener;

.field backgroundCurrentPosition:I

.field backgroundPath:Landroid/graphics/Path;

.field distanceToMiddle:F

.field distanceX:F

.field distanceY:F

.field index1:[F

.field index2:[F

.field indexStart:F

.field indexoffset:F

.field isAnimating:Z

.field isBackgroundOnleft:Z

.field itemCount:I

.field lateralSlidingBackgroundPaint:Landroid/graphics/Paint;

.field leftIconChangeLength:F

.field leftIconChangePosition:F

.field leftIconPosition:[F

.field leftIconRect:Landroid/graphics/RectF;

.field leftIconSelected:Landroid/graphics/Bitmap;

.field leftIconSelectedPaint:Landroid/graphics/Paint;

.field leftIconUnselected:Landroid/graphics/Bitmap;

.field leftIconUnselectedPaint:Landroid/graphics/Paint;

.field middleIconChangeLength:F

.field middleIconChangePositionToLeft:F

.field middleIconChangePositionToRight:F

.field middleIconPosition:[F

.field middleIconRect:Landroid/graphics/RectF;

.field offsetX:F

.field offsetYValid:Z

.field originalHeight:F

.field originalWidth:F

.field ovalBackgroundRect:Landroid/graphics/RectF;

.field picRadius:F

.field pullLeftIconPaint:Landroid/graphics/Paint;

.field pullRefreshOnAndBackgroundPaint:Landroid/graphics/Paint;

.field pullRightIconPaint:Landroid/graphics/Paint;

.field rightIconChangeLength:F

.field rightIconChangePosition:F

.field rightIconPosition:[F

.field rightIconRect:Landroid/graphics/RectF;

.field rightIconSelected:Landroid/graphics/Bitmap;

.field rightIconSelectedPaint:Landroid/graphics/Paint;

.field rightIconUnselected:Landroid/graphics/Bitmap;

.field rightIconUnselectedPaint:Landroid/graphics/Paint;

.field rotationangle:F

.field viewHeight:F

.field viewWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0x12c

    .line 28
    iput p3, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->DEFALTDURATION:I

    const/4 p3, 0x2

    .line 29
    iput p3, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->DEFALTITEMCOUNT:I

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->distanceX:F

    .line 40
    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->distanceY:F

    const/4 v1, 0x0

    .line 54
    iput-boolean v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->isAnimating:Z

    const/4 v2, 0x1

    .line 56
    iput-boolean v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->isBackgroundOnleft:Z

    .line 59
    iput-boolean v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetYValid:Z

    .line 61
    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetX:F

    const/high16 v0, 0x43340000  # 180.0f

    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rotationangle:F

    const/high16 v0, 0x41200000  # 10.0f

    .line 70
    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->indexoffset:F

    const/high16 v0, 0x42870000  # 67.5f

    .line 74
    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->picRadius:F

    .line 91
    sget-object v0, Lcom/meizu/common/R$styleable;->LoadingSwitchAnimationView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 92
    sget p2, Lcom/meizu/common/R$styleable;->LoadingSwitchAnimationView_animateDuration:I

    iget v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->DEFALTDURATION:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->animateDuration:I

    .line 93
    sget p2, Lcom/meizu/common/R$styleable;->LoadingSwitchAnimationView_itemCount:I

    iget v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->DEFALTITEMCOUNT:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->itemCount:I

    .line 94
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->lateralSlidingBackgroundPaint:Landroid/graphics/Paint;

    .line 97
    iget-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->lateralSlidingBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/meizu/common/R$color;->background_color:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->lateralSlidingBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    iget-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->lateralSlidingBackgroundPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/meizu/common/R$drawable;->reflesh_on:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconSelected:Landroid/graphics/Bitmap;

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/meizu/common/R$drawable;->reflesh_off:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconUnselected:Landroid/graphics/Bitmap;

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/meizu/common/R$drawable;->back_home_on:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconSelected:Landroid/graphics/Bitmap;

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/meizu/common/R$drawable;->back_home_off:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconUnselected:Landroid/graphics/Bitmap;

    .line 108
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->backgroundPath:Landroid/graphics/Path;

    .line 110
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    .line 112
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    .line 113
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconRect:Landroid/graphics/RectF;

    .line 114
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconRect:Landroid/graphics/RectF;

    new-array p1, p3, [F

    .line 117
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->index1:[F

    new-array p1, p3, [F

    .line 118
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->index2:[F

    new-array p1, p3, [F

    .line 120
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconPosition:[F

    new-array p1, p3, [F

    .line 121
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconPosition:[F

    new-array p1, p3, [F

    .line 122
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconPosition:[F

    .line 124
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconUnselectedPaint:Landroid/graphics/Paint;

    .line 125
    iget-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconUnselectedPaint:Landroid/graphics/Paint;

    const/16 p2, 0xff

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 127
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconSelectedPaint:Landroid/graphics/Paint;

    .line 128
    iget-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 130
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconUnselectedPaint:Landroid/graphics/Paint;

    .line 131
    iget-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconUnselectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 133
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconSelectedPaint:Landroid/graphics/Paint;

    .line 134
    iget-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 136
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRefreshOnAndBackgroundPaint:Landroid/graphics/Paint;

    .line 137
    iget-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRefreshOnAndBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/meizu/common/R$color;->background_color:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    iget-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRefreshOnAndBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 139
    iget-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRefreshOnAndBackgroundPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 140
    iget-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRefreshOnAndBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 143
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullLeftIconPaint:Landroid/graphics/Paint;

    .line 144
    iget-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullLeftIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 146
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRightIconPaint:Landroid/graphics/Paint;

    .line 147
    iget-object p0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRightIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private drawWhenLateralSliding(Landroid/graphics/Canvas;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 272
    iget-object v2, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->index1:[F

    iget v3, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->indexStart:F

    iget v4, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->distanceX:F

    add-float v5, v3, v4

    iget v6, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->indexoffset:F

    add-float/2addr v5, v6

    const/4 v7, 0x0

    aput v5, v2, v7

    .line 273
    iget-object v5, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v8, v5, Landroid/graphics/RectF;->top:F

    const/4 v9, 0x1

    aput v8, v2, v9

    .line 275
    iget-object v2, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->index2:[F

    add-float/2addr v3, v4

    add-float/2addr v3, v6

    aput v3, v2, v7

    .line 276
    iget v3, v5, Landroid/graphics/RectF;->bottom:F

    aput v3, v2, v9

    .line 278
    iget-object v2, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->lateralSlidingBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 280
    iget-object v2, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->backgroundPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 281
    iget-object v2, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->backgroundPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    const/high16 v5, 0x40000000  # 2.0f

    div-float/2addr v3, v5

    add-float/2addr v4, v3

    iget-object v3, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 282
    iget-object v10, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->backgroundPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->index1:[F

    aget v11, v2, v7

    aget v12, v2, v9

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->index2:[F

    aget v13, v2, v7

    aget v14, v2, v9

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v5

    add-float v15, v3, v2

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v2

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 283
    iget-object v2, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->backgroundPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 284
    iget-object v2, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->backgroundPath:Landroid/graphics/Path;

    iget-object v3, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->lateralSlidingBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 286
    iget-object v2, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconUnselected:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconUnselectedPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 287
    iget-object v2, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconSelected:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 288
    iget-object v2, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconUnselected:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconRect:Landroid/graphics/RectF;

    iget-object v4, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconUnselectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 289
    iget-object v2, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconSelected:Landroid/graphics/Bitmap;

    iget-object v3, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconRect:Landroid/graphics/RectF;

    iget-object v0, v0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v5, v3, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawWhenPull(Landroid/graphics/Canvas;)V
    .registers 6

    .line 258
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRefreshOnAndBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 259
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconUnselected:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRightIconPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 260
    iget v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->distanceY:F

    const v1, 0x43848000  # 265.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_45

    const/high16 v1, 0x43340000  # 180.0f

    const/high16 v2, 0x43840000  # 264.0f

    sub-float v0, v2, v0

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    .line 261
    iput v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rotationangle:F

    .line 262
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 263
    iget v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rotationangle:F

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 264
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconUnselected:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullLeftIconPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 265
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4e

    .line 267
    :cond_45
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconSelected:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRefreshOnAndBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :goto_4e
    return-void
.end method


# virtual methods
.method public getCurrentSelection()I
    .registers 3

    .line 542
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget p0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->viewWidth:F

    const/high16 v1, 0x40000000  # 2.0f

    div-float/2addr p0, v1

    cmpl-float p0, v0, p0

    if-lez p0, :cond_12

    sget p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->RIGHTPOSITION:I

    goto :goto_14

    :cond_12
    sget p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->LEFTSITION:I

    :goto_14
    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 248
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 250
    iget-boolean v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->offsetYValid:Z

    if-eqz v0, :cond_b

    .line 251
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->drawWhenPull(Landroid/graphics/Canvas;)V

    goto :goto_e

    .line 253
    :cond_b
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->drawWhenLateralSliding(Landroid/graphics/Canvas;)V

    :goto_e
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 9

    .line 155
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 156
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->viewWidth:F

    .line 157
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->viewHeight:F

    .line 159
    iget-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconPosition:[F

    iget p2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->viewWidth:F

    const/high16 p3, 0x40000000  # 2.0f

    div-float/2addr p2, p3

    const/4 p4, 0x0

    aput p2, p1, p4

    const/high16 p2, 0x43070000  # 135.0f

    const/4 p5, 0x1

    .line 160
    aput p2, p1, p5

    .line 161
    iget p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->itemCount:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2e

    const/high16 p1, 0x43100000  # 144.0f

    .line 162
    iput p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->distanceToMiddle:F

    .line 163
    sget p1, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->LEFTSITION:I

    iput p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->backgroundCurrentPosition:I

    goto :goto_39

    :cond_2e
    const/4 v0, 0x3

    if-ne p1, v0, :cond_39

    const/high16 p1, 0x43700000  # 240.0f

    .line 165
    iput p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->distanceToMiddle:F

    .line 166
    sget p1, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->MIDDLEPOSITION:I

    iput p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->backgroundCurrentPosition:I

    .line 169
    :cond_39
    :goto_39
    iget-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconPosition:[F

    iget v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->viewWidth:F

    div-float v1, v0, p3

    iget v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->distanceToMiddle:F

    sub-float/2addr v1, v2

    aput v1, p1, p4

    .line 170
    aput p2, p1, p5

    .line 172
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconPosition:[F

    div-float/2addr v0, p3

    add-float/2addr v0, v2

    aput v0, v1, p4

    .line 173
    aput p2, v1, p5

    .line 175
    iget-object p2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconPosition:[F

    aget v0, p3, p4

    iget v2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->picRadius:F

    sub-float/2addr v0, v2

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 176
    aget v0, p3, p5

    sub-float/2addr v0, v2

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 177
    aget v0, p3, p4

    add-float/2addr v0, v2

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 178
    aget p3, p3, p5

    add-float/2addr p3, v2

    iput p3, p2, Landroid/graphics/RectF;->bottom:F

    .line 180
    iget-object p2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    aget p3, p1, p4

    sub-float/2addr p3, v2

    iput p3, p2, Landroid/graphics/RectF;->left:F

    .line 181
    aget p3, p1, p5

    sub-float/2addr p3, v2

    iput p3, p2, Landroid/graphics/RectF;->top:F

    .line 182
    aget p3, p1, p4

    add-float/2addr p3, v2

    iput p3, p2, Landroid/graphics/RectF;->right:F

    .line 183
    aget p1, p1, p5

    add-float/2addr p1, v2

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    .line 185
    iget-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconRect:Landroid/graphics/RectF;

    aget p3, v1, p4

    sub-float/2addr p3, v2

    iput p3, p1, Landroid/graphics/RectF;->left:F

    .line 186
    aget p3, v1, p5

    sub-float/2addr p3, v2

    iput p3, p1, Landroid/graphics/RectF;->top:F

    .line 187
    aget p3, v1, p4

    add-float/2addr p3, v2

    iput p3, p1, Landroid/graphics/RectF;->right:F

    .line 188
    aget p3, v1, p5

    add-float/2addr p3, v2

    iput p3, p1, Landroid/graphics/RectF;->bottom:F

    .line 191
    iget-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget p3, p2, Landroid/graphics/RectF;->left:F

    iput p3, p1, Landroid/graphics/RectF;->left:F

    .line 192
    iget p3, p2, Landroid/graphics/RectF;->top:F

    iput p3, p1, Landroid/graphics/RectF;->top:F

    .line 193
    iget p3, p2, Landroid/graphics/RectF;->right:F

    iput p3, p1, Landroid/graphics/RectF;->right:F

    .line 194
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 197
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->originalWidth:F

    .line 198
    iget-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    iput p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->originalHeight:F

    .line 200
    iget-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->ovalBackgroundRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    iput p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->indexStart:F

    .line 203
    iget-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconRect:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->right:F

    iput p2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconChangePosition:F

    .line 204
    iget p2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconChangePosition:F

    iget p1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconChangeLength:F

    .line 206
    iget-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconRect:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    iput p2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconChangePosition:F

    .line 207
    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget p3, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconChangePosition:F

    sub-float p3, p1, p3

    iput p3, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconChangeLength:F

    .line 209
    iput p2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconChangePosition:F

    .line 210
    iget p2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconChangePosition:F

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconChangeLength:F

    .line 212
    iget-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconRect:Landroid/graphics/RectF;

    iget p2, p1, Landroid/graphics/RectF;->left:F

    iput p2, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconChangePositionToLeft:F

    .line 213
    iget p1, p1, Landroid/graphics/RectF;->right:F

    iput p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconChangePositionToRight:F

    sub-float/2addr p1, p2

    .line 214
    iput p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->middleIconChangeLength:F

    return-void
.end method

.method public setAnimateDuration(I)V
    .registers 2

    .line 551
    iput p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->animateDuration:I

    return-void
.end method

.method public setAnimationEndListener(Lcom/meizu/common/widget/LoadingSwitchAnimationView$AnimationEndListener;)V
    .registers 2

    .line 448
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->animationEndListener:Lcom/meizu/common/widget/LoadingSwitchAnimationView$AnimationEndListener;

    return-void
.end method

.method public setLeftIconSelected(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 580
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconSelected:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setLeftIconUnSelected(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 571
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->leftIconUnselected:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setRightIconSelected(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 598
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconSelected:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setRightIconUnSelected(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 589
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->rightIconUnselected:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setSelectedIconBackGroundColor(I)V
    .registers 3

    .line 560
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->lateralSlidingBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 561
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRefreshOnAndBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 562
    iget-object p0, p0, Lcom/meizu/common/widget/LoadingSwitchAnimationView;->pullRefreshOnAndBackgroundPaint:Landroid/graphics/Paint;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
