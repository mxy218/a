.class Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;
.super Landroid/net/INetworkMonitorCallbacks$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkMonitorCallbacks"
.end annotation


# instance fields
.field private final mNai:Lcom/android/server/connectivity/AutodestructReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/connectivity/AutodestructReference<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetId:I

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 3

    .line 2920
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/net/INetworkMonitorCallbacks$Stub;-><init>()V

    .line 2921
    iget-object p1, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget p1, p1, Landroid/net/Network;->netId:I

    iput p1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    .line 2922
    new-instance p1, Lcom/android/server/connectivity/AutodestructReference;

    invoke-direct {p1, p2}, Lcom/android/server/connectivity/AutodestructReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNai:Lcom/android/server/connectivity/AutodestructReference;

    .line 2923
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$1;)V
    .registers 4

    .line 2916
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;-><init>(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method


# virtual methods
.method public getInterfaceVersion()I
    .registers 2

    .line 2970
    const/4 v0, 0x3

    return v0
.end method

.method public hideProvisioningNotification()V
    .registers 6

    .line 2964
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2966
    return-void
.end method

.method public notifyNetworkTested(ILjava/lang/String;)V
    .registers 7

    .line 2933
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    const/16 v3, 0x29

    invoke-virtual {v1, v3, p1, v2, p2}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2935
    return-void
.end method

.method public notifyPrivateDnsConfigResolved(Landroid/net/PrivateDnsConfigParcel;)V
    .registers 7

    .line 2939
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    .line 2941
    invoke-static {p1}, Landroid/net/shared/PrivateDnsConfig;->fromParcel(Landroid/net/PrivateDnsConfigParcel;)Landroid/net/shared/PrivateDnsConfig;

    move-result-object p1

    .line 2939
    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2942
    return-void
.end method

.method public onNetworkMonitorCreated(Landroid/net/INetworkMonitor;)V
    .registers 6

    .line 2927
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$500(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$500(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNai:Lcom/android/server/connectivity/AutodestructReference;

    .line 2928
    invoke-virtual {v3}, Lcom/android/server/connectivity/AutodestructReference;->getAndDestroy()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-direct {v2, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2927
    const/16 p1, 0x12

    invoke-virtual {v1, p1, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2929
    return-void
.end method

.method public showProvisioningNotification(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 2946
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2947
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2951
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 2953
    :try_start_c
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_34

    .line 2955
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2956
    nop

    .line 2957
    iget-object p1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {p2}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object p2

    const/16 v1, 0x2b

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    invoke-virtual {p2, v1, v2, v3, v0}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2960
    return-void

    .line 2955
    :catchall_34
    move-exception v0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method
