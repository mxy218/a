.class public Landroid/net/INetdUnsolicitedEventListener$Default;
.super Ljava/lang/Object;
.source "INetdUnsolicitedEventListener.java"

# interfaces
.implements Landroid/net/INetdUnsolicitedEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetdUnsolicitedEventListener;
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

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 52
    const/4 v0, -0x1

    return v0
.end method

.method public onInterfaceAdded(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public onInterfaceAddressRemoved(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public onInterfaceAddressUpdated(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public onInterfaceChanged(Ljava/lang/String;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public onInterfaceClassActivityChanged(ZIJI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public onInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public onInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public onInterfaceRemoved(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public onQuotaLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public onRouteChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public onStrictCleartextDetected(ILjava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method
