.class public Lflyme/support/v7/widget/MzActionBarTabContainer$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "MzActionBarTabContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/MzActionBarTabContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public gravity:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 340
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/16 p1, 0x10

    .line 333
    iput p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer$LayoutParams;->gravity:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 336
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x10

    .line 333
    iput p1, p0, Lflyme/support/v7/widget/MzActionBarTabContainer$LayoutParams;->gravity:I

    return-void
.end method
