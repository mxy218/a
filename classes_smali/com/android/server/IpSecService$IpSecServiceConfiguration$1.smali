.class Lcom/android/server/IpSecService$IpSecServiceConfiguration$1;
.super Ljava/lang/Object;
.source "IpSecService.java"

# interfaces
.implements Lcom/android/server/IpSecService$IpSecServiceConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService$IpSecServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNetdInstance()Landroid/net/INetd;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_7

    .line 138
    return-object v0

    .line 136
    :cond_7
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Failed to Get Netd Instance"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
