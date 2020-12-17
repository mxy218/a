.class Lcom/android/server/connectivity/Tethering$2;
.super Landroid/net/ip/IpServer$Callback;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Tethering;->makeControlCallback()Landroid/net/ip/IpServer$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/connectivity/Tethering;

    .line 1857
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$2;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/net/ip/IpServer$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldEnableNat()Z
    .registers 4

    .line 1866
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IpServer.Callback,natEnable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$2;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$3500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1867
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$2;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$3500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v0

    return v0
.end method

.method public updateInterfaceState(Landroid/net/ip/IpServer;II)V
    .registers 5
    .param p1, "who"  # Landroid/net/ip/IpServer;
    .param p2, "state"  # I
    .param p3, "lastError"  # I

    .line 1860
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$2;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->access$3400(Lcom/android/server/connectivity/Tethering;Landroid/net/ip/IpServer;II)V

    .line 1861
    return-void
.end method

.method public updateLinkProperties(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V
    .registers 4
    .param p1, "who"  # Landroid/net/ip/IpServer;
    .param p2, "newLp"  # Landroid/net/LinkProperties;

    .line 1873
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$2;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0, p1, p2}, Lcom/android/server/connectivity/Tethering;->access$3600(Lcom/android/server/connectivity/Tethering;Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V

    .line 1874
    return-void
.end method
