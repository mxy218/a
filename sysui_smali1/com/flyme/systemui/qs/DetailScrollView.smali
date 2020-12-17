.class public Lcom/flyme/systemui/qs/DetailScrollView;
.super Landroid/widget/ScrollView;
.source "DetailScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/qs/DetailScrollView$Listener;
    }
.end annotation


# instance fields
.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mListener:Lcom/flyme/systemui/qs/DetailScrollView$Listener;

.field private mTouchSlopExceeded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 28
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setOverScrollMode(I)V

    return-void
.end method

.method private getMaxScrollY()I
    .registers 5

    .line 41
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1e

    .line 42
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget p0, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v2, p0

    sub-int/2addr v0, v2

    .line 43
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1e
    return v1
.end method

.method private isScrolledToBottom()Z
    .registers 2

    .line 36
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    invoke-direct {p0}, Lcom/flyme/systemui/qs/DetailScrollView;->getMaxScrollY()I

    move-result p0

    if-ne v0, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 99
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_16

    .line 101
    :cond_f
    iput v1, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mInitialTouchY:F

    .line 102
    iput v0, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mInitialTouchX:F

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mTouchSlopExceeded:Z

    .line 106
    :goto_16
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 51
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_6d

    if-eq v2, v4, :cond_3d

    const/4 v5, 0x2

    if-eq v2, v5, :cond_19

    const/4 v0, 0x3

    if-eq v2, v0, :cond_3d

    goto :goto_73

    .line 61
    :cond_19
    iget v2, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mInitialTouchY:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_73

    .line 62
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x43fa0000  # 500.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_73

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mInitialTouchX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_73

    .line 63
    iput-boolean v4, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mTouchSlopExceeded:Z

    goto :goto_73

    .line 68
    :cond_3d
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5b

    .line 69
    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_51

    move v3, v4

    :cond_51
    if-eqz v3, :cond_5b

    .line 71
    iget-object v0, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mListener:Lcom/flyme/systemui/qs/DetailScrollView$Listener;

    if-eqz v0, :cond_5b

    .line 72
    invoke-interface {v0}, Lcom/flyme/systemui/qs/DetailScrollView$Listener;->onEmptySpaceClicked()V

    goto :goto_73

    .line 77
    :cond_5b
    invoke-direct {p0}, Lcom/flyme/systemui/qs/DetailScrollView;->isScrolledToBottom()Z

    move-result v0

    if-eqz v0, :cond_73

    iget-boolean v0, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mTouchSlopExceeded:Z

    if-eqz v0, :cond_73

    .line 78
    iget-object v0, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mListener:Lcom/flyme/systemui/qs/DetailScrollView$Listener;

    if-eqz v0, :cond_73

    .line 79
    invoke-interface {v0}, Lcom/flyme/systemui/qs/DetailScrollView$Listener;->onBottomOverscrolled()V

    goto :goto_73

    .line 56
    :cond_6d
    iput v1, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mInitialTouchY:F

    .line 57
    iput v0, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mInitialTouchX:F

    .line 58
    iput-boolean v3, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mTouchSlopExceeded:Z

    .line 87
    :cond_73
    :goto_73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7b

    return v4

    .line 91
    :cond_7b
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setListener(Lcom/flyme/systemui/qs/DetailScrollView$Listener;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/flyme/systemui/qs/DetailScrollView;->mListener:Lcom/flyme/systemui/qs/DetailScrollView$Listener;

    return-void
.end method
