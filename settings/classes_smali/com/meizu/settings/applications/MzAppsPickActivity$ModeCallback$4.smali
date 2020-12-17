.class Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;
.super Ljava/lang/Object;
.source "MzAppsPickActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;)V
    .registers 2

    .line 632
    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 635
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    iget-object p1, p1, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1800(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->getCount()I

    move-result p1

    .line 636
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    iget-object v0, v0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1100(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-ne p1, v0, :cond_28

    .line 638
    new-instance v0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4$1;-><init>(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;)V

    .line 652
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->onPickedItemCountChanged(IILcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;)V

    goto :goto_34

    .line 654
    :cond_28
    new-instance v0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4$2;-><init>(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;)V

    .line 690
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-virtual {p0, p1, p1, v0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->onPickedItemCountChanged(IILcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;)V

    :goto_34
    return-void
.end method
