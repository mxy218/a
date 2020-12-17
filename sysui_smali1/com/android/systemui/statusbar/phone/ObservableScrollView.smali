.class public Lcom/android/systemui/statusbar/phone/ObservableScrollView;
.super Landroid/widget/ScrollView;
.source "ObservableScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;
    }
.end annotation


# instance fields
.field private mBlockFlinging:Z

.field private mHandlingTouchEvent:Z

.field private mLastOverscrollAmount:I

.field private mLastX:F

.field private mLastY:F

.field private mListener:Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;

.field private mTouchCancelled:Z

.field private mTouchEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchEnabled:Z

    return-void
.end method

.method private getMaxScrollY()I
    .registers 5

    .line 61
    invoke-virtual {p0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1e

    .line 62
    invoke-virtual {p0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v2

    iget v3, p0, Landroid/widget/ScrollView;->mPaddingBottom:I

    sub-int/2addr v2, v3

    iget p0, p0, Landroid/widget/ScrollView;->mPaddingTop:I

    sub-int/2addr v2, p0

    sub-int/2addr v0, v2

    .line 63
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_1e
    return v1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_12

    .line 92
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchEnabled:Z

    if-nez v0, :cond_f

    .line 93
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    return v2

    .line 96
    :cond_f
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    goto :goto_2c

    .line 97
    :cond_12
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    if-eqz v0, :cond_17

    return v2

    .line 99
    :cond_17
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchEnabled:Z

    if-nez v0, :cond_2c

    .line 100
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 102
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 104
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    return v2

    .line 107
    :cond_2c
    :goto_2c
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public fling(I)V
    .registers 3

    .line 133
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mBlockFlinging:Z

    if-nez v0, :cond_7

    .line 134
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    :cond_7
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mHandlingTouchEvent:Z

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastX:F

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastY:F

    .line 84
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mHandlingTouchEvent:Z

    return p1
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 5

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onOverScrolled(IIZZ)V

    .line 141
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mListener:Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;

    if-eqz p1, :cond_12

    iget p2, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastOverscrollAmount:I

    if-lez p2, :cond_12

    .line 142
    iget p3, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastX:F

    iget p0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastY:F

    invoke-interface {p1, p3, p0, p2}, Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;->onOverscrolled(FFI)V

    :cond_12
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 5

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 113
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mListener:Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;

    if-eqz p0, :cond_a

    .line 114
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;->onScrollChanged()V

    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mHandlingTouchEvent:Z

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastX:F

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastY:F

    .line 74
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mHandlingTouchEvent:Z

    return p1
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .registers 12

    add-int v0, p4, p2

    .line 122
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getMaxScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastOverscrollAmount:I

    .line 123
    invoke-super/range {p0 .. p9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result p0

    return p0
.end method
