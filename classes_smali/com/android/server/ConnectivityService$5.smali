.class Lcom/android/server/ConnectivityService$5;
.super Landroid/net/NetworkPolicyManager$Listener;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .registers 2

    .line 1844
    iput-object p1, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/net/NetworkPolicyManager$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onRestrictBackgroundChanged(Z)V
    .registers 6

    .line 1853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRestrictBackgroundChanged(restrictBackground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$000(Ljava/lang/String;)V

    .line 1855
    iget-object v0, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$500(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$500(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v1

    .line 1856
    const/4 v2, 0x0

    .line 1855
    const/16 v3, 0x28

    invoke-virtual {v1, v3, p1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1859
    if-eqz p1, :cond_41

    .line 1860
    const-string/jumbo p1, "onRestrictBackgroundChanged(true): disabling tethering"

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$000(Ljava/lang/String;)V

    .line 1861
    iget-object p1, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/Tethering;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/connectivity/Tethering;->untetherAll()V

    .line 1863
    :cond_41
    return-void
.end method

.method public onUidRulesChanged(II)V
    .registers 6

    .line 1847
    iget-object v0, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$500(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$5;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$500(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1848
    return-void
.end method
