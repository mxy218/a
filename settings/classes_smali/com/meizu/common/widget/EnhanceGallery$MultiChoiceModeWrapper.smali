.class Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;
.super Ljava/lang/Object;
.source "EnhanceGallery.java"

# interfaces
.implements Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiChoiceModeWrapper"
.end annotation


# instance fields
.field private mWrapped:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;

.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceGallery;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/EnhanceGallery;)V
    .registers 2

    .line 2208
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .registers 1

    .line 2216
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->mWrapped:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;

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

    .line 2248
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->mWrapped:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;

    invoke-interface {p0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5

    .line 2220
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->mWrapped:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1f

    .line 2222
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {p1}, Lcom/meizu/common/widget/EnhanceGallery;->access$1200(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_19

    .line 2224
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    goto :goto_1e

    .line 2226
    :cond_19
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    :goto_1e
    return v1

    :cond_1f
    return p2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3

    .line 2252
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->mWrapped:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 2254
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/meizu/common/widget/EnhanceGallery;->access$602(Lcom/meizu/common/widget/EnhanceGallery;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 2257
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {p1}, Lcom/meizu/common/widget/EnhanceGallery;->clearChoices()V

    .line 2259
    iget-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {p1}, Lcom/meizu/common/widget/EnhanceGallery;->invalidateViews()V

    .line 2261
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLongClickable(Z)V

    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .registers 12

    .line 2266
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->mWrapped:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 2269
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {p0}, Lcom/meizu/common/widget/EnhanceGallery;->getCheckedItemCount()I

    move-result p0

    if-nez p0, :cond_14

    .line 2270
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_14
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 3

    .line 2244
    iget-object p0, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->mWrapped:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;

    invoke-interface {p0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public setWrapped(Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;)V
    .registers 2

    .line 2212
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->mWrapped:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;

    return-void
.end method
