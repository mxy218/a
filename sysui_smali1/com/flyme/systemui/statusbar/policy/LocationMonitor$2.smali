.class Lcom/flyme/systemui/statusbar/policy/LocationMonitor$2;
.super Landroid/content/BroadcastReceiver;
.source "LocationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/LocationMonitor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/LocationMonitor;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$2;->this$0:Lcom/flyme/systemui/statusbar/policy/LocationMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    const-string v0, "package"

    .line 84
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "action_gps_in_using_kill_clicked"

    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 87
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$2;->this$0:Lcom/flyme/systemui/statusbar/policy/LocationMonitor;

    invoke-static {p1, p2}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->access$100(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;Ljava/lang/String;)V

    .line 88
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$2;->this$0:Lcom/flyme/systemui/statusbar/policy/LocationMonitor;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->access$000(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;)V

    goto :goto_50

    :cond_3e
    const-string v0, "action_gps_in_using_deny_gps_request"

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 90
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$2;->this$0:Lcom/flyme/systemui/statusbar/policy/LocationMonitor;

    invoke-static {p1, p2}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->access$200(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;Ljava/lang/String;)V

    .line 91
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/LocationMonitor$2;->this$0:Lcom/flyme/systemui/statusbar/policy/LocationMonitor;

    invoke-static {p0, p2}, Lcom/flyme/systemui/statusbar/policy/LocationMonitor;->access$100(Lcom/flyme/systemui/statusbar/policy/LocationMonitor;Ljava/lang/String;)V

    :cond_50
    :goto_50
    return-void
.end method
