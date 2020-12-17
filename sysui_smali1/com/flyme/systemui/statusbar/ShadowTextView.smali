.class public Lcom/flyme/systemui/statusbar/ShadowTextView;
.super Landroid/widget/TextView;
.source "ShadowTextView.java"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundSizeChanged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/ShadowTextView;->init()V

    return-void
.end method

.method private init()V
    .registers 5

    .line 42
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/ShadowTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 44
    sget-object v0, Landroid/os/BuildExt;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/high16 v1, -0x60000000

    const/high16 v2, 0x40000000  # 2.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_19

    const/high16 v0, 0x3f800000  # 1.0f

    .line 45
    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_1e

    :cond_19
    const/high16 v0, 0x40400000  # 3.0f

    .line 47
    invoke-virtual {p0, v0, v3, v2, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :goto_1e
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 8

    .line 54
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/ShadowTextView;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3f

    .line 56
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    .line 57
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    .line 59
    iget-boolean v3, p0, Lcom/flyme/systemui/statusbar/ShadowTextView;->mBackgroundSizeChanged:Z

    if-eqz v3, :cond_28

    .line 60
    invoke-virtual {p0}, Landroid/widget/TextView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 61
    iput-boolean v5, p0, Lcom/flyme/systemui/statusbar/ShadowTextView;->mBackgroundSizeChanged:Z

    :cond_28
    or-int v3, v1, v2

    if-nez v3, :cond_30

    .line 65
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3f

    :cond_30
    int-to-float v3, v1

    int-to-float v4, v2

    .line 67
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 68
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    neg-int v0, v1

    int-to-float v0, v0

    neg-int v1, v2

    int-to-float v1, v1

    .line 69
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 74
    :cond_3f
    :goto_3f
    sget-object v0, Landroid/os/BuildExt;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/high16 v1, -0x60000000

    const/high16 v2, 0x40000000  # 2.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_56

    .line 75
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    goto :goto_5f

    .line 77
    :cond_56
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/high16 v4, 0x40400000  # 3.0f

    invoke-virtual {v0, v4, v3, v2, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 79
    :goto_5f
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
