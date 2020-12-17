.class public final Landroid/support/v4/view/ViewGroupCompat;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"


# direct methods
.method public static isTransitionGroup(Landroid/view/ViewGroup;)Z
    .registers 3
    .param p0  # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 158
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result p0

    return p0

    .line 160
    :cond_b
    sget v0, Landroid/support/compat/R$id;->tag_transition_group:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1b

    .line 161
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2a

    .line 162
    :cond_1b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 163
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_28

    goto :goto_2a

    :cond_28
    const/4 p0, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 p0, 0x1

    :goto_2b
    return p0
.end method
