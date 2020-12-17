.class Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$2;
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

.field final synthetic val$isCloneApp:Z

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;IZZ)V
    .registers 5

    .line 592
    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$2;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    iput p2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$2;->val$position:I

    iput-boolean p3, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$2;->val$checked:Z

    iput-boolean p4, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$2;->val$isCloneApp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMzAppsPickConfirm(Z)V
    .registers 4

    if-nez p1, :cond_14

    .line 598
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$2;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    iget-object p1, p1, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1100(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/widget/ListView;

    move-result-object p1

    iget v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$2;->val$position:I

    iget-boolean p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$2;->val$checked:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, v0, p0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void

    .line 601
    :cond_14
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$2;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    iget-object p1, p1, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1800(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    move-result-object p1

    iget v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$2;->val$position:I

    invoke-virtual {p1, v0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->getAppEntry(I)Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    move-result-object p1

    .line 602
    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 603
    iget-boolean v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$2;->val$checked:Z

    const-string v1, ":1"

    if-eqz v0, :cond_55

    .line 604
    iget-boolean v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$2;->val$isCloneApp:Z

    if-eqz v0, :cond_3f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 605
    :cond_3f
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$2;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->access$2100(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_71

    .line 606
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$2;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->access$2100(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_71

    .line 609
    :cond_55
    iget-boolean v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$2;->val$isCloneApp:Z

    if-eqz v0, :cond_68

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 610
    :cond_68
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$2;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->access$2100(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 612
    :cond_71
    :goto_71
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback$2;->this$1:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    invoke-static {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->access$700(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;)V

    return-void
.end method
