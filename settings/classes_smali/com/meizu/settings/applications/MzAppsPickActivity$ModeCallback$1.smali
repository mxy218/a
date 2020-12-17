.class Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;
.super Ljava/lang/Object;
.source "MzAppsPickActivity.java"

# interfaces
.implements Lcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

.field final synthetic val$checked:Z

.field final synthetic val$fRelatedCheckChangedPos:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;IZI)V
    .registers 5

    .line 545
    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    iput p2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;->val$position:I

    iput-boolean p3, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;->val$checked:Z

    iput p4, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;->val$fRelatedCheckChangedPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMzAppsPickConfirm(Z)V
    .registers 4

    if-nez p1, :cond_14

    .line 551
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    iget-object p1, p1, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1100(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/widget/ListView;

    move-result-object p1

    iget v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;->val$position:I

    iget-boolean p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;->val$checked:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, v0, p0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void

    .line 554
    :cond_14
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    iget-object p1, p1, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1100(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result p1

    .line 555
    iget-boolean v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;->val$checked:Z

    if-eqz v0, :cond_27

    add-int/lit8 p1, p1, 0x1

    goto :goto_29

    :cond_27
    add-int/lit8 p1, p1, -0x1

    .line 560
    :goto_29
    new-instance v0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1$1;-><init>(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;)V

    .line 586
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    .line 587
    invoke-static {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1800(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->getCount()I

    move-result v1

    .line 586
    invoke-virtual {p0, p1, v1, v0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->onPickedItemCountChanged(IILcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;)V

    return-void
.end method
