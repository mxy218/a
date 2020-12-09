.class Lcom/android/server/job/controllers/ConnectivityController$2;
.super Landroid/net/NetworkPolicyManager$Listener;
.source "ConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;)V
    .registers 2

    .line 555
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {p0}, Landroid/net/NetworkPolicyManager$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRestrictBackgroundChanged(Z)V
    .registers 4

    .line 558
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRestrictBackgroundChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JobScheduler.Connectivity"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_1d
    iget-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {p1}, Lcom/android/server/job/controllers/ConnectivityController;->access$300(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 562
    return-void
.end method

.method public onUidRulesChanged(II)V
    .registers 5

    .line 566
    invoke-static {}, Lcom/android/server/job/controllers/ConnectivityController;->access$000()Z

    move-result p2

    if-eqz p2, :cond_1d

    .line 567
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onUidRulesChanged: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "JobScheduler.Connectivity"

    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_1d
    iget-object p2, p0, Lcom/android/server/job/controllers/ConnectivityController$2;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {p2}, Lcom/android/server/job/controllers/ConnectivityController;->access$300(Lcom/android/server/job/controllers/ConnectivityController;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 570
    return-void
.end method
