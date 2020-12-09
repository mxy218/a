.class Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;
.super Landroid/net/dhcp/DhcpServerCallbacks;
.source "IpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DhcpServerCallbacksImpl"
.end annotation


# instance fields
.field private final mStartIndex:I

.field final synthetic this$0:Landroid/net/ip/IpServer;


# direct methods
.method private constructor <init>(Landroid/net/ip/IpServer;I)V
    .registers 3

    .line 290
    iput-object p1, p0, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;->this$0:Landroid/net/ip/IpServer;

    invoke-direct {p0}, Landroid/net/dhcp/DhcpServerCallbacks;-><init>()V

    .line 291
    iput p2, p0, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;->mStartIndex:I

    .line 292
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/ip/IpServer;ILandroid/net/ip/IpServer$1;)V
    .registers 4

    .line 287
    invoke-direct {p0, p1, p2}, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;-><init>(Landroid/net/ip/IpServer;I)V

    return-void
.end method

.method static synthetic access$600(Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;)V
    .registers 1

    .line 287
    invoke-direct {p0}, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;->handleError()V

    return-void
.end method

.method private handleError()V
    .registers 3

    .line 329
    iget-object v0, p0, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;->this$0:Landroid/net/ip/IpServer;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Landroid/net/ip/IpServer;->access$002(Landroid/net/ip/IpServer;I)I

    .line 330
    iget-object v0, p0, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v0}, Landroid/net/ip/IpServer;->access$100(Landroid/net/ip/IpServer;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ip/IpServer;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 331
    return-void
.end method


# virtual methods
.method public synthetic lambda$onDhcpServerCreated$0$IpServer$DhcpServerCallbacksImpl(ILandroid/net/dhcp/IDhcpServer;)V
    .registers 5

    .line 298
    iget v0, p0, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;->mStartIndex:I

    iget-object v1, p0, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;->this$0:Landroid/net/ip/IpServer;

    invoke-static {v1}, Landroid/net/ip/IpServer;->access$200(Landroid/net/ip/IpServer;)I

    move-result v1

    if-eq v0, v1, :cond_b

    .line 302
    return-void

    .line 305
    :cond_b
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2c

    .line 306
    iget-object p2, p0, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;->this$0:Landroid/net/ip/IpServer;

    invoke-static {p2}, Landroid/net/ip/IpServer;->access$300(Landroid/net/ip/IpServer;)Landroid/net/util/SharedLog;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error obtaining DHCP server: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 307
    invoke-direct {p0}, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;->handleError()V

    .line 308
    return-void

    .line 311
    :cond_2c
    iget-object p1, p0, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;->this$0:Landroid/net/ip/IpServer;

    invoke-static {p1, p2}, Landroid/net/ip/IpServer;->access$402(Landroid/net/ip/IpServer;Landroid/net/dhcp/IDhcpServer;)Landroid/net/dhcp/IDhcpServer;

    .line 313
    :try_start_31
    iget-object p1, p0, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;->this$0:Landroid/net/ip/IpServer;

    invoke-static {p1}, Landroid/net/ip/IpServer;->access$400(Landroid/net/ip/IpServer;)Landroid/net/dhcp/IDhcpServer;

    move-result-object p1

    new-instance p2, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl$1;

    invoke-direct {p2, p0}, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl$1;-><init>(Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;)V

    invoke-interface {p1, p2}, Landroid/net/dhcp/IDhcpServer;->start(Landroid/net/INetworkStackStatusCallback;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_3f} :catch_40

    .line 324
    goto :goto_44

    .line 322
    :catch_40
    move-exception p1

    .line 323
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 325
    :goto_44
    return-void
.end method

.method public onDhcpServerCreated(ILandroid/net/dhcp/IDhcpServer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    iget-object v0, p0, Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;->this$0:Landroid/net/ip/IpServer;

    invoke-virtual {v0}, Landroid/net/ip/IpServer;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/ip/-$$Lambda$IpServer$DhcpServerCallbacksImpl$nBlfeyPZEu2j0KBs4BJklDJTve4;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/ip/-$$Lambda$IpServer$DhcpServerCallbacksImpl$nBlfeyPZEu2j0KBs4BJklDJTve4;-><init>(Landroid/net/ip/IpServer$DhcpServerCallbacksImpl;ILandroid/net/dhcp/IDhcpServer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 326
    return-void
.end method
