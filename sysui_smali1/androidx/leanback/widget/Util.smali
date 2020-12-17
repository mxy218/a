.class public Landroidx/leanback/widget/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public static isDescendant(Landroid/view/ViewGroup;Landroid/view/View;)Z
    .registers 4

    :goto_0
    const/4 v0, 0x0

    if-eqz p1, :cond_13

    if-ne p1, p0, :cond_7

    const/4 p0, 0x1

    return p0

    .line 38
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 39
    instance-of v1, p1, Landroid/view/View;

    if-nez v1, :cond_10

    return v0

    .line 42
    :cond_10
    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_13
    return v0
.end method
