.class public Landroidx/appcompat/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "LinearLayoutCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;,
        Landroidx/appcompat/widget/LinearLayoutCompat$DividerMode;,
        Landroidx/appcompat/widget/LinearLayoutCompat$OrientationMode;
    }
.end annotation


# instance fields
.field private mBaselineAligned:Z

.field private mBaselineAlignedChildIndex:I

.field private mBaselineChildTop:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDividerPadding:I

.field private mDividerWidth:I

.field private mGravity:I

.field private mMaxAscent:[I

.field private mMaxDescent:[I

.field private mOrientation:I

.field private mShowDividers:I

.field private mTotalLength:I

.field private mUseLargestChild:Z

.field private mWeightSum:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .line 157
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    const/4 v1, -0x1

    .line 109
    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    const/4 v2, 0x0

    .line 116
    iput v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    const v3, 0x800033

    .line 120
    iput v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 159
    sget-object v3, Landroidx/appcompat/R$styleable;->LinearLayoutCompat:[I

    invoke-static {p1, p2, v3, p3, v2}, Landroidx/appcompat/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/TintTypedArray;

    move-result-object p1

    .line 162
    sget p2, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_22

    .line 164
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setOrientation(I)V

    .line 167
    :cond_22
    sget p2, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p2

    if-ltz p2, :cond_2d

    .line 169
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setGravity(I)V

    .line 172
    :cond_2d
    sget p2, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p2

    if-nez p2, :cond_38

    .line 174
    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setBaselineAligned(Z)V

    .line 177
    :cond_38
    sget p2, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I

    const/high16 p3, -0x40800000  # -1.0f

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/TintTypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    .line 179
    sget p2, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I

    .line 180
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 182
    sget p2, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I

    invoke-virtual {p1, p2, v2}, Landroidx/appcompat/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    .line 184
    sget p2, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_divider:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    sget p2, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I

    invoke-virtual {p1, p2, v2}, Landroidx/appcompat/widget/TintTypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    .line 186
    sget p2, Landroidx/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I

    invoke-virtual {p1, p2, v2}, Landroidx/appcompat/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    .line 188
    invoke-virtual {p1}, Landroidx/appcompat/widget/TintTypedArray;->recycle()V

    return-void
.end method

.method private forceUniformHeight(II)V
    .registers 13

    .line 1321
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, p1, :cond_3a

    .line 1324
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1325
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_37

    .line 1326
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1328
    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_37

    .line 1331
    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1332
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iput v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move v6, v0

    .line 1335
    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1336
    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_3a
    return-void
.end method

.method private forceUniformWidth(II)V
    .registers 13

    .line 899
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, p1, :cond_3a

    .line 902
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 903
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_37

    .line 904
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 906
    iget v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_37

    .line 909
    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 910
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v0

    move v6, p2

    .line 913
    invoke-virtual/range {v2 .. v7}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 914
    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_3a
    return-void
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .registers 6

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 1649
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 2

    .line 1755
    instance-of p0, p1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    return p0
.end method

.method drawDividersHorizontal(Landroid/graphics/Canvas;)V
    .registers 8

    .line 326
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    .line 327
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x0

    :goto_9
    if-ge v2, v0, :cond_3f

    .line 329
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 331
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3c

    .line 332
    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 333
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v1, :cond_2f

    .line 336
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    goto :goto_39

    .line 338
    :cond_2f
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    sub-int/2addr v3, v4

    .line 340
    :goto_39
    invoke-virtual {p0, p1, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 345
    :cond_3f
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v2

    if-eqz v2, :cond_7d

    add-int/lit8 v0, v0, -0x1

    .line 346
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_60

    if-eqz v1, :cond_54

    .line 350
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    goto :goto_7a

    .line 352
    :cond_54
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    goto :goto_71

    .line 355
    :cond_60
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v1, :cond_73

    .line 357
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    :goto_71
    sub-int/2addr v0, v1

    goto :goto_7a

    .line 359
    :cond_73
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 362
    :goto_7a
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_7d
    return-void
.end method

.method drawDividersVertical(Landroid/graphics/Canvas;)V
    .registers 7

    .line 299
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_31

    .line 301
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 303
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_2e

    .line 304
    invoke-virtual {p0, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 305
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 306
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v2, v3

    .line 307
    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 312
    :cond_31
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_5c

    add-int/lit8 v0, v0, -0x1

    .line 313
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_4c

    .line 316
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    sub-int/2addr v0, v1

    goto :goto_59

    .line 318
    :cond_4c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 319
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    .line 321
    :goto_59
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_5c
    return-void
.end method

.method drawHorizontalDivider(Landroid/graphics/Canvas;I)V
    .registers 7

    .line 367
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    .line 368
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, p2

    .line 367
    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 369
    iget-object p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawVerticalDivider(Landroid/graphics/Canvas;I)V
    .registers 8

    .line 373
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v2, p2

    .line 374
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerPadding:I

    sub-int/2addr v3, v4

    .line 373
    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 375
    iget-object p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 1

    .line 57
    invoke-virtual {p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .registers 3

    .line 1738
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v0, -0x2

    if-nez p0, :cond_b

    .line 1739
    new-instance p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {p0, v0, v0}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object p0

    :cond_b
    const/4 v1, 0x1

    if-ne p0, v1, :cond_15

    .line 1741
    new-instance p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V

    return-object p0

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 57
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .registers 3

    .line 1725
    new-instance v0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;
    .registers 2

    .line 1748
    new-instance p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getBaseline()I
    .registers 6

    .line 427
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-gez v0, :cond_9

    .line 428
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result p0

    return p0

    .line 431
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    iget v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-le v0, v1, :cond_77

    .line 436
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 437
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_29

    .line 440
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    if-nez p0, :cond_21

    return v2

    .line 446
    :cond_21
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 456
    :cond_29
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    .line 458
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6c

    .line 459
    iget v3, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x30

    if-eq v3, v4, :cond_6c

    const/16 v4, 0x10

    if-eq v3, v4, :cond_53

    const/16 v4, 0x50

    if-eq v3, v4, :cond_41

    goto :goto_6c

    .line 463
    :cond_41
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v2, p0

    goto :goto_6c

    .line 467
    :cond_53
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v3, p0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 474
    :cond_6c
    :goto_6c
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 475
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, p0

    add-int/2addr v2, v1

    return v2

    .line 432
    :cond_77
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method getChildrenSkipCount(Landroid/view/View;I)I
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 225
    iget-object p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getDividerWidth()I
    .registers 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 282
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    return p0
.end method

.method public getGravity()I
    .registers 1

    .line 1704
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    return p0
.end method

.method getLocationOffset(Landroid/view/View;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method getNextLocationOffset(Landroid/view/View;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method getVirtualChildAt(I)Landroid/view/View;
    .registers 2

    .line 509
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method getVirtualChildCount()I
    .registers 1

    .line 522
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    return p0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .registers 6
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_b

    .line 571
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_a

    move v0, v1

    :cond_a
    return v0

    .line 572
    :cond_b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ne p1, v2, :cond_19

    .line 573
    iget p0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_18

    move v0, v1

    :cond_18
    return v0

    .line 574
    :cond_19
    iget v2, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mShowDividers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_33

    sub-int/2addr p1, v1

    :goto_20
    if-ltz p1, :cond_33

    .line 577
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_30

    move v0, v1

    goto :goto_33

    :cond_30
    add-int/lit8 p1, p1, -0x1

    goto :goto_20

    :cond_33
    :goto_33
    return v0
.end method

.method layoutHorizontal(IIII)V
    .registers 29

    move-object/from16 v6, p0

    .line 1525
    invoke-static/range {p0 .. p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    .line 1526
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v7

    sub-int v1, p4, p2

    .line 1533
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int v8, v1, v2

    sub-int/2addr v1, v7

    .line 1536
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    sub-int v9, v1, v2

    .line 1538
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v10

    .line 1540
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    const v2, 0x800007

    and-int/2addr v2, v1

    and-int/lit8 v11, v1, 0x70

    .line 1543
    iget-boolean v12, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 1545
    iget-object v13, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 1546
    iget-object v14, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 1548
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 1549
    invoke-static {v2, v1}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    const/4 v15, 0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_4b

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3f

    .line 1562
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    goto :goto_56

    .line 1552
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    add-int v1, v1, p3

    sub-int v1, v1, p1

    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v1, v2

    goto :goto_56

    .line 1557
    :cond_4b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int v2, p3, p1

    iget v3, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v2, v3

    div-int/2addr v2, v15

    add-int/2addr v1, v2

    :goto_56
    const/4 v2, 0x0

    if-eqz v0, :cond_60

    add-int/lit8 v0, v10, -0x1

    move/from16 v16, v0

    const/16 v17, -0x1

    goto :goto_64

    :cond_60
    move/from16 v16, v2

    move/from16 v17, v5

    :goto_64
    move v3, v2

    :goto_65
    if-ge v3, v10, :cond_149

    mul-int v0, v17, v3

    add-int v2, v16, v0

    .line 1576
    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_80

    .line 1579
    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v0

    add-int/2addr v1, v0

    move/from16 v21, v5

    move/from16 v22, v7

    move/from16 v19, v10

    move/from16 v20, v11

    goto/16 :goto_13a

    .line 1580
    :cond_80
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v15, 0x8

    if-eq v5, v15, :cond_130

    .line 1581
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    .line 1582
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 1586
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v4, v18

    check-cast v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    move/from16 v18, v3

    if-eqz v12, :cond_a8

    .line 1588
    iget v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v19, v10

    const/4 v10, -0x1

    if-eq v3, v10, :cond_aa

    .line 1589
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v3

    goto :goto_ab

    :cond_a8
    move/from16 v19, v10

    :cond_aa
    const/4 v3, -0x1

    .line 1592
    :goto_ab
    iget v10, v4, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v10, :cond_b0

    move v10, v11

    :cond_b0
    and-int/lit8 v10, v10, 0x70

    move/from16 v20, v11

    const/16 v11, 0x10

    if-eq v10, v11, :cond_ec

    const/16 v11, 0x30

    if-eq v10, v11, :cond_dc

    const/16 v11, 0x50

    if-eq v10, v11, :cond_c5

    move v3, v7

    const/4 v11, -0x1

    :goto_c2
    const/16 v21, 0x1

    goto :goto_fa

    :cond_c5
    sub-int v10, v8, v5

    .line 1622
    iget v11, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v10, v11

    const/4 v11, -0x1

    if-eq v3, v11, :cond_da

    .line 1624
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    sub-int v21, v21, v3

    const/4 v3, 0x2

    .line 1625
    aget v22, v14, v3

    sub-int v22, v22, v21

    sub-int v10, v10, v22

    :cond_da
    move v3, v10

    goto :goto_c2

    :cond_dc
    const/4 v11, -0x1

    .line 1599
    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v10, v7

    const/16 v21, 0x1

    if-eq v3, v11, :cond_ea

    .line 1601
    aget v22, v13, v21

    sub-int v22, v22, v3

    add-int v10, v10, v22

    :cond_ea
    move v3, v10

    goto :goto_fa

    :cond_ec
    const/4 v11, -0x1

    const/16 v21, 0x1

    sub-int v3, v9, v5

    const/4 v10, 0x2

    .line 1617
    div-int/2addr v3, v10

    add-int/2addr v3, v7

    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v10

    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v3, v10

    .line 1633
    :goto_fa
    invoke-virtual {v6, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v10

    if-eqz v10, :cond_103

    .line 1634
    iget v10, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v1, v10

    .line 1637
    :cond_103
    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v10, v1

    .line 1638
    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int v22, v10, v1

    move-object v1, v0

    move-object/from16 v0, p0

    move-object/from16 p1, v1

    move v11, v2

    move/from16 v2, v22

    move/from16 v22, v7

    const/16 v23, -0x1

    move-object v7, v4

    move v4, v15

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1640
    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v15, v0

    move-object/from16 v0, p1

    .line 1641
    invoke-virtual {v6, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v15, v1

    add-int/2addr v10, v15

    .line 1643
    invoke-virtual {v6, v0, v11}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int v3, v18, v0

    move v1, v10

    goto :goto_13c

    :cond_130
    move/from16 v18, v3

    move/from16 v22, v7

    move/from16 v19, v10

    move/from16 v20, v11

    const/16 v21, 0x1

    :goto_13a
    const/16 v23, -0x1

    :goto_13c
    add-int/lit8 v3, v3, 0x1

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v5, v21

    move/from16 v7, v22

    const/4 v15, 0x2

    goto/16 :goto_65

    :cond_149
    return-void
.end method

.method layoutVertical(IIII)V
    .registers 22

    move-object/from16 v6, p0

    .line 1430
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v7

    sub-int v0, p3, p1

    .line 1437
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int v8, v0, v1

    sub-int/2addr v0, v7

    .line 1440
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int v9, v0, v1

    .line 1442
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v10

    .line 1444
    iget v0, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    and-int/lit8 v1, v0, 0x70

    const v2, 0x800007

    and-int v11, v0, v2

    const/16 v0, 0x10

    if-eq v1, v0, :cond_3b

    const/16 v0, 0x50

    if-eq v1, v0, :cond_2f

    .line 1460
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    goto :goto_47

    .line 1450
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    add-int v0, v0, p4

    sub-int v0, v0, p2

    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v0, v1

    goto :goto_47

    .line 1455
    :cond_3b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    sub-int v1, p4, p2

    iget v2, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :goto_47
    const/4 v1, 0x0

    move v12, v1

    :goto_49
    if-ge v12, v10, :cond_cc

    .line 1465
    invoke-virtual {v6, v12}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x1

    if-nez v13, :cond_59

    .line 1467
    invoke-virtual {v6, v12}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_c8

    .line 1468
    :cond_59
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_c8

    .line 1469
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 1470
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 1473
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1475
    iget v1, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v1, :cond_75

    move v1, v11

    .line 1479
    :cond_75
    invoke-static/range {p0 .. p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 1480
    invoke-static {v1, v2}, Landroidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    if-eq v1, v14, :cond_8e

    const/4 v2, 0x5

    if-eq v1, v2, :cond_89

    .line 1494
    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v7

    :goto_87
    move v2, v1

    goto :goto_9a

    :cond_89
    sub-int v1, v8, v4

    .line 1489
    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_98

    :cond_8e
    sub-int v1, v9, v4

    .line 1484
    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v7

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_98
    sub-int/2addr v1, v2

    goto :goto_87

    .line 1498
    :goto_9a
    invoke-virtual {v6, v12}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_a3

    .line 1499
    iget v1, v6, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v0, v1

    .line 1502
    :cond_a3
    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v16, v0, v1

    .line 1503
    invoke-virtual {v6, v13}, Landroidx/appcompat/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int v3, v16, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v14, v5

    move v5, v15

    invoke-direct/range {v0 .. v5}, Landroidx/appcompat/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V

    .line 1505
    iget v0, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v15, v0

    invoke-virtual {v6, v13}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v0

    add-int/2addr v15, v0

    add-int v16, v16, v15

    .line 1507
    invoke-virtual {v6, v13, v12}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v12, v0

    move/from16 v0, v16

    const/4 v1, 0x1

    goto :goto_c9

    :cond_c8
    :goto_c8
    move v1, v14

    :goto_c9
    add-int/2addr v12, v1

    goto/16 :goto_49

    :cond_cc
    return-void
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .registers 13

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 1381
    invoke-virtual/range {v0 .. v5}, Landroid/view/ViewGroup;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method measureHorizontal(II)V
    .registers 41

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    .line 932
    iput v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 940
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 942
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 943
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 948
    iget-object v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    const/4 v14, 0x4

    if-eqz v0, :cond_1e

    iget-object v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    if-nez v0, :cond_26

    :cond_1e
    new-array v0, v14, [I

    .line 949
    iput-object v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    new-array v0, v14, [I

    .line 950
    iput-object v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    .line 953
    :cond_26
    iget-object v15, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxAscent:[I

    .line 954
    iget-object v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mMaxDescent:[I

    const/16 v16, 0x3

    const/4 v5, -0x1

    .line 956
    aput v5, v15, v16

    const/16 v17, 0x2

    aput v5, v15, v17

    const/16 v18, 0x1

    aput v5, v15, v18

    aput v5, v15, v10

    .line 957
    aput v5, v6, v16

    aput v5, v6, v17

    aput v5, v6, v18

    aput v5, v6, v10

    .line 959
    iget-boolean v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    .line 960
    iget-boolean v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    const/high16 v2, 0x40000000  # 2.0f

    if-ne v12, v2, :cond_4c

    move/from16 v19, v18

    goto :goto_4e

    :cond_4c
    move/from16 v19, v10

    :goto_4e
    const/16 v20, 0x0

    move v1, v10

    move v14, v1

    move/from16 v21, v14

    move/from16 v22, v21

    move/from16 v23, v22

    move/from16 v24, v23

    move/from16 v26, v24

    move/from16 v28, v26

    move/from16 v27, v18

    move/from16 v0, v20

    :goto_62
    move-object/from16 v29, v6

    const/16 v5, 0x8

    if-ge v1, v11, :cond_205

    .line 968
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_7d

    .line 971
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_77
    move/from16 v33, v3

    move/from16 v37, v4

    goto/16 :goto_1f5

    .line 975
    :cond_7d
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v5, :cond_89

    .line 976
    invoke-virtual {v7, v6, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v5

    add-int/2addr v1, v5

    goto :goto_77

    .line 980
    :cond_89
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_96

    .line 981
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v5, v10

    iput v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 985
    :cond_96
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 987
    iget v5, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v32, v0, v5

    if-ne v12, v2, :cond_ec

    .line 989
    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v0, :cond_ec

    iget v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v20

    if-lez v0, :cond_ec

    if-eqz v19, :cond_ba

    .line 994
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v2

    add-int/2addr v0, v5

    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_c8

    .line 996
    :cond_ba
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 997
    iget v2, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v0

    iget v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v5

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_c8
    if-eqz v4, :cond_dd

    const/4 v0, 0x0

    .line 1007
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1008
    invoke-virtual {v6, v2, v2}, Landroid/view/View;->measure(II)V

    move/from16 v35, v1

    move/from16 v33, v3

    move/from16 v37, v4

    move-object v3, v6

    const/16 v31, -0x2

    goto/16 :goto_168

    :cond_dd
    move/from16 v35, v1

    move/from16 v33, v3

    move/from16 v37, v4

    move-object v3, v6

    move/from16 v24, v18

    const/high16 v1, 0x40000000  # 2.0f

    const/16 v31, -0x2

    goto/16 :goto_16a

    .line 1015
    :cond_ec
    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v0, :cond_fb

    iget v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v20

    if-lez v0, :cond_fb

    const/4 v5, -0x2

    .line 1021
    iput v5, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v2, 0x0

    goto :goto_fe

    :cond_fb
    const/4 v5, -0x2

    const/high16 v2, -0x80000000

    :goto_fe
    cmpl-float v0, v32, v20

    if-nez v0, :cond_107

    .line 1028
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v30, v0

    goto :goto_109

    :cond_107
    const/16 v30, 0x0

    :goto_109
    const/16 v34, 0x0

    move-object/from16 v0, p0

    move/from16 v35, v1

    move-object v1, v6

    move/from16 v36, v2

    move/from16 v2, v35

    move/from16 v33, v3

    move/from16 v3, p1

    move/from16 v37, v4

    move/from16 v4, v30

    move/from16 v30, v5

    const/4 v9, -0x1

    move/from16 v5, p2

    move/from16 v31, v30

    const/high16 v9, -0x80000000

    move-object/from16 v30, v6

    move/from16 v6, v34

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    move/from16 v0, v36

    if-eq v0, v9, :cond_132

    .line 1033
    iput v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1036
    :cond_132
    invoke-virtual/range {v30 .. v30}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-eqz v19, :cond_14b

    .line 1038
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v2, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v0

    iget v3, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    move-object/from16 v3, v30

    .line 1039
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v1, v2

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_162

    :cond_14b
    move-object/from16 v3, v30

    .line 1041
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v2, v1, v0

    .line 1042
    iget v4, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 1043
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 1042
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_162
    if-eqz v33, :cond_168

    .line 1047
    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_168
    :goto_168
    const/high16 v1, 0x40000000  # 2.0f

    :goto_16a
    if-eq v13, v1, :cond_176

    .line 1052
    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_176

    move/from16 v0, v18

    move/from16 v28, v0

    goto :goto_177

    :cond_176
    const/4 v0, 0x0

    .line 1060
    :goto_177
    iget v2, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    .line 1061
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v2

    .line 1062
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    move/from16 v6, v26

    invoke-static {v6, v5}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    if-eqz v37, :cond_1b6

    .line 1065
    invoke-virtual {v3}, Landroid/view/View;->getBaseline()I

    move-result v6

    const/4 v9, -0x1

    if-eq v6, v9, :cond_1b6

    .line 1069
    iget v9, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v9, :cond_19a

    iget v9, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    :cond_19a
    and-int/lit8 v9, v9, 0x70

    const/16 v25, 0x4

    shr-int/lit8 v9, v9, 0x4

    and-int/lit8 v9, v9, -0x2

    shr-int/lit8 v9, v9, 0x1

    .line 1074
    aget v1, v15, v9

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v15, v9

    .line 1075
    aget v1, v29, v9

    sub-int v6, v4, v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, v29, v9

    :cond_1b6
    move/from16 v1, v21

    .line 1079
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v27, :cond_1c6

    .line 1081
    iget v6, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v9, -0x1

    if-ne v6, v9, :cond_1c6

    move/from16 v6, v18

    goto :goto_1c7

    :cond_1c6
    const/4 v6, 0x0

    .line 1082
    :goto_1c7
    iget v9, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v9, v9, v20

    if-lez v9, :cond_1d8

    if-eqz v0, :cond_1d0

    goto :goto_1d1

    :cond_1d0
    move v2, v4

    :goto_1d1
    move/from16 v10, v23

    .line 1087
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v23

    goto :goto_1e5

    :cond_1d8
    move/from16 v10, v23

    if-eqz v0, :cond_1dd

    move v4, v2

    :cond_1dd
    move/from16 v2, v22

    .line 1090
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v22

    move/from16 v23, v10

    :goto_1e5
    move/from16 v10, v35

    .line 1094
    invoke-virtual {v7, v3, v10}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v0

    add-int/2addr v0, v10

    move/from16 v21, v1

    move/from16 v26, v5

    move/from16 v27, v6

    move v1, v0

    move/from16 v0, v32

    :goto_1f5
    add-int/lit8 v1, v1, 0x1

    move/from16 v9, p2

    move-object/from16 v6, v29

    move/from16 v3, v33

    move/from16 v4, v37

    const/high16 v2, 0x40000000  # 2.0f

    const/4 v5, -0x1

    const/4 v10, 0x0

    goto/16 :goto_62

    :cond_205
    move/from16 v33, v3

    move/from16 v37, v4

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v10, v23

    move/from16 v6, v26

    const/high16 v9, -0x80000000

    const/16 v31, -0x2

    .line 1097
    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v3, :cond_226

    invoke-virtual {v7, v11}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_226

    .line 1098
    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    add-int/2addr v3, v4

    iput v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1103
    :cond_226
    aget v3, v15, v18

    const/4 v4, -0x1

    if-ne v3, v4, :cond_23c

    const/4 v3, 0x0

    aget v5, v15, v3

    if-ne v5, v4, :cond_23c

    aget v3, v15, v17

    if-ne v3, v4, :cond_23c

    aget v3, v15, v16

    if-eq v3, v4, :cond_239

    goto :goto_23c

    :cond_239
    move/from16 v23, v6

    goto :goto_26d

    .line 1107
    :cond_23c
    :goto_23c
    aget v3, v15, v16

    const/4 v4, 0x0

    aget v5, v15, v4

    aget v9, v15, v18

    aget v4, v15, v17

    .line 1109
    invoke-static {v9, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1108
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1107
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1110
    aget v4, v29, v16

    const/4 v5, 0x0

    aget v9, v29, v5

    aget v5, v29, v18

    move/from16 v23, v6

    aget v6, v29, v17

    .line 1112
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1111
    invoke-static {v9, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1110
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 1113
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_26d
    if-eqz v33, :cond_2d0

    const/high16 v3, -0x80000000

    if-eq v12, v3, :cond_275

    if-nez v12, :cond_2d0

    :cond_275
    const/4 v3, 0x0

    .line 1118
    iput v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    const/4 v3, 0x0

    :goto_279
    if-ge v3, v11, :cond_2d0

    .line 1121
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_28b

    .line 1124
    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_298

    .line 1128
    :cond_28b
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_29b

    .line 1129
    invoke-virtual {v7, v4, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v4

    add-int/2addr v3, v4

    :goto_298
    move/from16 v22, v1

    goto :goto_2cb

    .line 1134
    :cond_29b
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    if-eqz v19, :cond_2b4

    .line 1136
    iget v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v14

    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v9, v5

    .line 1137
    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v9, v4

    add-int/2addr v6, v9

    iput v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_298

    .line 1139
    :cond_2b4
    iget v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v9, v6, v14

    move/from16 v22, v1

    .line 1140
    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v1

    iget v1, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v9, v1

    .line 1141
    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v9, v1

    .line 1140
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_2cb
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v22

    goto :goto_279

    :cond_2d0
    move/from16 v22, v1

    .line 1147
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1149
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1152
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v3, 0x0

    .line 1155
    invoke-static {v1, v8, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    const v3, 0xffffff

    and-int/2addr v3, v1

    .line 1161
    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v3, v4

    if-nez v24, :cond_343

    if-eqz v3, :cond_2ff

    cmpl-float v5, v0, v20

    if-lez v5, :cond_2ff

    goto :goto_343

    .line 1273
    :cond_2ff
    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v33, :cond_33b

    const/high16 v2, 0x40000000  # 2.0f

    if-eq v12, v2, :cond_33b

    const/4 v2, 0x0

    :goto_30a
    if-ge v2, v11, :cond_33b

    .line 1279
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_338

    .line 1281
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_31b

    goto :goto_338

    .line 1286
    :cond_31b
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1288
    iget v5, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v5, v5, v20

    if-lez v5, :cond_338

    const/high16 v5, 0x40000000  # 2.0f

    .line 1291
    invoke-static {v14, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1292
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-static {v9, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1290
    invoke-virtual {v3, v6, v9}, Landroid/view/View;->measure(II)V

    :cond_338
    :goto_338
    add-int/lit8 v2, v2, 0x1

    goto :goto_30a

    :cond_33b
    move/from16 v3, p2

    move/from16 v26, v11

    move/from16 v2, v22

    goto/16 :goto_4e6

    .line 1163
    :cond_343
    :goto_343
    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    cmpl-float v6, v5, v20

    if-lez v6, :cond_34a

    move v0, v5

    :cond_34a
    const/4 v5, -0x1

    .line 1165
    aput v5, v15, v16

    aput v5, v15, v17

    aput v5, v15, v18

    const/4 v6, 0x0

    aput v5, v15, v6

    .line 1166
    aput v5, v29, v16

    aput v5, v29, v17

    aput v5, v29, v18

    aput v5, v29, v6

    .line 1169
    iput v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move v10, v2

    move v6, v5

    move/from16 v9, v23

    move v2, v0

    const/4 v0, 0x0

    :goto_364
    if-ge v0, v11, :cond_48d

    .line 1172
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_47c

    .line 1174
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v4, 0x8

    if-ne v5, v4, :cond_376

    goto/16 :goto_47c

    .line 1179
    :cond_376
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 1181
    iget v4, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v23, v4, v20

    if-lez v23, :cond_3de

    int-to-float v8, v3

    mul-float/2addr v8, v4

    div-float/2addr v8, v2

    float-to-int v8, v8

    sub-float/2addr v2, v4

    sub-int/2addr v3, v8

    .line 1190
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v23

    add-int v4, v4, v23

    move/from16 v23, v2

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v4, v2

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v4, v2

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v24, v3

    move/from16 v26, v11

    const/4 v11, -0x1

    move/from16 v3, p2

    .line 1188
    invoke-static {v3, v4, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 1195
    iget v4, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v4, :cond_3bc

    const/high16 v4, 0x40000000  # 2.0f

    if-eq v12, v4, :cond_3b0

    goto :goto_3be

    :cond_3b0
    if-lez v8, :cond_3b3

    goto :goto_3b4

    :cond_3b3
    const/4 v8, 0x0

    .line 1208
    :goto_3b4
    invoke-static {v8, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v14, v8, v2}, Landroid/view/View;->measure(II)V

    goto :goto_3ce

    :cond_3bc
    const/high16 v4, 0x40000000  # 2.0f

    .line 1198
    :goto_3be
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    add-int v8, v30, v8

    if-gez v8, :cond_3c7

    const/4 v8, 0x0

    .line 1204
    :cond_3c7
    invoke-static {v8, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1203
    invoke-virtual {v14, v8, v2}, Landroid/view/View;->measure(II)V

    .line 1215
    :goto_3ce
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    const/high16 v4, -0x1000000

    and-int/2addr v2, v4

    .line 1214
    invoke-static {v9, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v9

    move/from16 v2, v23

    move/from16 v4, v24

    goto :goto_3e4

    :cond_3de
    move v4, v3

    move/from16 v26, v11

    const/4 v11, -0x1

    move/from16 v3, p2

    :goto_3e4
    if-eqz v19, :cond_401

    .line 1219
    iget v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int v23, v23, v11

    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int v23, v23, v11

    .line 1220
    invoke-virtual {v7, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v11

    add-int v23, v23, v11

    add-int v8, v8, v23

    iput v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v23, v2

    goto :goto_41b

    .line 1222
    :cond_401
    iget v8, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1223
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v8

    move/from16 v23, v2

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v11, v2

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v11, v2

    .line 1224
    invoke-virtual {v7, v14}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v2

    add-int/2addr v11, v2

    .line 1223
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_41b
    const/high16 v2, 0x40000000  # 2.0f

    if-eq v13, v2, :cond_427

    .line 1227
    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v2, v8, :cond_427

    move/from16 v2, v18

    goto :goto_428

    :cond_427
    const/4 v2, 0x0

    .line 1230
    :goto_428
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v11, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v11

    .line 1231
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v8

    .line 1232
    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    if-eqz v2, :cond_439

    goto :goto_43a

    :cond_439
    move v8, v11

    .line 1233
    :goto_43a
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz v27, :cond_448

    .line 1236
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v10, -0x1

    if-ne v8, v10, :cond_449

    move/from16 v8, v18

    goto :goto_44a

    :cond_448
    const/4 v10, -0x1

    :cond_449
    const/4 v8, 0x0

    :goto_44a
    if-eqz v37, :cond_474

    .line 1239
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v14

    if-eq v14, v10, :cond_474

    .line 1242
    iget v5, v5, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->gravity:I

    if-gez v5, :cond_458

    iget v5, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    :cond_458
    and-int/lit8 v5, v5, 0x70

    const/16 v24, 0x4

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, -0x2

    shr-int/lit8 v5, v5, 0x1

    .line 1247
    aget v10, v15, v5

    invoke-static {v10, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v15, v5

    .line 1248
    aget v10, v29, v5

    sub-int/2addr v11, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    aput v10, v29, v5

    goto :goto_476

    :cond_474
    const/16 v24, 0x4

    :goto_476
    move v10, v2

    move/from16 v27, v8

    move/from16 v2, v23

    goto :goto_483

    :cond_47c
    :goto_47c
    move v4, v3

    move/from16 v26, v11

    const/16 v24, 0x4

    move/from16 v3, p2

    :goto_483
    add-int/lit8 v0, v0, 0x1

    move/from16 v8, p1

    move v3, v4

    move/from16 v11, v26

    const/4 v5, -0x1

    goto/16 :goto_364

    :cond_48d
    move/from16 v3, p2

    move/from16 v26, v11

    .line 1255
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 1260
    aget v0, v15, v18

    const/4 v2, -0x1

    if-ne v0, v2, :cond_4b4

    const/4 v0, 0x0

    aget v4, v15, v0

    if-ne v4, v2, :cond_4b4

    aget v0, v15, v17

    if-ne v0, v2, :cond_4b4

    aget v0, v15, v16

    if-eq v0, v2, :cond_4b2

    goto :goto_4b4

    :cond_4b2
    move v0, v6

    goto :goto_4e2

    .line 1264
    :cond_4b4
    :goto_4b4
    aget v0, v15, v16

    const/4 v2, 0x0

    aget v4, v15, v2

    aget v5, v15, v18

    aget v8, v15, v17

    .line 1266
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1265
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1264
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1267
    aget v4, v29, v16

    aget v2, v29, v2

    aget v5, v29, v18

    aget v8, v29, v17

    .line 1269
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1268
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1267
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1270
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_4e2
    move v2, v0

    move/from16 v23, v9

    move v0, v10

    :goto_4e6
    if-nez v27, :cond_4ed

    const/high16 v4, 0x40000000  # 2.0f

    if-eq v13, v4, :cond_4ed

    goto :goto_4ee

    :cond_4ed
    move v0, v2

    .line 1303
    :goto_4ee
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    .line 1306
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v2, -0x1000000

    and-int v2, v23, v2

    or-int/2addr v1, v2

    shl-int/lit8 v2, v23, 0x10

    .line 1309
    invoke-static {v0, v3, v2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 1308
    invoke-virtual {v7, v1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    if-eqz v28, :cond_517

    move/from16 v0, p1

    move/from16 v1, v26

    .line 1313
    invoke-direct {v7, v1, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->forceUniformHeight(II)V

    :cond_517
    return-void
.end method

.method measureNullChild(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method measureVertical(II)V
    .registers 37

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    .line 599
    iput v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 607
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildCount()I

    move-result v11

    .line 609
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 610
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 615
    iget v14, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I

    .line 616
    iget-boolean v15, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mUseLargestChild:Z

    const/16 v16, 0x0

    const/16 v17, 0x1

    move v1, v10

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    move/from16 v18, v6

    move/from16 v20, v18

    move/from16 v0, v16

    move/from16 v19, v17

    :goto_2b
    const/16 v10, 0x8

    move/from16 v22, v4

    if-ge v6, v11, :cond_1a2

    .line 622
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_48

    .line 625
    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v10

    add-int/2addr v4, v10

    iput v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v23, v11

    move/from16 v4, v22

    :goto_44
    move/from16 v22, v13

    goto/16 :goto_196

    :cond_48
    move/from16 v24, v1

    .line 629
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v10, :cond_5c

    .line 630
    invoke-virtual {v7, v4, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v1

    add-int/2addr v6, v1

    move/from16 v23, v11

    move/from16 v4, v22

    move/from16 v1, v24

    goto :goto_44

    .line 634
    :cond_5c
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 635
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v1, v10

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 638
    :cond_69
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 640
    iget v1, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    add-float v25, v0, v1

    const/high16 v1, 0x40000000  # 2.0f

    if-ne v13, v1, :cond_a7

    .line 642
    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez v0, :cond_a7

    iget v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_a7

    .line 646
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 647
    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, v0

    move/from16 v26, v2

    iget v2, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move v0, v3

    move-object v3, v4

    move/from16 v31, v5

    move/from16 v23, v11

    move/from16 v18, v17

    move/from16 v8, v24

    move/from16 v30, v26

    move v11, v6

    move/from16 v32, v22

    move/from16 v22, v13

    move/from16 v13, v32

    goto/16 :goto_11b

    :cond_a7
    move/from16 v26, v2

    .line 652
    iget v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez v0, :cond_b8

    iget v0, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v0, v0, v16

    if-lez v0, :cond_b8

    const/4 v0, -0x2

    .line 658
    iput v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v2, 0x0

    goto :goto_ba

    :cond_b8
    const/high16 v2, -0x80000000

    :goto_ba
    const/16 v27, 0x0

    cmpl-float v0, v25, v16

    if-nez v0, :cond_c5

    .line 665
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v28, v0

    goto :goto_c7

    :cond_c5
    const/16 v28, 0x0

    :goto_c7
    move-object/from16 v0, p0

    move/from16 v8, v24

    const/high16 v23, 0x40000000  # 2.0f

    move-object v1, v4

    move/from16 v29, v2

    move/from16 v30, v26

    move v2, v6

    move v9, v3

    move/from16 v3, p1

    move-object/from16 v24, v4

    move/from16 v32, v23

    move/from16 v23, v11

    move/from16 v11, v32

    move/from16 v33, v22

    move/from16 v22, v13

    move/from16 v13, v33

    move/from16 v4, v27

    move/from16 v31, v5

    move/from16 v5, p2

    move v11, v6

    move/from16 v6, v28

    invoke-virtual/range {v0 .. v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    move/from16 v0, v29

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_f8

    .line 670
    iput v0, v10, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 673
    :cond_f8
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 674
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v2, v1, v0

    .line 675
    iget v3, v10, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v10, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    move-object/from16 v3, v24

    .line 676
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v4

    add-int/2addr v2, v4

    .line 675
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    if-eqz v15, :cond_11a

    .line 679
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_11b

    :cond_11a
    move v0, v9

    :goto_11b
    if-ltz v14, :cond_125

    add-int/lit8 v6, v11, 0x1

    if-ne v14, v6, :cond_125

    .line 688
    iget v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineChildTop:I

    :cond_125
    if-ge v11, v14, :cond_136

    .line 694
    iget v1, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v1, v1, v16

    if-gtz v1, :cond_12e

    goto :goto_136

    .line 695
    :cond_12e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_136
    :goto_136
    const/high16 v1, 0x40000000  # 2.0f

    if-eq v12, v1, :cond_144

    .line 702
    iget v1, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_144

    move/from16 v1, v17

    move/from16 v20, v1

    goto :goto_145

    :cond_144
    const/4 v1, 0x0

    .line 711
    :goto_145
    iget v2, v10, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v4, v10, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 712
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    move/from16 v5, v30

    .line 713
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 715
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v6

    .line 714
    invoke-static {v8, v6}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v6

    if-eqz v19, :cond_167

    .line 717
    iget v8, v10, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_167

    move/from16 v8, v17

    goto :goto_168

    :cond_167
    const/4 v8, 0x0

    .line 718
    :goto_168
    iget v9, v10, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v9, v9, v16

    if-lez v9, :cond_17a

    if-eqz v1, :cond_171

    goto :goto_172

    :cond_171
    move v2, v4

    .line 723
    :goto_172
    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v13, v4

    move/from16 v1, v31

    goto :goto_184

    :cond_17a
    if-eqz v1, :cond_17d

    goto :goto_17e

    :cond_17d
    move v2, v4

    :goto_17e
    move/from16 v1, v31

    .line 726
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 730
    :goto_184
    invoke-virtual {v7, v3, v11}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v2

    add-int/2addr v2, v11

    move v3, v0

    move/from16 v19, v8

    move v4, v13

    move/from16 v0, v25

    move/from16 v32, v5

    move v5, v1

    move v1, v6

    move v6, v2

    move/from16 v2, v32

    :goto_196
    add-int/lit8 v6, v6, 0x1

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v13, v22

    move/from16 v11, v23

    goto/16 :goto_2b

    :cond_1a2
    move v8, v1

    move v9, v3

    move v1, v5

    move/from16 v23, v11

    move v5, v2

    move/from16 v32, v22

    move/from16 v22, v13

    move/from16 v13, v32

    .line 733
    iget v2, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    if-lez v2, :cond_1c2

    move/from16 v2, v23

    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_1c4

    .line 734
    iget v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    add-int/2addr v3, v4

    iput v3, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_1c4

    :cond_1c2
    move/from16 v2, v23

    :cond_1c4
    :goto_1c4
    move/from16 v3, v22

    if-eqz v15, :cond_213

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_1ce

    if-nez v3, :cond_213

    :cond_1ce
    const/4 v4, 0x0

    .line 739
    iput v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    const/4 v4, 0x0

    :goto_1d2
    if-ge v4, v2, :cond_213

    .line 742
    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_1e4

    .line 745
    iget v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureNullChild(I)I

    move-result v11

    add-int/2addr v6, v11

    iput v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    goto :goto_20e

    .line 749
    :cond_1e4
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v10, :cond_1f0

    .line 750
    invoke-virtual {v7, v6, v4}, Landroidx/appcompat/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_20e

    .line 755
    :cond_1f0
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 757
    iget v14, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    add-int v21, v14, v9

    .line 758
    iget v10, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v21, v21, v10

    iget v10, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int v21, v21, v10

    .line 759
    invoke-virtual {v7, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v6

    add-int v6, v21, v6

    .line 758
    invoke-static {v14, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    :goto_20e
    add-int/lit8 v4, v4, 0x1

    const/16 v10, 0x8

    goto :goto_1d2

    .line 764
    :cond_213
    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v10

    add-int/2addr v6, v10

    add-int/2addr v4, v6

    iput v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 766
    iget v4, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 769
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v6, p2

    move v10, v9

    const/4 v9, 0x0

    .line 772
    invoke-static {v4, v6, v9}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v4

    const v9, 0xffffff

    and-int/2addr v9, v4

    .line 778
    iget v11, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    sub-int/2addr v9, v11

    if-nez v18, :cond_284

    if-eqz v9, :cond_243

    cmpl-float v11, v0, v16

    if-lez v11, :cond_243

    goto :goto_284

    .line 851
    :cond_243
    invoke-static {v1, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v15, :cond_27f

    const/high16 v1, 0x40000000  # 2.0f

    if-eq v3, v1, :cond_27f

    const/4 v1, 0x0

    :goto_24e
    if-ge v1, v2, :cond_27f

    .line 859
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_27c

    .line 861
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v11, 0x8

    if-ne v9, v11, :cond_25f

    goto :goto_27c

    .line 866
    :cond_25f
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 868
    iget v9, v9, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v9, v9, v16

    if-lez v9, :cond_27c

    .line 871
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    const/high16 v11, 0x40000000  # 2.0f

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 873
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 870
    invoke-virtual {v3, v9, v13}, Landroid/view/View;->measure(II)V

    :cond_27c
    :goto_27c
    add-int/lit8 v1, v1, 0x1

    goto :goto_24e

    :cond_27f
    move/from16 v11, p1

    move v1, v8

    goto/16 :goto_378

    .line 780
    :cond_284
    :goto_284
    iget v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mWeightSum:F

    cmpl-float v11, v10, v16

    if-lez v11, :cond_28b

    move v0, v10

    :cond_28b
    const/4 v10, 0x0

    .line 782
    iput v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move v11, v0

    move v0, v10

    move/from16 v32, v8

    move v8, v1

    move/from16 v1, v32

    :goto_295
    if-ge v0, v2, :cond_367

    .line 785
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 787
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_2a9

    move/from16 v21, v11

    move/from16 v11, p1

    goto/16 :goto_360

    .line 791
    :cond_2a9
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;

    .line 793
    iget v10, v14, Landroidx/appcompat/widget/LinearLayoutCompat$LayoutParams;->weight:F

    cmpl-float v18, v10, v16

    if-lez v18, :cond_309

    int-to-float v15, v9

    mul-float/2addr v15, v10

    div-float/2addr v15, v11

    float-to-int v15, v15

    sub-float/2addr v11, v10

    sub-int/2addr v9, v15

    .line 801
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v18

    add-int v10, v10, v18

    move/from16 v18, v9

    iget v9, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v10, v9

    iget v9, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v10, v9

    iget v9, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v21, v11

    move/from16 v11, p1

    .line 800
    invoke-static {v11, v10, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 806
    iget v10, v14, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez v10, :cond_2ec

    const/high16 v10, 0x40000000  # 2.0f

    if-eq v3, v10, :cond_2e0

    goto :goto_2ee

    :cond_2e0
    if-lez v15, :cond_2e3

    goto :goto_2e4

    :cond_2e3
    const/4 v15, 0x0

    .line 820
    :goto_2e4
    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 819
    invoke-virtual {v13, v9, v15}, Landroid/view/View;->measure(II)V

    goto :goto_2fe

    :cond_2ec
    const/high16 v10, 0x40000000  # 2.0f

    .line 809
    :goto_2ee
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    add-int v15, v23, v15

    if-gez v15, :cond_2f7

    const/4 v15, 0x0

    .line 815
    :cond_2f7
    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 814
    invoke-virtual {v13, v9, v15}, Landroid/view/View;->measure(II)V

    .line 826
    :goto_2fe
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    move-result v9

    and-int/lit16 v9, v9, -0x100

    .line 825
    invoke-static {v1, v9}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    goto :goto_310

    :cond_309
    move v10, v11

    move/from16 v11, p1

    move/from16 v18, v9

    move/from16 v21, v10

    .line 830
    :goto_310
    iget v9, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v10, v14, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v9, v10

    .line 831
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v9

    .line 832
    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/high16 v15, 0x40000000  # 2.0f

    if-eq v12, v15, :cond_32c

    .line 834
    iget v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v23, v1

    const/4 v1, -0x1

    if-ne v15, v1, :cond_32f

    move/from16 v15, v17

    goto :goto_330

    :cond_32c
    move/from16 v23, v1

    const/4 v1, -0x1

    :cond_32f
    const/4 v15, 0x0

    :goto_330
    if-eqz v15, :cond_333

    goto :goto_334

    :cond_333
    move v9, v10

    .line 837
    :goto_334
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-eqz v19, :cond_341

    .line 840
    iget v9, v14, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v9, v1, :cond_341

    move/from16 v9, v17

    goto :goto_342

    :cond_341
    const/4 v9, 0x0

    .line 842
    :goto_342
    iget v10, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    .line 843
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v10

    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v15, v1

    iget v1, v14, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v15, v1

    .line 844
    invoke-virtual {v7, v13}, Landroidx/appcompat/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I

    move-result v1

    add-int/2addr v15, v1

    .line 843
    invoke-static {v10, v15}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move/from16 v19, v9

    move/from16 v9, v18

    move/from16 v1, v23

    :goto_360
    add-int/lit8 v0, v0, 0x1

    move/from16 v11, v21

    const/4 v10, 0x0

    goto/16 :goto_295

    :cond_367
    move/from16 v11, p1

    .line 848
    iget v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    add-int/2addr v3, v9

    add-int/2addr v0, v3

    iput v0, v7, Landroidx/appcompat/widget/LinearLayoutCompat;->mTotalLength:I

    move v0, v8

    :goto_378
    if-nez v19, :cond_37f

    const/high16 v3, 0x40000000  # 2.0f

    if-eq v12, v3, :cond_37f

    goto :goto_380

    :cond_37f
    move v0, v5

    .line 884
    :goto_380
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    .line 887
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 889
    invoke-static {v0, v11, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v7, v0, v4}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    if-eqz v20, :cond_39e

    .line 893
    invoke-direct {v7, v2, v6}, Landroidx/appcompat/widget/LinearLayoutCompat;->forceUniformWidth(II)V

    :cond_39e
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 287
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    return-void

    .line 291
    :cond_5
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 292
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_11

    .line 294
    :cond_e
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/LinearLayoutCompat;->drawDividersHorizontal(Landroid/graphics/Canvas;)V

    :goto_11
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2

    .line 1760
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string p0, "androidx.appcompat.widget.LinearLayoutCompat"

    .line 1761
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 2

    .line 1766
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string p0, "androidx.appcompat.widget.LinearLayoutCompat"

    .line 1767
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    .line 1410
    iget p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 1411
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->layoutVertical(IIII)V

    goto :goto_c

    .line 1413
    :cond_9
    invoke-virtual {p0, p2, p3, p4, p5}, Landroidx/appcompat/widget/LinearLayoutCompat;->layoutHorizontal(IIII)V

    :goto_c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    .line 554
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 555
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureVertical(II)V

    goto :goto_c

    .line 557
    :cond_9
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/widget/LinearLayoutCompat;->measureHorizontal(II)V

    :goto_c
    return-void
.end method

.method public setBaselineAligned(Z)V
    .registers 2

    .line 396
    iput-boolean p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mBaselineAligned:Z

    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 236
    iget-object v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_5

    return-void

    .line 239
    :cond_5
    iput-object p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 241
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 242
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    goto :goto_1b

    .line 244
    :cond_17
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerWidth:I

    .line 245
    iput v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mDividerHeight:I

    :goto_1b
    if-nez p1, :cond_1e

    const/4 v0, 0x1

    .line 247
    :cond_1e
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 248
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setGravity(I)V
    .registers 3

    .line 1683
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    if-eq v0, p1, :cond_19

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_e

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_e
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_14

    or-int/lit8 p1, p1, 0x30

    .line 1692
    :cond_14
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mGravity:I

    .line 1693
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_19
    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    .line 1658
    iget v0, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    if-eq v0, p1, :cond_9

    .line 1659
    iput p1, p0, Landroidx/appcompat/widget/LinearLayoutCompat;->mOrientation:I

    .line 1660
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_9
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
