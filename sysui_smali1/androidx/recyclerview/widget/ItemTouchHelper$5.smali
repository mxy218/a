.class Landroidx/recyclerview/widget/ItemTouchHelper$5;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/ItemTouchHelper;->addChildDrawingOrderCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .registers 2

    .line 1294
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$5;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetChildDrawingOrder(II)I
    .registers 7

    .line 1297
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$5;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    if-nez v1, :cond_7

    return p2

    .line 1300
    :cond_7
    iget v2, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChildPosition:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_16

    .line 1302
    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 1303
    iget-object p0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$5;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iput v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChildPosition:I

    :cond_16
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_1b

    return v2

    :cond_1b
    if-ge p2, v2, :cond_1e

    goto :goto_20

    :cond_1e
    add-int/lit8 p2, p2, 0x1

    :goto_20
    return p2
.end method
