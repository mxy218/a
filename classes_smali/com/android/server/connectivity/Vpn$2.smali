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

    .line 1443
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public interfaceRemoved(Ljava/lang/String;)V
    .registers 5

    .line 1455
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v0

    .line 1456
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1}, Lcom/android/server/connectivity/Vpn;->access$300(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v1, p1}, Lcom/android/server/connectivity/Vpn;->access$400(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_65

    .line 1457
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/connectivity/Vpn;->access$502(Lcom/android/server/connectivity/Vpn;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 1458
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object p1, p1, Lcom/android/server/connectivity/Vpn;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p1, v1}, Landroid/net/NetworkCapabilities;->setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 1459
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    iput-object v1, p1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    .line 1460
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p1, v1}, Lcom/android/server/connectivity/Vpn;->access$302(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Ljava/lang/String;

    .line 1461
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$600(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;

    move-result-object p1

    if-eqz p1, :cond_4f

    .line 1462
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$700(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v2}, Lcom/android/server/connectivity/Vpn;->access$600(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$Connection;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1463
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p1, v1}, Lcom/android/server/connectivity/Vpn;->access$602(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$Connection;)Lcom/android/server/connectivity/Vpn$Connection;

    .line 1464
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$800(Lcom/android/server/connectivity/Vpn;)V

    goto :goto_65

    .line 1465
    :cond_4f
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$200(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object p1

    if-eqz p1, :cond_65

    .line 1466
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$200(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exit()V

    .line 1467
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p1, v1}, Lcom/android/server/connectivity/Vpn;->access$202(Lcom/android/server/connectivity/Vpn;Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1470
    :cond_65
    :goto_65
    monitor-exit v0

    .line 1471
    return-void

    .line 1470
    :catchall_67
    move-exception p1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_67

    throw p1
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .registers 4

    .line 1446
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v0

    .line 1447
    if-nez p2, :cond_16

    :try_start_5
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p2}, Lcom/android/server/connectivity/Vpn;->access$200(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object p2

    if-eqz p2, :cond_16

    .line 1448
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn$2;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p2}, Lcom/android/server/connectivity/Vpn;->access$200(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->check(Ljava/lang/String;)V

    .line 1450
    :cond_16
    monitor-exit v0

    .line 1451
    return-void

    .line 1450
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw p1
.end method
