.class Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1$1;
.super Ljava/lang/Object;
.source "MzAppsPickActivity.java"

# interfaces
.implements Lcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;->onMzAppsPickConfirm(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;)V
    .registers 2

    .line 560
    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1$1;->this$2:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMzAppsPickConfirm(Z)V
    .registers 5

    if-nez p1, :cond_18

    .line 566
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1$1;->this$2:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;

    iget-object p1, p1, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    iget-object p1, p1, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1100(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/widget/ListView;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1$1;->this$2:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;

    iget v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;->val$position:I

    iget-boolean p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;->val$checked:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, v0, p0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void

    .line 569
    :cond_18
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1$1;->this$2:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;

    iget-object p1, p1, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    iget-object p1, p1, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1100(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1$1;->this$2:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;

    iget v1, v0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;->val$fRelatedCheckChangedPos:I

    iget-boolean v0, v0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;->val$checked:Z

    invoke-virtual {p1, v1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 570
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1$1;->this$2:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;

    iget-object p1, p1, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    iget-object p1, p1, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1800(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1$1;->this$2:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;

    iget v0, v0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;->val$position:I

    invoke-virtual {p1, v0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->getAppEntry(I)Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    move-result-object p1

    .line 571
    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 572
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1$1;->this$2:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;

    iget-boolean v1, v0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;->val$checked:Z

    const-string v2, ":1"

    if-eqz v1, :cond_98

    .line 573
    iget-object v0, v0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->access$2100(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 574
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1$1;->this$2:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;

    iget-object v0, v0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->access$2100(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    :cond_60
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1$1;->this$2:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;

    iget-object v0, v0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->access$2100(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bb

    .line 577
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1$1;->this$2:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;

    iget-object v0, v0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->access$2100(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bb

    .line 580
    :cond_98
    iget-object v0, v0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->access$2100(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 581
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1$1;->this$2:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;

    iget-object v0, v0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->access$2100(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 583
    :cond_bb
    :goto_bb
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1$1;->this$2:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;

    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$1;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    invoke-static {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->access$700(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;)V

    return-void
.end method
