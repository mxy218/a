.class public Lcom/android/server/NsdService;
.super Landroid/net/nsd/INsdManager$Stub;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NsdService$NsdSettings;,
        Lcom/android/server/NsdService$ClientInfo;,
        Lcom/android/server/NsdService$DaemonConnection;,
        Lcom/android/server/NsdService$DaemonConnectionSupplier;,
        Lcom/android/server/NsdService$NativeCallbackReceiver;,
        Lcom/android/server/NsdService$NativeEvent;,
        Lcom/android/server/NsdService$NativeResponseCode;,
        Lcom/android/server/NsdService$NsdStateMachine;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final INVALID_ID:I = 0x0

.field private static final MDNS_TAG:Ljava/lang/String; = "mDnsConnector"

.field private static final TAG:Ljava/lang/String; = "NsdService"


# instance fields
.field private final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/Messenger;",
            "Lcom/android/server/NsdService$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDaemon:Lcom/android/server/NsdService$DaemonConnection;

.field private final mDaemonCallback:Lcom/android/server/NsdService$NativeCallbackReceiver;

.field private final mIdToClientInfoMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/NsdService$ClientInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNsdSettings:Lcom/android/server/NsdService$NsdSettings;

.field private final mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

.field private final mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mUniqueId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/NsdService$NsdSettings;Landroid/os/Handler;Lcom/android/server/NsdService$DaemonConnectionSupplier;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 543
    invoke-direct {p0}, Landroid/net/nsd/INsdManager$Stub;-><init>()V

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;

    .line 81
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    .line 544
    iput-object p1, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    .line 545
    iput-object p2, p0, Lcom/android/server/NsdService;->mNsdSettings:Lcom/android/server/NsdService$NsdSettings;

    .line 546
    new-instance p1, Lcom/android/server/NsdService$NsdStateMachine;

    const-string p2, "NsdService"

    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/NsdService$NsdStateMachine;-><init>(Lcom/android/server/NsdService;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    .line 547
    iget-object p1, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-virtual {p1}, Lcom/android/server/NsdService$NsdStateMachine;->start()V

    .line 548
    new-instance p1, Lcom/android/server/NsdService$NativeCallbackReceiver;

    invoke-direct {p1, p0}, Lcom/android/server/NsdService$NativeCallbackReceiver;-><init>(Lcom/android/server/NsdService;)V

    iput-object p1, p0, Lcom/android/server/NsdService;->mDaemonCallback:Lcom/android/server/NsdService$NativeCallbackReceiver;

    .line 549
    iget-object p1, p0, Lcom/android/server/NsdService;->mDaemonCallback:Lcom/android/server/NsdService$NativeCallbackReceiver;

    invoke-interface {p4, p1}, Lcom/android/server/NsdService$DaemonConnectionSupplier;->get(Lcom/android/server/NsdService$NativeCallbackReceiver;)Lcom/android/server/NsdService$DaemonConnection;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    .line 550
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/NsdService;)Z
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/android/server/NsdService;->isNsdEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/NsdService;Z)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->notifyEnabled(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/NsdService;)Landroid/util/SparseArray;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/server/NsdService;)I
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/android/server/NsdService;->getUniqueId()I

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/android/server/NsdService;ILjava/lang/String;)Z
    .registers 3

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->discoverServices(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/android/server/NsdService;Landroid/os/Message;ILjava/lang/Object;)V
    .registers 4

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/NsdService;I)Z
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->stopServiceDiscovery(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1900(Lcom/android/server/NsdService;Landroid/os/Message;I)V
    .registers 3

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$NsdSettings;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/server/NsdService;->mNsdSettings:Lcom/android/server/NsdService$NsdSettings;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z
    .registers 3

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->registerService(ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100(Lcom/android/server/NsdService;I)Z
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->unregisterService(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2300(Lcom/android/server/NsdService;ILandroid/net/nsd/NsdServiceInfo;)Z
    .registers 3

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->resolveService(ILandroid/net/nsd/NsdServiceInfo;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2600(Lcom/android/server/NsdService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/server/NsdService;I)Z
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->stopResolveService(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lcom/android/server/NsdService;ILjava/lang/String;)Z
    .registers 3

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/NsdService;->getAddrInfo(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/android/server/NsdService;I)Z
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->stopGetAddrInfo(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3000(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$NsdStateMachine;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$DaemonConnection;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/server/NsdService;)Landroid/content/Context;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V
    .registers 4

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NsdService;->replyToMessage(Landroid/os/Message;II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/NsdService;Z)V
    .registers 2

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->sendNsdStateChangeBroadcast(Z)V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/NsdService;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 553
    invoke-static {p0}, Lcom/android/server/NsdService$NsdSettings;->makeDefault(Landroid/content/Context;)Lcom/android/server/NsdService$NsdSettings;

    move-result-object v0

    .line 554
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "NsdService"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 556
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 557
    new-instance v1, Lcom/android/server/NsdService;

    sget-object v3, Lcom/android/server/-$$Lambda$1xUIIN0BU8izGcnYWT-VzczLBFU;->INSTANCE:Lcom/android/server/-$$Lambda$1xUIIN0BU8izGcnYWT-VzczLBFU;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/server/NsdService;-><init>(Landroid/content/Context;Lcom/android/server/NsdService$NsdSettings;Landroid/os/Handler;Lcom/android/server/NsdService$DaemonConnectionSupplier;)V

    .line 558
    iget-object p0, v1, Lcom/android/server/NsdService;->mDaemonCallback:Lcom/android/server/NsdService$NativeCallbackReceiver;

    invoke-virtual {p0}, Lcom/android/server/NsdService$NativeCallbackReceiver;->awaitConnection()V

    .line 559
    return-object v1
.end method

.method private discoverServices(ILjava/lang/String;)Z
    .registers 7

    .line 739
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "discover"

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object p2, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private getAddrInfo(ILjava/lang/String;)Z
    .registers 7

    .line 757
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "getaddrinfo"

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    aput-object p2, v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private getUniqueId()I
    .registers 2

    .line 595
    iget v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    if-nez v0, :cond_f

    iget v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    return v0

    .line 596
    :cond_f
    iget v0, p0, Lcom/android/server/NsdService;->mUniqueId:I

    return v0
.end method

.method private isNsdEnabled()Z
    .registers 4

    .line 587
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdSettings:Lcom/android/server/NsdService$NsdSettings;

    invoke-interface {v0}, Lcom/android/server/NsdService$NsdSettings;->isEnabled()Z

    move-result v0

    .line 589
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Network service discovery is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_15

    const-string v2, "enabled"

    goto :goto_17

    :cond_15
    const-string v2, "disabled"

    :goto_17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NsdService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return v0
.end method

.method private notifyEnabled(Z)V
    .registers 3

    .line 575
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    if-eqz p1, :cond_8

    const p1, 0x60018

    goto :goto_b

    :cond_8
    const p1, 0x60019

    :goto_b
    invoke-virtual {v0, p1}, Lcom/android/server/NsdService$NsdStateMachine;->sendMessage(I)V

    .line 576
    return-void
.end method

.method private obtainMessage(Landroid/os/Message;)Landroid/os/Message;
    .registers 3

    .line 779
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 780
    iget p1, p1, Landroid/os/Message;->arg2:I

    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 781
    return-object v0
.end method

.method private registerService(ILandroid/net/nsd/NsdServiceInfo;)Z
    .registers 10

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NsdService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    .line 720
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object v1

    .line 721
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    move-result v2

    .line 722
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getTxtRecord()[B

    move-result-object p2

    .line 723
    const/4 v3, 0x0

    invoke-static {p2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    const-string v4, "\n"

    const-string v5, ""

    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 724
    iget-object v4, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v6, "register"

    aput-object v6, v5, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v5, v3

    const/4 p1, 0x2

    aput-object v0, v5, p1

    const/4 p1, 0x3

    aput-object v1, v5, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x4

    aput-object p1, v5, v0

    const/4 p1, 0x5

    aput-object p2, v5, p1

    invoke-virtual {v4, v5}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private replyToMessage(Landroid/os/Message;I)V
    .registers 4

    .line 785
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_5

    return-void

    .line 786
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 787
    iput p2, v0, Landroid/os/Message;->what:I

    .line 788
    iget-object p2, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 789
    return-void
.end method

.method private replyToMessage(Landroid/os/Message;II)V
    .registers 5

    .line 792
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_5

    return-void

    .line 793
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 794
    iput p2, v0, Landroid/os/Message;->what:I

    .line 795
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 796
    iget-object p2, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 797
    return-void
.end method

.method private replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .registers 5

    .line 800
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-nez v0, :cond_5

    return-void

    .line 801
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->obtainMessage(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 802
    iput p2, v0, Landroid/os/Message;->what:I

    .line 803
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 804
    iget-object p2, p0, Lcom/android/server/NsdService;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;Landroid/os/Message;)V

    .line 805
    return-void
.end method

.method private resolveService(ILandroid/net/nsd/NsdServiceInfo;)Z
    .registers 8

    .line 747
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v0

    .line 748
    invoke-virtual {p2}, Landroid/net/nsd/NsdServiceInfo;->getServiceType()Ljava/lang/String;

    move-result-object p2

    .line 749
    iget-object v1, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "resolve"

    aput-object v4, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    aput-object v0, v2, p1

    const/4 p1, 0x3

    aput-object p2, v2, p1

    const/4 p1, 0x4

    const-string p2, "local."

    aput-object p2, v2, p1

    invoke-virtual {v1, v2}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private sendNsdStateChangeBroadcast(Z)V
    .registers 4

    .line 579
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.nsd.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 580
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 581
    if-eqz p1, :cond_10

    const/4 p1, 0x2

    goto :goto_11

    :cond_10
    const/4 p1, 0x1

    .line 582
    :goto_11
    const-string/jumbo v1, "nsd_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 583
    iget-object p1, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 584
    return-void
.end method

.method private stopGetAddrInfo(I)Z
    .registers 6

    .line 761
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "stop-getaddrinfo"

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private stopResolveService(I)Z
    .registers 6

    .line 753
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "stop-resolve"

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private stopServiceDiscovery(I)Z
    .registers 6

    .line 743
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "stop-discover"

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private unescape(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 520
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_7a

    .line 521
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 522
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_74

    .line 523
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v4, "Unexpected end of escape sequence in: "

    const-string v5, "NsdService"

    if-lt v1, v2, :cond_37

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    goto :goto_7a

    .line 527
    :cond_37
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 528
    const/16 v6, 0x2e

    if-eq v2, v6, :cond_74

    if-eq v2, v3, :cond_74

    .line 529
    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v3, v6, :cond_5c

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    goto :goto_7a

    .line 533
    :cond_5c
    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0x64

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v2, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    int-to-char v2, v2

    .line 534
    move v1, v3

    .line 537
    :cond_74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 520
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 539
    :cond_7a
    :goto_7a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private unregisterService(I)Z
    .registers 6

    .line 728
    iget-object v0, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "stop-register"

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private updateService(ILandroid/net/nsd/DnsSdTxtRecord;)Z
    .registers 7

    .line 732
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 733
    return v0

    .line 735
    :cond_4
    iget-object v1, p0, Lcom/android/server/NsdService;->mDaemon:Lcom/android/server/NsdService$DaemonConnection;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "update"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    invoke-virtual {p2}, Landroid/net/nsd/DnsSdTxtRecord;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, p1

    const/4 p1, 0x3

    invoke-virtual {p2}, Landroid/net/nsd/DnsSdTxtRecord;->getRawData()[B

    move-result-object p2

    aput-object p2, v2, p1

    invoke-virtual {v1, v2}, Lcom/android/server/NsdService$DaemonConnection;->execute([Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 766
    iget-object v0, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    const-string v1, "NsdService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 768
    :cond_b
    iget-object v0, p0, Lcom/android/server/NsdService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NsdService$ClientInfo;

    .line 769
    const-string v2, "Client Info"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 770
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 771
    goto :goto_15

    .line 773
    :cond_2a
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/NsdService$NsdStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 774
    return-void
.end method

.method public getMessenger()Landroid/os/Messenger;
    .registers 4

    .line 563
    iget-object v0, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    const-string v2, "NsdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/NsdService;->mNsdStateMachine:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-virtual {v1}, Lcom/android/server/NsdService$NsdStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public setEnabled(Z)V
    .registers 5

    .line 568
    iget-object v0, p0, Lcom/android/server/NsdService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "NsdService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/android/server/NsdService;->mNsdSettings:Lcom/android/server/NsdService$NsdSettings;

    invoke-interface {v0, p1}, Lcom/android/server/NsdService$NsdSettings;->putEnabledStatus(Z)V

    .line 571
    invoke-direct {p0, p1}, Lcom/android/server/NsdService;->notifyEnabled(Z)V

    .line 572
    return-void
.end method
