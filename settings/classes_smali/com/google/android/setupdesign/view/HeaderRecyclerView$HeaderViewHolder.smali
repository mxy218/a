.class Lcom/google/android/setupdesign/view/HeaderRecyclerView$HeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HeaderRecyclerView.java"

# interfaces
.implements Lcom/google/android/setupdesign/DividerItemDecoration$DividedViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupdesign/view/HeaderRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderViewHolder"
.end annotation


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public isDividerAllowedAbove()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isDividerAllowedBelow()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
