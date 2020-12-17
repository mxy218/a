.class Landroidx/leanback/widget/ItemAlignmentFacetHelper;
.super Ljava/lang/Object;
.source "ItemAlignmentFacetHelper.java"


# static fields
.field private static sRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    return-void
.end method

.method static getAlignmentPosition(Landroid/view/View;Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;I)I
    .registers 10

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;

    .line 39
    iget v1, p1, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    if-eqz v1, :cond_10

    .line 40
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_11

    :cond_10
    move-object v1, p0

    .line 45
    :cond_11
    iget v2, p1, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffset:I

    const/4 v3, 0x0

    const/high16 v4, -0x40800000  # -1.0f

    const/high16 v5, 0x42c80000  # 100.0f

    if-nez p2, :cond_bd

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p2

    const/4 v6, 0x1

    if-ne p2, v6, :cond_75

    if-ne v1, p0, :cond_28

    .line 48
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalWidth(Landroid/view/View;)I

    move-result p2

    goto :goto_2c

    .line 49
    :cond_28
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result p2

    :goto_2c
    sub-int/2addr p2, v2

    .line 50
    iget-boolean v2, p1, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    if-eqz v2, :cond_46

    .line 51
    iget v2, p1, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v2, v3

    if-nez v3, :cond_3d

    .line 52
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr p2, v2

    goto :goto_46

    :cond_3d
    cmpl-float v2, v2, v5

    if-nez v2, :cond_46

    .line 54
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr p2, v2

    .line 57
    :cond_46
    :goto_46
    iget v2, p1, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_5e

    if-ne v1, p0, :cond_53

    .line 58
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalWidth(Landroid/view/View;)I

    move-result v2

    goto :goto_57

    .line 59
    :cond_53
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_57
    int-to-float v2, v2

    iget p1, p1, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    mul-float/2addr v2, p1

    div-float/2addr v2, v5

    float-to-int p1, v2

    sub-int/2addr p2, p1

    :cond_5e
    if-eq p0, v1, :cond_110

    .line 62
    sget-object p1, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 63
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 64
    sget-object p0, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalRightInset()I

    move-result p1

    add-int p2, p0, p1

    goto/16 :goto_110

    .line 67
    :cond_75
    iget-boolean p2, p1, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    if-eqz p2, :cond_8e

    .line 68
    iget p2, p1, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, p2, v3

    if-nez v3, :cond_85

    .line 69
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    add-int/2addr v2, p2

    goto :goto_8e

    :cond_85
    cmpl-float p2, p2, v5

    if-nez p2, :cond_8e

    .line 71
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr v2, p2

    .line 74
    :cond_8e
    :goto_8e
    iget p2, p1, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float p2, p2, v4

    if-eqz p2, :cond_a6

    if-ne v1, p0, :cond_9b

    .line 75
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalWidth(Landroid/view/View;)I

    move-result p2

    goto :goto_9f

    .line 76
    :cond_9b
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result p2

    :goto_9f
    int-to-float p2, p2

    iget p1, p1, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    mul-float/2addr p2, p1

    div-float/2addr p2, v5

    float-to-int p1, p2

    add-int/2addr v2, p1

    :cond_a6
    move p2, v2

    if-eq p0, v1, :cond_110

    .line 79
    sget-object p1, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 80
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 81
    sget-object p0, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalLeftInset()I

    move-result p1

    sub-int p2, p0, p1

    goto :goto_110

    .line 85
    :cond_bd
    iget-boolean p2, p1, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    if-eqz p2, :cond_d6

    .line 86
    iget p2, p1, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, p2, v3

    if-nez v3, :cond_cd

    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    add-int/2addr v2, p2

    goto :goto_d6

    :cond_cd
    cmpl-float p2, p2, v5

    if-nez p2, :cond_d6

    .line 89
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    sub-int/2addr v2, p2

    .line 92
    :cond_d6
    :goto_d6
    iget p2, p1, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float p2, p2, v4

    if-eqz p2, :cond_ee

    if-ne v1, p0, :cond_e3

    .line 93
    invoke-virtual {v0, v1}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalHeight(Landroid/view/View;)I

    move-result p2

    goto :goto_e7

    :cond_e3
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result p2

    :goto_e7
    int-to-float p2, p2

    iget v3, p1, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    mul-float/2addr p2, v3

    div-float/2addr p2, v5

    float-to-int p2, p2

    add-int/2addr v2, p2

    :cond_ee
    if-eq p0, v1, :cond_104

    .line 97
    sget-object p2, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 98
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, p2}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 99
    sget-object p0, Landroidx/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroidx/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalTopInset()I

    move-result p2

    sub-int/2addr p0, p2

    move p2, p0

    goto :goto_105

    :cond_104
    move p2, v2

    .line 101
    :goto_105
    invoke-virtual {p1}, Landroidx/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->isAlignedToTextViewBaseLine()Z

    move-result p0

    if-eqz p0, :cond_110

    .line 102
    invoke-virtual {v1}, Landroid/view/View;->getBaseline()I

    move-result p0

    add-int/2addr p2, p0

    :cond_110
    :goto_110
    return p2
.end method
