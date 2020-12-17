.class public Lcom/meizu/settings/widget/MzAppGridView;
.super Lcom/android/settings/display/AppGridView;
.source "MzAppGridView.java"


# instance fields
.field private isScroll:Z

.field private mLastTouchX:I

.field private mLastTouchY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 15
    invoke-direct {p0, p1}, Lcom/android/settings/display/AppGridView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/settings/display/AppGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/display/AppGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 5

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/display/AppGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v0, 0x1

    .line 32
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->canScrollList(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_17

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->canScrollList(I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 33
    invoke-virtual {p0}, Landroid/widget/GridView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v2

    .line 36
    :cond_17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/high16 v3, 0x3f000000  # 0.5f

    if-eqz v1, :cond_4f

    const/4 v4, 0x2

    if-eq v1, v4, :cond_23

    goto :goto_68

    .line 45
    :cond_23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    add-float/2addr v4, v3

    float-to-int v3, v4

    .line 48
    iget v4, p0, Lcom/meizu/settings/widget/MzAppGridView;->mLastTouchX:I

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 49
    iget v4, p0, Lcom/meizu/settings/widget/MzAppGridView;->mLastTouchY:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v1, :cond_41

    .line 52
    iput-boolean v0, p0, Lcom/meizu/settings/widget/MzAppGridView;->isScroll:Z

    :cond_41
    if-le v1, v3, :cond_68

    .line 55
    iget-boolean v0, p0, Lcom/meizu/settings/widget/MzAppGridView;->isScroll:Z

    if-nez v0, :cond_68

    .line 56
    invoke-virtual {p0}, Landroid/widget/GridView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_68

    .line 39
    :cond_4f
    iput-boolean v2, p0, Lcom/meizu/settings/widget/MzAppGridView;->isScroll:Z

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/settings/widget/MzAppGridView;->mLastTouchX:I

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/settings/widget/MzAppGridView;->mLastTouchY:I

    .line 42
    invoke-virtual {p0}, Landroid/widget/GridView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 62
    :cond_68
    :goto_68
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
