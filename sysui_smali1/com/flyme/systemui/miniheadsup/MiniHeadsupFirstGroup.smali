.class public Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;
.super Landroid/widget/LinearLayout;
.source "MiniHeadsupFirstGroup.java"


# static fields
.field private static sXfermode:Landroid/graphics/Xfermode;


# instance fields
.field private mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 18
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->sXfermode:Landroid/graphics/Xfermode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    sget p2, Lcom/android/systemui/R$drawable;->miniheadsup_background:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    .line 23
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    iget-object p1, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 25
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    sget-object p1, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->sXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 35
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 36
    iget-object v0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 37
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setButtonColor(I)V
    .registers 4

    .line 29
    iget-object p0, p0, Lcom/flyme/systemui/miniheadsup/MiniHeadsupFirstGroup;->mButtonBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/NinePatchDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p0

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
