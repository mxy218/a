.class Lcom/android/server/connectivity/Tethering$4;
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

    .line 1823
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$4;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/net/ip/IpServer$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public updateInterfaceState(Landroid/net/ip/IpServer;II)V
    .registers 5

    .line 1826
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$4;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->access$3300(Lcom/android/server/connectivity/Tethering;Landroid/net/ip/IpServer;II)V

    .line 1827
    return-void
.end method

.method public updateLinkProperties(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V
    .registers 4

    .line 1831
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$4;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0, p1, p2}, Lcom/android/server/connectivity/Tethering;->access$3400(Lcom/android/server/connectivity/Tethering;Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V

    .line 1832
    return-void
.end method
