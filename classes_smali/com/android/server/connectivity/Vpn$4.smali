.class Lcom/android/server/connectivity/Vpn$4;
.super Landroid/content/BroadcastReceiver;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Vpn;->initFlymeChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/connectivity/Vpn;

    .line 2699
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$4;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 2702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Vpn"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    nop

    .line 2704
    const-string/jumbo v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 2705
    .local v0, "info":Landroid/net/NetworkInfo;
    if-nez v0, :cond_29

    .line 2706
    const-string v2, "NetworkInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    return-void

    .line 2710
    :cond_29
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_39

    .line 2711
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v3, :cond_37

    goto :goto_39

    :cond_37
    const/4 v3, 0x0

    goto :goto_3a

    :cond_39
    :goto_39
    nop

    :goto_3a
    move v2, v3

    .line 2712
    .local v2, "isValidNetworkType":Z
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_5f

    if-eqz v2, :cond_5f

    .line 2713
    const-string/jumbo v3, "send VPN reconnect msg"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2714
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$4;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$2200(Lcom/android/server/connectivity/Vpn;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x65

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2715
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$4;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$2200(Lcom/android/server/connectivity/Vpn;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2718
    :cond_5f
    return-void
.end method
