.class Lcom/android/server/connectivity/Vpn$2;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
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

    .line 1590
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 6
    .param p1, "interfaze"  # Ljava/lang/String;

    .line 1602
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v0

    .line 1603
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$300(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1, p1}, Lcom/android/server/connectivity/Vpn;->access$400(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6a

    .line 1604
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Vpn;->access$502(Lcom/android/server/connectivity/Vpn;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 1606
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1, p1}, Lcom/android/server/connectivity/Vpn;->access$600(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V

    .line 1609
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v1, v1, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 1610
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    iput-object v2, v1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1611
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Vpn;->access$302(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 1612
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$700(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;

    move-result-object v1

    if-eqz v1, :cond_54

    .line 1613
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->access$700(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1614
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Vpn;->access$702(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;

    .line 1615
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)V

    goto :goto_6a

    .line 1616
    :cond_54
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$200(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object v1

    if-eqz v1, :cond_6a

    .line 1617
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$200(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 1618
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1, v2}, Lcom/android/server/connectivity/Vpn;->access$202(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1621
    :cond_6a
    :goto_6a
    monitor-exit v0

    .line 1622
    return-void

    .line 1621
    :catchall_6c
    move-exception v1

    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_3 .. :try_end_6e} :catchall_6c

    throw v1
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "interfaze"  # Ljava/lang/String;
    .param p2, "up"  # Z

    .line 1593
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v0

    .line 1594
    if-nez p2, :cond_16

    :try_start_5
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$200(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 1595
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$200(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->check(Ljava/lang/String;)V

    .line 1597
    :cond_16
    monitor-exit v0

    .line 1598
    return-void

    .line 1597
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v1
.end method
