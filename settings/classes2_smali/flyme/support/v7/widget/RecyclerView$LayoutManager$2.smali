.class Lflyme/support/v7/widget/RecyclerView$LayoutManager$2;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lflyme/support/v7/widget/ViewBoundsCheck$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/RecyclerView$LayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/widget/RecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/RecyclerView$LayoutManager;)V
    .registers 2

    .line 7042
    iput-object p1, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager$2;->this$0:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChildAt(I)Landroid/view/View;
    .registers 2

    .line 7055
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager$2;->this$0:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getChildEnd(Landroid/view/View;)I
    .registers 3

    .line 7079
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 7080
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager$2;->this$0:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, p1

    return p0
.end method

.method public getChildStart(Landroid/view/View;)I
    .registers 3

    .line 7072
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lflyme/support/v7/widget/RecyclerView$LayoutParams;

    .line 7073
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager$2;->this$0:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, p1}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public getParentEnd()I
    .registers 2

    .line 7065
    iget-object v0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager$2;->this$0:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager$2;->this$0:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    .line 7066
    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public getParentStart()I
    .registers 1

    .line 7060
    iget-object p0, p0, Lflyme/support/v7/widget/RecyclerView$LayoutManager$2;->this$0:Lflyme/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result p0

    return p0
.end method
