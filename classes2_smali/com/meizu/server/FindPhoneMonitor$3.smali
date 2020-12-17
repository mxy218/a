.class Lcom/meizu/server/FindPhoneMonitor$3;
.super Landroid/content/BroadcastReceiver;
.source "FindPhoneMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/server/FindPhoneMonitor;->registerBootCompletedRecever()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/server/FindPhoneMonitor;


# direct methods
.method constructor <init>(Lcom/meizu/server/FindPhoneMonitor;)V
    .registers 2
    .param p1, "this$0"  # Lcom/meizu/server/FindPhoneMonitor;

    .line 162
    iput-object p1, p0, Lcom/meizu/server/FindPhoneMonitor$3;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 165
    iget-object v0, p0, Lcom/meizu/server/FindPhoneMonitor$3;->this$0:Lcom/meizu/server/FindPhoneMonitor;

    invoke-static {v0}, Lcom/meizu/server/FindPhoneMonitor;->access$700(Lcom/meizu/server/FindPhoneMonitor;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 166
    return-void
.end method
