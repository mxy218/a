.class public Lflyme/support/v7/view/menu/ActionMenuItemIconDrawable;
.super Landroidx/appcompat/graphics/drawable/DrawableWrapper;
.source "ActionMenuItemIconDrawable.java"


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private final mSpotColor:I

.field private final mSpotRadius:F

.field private mSpotVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 26
    invoke-direct {p0, p2}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/high16 p2, -0x10000

    .line 21
    iput p2, p0, Lflyme/support/v7/view/menu/ActionMenuItemIconDrawable;->mSpotColor:I

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lflyme/support/v7/appcompat/R$dimen;->mc_new_message_view_radius:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lflyme/support/v7/view/menu/ActionMenuItemIconDrawable;->mSpotRadius:F

    .line 29
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lflyme/support/v7/view/menu/ActionMenuItemIconDrawable;->mPaint:Landroid/graphics/Paint;

    .line 30
    iget-object p1, p0, Lflyme/support/v7/view/menu/ActionMenuItemIconDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 31
    iget-object p1, p0, Lflyme/support/v7/view/menu/ActionMenuItemIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    iget-object p0, p0, Lflyme/support/v7/view/menu/ActionMenuItemIconDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1  # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 37
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 38
    iget-boolean v0, p0, Lflyme/support/v7/view/menu/ActionMenuItemIconDrawable;->mSpotVisible:Z

    if-eqz v0, :cond_1a

    .line 39
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 40
    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lflyme/support/v7/view/menu/ActionMenuItemIconDrawable;->mSpotRadius:F

    sub-float/2addr v1, v2

    .line 41
    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    .line 42
    iget-object p0, p0, Lflyme/support/v7/view/menu/ActionMenuItemIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_1a
    return-void
.end method

.method public setAlpha(I)V
    .registers 2

    .line 48
    invoke-super {p0, p1}, Landroidx/appcompat/graphics/drawable/DrawableWrapper;->setAlpha(I)V

    .line 49
    iget-object p0, p0, Lflyme/support/v7/view/menu/ActionMenuItemIconDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setSpotVisible(Z)V
    .registers 2

    .line 53
    iput-boolean p1, p0, Lflyme/support/v7/view/menu/ActionMenuItemIconDrawable;->mSpotVisible:Z

    return-void
.end method
