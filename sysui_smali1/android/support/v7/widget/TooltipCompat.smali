.class public Landroid/support/v7/widget/TooltipCompat;
.super Ljava/lang/Object;
.source "TooltipCompat.java"


# direct methods
.method public static setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 4
    .param p0  # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1  # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_a

    .line 42
    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 44
    :cond_a
    invoke-static {p0, p1}, Landroid/support/v7/widget/TooltipCompatHandler;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_d
    return-void
.end method
