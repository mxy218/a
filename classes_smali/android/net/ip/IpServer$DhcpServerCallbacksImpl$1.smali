.class Landroid/net/ip/IpServer$DhcpServerCallbacksImpl$1;
.super Landroid/net/ip/IpServer$OnHandlerStatusCallback;
.source "IpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;->lambda$onDhcpServerCreated$0(ILandroid/net/dhcp/IDhcpServer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;


# direct methods
.method constructor <init>(Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;)V
    .registers 3

    .line 313
    iput-object p1, p0, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl$1;->this$1:Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;

    iget-object p1, p1, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;->this$0:Landroid/net/ip/IpServer;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/ip/IpServer$OnHandlerStatusCallback;-><init>(Landroid/net/ip/IpServer;Landroid/net/ip/IpServer$1;)V

    return-void
.end method


# virtual methods
.method public callback(I)V
    .registers 5

    .line 316
    const/4 v0, 0x1

    if-eq p1, v0, :cond_24

    .line 317
    iget-object v0, p0, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl$1;->this$1:Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;

    iget-object v0, v0, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$300(Landroid/net/ip/IpServer;)Landroid/net/util/SharedLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error starting DHCP server: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 318
    iget-object p1, p0, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl$1;->this$1:Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;

    invoke-static {p1}, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;->access$600(Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;)V

    .line 320
    :cond_24
    return-void
.end method
