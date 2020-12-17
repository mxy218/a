.class public Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView$ItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemHolderInfo"
.end annotation


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field public top:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setFrom(Lflyme/support/v7/widget/RecyclerView$ViewHolder;)Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 3

    const/4 v0, 0x0

    .line 12704
    invoke-virtual {p0, p1, v0}, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->setFrom(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    return-object p0
.end method

.method public setFrom(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .registers 3

    .line 12719
    iget-object p1, p1, Lflyme/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 12720
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p0, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->left:I

    .line 12721
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iput p2, p0, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->top:I

    .line 12722
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p2

    iput p2, p0, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->right:I

    .line 12723
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iput p1, p0, Lflyme/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;->bottom:I

    return-object p0
.end method
