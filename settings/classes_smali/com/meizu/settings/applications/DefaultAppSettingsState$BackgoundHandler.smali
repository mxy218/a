.class Lcom/meizu/settings/applications/DefaultAppSettingsState$BackgoundHandler;
.super Landroid/os/Handler;
.source "DefaultAppSettingsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/DefaultAppSettingsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgoundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/applications/DefaultAppSettingsState;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/applications/DefaultAppSettingsState;Landroid/os/Looper;)V
    .registers 3

    .line 230
    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState$BackgoundHandler;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    .line 231
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 236
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_43

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x7

    if-eq v0, v1, :cond_12

    const/16 v1, 0x8

    if-eq v0, v1, :cond_12

    goto :goto_50

    .line 252
    :cond_12
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState$BackgoundHandler;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->access$400(Lcom/meizu/settings/applications/DefaultAppSettingsState;Ljava/lang/String;)V

    goto :goto_50

    .line 247
    :cond_1c
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState$BackgoundHandler;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    const v0, 0x7f16009a

    invoke-static {p1, v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->access$000(Lcom/meizu/settings/applications/DefaultAppSettingsState;I)V

    .line 248
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState$BackgoundHandler;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    invoke-static {p0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->access$300(Lcom/meizu/settings/applications/DefaultAppSettingsState;)V

    goto :goto_50

    .line 241
    :cond_2a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    .line 242
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState$BackgoundHandler;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    invoke-static {v0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->access$100(Lcom/meizu/settings/applications/DefaultAppSettingsState;Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;)Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

    move-result-object p1

    .line 243
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState$BackgoundHandler;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    invoke-static {p0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->access$200(Lcom/meizu/settings/applications/DefaultAppSettingsState;)Landroid/os/Handler;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 244
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_50

    .line 238
    :cond_43
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsState$BackgoundHandler;->this$0:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->access$000(Lcom/meizu/settings/applications/DefaultAppSettingsState;I)V

    :goto_50
    return-void
.end method
