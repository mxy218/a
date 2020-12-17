.class Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;
.super Ljava/lang/Object;
.source "MzRecyclerView.java"

# interfaces
.implements Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflyme/support/v7/widget/MzRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiChoiceModeWrapper"
.end annotation


# instance fields
.field private mWrapped:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;

.field final synthetic this$0:Lflyme/support/v7/widget/MzRecyclerView;


# direct methods
.method constructor <init>(Lflyme/support/v7/widget/MzRecyclerView;)V
    .registers 2

    .line 1339
    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .registers 1

    .line 1347
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->mWrapped:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 3

    .line 1373
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->mWrapped:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;

    invoke-interface {p0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 6

    .line 1352
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->mWrapped:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1f

    .line 1354
    iget-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget v0, p1, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x5

    if-ne v0, v1, :cond_15

    goto :goto_19

    .line 1359
    :cond_15
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    goto :goto_1e

    .line 1357
    :cond_19
    :goto_19
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    :goto_1e
    return v2

    :cond_1f
    return p2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3

    .line 1378
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->mWrapped:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 1379
    iget-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 v0, 0x0

    iput-object v0, p1, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceActionMode:Landroid/view/ActionMode;

    .line 1382
    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView;->clearChoices()V

    .line 1384
    iget-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-static {p1}, Lflyme/support/v7/widget/MzRecyclerView;->access$1900(Lflyme/support/v7/widget/MzRecyclerView;)V

    .line 1386
    iget-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    .line 1389
    iget-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget-object p1, p1, Lflyme/support/v7/widget/RecyclerView;->mRecycler:Lflyme/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {p1}, Lflyme/support/v7/widget/RecyclerView$Recycler;->clear()V

    .line 1390
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView;->getRecycledViewPool()Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object p0

    invoke-virtual {p0}, Lflyme/support/v7/widget/RecyclerView$RecycledViewPool;->clear()V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .registers 12

    .line 1396
    iget-object v0, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->mWrapped:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 1398
    iget-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    invoke-virtual {p1}, Lflyme/support/v7/widget/MzRecyclerView;->getCheckedItemCount()I

    move-result p1

    if-nez p1, :cond_18

    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->this$0:Lflyme/support/v7/widget/MzRecyclerView;

    iget p0, p0, Lflyme/support/v7/widget/MzRecyclerView;->mChoiceMode:I

    const/4 p1, 0x5

    if-ne p0, p1, :cond_18

    :cond_18
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 3

    .line 1368
    iget-object p0, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->mWrapped:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;

    invoke-interface {p0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public setWrapped(Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;)V
    .registers 2

    .line 1343
    iput-object p1, p0, Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeWrapper;->mWrapped:Lflyme/support/v7/widget/MzRecyclerView$MultiChoiceModeListener;

    return-void
.end method
