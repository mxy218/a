.class public Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;
.super Landroid/widget/FrameLayout;
.source "MiniHeadsupSecondGroup.java"


# instance fields
.field private final mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

.field private mImageFinalMargeLeft:F

.field private mImageOriginMargeLeft:F

.field private mTextFinalMargeLeft:F

.field private mTextOriginMargeLeft:F

.field private mlevel:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 20
    iput p2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mlevel:F

    .line 24
    sget p2, Lcom/android/systemui/R$drawable;->miniheadsup_background:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    .line 25
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 46
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 47
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 48
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    .line 53
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    move p3, p2

    :goto_6
    if-ge p3, p1, :cond_48

    .line 55
    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    .line 56
    instance-of p5, p4, Landroid/widget/ImageView;

    const/high16 v0, 0x3f800000  # 1.0f

    if-eqz p5, :cond_2a

    .line 57
    iget p5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mImageOriginMargeLeft:F

    iget v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mlevel:F

    sub-float/2addr v0, v1

    mul-float/2addr p5, v0

    iget v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mImageFinalMargeLeft:F

    mul-float/2addr v0, v1

    add-float/2addr p5, v0

    float-to-int p5, p5

    .line 58
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p5

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p4, p5, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_45

    .line 59
    :cond_2a
    instance-of p5, p4, Landroid/widget/TextView;

    if-eqz p5, :cond_45

    .line 60
    iget p5, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mTextOriginMargeLeft:F

    iget v1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mlevel:F

    sub-float/2addr v0, v1

    mul-float/2addr p5, v0

    iget v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mTextFinalMargeLeft:F

    mul-float/2addr v0, v1

    add-float/2addr p5, v0

    float-to-int p5, p5

    .line 61
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p5

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p4, p5, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    :cond_45
    :goto_45
    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :cond_48
    return-void
.end method

.method public setButtonColor(I)V
    .registers 4

    .line 29
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setLevel(F)V
    .registers 2

    .line 34
    iput p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mlevel:F

    return-void
.end method

.method public updateLayoutConfig(Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;)V
    .registers 3

    .line 38
    iget v0, p1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->FIRSTWINDOW_ICON_MARGE_LEFT:F

    iput v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mImageOriginMargeLeft:F

    .line 39
    iget v0, p1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->SECONDWINDOW_ICON_MARGE_LEFT:F

    iput v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mImageFinalMargeLeft:F

    .line 40
    iget p1, p1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;->FIRSTWINDOW_WIDTH_WITHOUT_TEXT:I

    int-to-float p1, p1

    iput p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mTextOriginMargeLeft:F

    const/4 p1, 0x0

    .line 41
    iput p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupSecondGroup;->mTextFinalMargeLeft:F

    return-void
.end method
