.class public Landroid/support/v7/widget/ActionBarContextView;
.super Landroid/support/v7/widget/AbsActionBarView;
.source "ActionBarContextView.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mClose:Landroid/view/View;

.field private mCloseItemLayout:I

.field private mCustomView:Landroid/view/View;

.field private mSubtitleStyleRes:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleOptional:Z

.field private mTitleStyleRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 62
    sget v0, Landroid/support/v7/appcompat/R$attr;->actionModeStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->ActionMode:[I

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object p1

    .line 70
    sget p2, Landroid/support/v7/appcompat/R$styleable;->ActionMode_background:I

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 71
    sget p2, Landroid/support/v7/appcompat/R$styleable;->ActionMode_titleTextStyle:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/ActionBarContextView;->mTitleStyleRes:I

    .line 73
    sget p2, Landroid/support/v7/appcompat/R$styleable;->ActionMode_subtitleTextStyle:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/ActionBarContextView;->mSubtitleStyleRes:I

    .line 76
    sget p2, Landroid/support/v7/appcompat/R$styleable;->ActionMode_height:I

    invoke-virtual {p1, p2, v1}, Landroid/support/v7/widget/TintTypedArray;->getLayoutDimension(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/AbsActionBarView;->mContentHeight:I

    .line 79
    sget p2, Landroid/support/v7/appcompat/R$styleable;->ActionMode_closeItemLayout:I

    sget p3, Landroid/support/v7/appcompat/R$layout;->abc_action_mode_close_item_material:I

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/ActionBarContextView;->mCloseItemLayout:I

    .line 83
    invoke-virtual {p1}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 233
    new-instance p0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 238
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .registers 1

    .line 88
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 89
    iget-object p0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-nez p0, :cond_8

    return-void

    .line 90
    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    const/4 p0, 0x0

    throw p0
.end method

.method public bridge synthetic onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 40
    invoke-super {p0, p1}, Landroid/support/v7/widget/AbsActionBarView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 4

    .line 359
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_25

    .line 361
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 362
    const-class v0, Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 363
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 364
    iget-object p0, p0, Landroid/support/v7/widget/ActionBarContextView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_28

    .line 366
    :cond_25
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :goto_28
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 15

    .line 323
    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_e

    sub-int v0, p4, p2

    .line 324
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_12

    :cond_e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    .line 325
    :goto_12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    sub-int/2addr p5, p3

    .line 326
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    sub-int/2addr p5, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p3

    sub-int p3, p5, p3

    .line 328
    iget-object p5, p0, Landroid/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const/16 v7, 0x8

    if-eqz p5, :cond_59

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result p5

    if-eq p5, v7, :cond_59

    .line 329
    iget-object p5, p0, Landroid/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    check-cast p5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_3b

    .line 330
    iget v1, p5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_3d

    :cond_3b
    iget v1, p5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_3d
    if-eqz p1, :cond_42

    .line 331
    iget p5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_44

    :cond_42
    iget p5, p5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 332
    :goto_44
    invoke-static {v0, v1, p1}, Landroid/support/v7/widget/AbsActionBarView;->next(IIZ)I

    move-result v8

    .line 333
    iget-object v1, p0, Landroid/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    move-object v0, p0

    move v2, v8

    move v3, v6

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr v8, v0

    .line 334
    invoke-static {v8, p5, p1}, Landroid/support/v7/widget/AbsActionBarView;->next(IIZ)I

    move-result p5

    goto :goto_5a

    :cond_59
    move p5, v0

    .line 337
    :goto_5a
    iget-object v0, p0, Landroid/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_74

    iget-object v1, p0, Landroid/support/v7/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v1, :cond_74

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_74

    .line 338
    iget-object v1, p0, Landroid/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object v0, p0

    move v2, p5

    move v3, v6

    move v4, p3

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v0

    add-int/2addr p5, v0

    :cond_74
    move v2, p5

    .line 341
    iget-object v1, p0, Landroid/support/v7/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_80

    move-object v0, p0

    move v3, v6

    move v4, p3

    move v5, p1

    .line 342
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    :cond_80
    if-eqz p1, :cond_88

    .line 345
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p2

    move v3, p2

    goto :goto_8f

    :cond_88
    sub-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result p2

    sub-int/2addr p4, p2

    move v3, p4

    .line 347
    :goto_8f
    iget-object v2, p0, Landroid/support/v7/widget/AbsActionBarView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v2, :cond_9c

    xor-int/lit8 p1, p1, 0x1

    move-object v1, p0

    move v4, v6

    move v5, p3

    move v6, p1

    .line 348
    invoke-virtual/range {v1 .. v6}, Landroid/support/v7/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    :cond_9c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 13

    .line 243
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const-string v1, " can only be used "

    const/high16 v2, 0x40000000  # 2.0f

    if-ne v0, v2, :cond_109

    .line 249
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eqz v0, :cond_e8

    .line 255
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 257
    iget v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mContentHeight:I

    if-lez v0, :cond_19

    goto :goto_1d

    .line 258
    :cond_19
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 260
    :goto_1d
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr p2, v1

    .line 261
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    sub-int v3, v0, p2

    const/high16 v4, -0x80000000

    .line 263
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 265
    iget-object v6, p0, Landroid/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    const/4 v7, 0x0

    if-eqz v6, :cond_50

    .line 266
    invoke-virtual {p0, v6, v1, v5, v7}, Landroid/support/v7/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v1

    .line 267
    iget-object v6, p0, Landroid/support/v7/widget/ActionBarContextView;->mClose:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 268
    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v8, v6

    sub-int/2addr v1, v8

    .line 271
    :cond_50
    iget-object v6, p0, Landroid/support/v7/widget/AbsActionBarView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v6, :cond_60

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-ne v6, p0, :cond_60

    .line 272
    iget-object v6, p0, Landroid/support/v7/widget/AbsActionBarView;->mMenuView:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {p0, v6, v1, v5, v7}, Landroid/support/v7/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v1

    .line 276
    :cond_60
    iget-object v6, p0, Landroid/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_93

    iget-object v8, p0, Landroid/support/v7/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-nez v8, :cond_93

    .line 277
    iget-boolean v8, p0, Landroid/support/v7/widget/ActionBarContextView;->mTitleOptional:Z

    if-eqz v8, :cond_8f

    .line 278
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 279
    iget-object v8, p0, Landroid/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v6, v5}, Landroid/widget/LinearLayout;->measure(II)V

    .line 280
    iget-object v5, p0, Landroid/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v5

    if-gt v5, v1, :cond_7f

    const/4 v6, 0x1

    goto :goto_80

    :cond_7f
    move v6, v7

    :goto_80
    if-eqz v6, :cond_83

    sub-int/2addr v1, v5

    .line 285
    :cond_83
    iget-object v5, p0, Landroid/support/v7/widget/ActionBarContextView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_89

    move v6, v7

    goto :goto_8b

    :cond_89
    const/16 v6, 0x8

    :goto_8b
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_93

    .line 287
    :cond_8f
    invoke-virtual {p0, v6, v1, v5, v7}, Landroid/support/v7/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v1

    .line 291
    :cond_93
    :goto_93
    iget-object v5, p0, Landroid/support/v7/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    if-eqz v5, :cond_c6

    .line 292
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 293
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v8, -0x2

    if-eq v6, v8, :cond_a2

    move v6, v2

    goto :goto_a3

    :cond_a2
    move v6, v4

    .line 295
    :goto_a3
    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v9, :cond_ab

    .line 296
    invoke-static {v9, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 297
    :cond_ab
    iget v9, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v9, v8, :cond_b0

    goto :goto_b1

    :cond_b0
    move v2, v4

    .line 299
    :goto_b1
    iget v4, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_b9

    .line 300
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 301
    :cond_b9
    iget-object v4, p0, Landroid/support/v7/widget/ActionBarContextView;->mCustomView:Landroid/view/View;

    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 302
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 301
    invoke-virtual {v4, v1, v2}, Landroid/view/View;->measure(II)V

    .line 305
    :cond_c6
    iget v1, p0, Landroid/support/v7/widget/AbsActionBarView;->mContentHeight:I

    if-gtz v1, :cond_e4

    .line 307
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    move v1, v7

    :goto_cf
    if-ge v7, v0, :cond_e0

    .line 309
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 310
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p2

    if-le v2, v1, :cond_dd

    move v1, v2

    :cond_dd
    add-int/lit8 v7, v7, 0x1

    goto :goto_cf

    .line 315
    :cond_e0
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_e7

    .line 317
    :cond_e4
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    :goto_e7
    return-void

    .line 251
    :cond_e8
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class p2, Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "with android:layout_height=\"wrap_content\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 245
    :cond_109
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-class p2, Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 2

    .line 40
    invoke-super {p0, p1}, Landroid/support/v7/widget/AbsActionBarView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setContentHeight(I)V
    .registers 2

    .line 97
    iput p1, p0, Landroid/support/v7/widget/AbsActionBarView;->mContentHeight:I

    return-void
.end method

.method public bridge synthetic setVisibility(I)V
    .registers 2

    .line 40
    invoke-super {p0, p1}, Landroid/support/v7/widget/AbsActionBarView;->setVisibility(I)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
