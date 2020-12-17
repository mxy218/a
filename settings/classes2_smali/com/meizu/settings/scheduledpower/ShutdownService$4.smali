.class Lcom/meizu/settings/scheduledpower/ShutdownService$4;
.super Landroid/os/Handler;
.source "ShutdownService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/scheduledpower/ShutdownService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;


# direct methods
.method constructor <init>(Lcom/meizu/settings/scheduledpower/ShutdownService;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$4;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 182
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShutDownService"

    invoke-static {v1, v0}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_37

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2e

    const/4 v2, 0x2

    if-eq p1, v2, :cond_27

    goto :goto_45

    .line 190
    :cond_27
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 191
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_45

    .line 194
    :cond_2e
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$4;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    invoke-static {p0}, Lcom/meizu/settings/scheduledpower/ScheduledPowerUtils;->shutdown(Landroid/content/Context;)V

    goto :goto_45

    .line 186
    :cond_37
    iget-object p1, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$4;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    invoke-static {p1}, Lcom/meizu/settings/scheduledpower/ShutdownService;->access$500(Lcom/meizu/settings/scheduledpower/ShutdownService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/meizu/settings/scheduledpower/ShutdownService;->access$700(Lcom/meizu/settings/scheduledpower/ShutdownService;I)V

    .line 187
    iget-object p0, p0, Lcom/meizu/settings/scheduledpower/ShutdownService$4;->this$0:Lcom/meizu/settings/scheduledpower/ShutdownService;

    invoke-static {p0}, Lcom/meizu/settings/scheduledpower/ShutdownService;->access$510(Lcom/meizu/settings/scheduledpower/ShutdownService;)I

    :goto_45
    return-void
.end method
