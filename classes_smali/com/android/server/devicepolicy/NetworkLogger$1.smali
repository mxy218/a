.class Lcom/android/server/devicepolicy/NetworkLogger$1;
.super Lcom/android/server/net/BaseNetdEventCallback;
.source "NetworkLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/NetworkLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/NetworkLogger;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/NetworkLogger;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/devicepolicy/NetworkLogger;

    .line 66
    iput-object p1, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetdEventCallback;-><init>()V

    return-void
.end method

.method private sendNetworkEvent(Landroid/app/admin/NetworkEvent;)V
    .registers 5
    .param p1, "event"  # Landroid/app/admin/NetworkEvent;

    .line 95
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v0}, Lcom/android/server/devicepolicy/NetworkLogger;->access$400(Lcom/android/server/devicepolicy/NetworkLogger;)Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 97
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 98
    .local v1, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "network_event"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 99
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 100
    iget-object v2, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v2}, Lcom/android/server/devicepolicy/NetworkLogger;->access$400(Lcom/android/server/devicepolicy/NetworkLogger;)Lcom/android/server/devicepolicy/NetworkLoggingHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/devicepolicy/NetworkLoggingHandler;->sendMessage(Landroid/os/Message;)Z

    .line 101
    return-void
.end method


# virtual methods
.method public onConnectEvent(Ljava/lang/String;IJI)V
    .registers 13
    .param p1, "ipAddr"  # Ljava/lang/String;
    .param p2, "port"  # I
    .param p3, "timestamp"  # J
    .param p5, "uid"  # I

    .line 83
    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v0}, Lcom/android/server/devicepolicy/NetworkLogger;->access$000(Lcom/android/server/devicepolicy/NetworkLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_d

    .line 84
    return-void

    .line 86
    :cond_d
    invoke-static {}, Lcom/android/server/devicepolicy/NetworkLogger;->access$100()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v0}, Lcom/android/server/devicepolicy/NetworkLogger;->access$200(Lcom/android/server/devicepolicy/NetworkLogger;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/devicepolicy/NetworkLogger;->access$300(Lcom/android/server/devicepolicy/NetworkLogger;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 87
    return-void

    .line 89
    :cond_24
    new-instance v0, Landroid/app/admin/ConnectEvent;

    iget-object v1, p0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v1}, Lcom/android/server/devicepolicy/NetworkLogger;->access$200(Lcom/android/server/devicepolicy/NetworkLogger;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/app/admin/ConnectEvent;-><init>(Ljava/lang/String;ILjava/lang/String;J)V

    .line 91
    .local v0, "connectEvent":Landroid/app/admin/ConnectEvent;
    invoke-direct {p0, v0}, Lcom/android/server/devicepolicy/NetworkLogger$1;->sendNetworkEvent(Landroid/app/admin/NetworkEvent;)V

    .line 92
    return-void
.end method

.method public onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    .registers 20
    .param p1, "netId"  # I
    .param p2, "eventType"  # I
    .param p3, "returnCode"  # I
    .param p4, "hostname"  # Ljava/lang/String;
    .param p5, "ipAddresses"  # [Ljava/lang/String;
    .param p6, "ipAddressesCount"  # I
    .param p7, "timestamp"  # J
    .param p9, "uid"  # I

    .line 70
    move-object v0, p0

    move/from16 v1, p9

    iget-object v2, v0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v2}, Lcom/android/server/devicepolicy/NetworkLogger;->access$000(Lcom/android/server/devicepolicy/NetworkLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_10

    .line 71
    return-void

    .line 73
    :cond_10
    invoke-static {}, Lcom/android/server/devicepolicy/NetworkLogger;->access$100()Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, v0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    invoke-static {v2}, Lcom/android/server/devicepolicy/NetworkLogger;->access$200(Lcom/android/server/devicepolicy/NetworkLogger;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/NetworkLogger;->access$300(Lcom/android/server/devicepolicy/NetworkLogger;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 74
    return-void

    .line 76
    :cond_27
    new-instance v2, Landroid/app/admin/DnsEvent;

    iget-object v3, v0, Lcom/android/server/devicepolicy/NetworkLogger$1;->this$0:Lcom/android/server/devicepolicy/NetworkLogger;

    .line 77
    invoke-static {v3}, Lcom/android/server/devicepolicy/NetworkLogger;->access$200(Lcom/android/server/devicepolicy/NetworkLogger;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v7

    move-object v3, v2

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v3 .. v9}, Landroid/app/admin/DnsEvent;-><init>(Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;J)V

    .line 78
    .local v2, "dnsEvent":Landroid/app/admin/DnsEvent;
    invoke-direct {p0, v2}, Lcom/android/server/devicepolicy/NetworkLogger$1;->sendNetworkEvent(Landroid/app/admin/NetworkEvent;)V

    .line 79
    return-void
.end method
