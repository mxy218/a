.class Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "EnvironmentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;


# direct methods
.method private constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$Receiver;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$1;)V
    .registers 3

    .line 93
    invoke-direct {p0, p1}, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$Receiver;-><init>(Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 97
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$Receiver;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->access$402(Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;Z)Z

    .line 98
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->access$500()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_POWER_CONNECTED, charging = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$Receiver;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->access$400(Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$Receiver;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;

    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->access$200(Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;)Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->start()Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;

    goto/16 :goto_b2

    .line 100
    :cond_3b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    .line 101
    iget-object p1, p0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$Receiver;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->access$402(Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;Z)Z

    .line 102
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->access$500()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_POWER_DISCONNECTED, charging = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$Receiver;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;

    invoke-static {v0}, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->access$400(Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$Receiver;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;

    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->access$200(Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;)Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->cancel()V

    goto :goto_b2

    .line 104
    :cond_75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b2

    .line 105
    invoke-static {p1}, Lcom/meizu/statsapp/v3/lib/plugin/utils/NetInfoUtils;->isOnline(Landroid/content/Context;)Z

    move-result p1

    .line 106
    invoke-static {}, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->access$500()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECTIVITY_ACTION, isOnline = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/meizu/statsapp/v3/utils/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_a9

    .line 108
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$Receiver;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;

    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->access$100(Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;)Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->start()Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;

    goto :goto_b2

    .line 110
    :cond_a9
    iget-object p0, p0, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver$Receiver;->this$0:Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;

    invoke-static {p0}, Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;->access$100(Lcom/meizu/statsapp/v3/lib/plugin/receiver/EnvironmentReceiver;)Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/statsapp/v3/lib/plugin/utils/IntervalTimer;->cancel()V

    :cond_b2
    :goto_b2
    return-void
.end method
