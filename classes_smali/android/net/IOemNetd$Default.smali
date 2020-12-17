.class public Landroid/net/IOemNetd$Default;
.super Ljava/lang/Object;
.source "IOemNetd.java"

# interfaces
.implements Landroid/net/IOemNetd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IOemNetd;
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
.method public addHostNames(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "ipAddr"  # Ljava/lang/String;
    .param p2, "hostName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public enableQuickAppRulse(ZLjava/lang/String;)Z
    .registers 4
    .param p1, "enable"  # Z
    .param p2, "port"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getHostNames()[Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceVersion()I
    .registers 2

    .line 59
    const/4 v0, -0x1

    return v0
.end method

.method public getIptableRules(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p1, "table"  # Ljava/lang/String;
    .param p2, "chain"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAlive()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public notifySmartNetworkPolicyEnabled(Z)V
    .registers 2
    .param p1, "enable"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public onAppNetworkPolicyRequested(I)I
    .registers 3
    .param p1, "uid"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public registerOemUnsolicitedEventListener(Landroid/net/IOemNetdUnsolicitedEventListener;)V
    .registers 2
    .param p1, "listener"  # Landroid/net/IOemNetdUnsolicitedEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public resetHosts()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public runIpCounterCommand([Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "arguments"  # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public setFirewallUidChainRule(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "uid"  # I
    .param p2, "chain"  # Ljava/lang/String;
    .param p3, "rule"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method
