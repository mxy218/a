.class public Landroid/net/INetworkMonitorCallbacks$Default;
.super Ljava/lang/Object;
.source "INetworkMonitorCallbacks.java"

# interfaces
.implements Landroid/net/INetworkMonitorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkMonitorCallbacks;
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

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 34
    const/4 v0, -0x1

    return v0
.end method

.method public hideProvisioningNotification()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public notifyNetworkTested(ILjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public notifyPrivateDnsConfigResolved(Landroid/net/PrivateDnsConfigParcel;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public onNetworkMonitorCreated(Landroid/net/INetworkMonitor;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public showProvisioningNotification(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method
