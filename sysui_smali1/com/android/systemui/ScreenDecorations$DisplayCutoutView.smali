.class public Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;
.super Landroid/view/View;
.source "ScreenDecorations.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Lcom/android/systemui/RegionInterceptingFrameLayout$RegionInterceptableView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ScreenDecorations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DisplayCutoutView"
.end annotation


# direct methods
.method public static boundsFromDirection(Landroid/view/DisplayCutout;ILandroid/graphics/Rect;)V
    .registers 4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x5

    if-eq p1, v0, :cond_22

    const/16 v0, 0x30

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x50

    if-eq p1, v0, :cond_12

    .line 1069
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_31

    .line 1063
    :cond_12
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectBottom()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_31

    .line 1057
    :cond_1a
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_31

    .line 1066
    :cond_22
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectRight()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_31

    .line 1060
    :cond_2a
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRectLeft()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_31
    return-void
.end method


# virtual methods
.method public setColor(I)V
    .registers 2

    const p0, 0x0

    throw p0
.end method

.method public setRotation(I)V
    .registers 2

    const p0, 0x0

    throw p0
.end method
