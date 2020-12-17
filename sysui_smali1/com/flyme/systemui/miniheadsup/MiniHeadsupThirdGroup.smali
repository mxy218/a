.class public Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;
.super Landroid/widget/FrameLayout;
.source "MiniHeadsupThirdGroup.java"


# instance fields
.field private final mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

.field private mlevel:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 15
    iput p2, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;->mlevel:F

    .line 19
    sget p2, Lcom/android/systemui/R$drawable;->miniheadsup_background:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    .line 20
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 37
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 38
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 39
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setButtonColor(I)V
    .registers 4

    .line 24
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

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

    .line 29
    iput p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupThirdGroup;->mlevel:F

    return-void
.end method

.method public updateLayoutConfig(Lcom/flyme/systemui/miniheadsup/MiniHeadsupComponent$WindowConfig;)V
    .registers 2

    return-void
.end method
