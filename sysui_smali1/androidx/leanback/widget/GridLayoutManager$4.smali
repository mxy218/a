.class Landroidx/leanback/widget/GridLayoutManager$4;
.super Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/widget/GridLayoutManager;->startPositionSmoothScroller(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Landroidx/leanback/widget/GridLayoutManager;)V
    .registers 2

    .line 2726
    iput-object p1, p0, Landroidx/leanback/widget/GridLayoutManager$4;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    invoke-direct {p0, p1}, Landroidx/leanback/widget/GridLayoutManager$GridLinearSmoothScroller;-><init>(Landroidx/leanback/widget/GridLayoutManager;)V

    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 6

    .line 2729
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;->getChildCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 2732
    :cond_8
    iget-object v0, p0, Landroidx/leanback/widget/GridLayoutManager$4;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 2735
    iget-object v2, p0, Landroidx/leanback/widget/GridLayoutManager$4;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget v2, v2, Landroidx/leanback/widget/GridLayoutManager;->mFlag:I

    const/high16 v3, 0x40000

    and-int/2addr v2, v3

    const/4 v3, 0x1

    if-eqz v2, :cond_20

    if-le p1, v0, :cond_23

    goto :goto_22

    :cond_20
    if-ge p1, v0, :cond_23

    :goto_22
    move v1, v3

    :cond_23
    if-eqz v1, :cond_26

    const/4 v3, -0x1

    .line 2739
    :cond_26
    iget-object p0, p0, Landroidx/leanback/widget/GridLayoutManager$4;->this$0:Landroidx/leanback/widget/GridLayoutManager;

    iget p0, p0, Landroidx/leanback/widget/GridLayoutManager;->mOrientation:I

    const/4 p1, 0x0

    if-nez p0, :cond_34

    .line 2740
    new-instance p0, Landroid/graphics/PointF;

    int-to-float v0, v3

    invoke-direct {p0, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0

    .line 2742
    :cond_34
    new-instance p0, Landroid/graphics/PointF;

    int-to-float v0, v3

    invoke-direct {p0, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method
