.class public Landroid/support/v7/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mActionBarView:Landroid/view/View;

.field mBackground:Landroid/graphics/drawable/Drawable;

.field private mContextView:Landroid/view/View;

.field private mHeight:I

.field mIsSplit:Z

.field mIsStacked:Z

.field private mIsTransitioning:Z

.field mSplitBackground:Landroid/graphics/drawable/Drawable;

.field mStackedBackground:Landroid/graphics/drawable/Drawable;

.field private mTabContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance v0, Landroid/support/v7/widget/ActionBarBackgroundDrawable;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ActionBarBackgroundDrawable;-><init>(Landroid/support/v7/widget/ActionBarContainer;)V

    .line 62
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 64
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 66
    sget p2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 67
    sget p2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_backgroundStacked:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    .line 69
    sget p2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_height:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/ActionBarContainer;->mHeight:I

    .line 71
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getId()I

    move-result p2

    sget v0, Landroid/support/v7/appcompat/R$id;->split_action_bar:I

    const/4 v1, 0x1

    if-ne p2, v0, :cond_3d

    .line 72
    iput-boolean v1, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    .line 73
    sget p2, Landroid/support/v7/appcompat/R$styleable;->ActionBar_backgroundSplit:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    .line 75
    :cond_3d
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 77
    iget-boolean p1, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_4b

    iget-object p1, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_54

    :goto_49
    move p2, v1

    goto :goto_54

    :cond_4b
    iget-object p1, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_54

    iget-object p1, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_54

    goto :goto_49

    :cond_54
    :goto_54
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method private getMeasuredHeightWithMargins(Landroid/view/View;)I
    .registers 3

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 258
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v0, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p1, v0

    iget p0, p0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr p1, p0

    return p1
.end method

.method private isCollapsed(Landroid/view/View;)Z
    .registers 3

    if-eqz p1, :cond_13

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_13

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    if-nez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 3

    .line 158
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    .line 159
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 160
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 162
    :cond_16
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 163
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 165
    :cond_29
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 166
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDrawableState()[I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3c
    return-void
.end method

.method public getTabContainer()Landroid/view/View;
    .registers 1

    .line 233
    iget-object p0, p0, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    return-object p0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 2

    .line 172
    invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V

    .line 173
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 174
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 176
    :cond_a
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_11

    .line 177
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 179
    :cond_11
    iget-object p0, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_18

    .line 180
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_18
    return-void
.end method

.method public onFinishInflate()V
    .registers 2

    .line 83
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 84
    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 85
    sget v0, Landroid/support/v7/appcompat/R$id;->action_context_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 212
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 199
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsTransitioning:Z

    if-nez v0, :cond_d

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public onLayout(ZIIII)V
    .registers 11

    .line 293
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 295
    iget-object p1, p0, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    const/16 p3, 0x8

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, p3, :cond_13

    move v1, p5

    goto :goto_14

    :cond_13
    move v1, v0

    :goto_14
    if-eqz p1, :cond_35

    .line 298
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, p3, :cond_35

    .line 299
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    .line 300
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int v3, p3, v3

    .line 302
    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v3, v4

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr p3, v2

    invoke-virtual {p1, p2, v3, p4, p3}, Landroid/view/View;->layout(IIII)V

    .line 307
    :cond_35
    iget-boolean p2, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz p2, :cond_4d

    .line 308
    iget-object p1, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_4a

    .line 309
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p3

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_c0

    :cond_4a
    move p5, v0

    goto/16 :goto_c0

    .line 313
    :cond_4d
    iget-object p2, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_a5

    .line 314
    iget-object p2, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_77

    .line 315
    iget-object p2, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p3

    iget-object p4, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    .line 316
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 315
    invoke-virtual {p2, p3, p4, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_a4

    .line 317
    :cond_77
    iget-object p2, p0, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    if-eqz p2, :cond_9f

    .line 318
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_9f

    .line 319
    iget-object p2, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object p3, p0, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result p3

    iget-object p4, p0, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result p4

    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    .line 320
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 319
    invoke-virtual {p2, p3, p4, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_a4

    .line 322
    :cond_9f
    iget-object p2, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_a4
    move v0, p5

    .line 326
    :cond_a5
    iput-boolean v1, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsStacked:Z

    if-eqz v1, :cond_4a

    .line 327
    iget-object p2, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_4a

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p4

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    .line 328
    invoke-virtual {p2, p3, p4, v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_c0
    if-eqz p5, :cond_c5

    .line 335
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_c5
    return-void
.end method

.method public onMeasure(II)V
    .registers 6

    .line 263
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    const/high16 v1, -0x80000000

    if-nez v0, :cond_1c

    .line 264
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_1c

    iget v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mHeight:I

    if-ltz v0, :cond_1c

    .line 266
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 265
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 268
    :cond_1c
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 270
    iget-object p1, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    if-nez p1, :cond_24

    return-void

    .line 272
    :cond_24
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 273
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    if-eqz v0, :cond_73

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_73

    const/high16 v0, 0x40000000  # 2.0f

    if-eq p1, v0, :cond_73

    .line 276
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 277
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v0

    goto :goto_57

    .line 278
    :cond_47
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 279
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v0

    goto :goto_57

    :cond_56
    const/4 v0, 0x0

    :goto_57
    if-ne p1, v1, :cond_5e

    .line 284
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_61

    :cond_5e
    const p1, 0x7fffffff

    .line 285
    :goto_61
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;

    .line 286
    invoke-direct {p0, v1}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 285
    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    :cond_73
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 204
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public setVisibility(I)V
    .registers 4

    .line 143
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    if-nez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    move p1, v0

    .line 145
    :goto_9
    iget-object v1, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_10

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 146
    :cond_10
    iget-object v1, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_17

    invoke-virtual {v1, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 147
    :cond_17
    iget-object p0, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_1e

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1e
    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4

    if-eqz p3, :cond_7

    .line 247
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3

    .line 152
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    if-eqz v0, :cond_1e

    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_10

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsStacked:Z

    if-nez v0, :cond_1e

    :cond_10
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_18

    iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z

    if-nez v0, :cond_1e

    .line 153
    :cond_18
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    if-eqz p0, :cond_20

    :cond_1e
    const/4 p0, 0x1

    goto :goto_21

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return p0
.end method
