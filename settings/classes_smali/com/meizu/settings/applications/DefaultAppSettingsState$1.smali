.class Lcom/meizu/settings/applications/DefaultAppSettingsState$1;
.super Landroid/os/Handler;
.source "DefaultAppSettingsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/DefaultAppSettingsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/DefaultAppSettingsState;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/DefaultAppSettingsState;Landroid/os/Looper;)V
    .registers 3

    .line 259
    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState$1;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 261
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    goto :goto_49

    .line 269
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

    .line 270
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState$1;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    invoke-static {p0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->access$500(Lcom/meizu/settings/applications/DefaultAppSettingsState;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$GetDefaultListListener;

    .line 271
    invoke-interface {v0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsState$GetDefaultListListener;->onGetCategoryDataFinished(Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;)V

    goto :goto_17

    .line 263
    :cond_27
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState$1;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    invoke-static {p0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->access$500(Lcom/meizu/settings/applications/DefaultAppSettingsState;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_31
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$GetDefaultListListener;

    .line 264
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 265
    invoke-interface {v0, v1}, Lcom/meizu/settings/applications/DefaultAppSettingsState$GetDefaultListListener;->onGetCategoryListFinshed(I)V

    goto :goto_31

    :cond_49
    :goto_49
    return-void
.end method
