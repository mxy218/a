.class public Lflyme/support/v7/widget/PermissionScrollView;
.super Landroid/widget/ScrollView;
.source "PermissionScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflyme/support/v7/widget/PermissionScrollView$OnScrollChangeListener;
    }
.end annotation


# instance fields
.field private mOnScrollChangeListener:Lflyme/support/v7/widget/PermissionScrollView$OnScrollChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance p1, Lflyme/support/v7/widget/PermissionScrollView$1;

    invoke-direct {p1, p0}, Lflyme/support/v7/widget/PermissionScrollView$1;-><init>(Lflyme/support/v7/widget/PermissionScrollView;)V

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/PermissionScrollView;->setOnScrollChangeListener(Lflyme/support/v7/widget/PermissionScrollView$OnScrollChangeListener;)V

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .registers 11

    .line 42
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 43
    iget-object v0, p0, Lflyme/support/v7/widget/PermissionScrollView;->mOnScrollChangeListener:Lflyme/support/v7/widget/PermissionScrollView$OnScrollChangeListener;

    if-eqz v0, :cond_f

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 44
    invoke-interface/range {v0 .. v5}, Lflyme/support/v7/widget/PermissionScrollView$OnScrollChangeListener;->onScrollChange(Landroid/view/View;IIII)V

    :cond_f
    return-void
.end method

.method public setOnScrollChangeListener(Lflyme/support/v7/widget/PermissionScrollView$OnScrollChangeListener;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lflyme/support/v7/widget/PermissionScrollView;->mOnScrollChangeListener:Lflyme/support/v7/widget/PermissionScrollView$OnScrollChangeListener;

    return-void
.end method
