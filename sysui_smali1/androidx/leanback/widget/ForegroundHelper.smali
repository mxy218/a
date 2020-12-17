.class final Landroidx/leanback/widget/ForegroundHelper;
.super Ljava/lang/Object;
.source "ForegroundHelper.java"


# direct methods
.method static setForeground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    .line 25
    invoke-virtual {p0, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    return-void
.end method
