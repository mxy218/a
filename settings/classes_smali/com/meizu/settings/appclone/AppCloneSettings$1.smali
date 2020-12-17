.class Lcom/meizu/settings/appclone/AppCloneSettings$1;
.super Ljava/lang/Object;
.source "AppCloneSettings.java"

# interfaces
.implements Lcom/meizu/settings/appclone/AppCloneState$AppCloneStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/appclone/AppCloneSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/appclone/AppCloneSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/appclone/AppCloneSettings;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneSettings$1;->this$0:Lcom/meizu/settings/appclone/AppCloneSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppCloneIconLoaded(Ljava/lang/String;)V
    .registers 3

    .line 51
    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneSettings$1;->this$0:Lcom/meizu/settings/appclone/AppCloneSettings;

    invoke-static {v0}, Lcom/meizu/settings/appclone/AppCloneSettings;->access$200(Lcom/meizu/settings/appclone/AppCloneSettings;)Lcom/meizu/settings/appclone/AppCloneAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 52
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneSettings$1;->this$0:Lcom/meizu/settings/appclone/AppCloneSettings;

    invoke-static {p0}, Lcom/meizu/settings/appclone/AppCloneSettings;->access$200(Lcom/meizu/settings/appclone/AppCloneSettings;)Lcom/meizu/settings/appclone/AppCloneAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/meizu/settings/appclone/AppCloneAdapter;->updateIcon(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public onAppCloneListChange(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/appclone/AppCloneBaseInfo;",
            ">;)V"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneSettings$1;->this$0:Lcom/meizu/settings/appclone/AppCloneSettings;

    invoke-static {v0}, Lcom/meizu/settings/appclone/AppCloneSettings;->access$200(Lcom/meizu/settings/appclone/AppCloneSettings;)Lcom/meizu/settings/appclone/AppCloneAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 45
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneSettings$1;->this$0:Lcom/meizu/settings/appclone/AppCloneSettings;

    invoke-static {p0}, Lcom/meizu/settings/appclone/AppCloneSettings;->access$200(Lcom/meizu/settings/appclone/AppCloneSettings;)Lcom/meizu/settings/appclone/AppCloneAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/meizu/settings/appclone/AppCloneAdapter;->updateItemList(Ljava/util/List;)V

    :cond_11
    return-void
.end method

.method public onAppCloneListLoaded(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/appclone/AppCloneBaseInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_34

    .line 31
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_34

    .line 35
    :cond_9
    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneSettings$1;->this$0:Lcom/meizu/settings/appclone/AppCloneSettings;

    new-instance v1, Lcom/meizu/settings/appclone/AppCloneAdapter;

    invoke-direct {v1, v0}, Lcom/meizu/settings/appclone/AppCloneAdapter;-><init>(Landroid/app/Fragment;)V

    invoke-static {v0, v1}, Lcom/meizu/settings/appclone/AppCloneSettings;->access$202(Lcom/meizu/settings/appclone/AppCloneSettings;Lcom/meizu/settings/appclone/AppCloneAdapter;)Lcom/meizu/settings/appclone/AppCloneAdapter;

    .line 36
    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneSettings$1;->this$0:Lcom/meizu/settings/appclone/AppCloneSettings;

    invoke-static {v0}, Lcom/meizu/settings/appclone/AppCloneSettings;->access$200(Lcom/meizu/settings/appclone/AppCloneSettings;)Lcom/meizu/settings/appclone/AppCloneAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/settings/appclone/AppCloneAdapter;->updateItemList(Ljava/util/List;)V

    .line 37
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneSettings$1;->this$0:Lcom/meizu/settings/appclone/AppCloneSettings;

    invoke-static {p1}, Lcom/meizu/settings/appclone/AppCloneSettings;->access$100(Lcom/meizu/settings/appclone/AppCloneSettings;)Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 38
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneSettings$1;->this$0:Lcom/meizu/settings/appclone/AppCloneSettings;

    invoke-static {p1}, Lcom/meizu/settings/appclone/AppCloneSettings;->access$100(Lcom/meizu/settings/appclone/AppCloneSettings;)Landroid/widget/ListView;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneSettings$1;->this$0:Lcom/meizu/settings/appclone/AppCloneSettings;

    invoke-static {p0}, Lcom/meizu/settings/appclone/AppCloneSettings;->access$200(Lcom/meizu/settings/appclone/AppCloneSettings;)Lcom/meizu/settings/appclone/AppCloneAdapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_33
    return-void

    .line 32
    :cond_34
    :goto_34
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneSettings$1;->this$0:Lcom/meizu/settings/appclone/AppCloneSettings;

    invoke-static {p1}, Lcom/meizu/settings/appclone/AppCloneSettings;->access$100(Lcom/meizu/settings/appclone/AppCloneSettings;)Landroid/widget/ListView;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneSettings$1;->this$0:Lcom/meizu/settings/appclone/AppCloneSettings;

    invoke-static {p0}, Lcom/meizu/settings/appclone/AppCloneSettings;->access$000(Lcom/meizu/settings/appclone/AppCloneSettings;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method
