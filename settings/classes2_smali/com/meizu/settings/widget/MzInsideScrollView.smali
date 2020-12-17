.class public Lcom/meizu/settings/widget/MzInsideScrollView;
.super Landroid/widget/ScrollView;
.source "MzInsideScrollView.java"


# instance fields
.field private isScroll:Z

.field private mLastTouchX:I

.field private mLastTouchY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private canScroll()Z
    .registers 3

    const/4 v0, 0x0

    .line 66
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 68
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 69
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result p0

    if-ge p0, v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 32
    invoke-direct {p0}, Lcom/meizu/settings/widget/MzInsideScrollView;->canScroll()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 33
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v1

    .line 36
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    const/high16 v3, 0x3f000000  # 0.5f

    if-eqz v0, :cond_48

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1c

    goto :goto_61

    .line 45
    :cond_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    add-float/2addr v4, v3

    float-to-int v3, v4

    .line 48
    iget v4, p0, Lcom/meizu/settings/widget/MzInsideScrollView;->mLastTouchX:I

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 49
    iget v4, p0, Lcom/meizu/settings/widget/MzInsideScrollView;->mLastTouchY:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v0, :cond_3a

    .line 52
    iput-boolean v2, p0, Lcom/meizu/settings/widget/MzInsideScrollView;->isScroll:Z

    :cond_3a
    if-le v0, v3, :cond_61

    .line 55
    iget-boolean v0, p0, Lcom/meizu/settings/widget/MzInsideScrollView;->isScroll:Z

    if-nez v0, :cond_61

    .line 56
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_61

    .line 39
    :cond_48
    iput-boolean v1, p0, Lcom/meizu/settings/widget/MzInsideScrollView;->isScroll:Z

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/settings/widget/MzInsideScrollView;->mLastTouchX:I

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/settings/widget/MzInsideScrollView;->mLastTouchY:I

    .line 42
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 62
    :cond_61
    :goto_61
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
