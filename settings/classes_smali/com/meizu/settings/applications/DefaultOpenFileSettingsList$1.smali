.class Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$1;
.super Ljava/lang/Object;
.source "DefaultOpenFileSettingsList.java"

# interfaces
.implements Lcom/meizu/settings/applications/DefaultAppSettingsState$GetDefaultListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$1;->this$0:Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;

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

    .line 43
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$1;->this$0:Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;

    invoke-static {p1}, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;->access$000(Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;)Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$CategoryAdapter;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 44
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$1;->this$0:Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;

    invoke-static {p1}, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;->access$000(Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;)Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$CategoryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$CategoryAdapter;->refreshCategories()V

    .line 45
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$1;->this$0:Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;

    invoke-static {p1}, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;->access$000(Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;)Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$CategoryAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 47
    :cond_1a
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$1;->this$0:Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;

    invoke-static {p1}, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;->access$100(Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 48
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList$1;->this$0:Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;

    invoke-static {p0}, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;->access$100(Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2b
    return-void
.end method
