.class public Landroid/net/dhcp/IDhcpServer$Default;
.super Ljava/lang/Object;
.source "IDhcpServer.java"

# interfaces
.implements Landroid/net/dhcp/IDhcpServer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/IDhcpServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 28
    const/4 v0, -0x1

    return v0
.end method

.method public start(Landroid/net/INetworkStackStatusCallback;)V
    .registers 2
    .param p1, "cb"  # Landroid/net/INetworkStackStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public stop(Landroid/net/INetworkStackStatusCallback;)V
    .registers 2
    .param p1, "cb"  # Landroid/net/INetworkStackStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public updateParams(Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/INetworkStackStatusCallback;)V
    .registers 3
    .param p1, "params"  # Landroid/net/dhcp/DhcpServingParamsParcel;
    .param p2, "cb"  # Landroid/net/INetworkStackStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method
