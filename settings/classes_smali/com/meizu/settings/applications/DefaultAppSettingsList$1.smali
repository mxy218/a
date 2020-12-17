.class Lcom/meizu/settings/applications/DefaultAppSettingsList$1;
.super Ljava/lang/Object;
.source "DefaultAppSettingsList.java"

# interfaces
.implements Lcom/meizu/settings/applications/DefaultAppSettingsState$GetDefaultListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/DefaultAppSettingsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/DefaultAppSettingsList;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/DefaultAppSettingsList;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$1;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetCategoryDataFinished(Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;)V
    .registers 2

    return-void
.end method

.method public onGetCategoryListFinshed(I)V
    .registers 2

    .line 49
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$1;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsList;

    invoke-static {p1}, Lcom/meizu/settings/applications/DefaultAppSettingsList;->access$000(Lcom/meizu/settings/applications/DefaultAppSettingsList;)Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 50
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$1;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsList;

    invoke-static {p1}, Lcom/meizu/settings/applications/DefaultAppSettingsList;->access$000(Lcom/meizu/settings/applications/DefaultAppSettingsList;)Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->refreshCategories()V

    .line 51
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$1;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsList;

    invoke-static {p1}, Lcom/meizu/settings/applications/DefaultAppSettingsList;->access$000(Lcom/meizu/settings/applications/DefaultAppSettingsList;)Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 53
    :cond_1a
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$1;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsList;

    invoke-static {p1}, Lcom/meizu/settings/applications/DefaultAppSettingsList;->access$100(Lcom/meizu/settings/applications/DefaultAppSettingsList;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 54
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList$1;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsList;

    invoke-static {p0}, Lcom/meizu/settings/applications/DefaultAppSettingsList;->access$100(Lcom/meizu/settings/applications/DefaultAppSettingsList;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2b
    return-void
.end method
