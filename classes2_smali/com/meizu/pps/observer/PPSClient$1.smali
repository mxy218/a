.class Lcom/meizu/pps/observer/PPSClient$1;
.super Landroid/content/BroadcastReceiver;
.source "PPSClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/pps/observer/PPSClient;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/pps/observer/PPSClient;


# direct methods
.method constructor <init>(Lcom/meizu/pps/observer/PPSClient;)V
    .registers 2
    .param p1, "this$0"  # Lcom/meizu/pps/observer/PPSClient;

    .line 81
    iput-object p1, p0, Lcom/meizu/pps/observer/PPSClient$1;->this$0:Lcom/meizu/pps/observer/PPSClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.meizu.setup.END"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 85
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient$1;->this$0:Lcom/meizu/pps/observer/PPSClient;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/pps/observer/PPSClient;->access$002(Lcom/meizu/pps/observer/PPSClient;Z)Z

    .line 86
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient$1;->this$0:Lcom/meizu/pps/observer/PPSClient;

    invoke-static {v0}, Lcom/meizu/pps/observer/PPSClient;->access$100(Lcom/meizu/pps/observer/PPSClient;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSClient$1;->this$0:Lcom/meizu/pps/observer/PPSClient;

    invoke-static {v0}, Lcom/meizu/pps/observer/PPSClient;->access$100(Lcom/meizu/pps/observer/PPSClient;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 89
    :cond_27
    return-void
.end method
