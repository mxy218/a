.class public Lflyme/support/v7/app/FlymeAlertController$RecycleListView;
.super Landroid/widget/ListView;
.source "FlymeAlertController.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/app/FlymeAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycleListView"
.end annotation


# instance fields
.field private final mPaddingBottomNoButtons:I

.field private final mPaddingTopNoTitle:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 842
    invoke-direct {p0, p1, v0}, Lflyme/support/v7/app/FlymeAlertController$RecycleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 846
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 852
    iput p1, p0, Lflyme/support/v7/app/FlymeAlertController$RecycleListView;->mPaddingTopNoTitle:I

    .line 853
    iput p1, p0, Lflyme/support/v7/app/FlymeAlertController$RecycleListView;->mPaddingBottomNoButtons:I

    return-void
.end method


# virtual methods
.method public setHasDecor(ZZ)V
    .registers 5

    if-eqz p2, :cond_4

    if-nez p1, :cond_21

    .line 858
    :cond_4
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v0

    if-eqz p1, :cond_f

    .line 859
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingTop()I

    move-result p1

    goto :goto_11

    :cond_f
    iget p1, p0, Lflyme/support/v7/app/FlymeAlertController$RecycleListView;->mPaddingTopNoTitle:I

    .line 860
    :goto_11
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v1

    if-eqz p2, :cond_1c

    .line 861
    invoke-virtual {p0}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result p2

    goto :goto_1e

    :cond_1c
    iget p2, p0, Lflyme/support/v7/app/FlymeAlertController$RecycleListView;->mPaddingBottomNoButtons:I

    .line 862
    :goto_1e
    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/widget/ListView;->setPadding(IIII)V

    :cond_21
    return-void
.end method
