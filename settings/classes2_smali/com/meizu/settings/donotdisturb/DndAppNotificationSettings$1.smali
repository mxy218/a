.class Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings$1;
.super Ljava/lang/Object;
.source "DndAppNotificationSettings.java"

# interfaces
.implements Lcom/meizu/settings/donotdisturb/DndAppListState$DndAppListStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings$1;->this$0:Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppIconLoaded(Ljava/lang/String;)V
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings$1;->this$0:Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;

    invoke-static {v0}, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;->access$200(Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;)Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings$1;->this$0:Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;

    invoke-static {p0}, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;->access$200(Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;)Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->updateIcon(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public onAppListLoaded(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/donotdisturb/DndBaseInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_34

    .line 28
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_34

    .line 32
    :cond_9
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings$1;->this$0:Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;

    new-instance v1, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;

    invoke-direct {v1, v0}, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;-><init>(Landroid/app/Fragment;)V

    invoke-static {v0, v1}, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;->access$202(Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;)Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;

    .line 34
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings$1;->this$0:Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;

    invoke-static {v0}, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;->access$200(Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;)Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;->updateItemList(Ljava/util/List;)V

    .line 35
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings$1;->this$0:Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;->access$100(Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;)Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_33

    .line 36
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings$1;->this$0:Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;->access$100(Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;)Landroid/widget/ListView;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings$1;->this$0:Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;

    invoke-static {p0}, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;->access$200(Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;)Lcom/meizu/settings/donotdisturb/DndAppNotificationAdapter;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_33
    return-void

    .line 29
    :cond_34
    :goto_34
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings$1;->this$0:Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;

    invoke-static {p1}, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;->access$100(Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;)Landroid/widget/ListView;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings$1;->this$0:Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;

    invoke-static {p0}, Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;->access$000(Lcom/meizu/settings/donotdisturb/DndAppNotificationSettings;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method
