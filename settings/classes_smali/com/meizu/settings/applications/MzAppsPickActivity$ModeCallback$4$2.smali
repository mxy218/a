.class Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4$2;
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

    .line 654
    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4$2;->this$2:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMzAppsPickConfirm(Z)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 p1, 0x0

    move v0, p1

    .line 662
    :goto_5
    iget-object v1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4$2;->this$2:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;

    iget-object v1, v1, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    iget-object v1, v1, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1800(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->access$100(Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_44

    .line 663
    iget-object v1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4$2;->this$2:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;

    iget-object v1, v1, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    iget-object v1, v1, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1800(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->getAppEntry(I)Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 664
    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_2f

    goto :goto_41

    .line 667
    :cond_2f
    iget-object v1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4$2;->this$2:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;

    iget-object v1, v1, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    iget-object v1, v1, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1800(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->access$1900(Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;I)Z

    move-result v1

    if-eqz v1, :cond_41

    move p1, v2

    goto :goto_44

    :cond_41
    :goto_41
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 672
    :cond_44
    :goto_44
    new-instance v0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4$2$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4$2$1;-><init>(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4$2;)V

    if-eqz p1, :cond_55

    .line 683
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4$2;->this$2:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;

    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$4;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-virtual {p0, v2, v0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->onRelatedItemCheckChanged(ZLcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;)V

    goto :goto_58

    .line 685
    :cond_55
    invoke-interface {v0, v2}, Lcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;->onMzAppsPickConfirm(Z)V

    :goto_58
    return-void
.end method
