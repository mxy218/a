.class Lflyme/support/v7/widget/FastScroller;
.super Lflyme/support/v7/widget/RecyclerView$ItemDecoration;
.source "FastScroller.java"

# interfaces
.implements Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/FastScroller$AnimatorUpdater;,
        Lflyme/support/v7/widget/FastScroller$AnimatorListener;
    }
.end annotation


# static fields
.field private static final EMPTY_STATE_SET:[I

.field private static final PRESSED_STATE_SET:[I


# instance fields
.field private mAnimationState:I

.field private mDragState:I

.field private final mHideRunnable:Ljava/lang/Runnable;

.field mHorizontalDragX:F
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mHorizontalRange:[I

.field mHorizontalThumbCenterX:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field private final mHorizontalThumbHeight:I

.field mHorizontalThumbWidth:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHorizontalTrackHeight:I

.field private final mMargin:I

.field private mNeedHorizontalScrollbar:Z

.field private mNeedVerticalScrollbar:Z

.field private final mOnScrollListener:Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

.field private mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

.field private mRecyclerViewHeight:I

.field private mRecyclerViewWidth:I

.field private final mScrollbarMinimumRange:I

.field private final mShowHideAnimator:Landroid/animation/ValueAnimator;

.field private mState:I

.field mVerticalDragY:F
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mVerticalRange:[I

.field mVerticalThumbCenterY:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

.field mVerticalThumbHeight:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mVerticalThumbWidth:I

.field private final mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private final mVerticalTrackWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a7

    aput v2, v0, v1

    .line 91
    sput-object v0, Lflyme/support/v7/widget/FastScroller;->PRESSED_STATE_SET:[I

    new-array v0, v1, [I

    .line 92
    sput-object v0, Lflyme/support/v7/widget/FastScroller;->EMPTY_STATE_SET:[I

    return-void
.end method

.method constructor <init>(Lflyme/support/v7/widget/RecyclerView;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/Drawable;III)V
    .registers 12

    .line 172
    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    .line 126
    iput v0, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    .line 133
    iput-boolean v0, p0, Lflyme/support/v7/widget/FastScroller;->mNeedVerticalScrollbar:Z

    .line 134
    iput-boolean v0, p0, Lflyme/support/v7/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 135
    iput v0, p0, Lflyme/support/v7/widget/FastScroller;->mState:I

    .line 137
    iput v0, p0, Lflyme/support/v7/widget/FastScroller;->mDragState:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 142
    iput-object v2, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalRange:[I

    new-array v2, v1, [I

    .line 143
    iput-object v2, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalRange:[I

    new-array v1, v1, [F

    .line 144
    fill-array-data v1, :array_ca

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lflyme/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    .line 145
    iput v0, p0, Lflyme/support/v7/widget/FastScroller;->mAnimationState:I

    .line 147
    new-instance v0, Lflyme/support/v7/widget/FastScroller$1;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/FastScroller$1;-><init>(Lflyme/support/v7/widget/FastScroller;)V

    iput-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    .line 153
    new-instance v0, Lflyme/support/v7/widget/FastScroller$2;

    invoke-direct {v0, p0}, Lflyme/support/v7/widget/FastScroller$2;-><init>(Lflyme/support/v7/widget/FastScroller;)V

    iput-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mOnScrollListener:Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz p2, :cond_49

    .line 175
    iput-object p2, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 176
    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {p6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    .line 177
    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicHeight()I

    move-result p2

    iput p2, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalThumbHeight:I

    goto :goto_52

    .line 179
    :cond_49
    new-instance p2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object p2, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 180
    iput p6, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    :goto_52
    if-eqz p3, :cond_57

    .line 183
    iput-object p3, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_63

    .line 185
    :cond_57
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lflyme/support/v7/R$drawable;->line_drawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    :goto_63
    if-eqz p4, :cond_68

    .line 188
    iput-object p4, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    goto :goto_6c

    .line 190
    :cond_68
    iget-object p2, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    iput-object p2, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    :goto_6c
    if-eqz p5, :cond_71

    .line 193
    iput-object p5, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_7d

    .line 195
    :cond_71
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lflyme/support/v7/R$drawable;->line_drawable:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 197
    :goto_7d
    iget-object p2, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalTrackWidth:I

    .line 198
    iget-object p2, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    .line 199
    invoke-virtual {p2}, Landroid/graphics/drawable/StateListDrawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalThumbHeight:I

    .line 200
    iget-object p2, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 201
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    invoke-static {p6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalTrackHeight:I

    .line 202
    iput p7, p0, Lflyme/support/v7/widget/FastScroller;->mScrollbarMinimumRange:I

    .line 203
    iput p8, p0, Lflyme/support/v7/widget/FastScroller;->mMargin:I

    .line 204
    iget-object p2, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/16 p3, 0xff

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    .line 205
    iget-object p2, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 207
    iget-object p2, p0, Lflyme/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lflyme/support/v7/widget/FastScroller$AnimatorListener;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lflyme/support/v7/widget/FastScroller$AnimatorListener;-><init>(Lflyme/support/v7/widget/FastScroller;Lflyme/support/v7/widget/FastScroller$1;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 208
    iget-object p2, p0, Lflyme/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lflyme/support/v7/widget/FastScroller$AnimatorUpdater;

    invoke-direct {p3, p0, p4}, Lflyme/support/v7/widget/FastScroller$AnimatorUpdater;-><init>(Lflyme/support/v7/widget/FastScroller;Lflyme/support/v7/widget/FastScroller$1;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 210
    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/FastScroller;->attachToRecyclerView(Lflyme/support/v7/widget/RecyclerView;)V

    return-void

    :array_ca
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method static synthetic access$000(Lflyme/support/v7/widget/FastScroller;I)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/FastScroller;->setState(I)V

    return-void
.end method

.method static synthetic access$300(Lflyme/support/v7/widget/FastScroller;)Landroid/animation/ValueAnimator;
    .registers 1

    .line 45
    iget-object p0, p0, Lflyme/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$402(Lflyme/support/v7/widget/FastScroller;I)I
    .registers 2

    .line 45
    iput p1, p0, Lflyme/support/v7/widget/FastScroller;->mAnimationState:I

    return p1
.end method

.method static synthetic access$500(Lflyme/support/v7/widget/FastScroller;)V
    .registers 1

    .line 45
    invoke-direct {p0}, Lflyme/support/v7/widget/FastScroller;->requestRedraw()V

    return-void
.end method

.method static synthetic access$600(Lflyme/support/v7/widget/FastScroller;)Landroid/graphics/drawable/StateListDrawable;
    .registers 1

    .line 45
    iget-object p0, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object p0
.end method

.method static synthetic access$700(Lflyme/support/v7/widget/FastScroller;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 45
    iget-object p0, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private cancelHide()V
    .registers 2

    .line 352
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object p0, p0, Lflyme/support/v7/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private destroyCallbacks()V
    .registers 3

    .line 233
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/RecyclerView;->removeItemDecoration(Lflyme/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 234
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/RecyclerView;->removeOnItemTouchListener(Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 235
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lflyme/support/v7/widget/FastScroller;->mOnScrollListener:Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Lflyme/support/v7/widget/RecyclerView;->removeOnScrollListener(Lflyme/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 236
    invoke-direct {p0}, Lflyme/support/v7/widget/FastScroller;->cancelHide()V

    return-void
.end method

.method private dp2px(F)F
    .registers 3

    .line 684
    iget-object p0, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private drawHorizontalScrollbar(Landroid/graphics/Canvas;)V
    .registers 8

    .line 411
    iget v0, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    .line 413
    iget v1, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr v0, v1

    .line 414
    iget v2, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalThumbCenterX:I

    iget v3, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    .line 415
    iget-object v4, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 416
    iget-object v1, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    iget v4, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalTrackHeight:I

    .line 417
    invoke-virtual {v1, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    int-to-float v1, v0

    const/4 v3, 0x0

    .line 419
    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 420
    iget-object v1, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v1, v2

    .line 421
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 422
    iget-object p0, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    neg-int p0, v2

    int-to-float p0, p0

    neg-int v0, v0

    int-to-float v0, v0

    .line 423
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private drawVerticalScrollbar(Landroid/graphics/Canvas;)V
    .registers 8

    .line 385
    iget v0, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    .line 387
    iget v1, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    sub-int/2addr v0, v1

    const/high16 v1, 0x41800000  # 16.0f

    invoke-direct {p0, v1}, Lflyme/support/v7/widget/FastScroller;->dp2px(F)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    .line 389
    iget v1, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalThumbCenterY:I

    .line 390
    iget-object v2, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    iget v3, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    iget v4, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalThumbHeight:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    .line 391
    iget-object v2, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalTrackWidth:I

    iget v4, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    .line 392
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 394
    invoke-direct {p0}, Lflyme/support/v7/widget/FastScroller;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 395
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 396
    iget v0, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    int-to-float v0, v0

    int-to-float v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000  # -1.0f

    const/high16 v2, 0x3f800000  # 1.0f

    .line 397
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 398
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 399
    invoke-virtual {p1, v2, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 400
    iget p0, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    neg-int p0, p0

    int-to-float p0, p0

    neg-int v0, v1

    int-to-float v0, v0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_67

    :cond_4d
    int-to-float v2, v0

    const/4 v3, 0x0

    .line 402
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 403
    iget-object v2, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v2, v1

    .line 404
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 405
    iget-object p0, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/StateListDrawable;->draw(Landroid/graphics/Canvas;)V

    neg-int p0, v0

    int-to-float p0, p0

    neg-int v0, v1

    int-to-float v0, v0

    .line 406
    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_67
    return-void
.end method

.method private getHorizontalRange()[I
    .registers 4

    .line 638
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalRange:[I

    iget v1, p0, Lflyme/support/v7/widget/FastScroller;->mMargin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 639
    iget p0, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    sub-int/2addr p0, v1

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method private getVerticalRange()[I
    .registers 4

    .line 629
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalRange:[I

    iget v1, p0, Lflyme/support/v7/widget/FastScroller;->mMargin:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 630
    iget p0, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    sub-int/2addr p0, v1

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method private horizontalScrollTo(F)V
    .registers 10

    .line 555
    invoke-direct {p0}, Lflyme/support/v7/widget/FastScroller;->getHorizontalRange()[I

    move-result-object v3

    const/4 v7, 0x0

    .line 556
    aget v0, v3, v7

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 557
    iget v0, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalThumbCenterX:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_23

    return-void

    .line 561
    :cond_23
    iget v1, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalDragX:F

    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    .line 562
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v4

    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    .line 563
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result v5

    iget v6, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    move-object v0, p0

    move v2, p1

    .line 561
    invoke-direct/range {v0 .. v6}, Lflyme/support/v7/widget/FastScroller;->scrollTo(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_40

    .line 565
    iget-object v1, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0, v7}, Lflyme/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 568
    :cond_40
    iput p1, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalDragX:F

    return-void
.end method

.method private isLayoutRTL()Z
    .registers 2

    .line 267
    iget-object p0, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private requestRedraw()V
    .registers 1

    .line 240
    iget-object p0, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method private resetHideDelay(I)V
    .registers 5

    .line 356
    invoke-direct {p0}, Lflyme/support/v7/widget/FastScroller;->cancelHide()V

    .line 357
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object p0, p0, Lflyme/support/v7/widget/FastScroller;->mHideRunnable:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private scrollTo(FF[IIII)I
    .registers 8

    const/4 p0, 0x1

    .line 573
    aget p0, p3, p0

    const/4 v0, 0x0

    aget p3, p3, v0

    sub-int/2addr p0, p3

    if-nez p0, :cond_a

    return v0

    :cond_a
    sub-float/2addr p2, p1

    int-to-float p0, p0

    div-float/2addr p2, p0

    sub-int/2addr p4, p6

    int-to-float p0, p4

    mul-float/2addr p2, p0

    float-to-int p0, p2

    add-int/2addr p5, p0

    if-ge p5, p4, :cond_17

    if-ltz p5, :cond_17

    return p0

    :cond_17
    return v0
.end method

.method private setState(I)V
    .registers 6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_11

    .line 244
    iget v1, p0, Lflyme/support/v7/widget/FastScroller;->mState:I

    if-eq v1, v0, :cond_11

    .line 245
    iget-object v1, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v2, Lflyme/support/v7/widget/FastScroller;->PRESSED_STATE_SET:[I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 246
    invoke-direct {p0}, Lflyme/support/v7/widget/FastScroller;->cancelHide()V

    :cond_11
    const/4 v1, 0x3

    if-nez p1, :cond_18

    .line 250
    invoke-direct {p0}, Lflyme/support/v7/widget/FastScroller;->requestRedraw()V

    goto :goto_21

    :cond_18
    if-ne p1, v1, :cond_1e

    .line 252
    invoke-virtual {p0}, Lflyme/support/v7/widget/FastScroller;->idle()V

    goto :goto_21

    .line 254
    :cond_1e
    invoke-virtual {p0}, Lflyme/support/v7/widget/FastScroller;->show()V

    .line 257
    :goto_21
    iget v2, p0, Lflyme/support/v7/widget/FastScroller;->mState:I

    const/16 v3, 0x7d0

    if-ne v2, v0, :cond_34

    if-eq p1, v0, :cond_34

    .line 258
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    sget-object v1, Lflyme/support/v7/widget/FastScroller;->EMPTY_STATE_SET:[I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 259
    invoke-direct {p0, v3}, Lflyme/support/v7/widget/FastScroller;->resetHideDelay(I)V

    goto :goto_3c

    :cond_34
    const/4 v0, 0x1

    if-eq p1, v0, :cond_39

    if-ne p1, v1, :cond_3c

    .line 261
    :cond_39
    invoke-direct {p0, v3}, Lflyme/support/v7/widget/FastScroller;->resetHideDelay(I)V

    .line 263
    :cond_3c
    :goto_3c
    iput p1, p0, Lflyme/support/v7/widget/FastScroller;->mState:I

    return-void
.end method

.method private setupCallbacks()V
    .registers 2

    .line 227
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/RecyclerView;->addItemDecoration(Lflyme/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 228
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/RecyclerView;->addOnItemTouchListener(Lflyme/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    .line 229
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    iget-object p0, p0, Lflyme/support/v7/widget/FastScroller;->mOnScrollListener:Lflyme/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, p0}, Lflyme/support/v7/widget/RecyclerView;->addOnScrollListener(Lflyme/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private verticalScrollTo(F)V
    .registers 10

    .line 540
    invoke-direct {p0}, Lflyme/support/v7/widget/FastScroller;->getVerticalRange()[I

    move-result-object v3

    const/4 v7, 0x0

    .line 541
    aget v0, v3, v7

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, v3, v1

    int-to-float v1, v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 542
    iget v0, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalThumbCenterY:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_23

    return-void

    .line 545
    :cond_23
    iget v1, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalDragY:F

    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    .line 546
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v4

    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    .line 547
    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result v5

    iget v6, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    move-object v0, p0

    move v2, p1

    .line 545
    invoke-direct/range {v0 .. v6}, Lflyme/support/v7/widget/FastScroller;->scrollTo(FF[IIII)I

    move-result v0

    if-eqz v0, :cond_40

    .line 549
    iget-object v1, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v7, v0}, Lflyme/support/v7/widget/RecyclerView;->scrollBy(II)V

    .line 551
    :cond_40
    iput p1, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalDragY:F

    return-void
.end method


# virtual methods
.method public attachToRecyclerView(Lflyme/support/v7/widget/RecyclerView;)V
    .registers 3
    .param p1  # Lflyme/support/v7/widget/RecyclerView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 214
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    if-eqz v0, :cond_a

    .line 218
    invoke-direct {p0}, Lflyme/support/v7/widget/FastScroller;->destroyCallbacks()V

    .line 220
    :cond_a
    iput-object p1, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    .line 221
    iget-object p1, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_13

    .line 222
    invoke-direct {p0}, Lflyme/support/v7/widget/FastScroller;->setupCallbacks()V

    :cond_13
    return-void
.end method

.method getHorizontalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 612
    iget-object p0, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object p0
.end method

.method getHorizontalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 607
    iget-object p0, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method getVerticalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 622
    iget-object p0, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalThumbDrawable:Landroid/graphics/drawable/StateListDrawable;

    return-object p0
.end method

.method getVerticalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 617
    iget-object p0, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalTrackDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method hide(I)V
    .registers 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 318
    iget v0, p0, Lflyme/support/v7/widget/FastScroller;->mAnimationState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_12

    if-eq v0, v1, :cond_17

    const/4 v3, 0x4

    if-eq v0, v3, :cond_17

    const/4 v3, 0x5

    if-eq v0, v3, :cond_12

    const/4 v3, 0x6

    if-eq v0, v3, :cond_12

    goto :goto_3c

    .line 322
    :cond_12
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_17
    const/4 v0, 0x3

    .line 326
    iput v0, p0, Lflyme/support/v7/widget/FastScroller;->mAnimationState:I

    .line 327
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v1, v3

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 328
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 329
    iget-object p0, p0, Lflyme/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_3c
    return-void
.end method

.method public idle()V
    .registers 6

    .line 335
    iget v0, p0, Lflyme/support/v7/widget/FastScroller;->mAnimationState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    if-eq v0, v2, :cond_11

    if-eq v0, v1, :cond_16

    const/4 v3, 0x3

    if-eq v0, v3, :cond_11

    const/4 v3, 0x5

    if-eq v0, v3, :cond_11

    goto :goto_3d

    .line 339
    :cond_11
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_16
    const/4 v0, 0x6

    .line 343
    iput v0, p0, Lflyme/support/v7/widget/FastScroller;->mAnimationState:I

    .line 344
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v1, v3

    const/high16 v3, 0x3f000000  # 0.5f

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 345
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 346
    iget-object p0, p0, Lflyme/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_3d
    return-void
.end method

.method isHidden()Z
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 281
    iget p0, p0, Lflyme/support/v7/widget/FastScroller;->mState:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method isPointInsideHorizontalThumb(FF)Z
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 600
    iget v0, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    iget v1, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalThumbHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_21

    iget p2, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalThumbCenterX:I

    iget p0, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalThumbWidth:I

    div-int/lit8 v0, p0, 0x2

    sub-int v0, p2, v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_21

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p2, p0

    int-to-float p0, p2

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_21

    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    return p0
.end method

.method isPointInsideVerticalThumb(FF)Z
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 590
    invoke-direct {p0}, Lflyme/support/v7/widget/FastScroller;->isLayoutRTL()Z

    move-result v0

    if-eqz v0, :cond_10

    iget v0, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_33

    goto :goto_22

    :cond_10
    iget v0, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    iget v1, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalThumbWidth:I

    sub-int/2addr v0, v1

    const/high16 v1, 0x41800000  # 16.0f

    .line 591
    invoke-direct {p0, v1}, Lflyme/support/v7/widget/FastScroller;->dp2px(F)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_33

    :goto_22
    iget p1, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalThumbCenterY:I

    int-to-float v0, p1

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_33

    iget p0, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalThumbHeight:I

    add-int/2addr p1, p0

    int-to-float p0, p1

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_33

    const/4 p0, 0x1

    goto :goto_34

    :cond_33
    const/4 p0, 0x0

    :goto_34
    return p0
.end method

.method isVisible()Z
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 276
    iget p0, p0, Lflyme/support/v7/widget/FastScroller;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Lflyme/support/v7/widget/RecyclerView;Lflyme/support/v7/widget/RecyclerView$State;)V
    .registers 4

    .line 362
    iget p2, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    iget-object p3, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I

    move-result p3

    if-ne p2, p3, :cond_28

    iget p2, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    iget-object p3, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    .line 363
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getHeight()I

    move-result p3

    if-eq p2, p3, :cond_15

    goto :goto_28

    .line 374
    :cond_15
    iget p2, p0, Lflyme/support/v7/widget/FastScroller;->mAnimationState:I

    if-eqz p2, :cond_27

    .line 375
    iget-boolean p2, p0, Lflyme/support/v7/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-eqz p2, :cond_20

    .line 376
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/FastScroller;->drawVerticalScrollbar(Landroid/graphics/Canvas;)V

    .line 378
    :cond_20
    iget-boolean p2, p0, Lflyme/support/v7/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz p2, :cond_27

    .line 379
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/FastScroller;->drawHorizontalScrollbar(Landroid/graphics/Canvas;)V

    :cond_27
    return-void

    .line 364
    :cond_28
    :goto_28
    iget-object p1, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    .line 365
    iget-object p1, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    const/4 p1, 0x0

    .line 370
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/FastScroller;->setState(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Lflyme/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 478
    iget p1, p0, Lflyme/support/v7/widget/FastScroller;->mState:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_f

    const/4 v3, 0x3

    if-ne p1, v3, :cond_b

    goto :goto_f

    :cond_b
    if-ne p1, v1, :cond_4e

    :goto_d
    move v0, v2

    goto :goto_4e

    .line 479
    :cond_f
    :goto_f
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, p1, v3}, Lflyme/support/v7/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result p1

    .line 480
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Lflyme/support/v7/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v3

    .line 481
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_4e

    if-nez p1, :cond_31

    if-eqz v3, :cond_4e

    :cond_31
    if-eqz v3, :cond_3e

    .line 484
    iput v2, p0, Lflyme/support/v7/widget/FastScroller;->mDragState:I

    .line 485
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalDragX:F

    goto :goto_4a

    :cond_3e
    if-eqz p1, :cond_4a

    .line 487
    iput v1, p0, Lflyme/support/v7/widget/FastScroller;->mDragState:I

    .line 488
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalDragY:F

    .line 491
    :cond_4a
    :goto_4a
    invoke-direct {p0, v1}, Lflyme/support/v7/widget/FastScroller;->setState(I)V

    goto :goto_d

    :cond_4e
    :goto_4e
    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .registers 2

    return-void
.end method

.method public onTouchEvent(Lflyme/support/v7/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .registers 7

    .line 502
    iget p1, p0, Lflyme/support/v7/widget/FastScroller;->mState:I

    if-nez p1, :cond_5

    return-void

    .line 506
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-nez p1, :cond_46

    .line 507
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0, p1, v2}, Lflyme/support/v7/widget/FastScroller;->isPointInsideVerticalThumb(FF)Z

    move-result p1

    .line 508
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lflyme/support/v7/widget/FastScroller;->isPointInsideHorizontalThumb(FF)Z

    move-result v2

    if-nez p1, :cond_29

    if-eqz v2, :cond_80

    :cond_29
    if-eqz v2, :cond_36

    .line 511
    iput v0, p0, Lflyme/support/v7/widget/FastScroller;->mDragState:I

    .line 512
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalDragX:F

    goto :goto_42

    :cond_36
    if-eqz p1, :cond_42

    .line 514
    iput v1, p0, Lflyme/support/v7/widget/FastScroller;->mDragState:I

    .line 515
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float p1, p1

    iput p1, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalDragY:F

    .line 517
    :cond_42
    :goto_42
    invoke-direct {p0, v1}, Lflyme/support/v7/widget/FastScroller;->setState(I)V

    goto :goto_80

    .line 519
    :cond_46
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_5d

    iget p1, p0, Lflyme/support/v7/widget/FastScroller;->mState:I

    if-ne p1, v1, :cond_5d

    const/4 p1, 0x0

    .line 520
    iput p1, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalDragY:F

    .line 521
    iput p1, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalDragX:F

    const/4 p1, 0x3

    .line 522
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/FastScroller;->setState(I)V

    const/4 p1, 0x0

    .line 523
    iput p1, p0, Lflyme/support/v7/widget/FastScroller;->mDragState:I

    goto :goto_80

    .line 524
    :cond_5d
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_80

    iget p1, p0, Lflyme/support/v7/widget/FastScroller;->mState:I

    if-ne p1, v1, :cond_80

    .line 525
    invoke-virtual {p0}, Lflyme/support/v7/widget/FastScroller;->show()V

    .line 526
    iget p1, p0, Lflyme/support/v7/widget/FastScroller;->mDragState:I

    if-ne p1, v0, :cond_75

    .line 527
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0, p1}, Lflyme/support/v7/widget/FastScroller;->horizontalScrollTo(F)V

    .line 529
    :cond_75
    iget p1, p0, Lflyme/support/v7/widget/FastScroller;->mDragState:I

    if-ne p1, v1, :cond_80

    .line 530
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Lflyme/support/v7/widget/FastScroller;->verticalScrollTo(F)V

    :cond_80
    :goto_80
    return-void
.end method

.method public show()V
    .registers 11

    .line 289
    iget v0, p0, Lflyme/support/v7/widget/FastScroller;->mAnimationState:I

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x96

    const/high16 v5, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v0, :cond_4a

    const/4 v9, 0x6

    if-eq v0, v9, :cond_1d

    const/4 v9, 0x3

    if-eq v0, v9, :cond_17

    const/4 v9, 0x4

    if-eq v0, v9, :cond_22

    goto :goto_70

    .line 291
    :cond_17
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_4a

    .line 301
    :cond_1d
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_22
    const/4 v0, 0x5

    .line 303
    iput v0, p0, Lflyme/support/v7/widget/FastScroller;->mAnimationState:I

    .line 304
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-array v7, v7, [F

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    aput v9, v7, v6

    aput v5, v7, v8

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 305
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 306
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 307
    iget-object p0, p0, Lflyme/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_70

    .line 294
    :cond_4a
    :goto_4a
    iput v8, p0, Lflyme/support/v7/widget/FastScroller;->mAnimationState:I

    .line 295
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    new-array v7, v7, [F

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    aput v9, v7, v6

    aput v5, v7, v8

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 296
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 297
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 298
    iget-object p0, p0, Lflyme/support/v7/widget/FastScroller;->mShowHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    :goto_70
    return-void
.end method

.method updateScrollPosition(II)V
    .registers 10

    .line 434
    iget-object v0, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v0

    .line 435
    iget v1, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerViewHeight:I

    sub-int v2, v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_14

    .line 436
    iget v2, p0, Lflyme/support/v7/widget/FastScroller;->mScrollbarMinimumRange:I

    if-lt v1, v2, :cond_14

    move v2, v4

    goto :goto_15

    :cond_14
    move v2, v3

    :goto_15
    iput-boolean v2, p0, Lflyme/support/v7/widget/FastScroller;->mNeedVerticalScrollbar:Z

    .line 439
    iget-object v2, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerView:Lflyme/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Lflyme/support/v7/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v2

    .line 440
    iget v5, p0, Lflyme/support/v7/widget/FastScroller;->mRecyclerViewWidth:I

    sub-int v6, v2, v5

    if-lez v6, :cond_29

    .line 441
    iget v6, p0, Lflyme/support/v7/widget/FastScroller;->mScrollbarMinimumRange:I

    if-lt v5, v6, :cond_29

    move v6, v4

    goto :goto_2a

    :cond_29
    move v6, v3

    :goto_2a
    iput-boolean v6, p0, Lflyme/support/v7/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    .line 444
    iget-boolean v6, p0, Lflyme/support/v7/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-nez v6, :cond_3c

    iget-boolean v6, p0, Lflyme/support/v7/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-nez v6, :cond_3c

    .line 445
    iget p1, p0, Lflyme/support/v7/widget/FastScroller;->mState:I

    if-eqz p1, :cond_3b

    .line 446
    invoke-direct {p0, v3}, Lflyme/support/v7/widget/FastScroller;->setState(I)V

    :cond_3b
    return-void

    .line 451
    :cond_3c
    iget-boolean v3, p0, Lflyme/support/v7/widget/FastScroller;->mNeedVerticalScrollbar:Z

    if-eqz v3, :cond_47

    .line 456
    iget v3, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalThumbHeight:I

    sub-int/2addr v1, v3

    mul-int/2addr v1, p2

    div-int/2addr v1, v0

    iput v1, p0, Lflyme/support/v7/widget/FastScroller;->mVerticalThumbCenterY:I

    .line 462
    :cond_47
    iget-boolean p2, p0, Lflyme/support/v7/widget/FastScroller;->mNeedHorizontalScrollbar:Z

    if-eqz p2, :cond_61

    int-to-float p1, p1

    int-to-float p2, v5

    const/high16 v0, 0x40000000  # 2.0f

    div-float v0, p2, v0

    add-float/2addr p1, v0

    mul-float/2addr p2, p1

    int-to-float p1, v2

    div-float/2addr p2, p1

    float-to-int p1, p2

    .line 464
    iput p1, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalThumbCenterX:I

    mul-int p1, v5, v5

    .line 466
    div-int/2addr p1, v2

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/FastScroller;->mHorizontalThumbWidth:I

    .line 470
    :cond_61
    iget p1, p0, Lflyme/support/v7/widget/FastScroller;->mState:I

    if-eqz p1, :cond_6a

    if-eq p1, v4, :cond_6a

    const/4 p2, 0x3

    if-ne p1, p2, :cond_6d

    .line 471
    :cond_6a
    invoke-direct {p0, v4}, Lflyme/support/v7/widget/FastScroller;->setState(I)V

    :cond_6d
    return-void
.end method
