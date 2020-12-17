.class final Landroidx/leanback/widget/ShadowHelper;
.super Ljava/lang/Object;
.source "ShadowHelper.java"


# direct methods
.method static supportsDynamicShadow()Z
    .registers 2

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
