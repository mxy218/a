.class public final Landroidx/core/widget/EdgeEffectCompat;
.super Ljava/lang/Object;
.source "EdgeEffectCompat.java"


# direct methods
.method public static onPull(Landroid/widget/EdgeEffect;FF)V
    .registers 5
    .param p0  # Landroid/widget/EdgeEffect;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    .line 153
    invoke-virtual {p0, p1, p2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    goto :goto_d

    .line 155
    :cond_a
    invoke-virtual {p0, p1}, Landroid/widget/EdgeEffect;->onPull(F)V

    :goto_d
    return-void
.end method
