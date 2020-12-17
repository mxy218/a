.class public Landroid/support/v4/os/BuildCompat;
.super Ljava/lang/Object;
.source "BuildCompat.java"


# direct methods
.method public static isAtLeastP()Z
    .registers 2

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
