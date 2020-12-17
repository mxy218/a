.class public Lcom/android/keyguard/KeyguardSecurityViewFlipper;
.super Landroid/widget/ViewFlipper;
.source "KeyguardSecurityViewFlipper.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    }
.end annotation


# instance fields
.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method private makeChildMeasureSpec(II)I
    .registers 4

    const/4 p0, -0x2

    const/high16 v0, 0x40000000  # 2.0f

    if-eq p2, p0, :cond_d

    const/4 p0, -0x1

    if-eq p2, p0, :cond_f

    .line 264
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_f

    :cond_d
    const/high16 v0, -0x80000000

    .line 267
    :cond_f
    :goto_f
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 185
    instance-of p0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    return p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 190
    instance-of p0, p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    if-eqz p0, :cond_c

    new-instance p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    check-cast p1, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;)V

    goto :goto_11

    :cond_c
    new-instance p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_11
    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;
    .registers 3

    .line 195
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;
    .registers 2

    .line 73
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 74
    instance-of v0, p0, Lcom/android/keyguard/KeyguardSecurityView;

    if-eqz v0, :cond_f

    .line 75
    check-cast p0, Lcom/android/keyguard/KeyguardSecurityView;

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 1

    .line 176
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 178
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityView;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_b
    const-string p0, ""

    return-object p0
.end method

.method public needsInput()Z
    .registers 1

    .line 122
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 123
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method protected onMeasure(II)V
    .registers 14

    .line 200
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 201
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const-string v2, " should be AT_MOST"

    const-string v3, "KeyguardSecurityViewFlipper"

    const/high16 v4, -0x80000000

    if-eq v0, v4, :cond_2b

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMeasure: widthSpec "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    if-eq v1, v4, :cond_48

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMeasure: heightSpec "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_48
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 212
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 215
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v5, p1

    move v6, p2

    move v4, v3

    :goto_58
    if-ge v4, v2, :cond_75

    .line 217
    invoke-virtual {p0, v4}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 218
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    .line 220
    iget v8, v7, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxWidth:I

    if-lez v8, :cond_6b

    if-ge v8, v5, :cond_6b

    move v5, v8

    .line 223
    :cond_6b
    iget v7, v7, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;->maxHeight:I

    if-lez v7, :cond_72

    if-ge v7, v6, :cond_72

    move v6, v7

    :cond_72
    add-int/lit8 v4, v4, 0x1

    goto :goto_58

    .line 228
    :cond_75
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getPaddingRight()I

    move-result v7

    add-int/2addr v4, v7

    .line 229
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v5, v4

    .line 230
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v6, v7

    .line 231
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    const/high16 v8, 0x40000000  # 2.0f

    if-ne v0, v8, :cond_97

    move v0, p1

    goto :goto_98

    :cond_97
    move v0, v3

    :goto_98
    if-ne v1, v8, :cond_9c

    move v1, p2

    goto :goto_9d

    :cond_9c
    move v1, v3

    :goto_9d
    if-ge v3, v2, :cond_d7

    .line 236
    invoke-virtual {p0, v3}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 237
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/android/keyguard/KeyguardSecurityViewFlipper$LayoutParams;

    .line 239
    iget v10, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-direct {p0, v5, v10}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->makeChildMeasureSpec(II)I

    move-result v10

    .line 240
    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-direct {p0, v6, v9}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->makeChildMeasureSpec(II)I

    move-result v9

    .line 242
    invoke-virtual {v8, v10, v9}, Landroid/view/View;->measure(II)V

    .line 244
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v10, p1, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 245
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int v9, p2, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_9d

    :cond_d7
    add-int/2addr v0, v4

    add-int/2addr v1, v7

    .line 247
    invoke-virtual {p0, v0, v1}, Landroid/widget/ViewFlipper;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPause()V
    .registers 1

    .line 106
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 108
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    :cond_9
    return-void
.end method

.method public onResume(I)V
    .registers 2

    .line 114
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 116
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    :cond_9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 58
    invoke-super {p0, p1}, Landroid/widget/ViewFlipper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 59
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    move v1, v0

    move v0, v2

    .line 60
    :goto_c
    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_48

    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 62
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_45

    .line 63
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3, v4}, Landroid/widget/ViewFlipper;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 64
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {p1, v5, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 65
    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_37

    if-eqz v1, :cond_35

    goto :goto_37

    :cond_35
    move v1, v2

    goto :goto_38

    :cond_37
    :goto_37
    const/4 v1, 0x1

    .line 66
    :goto_38
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v4, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_48
    return v1
.end method

.method public reset()V
    .registers 1

    .line 98
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 100
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityView;->reset()V

    :cond_9
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .registers 2

    .line 82
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 84
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    :cond_9
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2

    .line 90
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 92
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    :cond_9
    return-void
.end method

.method public showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .registers 3

    .line 142
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 144
    invoke-interface {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityView;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    :cond_9
    return-void
.end method

.method public showPromptReason(I)V
    .registers 2

    .line 134
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 136
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->showPromptReason(I)V

    :cond_9
    return-void
.end method

.method public startAppearAnimation()V
    .registers 1

    .line 158
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 160
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityView;->startAppearAnimation()V

    :cond_9
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .registers 2

    .line 166
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 168
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result p0

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method
