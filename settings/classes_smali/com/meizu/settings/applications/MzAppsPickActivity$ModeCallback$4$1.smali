.class Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4$1;
.super Ljava/lang/Object;
.source "MzAppsPickActivity.java"

# interfaces
.implements Lcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;)V
    .registers 2

    .line 638
    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4$1;->this$2:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMzAppsPickConfirm(Z)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    .line 645
    :cond_3
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4$1;->this$2:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;

    iget-object p1, p1, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    iget-object p1, p1, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$2400(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lcom/meizu/common/util/ListViewProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/common/util/ListViewProxy;->unCheckedAll()Z

    .line 647
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4$1;->this$2:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;

    iget-object p1, p1, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->access$2100(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 648
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4$1;->this$2:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;

    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    invoke-static {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->access$700(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;)V

    return-void
.end method
