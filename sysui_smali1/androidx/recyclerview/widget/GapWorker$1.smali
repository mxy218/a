.class final Landroidx/recyclerview/widget/GapWorker$1;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/recyclerview/widget/GapWorker$Task;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/recyclerview/widget/GapWorker$Task;Landroidx/recyclerview/widget/GapWorker$Task;)I
    .registers 7

    .line 194
    iget-object p0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_8

    move p0, v1

    goto :goto_9

    :cond_8
    move p0, v0

    :goto_9
    iget-object v2, p2, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v2, :cond_f

    move v2, v1

    goto :goto_10

    :cond_f
    move v2, v0

    :goto_10
    const/4 v3, -0x1

    if-eq p0, v2, :cond_1a

    .line 195
    iget-object p0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->view:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p0, :cond_18

    goto :goto_19

    :cond_18
    move v1, v3

    :goto_19
    return v1

    .line 199
    :cond_1a
    iget-boolean p0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    iget-boolean v2, p2, Landroidx/recyclerview/widget/GapWorker$Task;->immediate:Z

    if-eq p0, v2, :cond_24

    if-eqz p0, :cond_23

    move v1, v3

    :cond_23
    return v1

    .line 204
    :cond_24
    iget p0, p2, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    iget v1, p1, Landroidx/recyclerview/widget/GapWorker$Task;->viewVelocity:I

    sub-int/2addr p0, v1

    if-eqz p0, :cond_2c

    return p0

    .line 208
    :cond_2c
    iget p0, p1, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    iget p1, p2, Landroidx/recyclerview/widget/GapWorker$Task;->distanceToItem:I

    sub-int/2addr p0, p1

    if-eqz p0, :cond_34

    return p0

    :cond_34
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 190
    check-cast p1, Landroidx/recyclerview/widget/GapWorker$Task;

    check-cast p2, Landroidx/recyclerview/widget/GapWorker$Task;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/GapWorker$1;->compare(Landroidx/recyclerview/widget/GapWorker$Task;Landroidx/recyclerview/widget/GapWorker$Task;)I

    move-result p0

    return p0
.end method
