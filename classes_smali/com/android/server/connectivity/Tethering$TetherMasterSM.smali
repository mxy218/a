.class Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.super Lcom/android/internal/util/StateMachine;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherMasterSM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;
    }
.end annotation


# static fields
.field private static final BASE_MASTER:I = 0x50000

.field static final CMD_CLEAR_ERROR:I = 0x50006

.field static final CMD_RETRY_UPSTREAM:I = 0x50004

.field static final CMD_UPSTREAM_CHANGED:I = 0x50003

.field static final EVENT_IFACE_SERVING_STATE_ACTIVE:I = 0x50001

.field static final EVENT_IFACE_SERVING_STATE_INACTIVE:I = 0x50002

.field static final EVENT_IFACE_UPDATE_LINKPROPERTIES:I = 0x50007

.field static final EVENT_UPSTREAM_CALLBACK:I = 0x50005

.field static final EVENT_UPSTREAM_PERMISSION_CHANGED:I = 0x50008

.field private static final UPSTREAM_SETTLE_TIME_MS:I = 0x2710


# instance fields
.field private final mIPv6TetheringCoordinator:Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

.field private final mInitialState:Lcom/android/internal/util/State;

.field private final mNotifyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/ip/IpServer;",
            ">;"
        }
    .end annotation
.end field

.field private final mOffload:Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

.field private final mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

.field private final mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

.field private final mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

.field private final mStartTetheringErrorState:Lcom/android/internal/util/State;

.field private final mStopTetheringErrorState:Lcom/android/internal/util/State;

.field private final mTetherModeAliveState:Lcom/android/internal/util/State;

.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Lcom/android/server/connectivity/tethering/TetheringDependencies;)V
    .registers 5

    .line 1116
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    .line 1117
    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1119
    new-instance p2, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;

    invoke-direct {p2, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;

    .line 1120
    new-instance p2, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;

    invoke-direct {p2, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeAliveState:Lcom/android/internal/util/State;

    .line 1121
    new-instance p2, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;

    invoke-direct {p2, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

    .line 1122
    new-instance p2, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;

    invoke-direct {p2, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

    .line 1123
    new-instance p2, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;

    invoke-direct {p2, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/State;

    .line 1124
    new-instance p2, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;

    invoke-direct {p2, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/State;

    .line 1125
    new-instance p2, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;

    invoke-direct {p2, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

    .line 1127
    iget-object p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 1128
    iget-object p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeAliveState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 1129
    iget-object p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 1130
    iget-object p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 1131
    iget-object p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 1132
    iget-object p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 1133
    iget-object p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/State;)V

    .line 1135
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    .line 1136
    iget-object p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object p1

    invoke-virtual {p4, p2, p1}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getIPv6TetheringCoordinator(Ljava/util/ArrayList;Landroid/net/util/SharedLog;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mIPv6TetheringCoordinator:Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    .line 1137
    new-instance p1, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

    invoke-direct {p1, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mOffload:Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

    .line 1139
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->setInitialState(Lcom/android/internal/util/State;)V

    .line 1140
    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;ILandroid/net/ip/IpServer;)V
    .registers 3

    .line 1070
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->handleInterfaceServingStateActive(ILandroid/net/ip/IpServer;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .registers 1

    .line 1070
    iget-object p0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeAliveState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Landroid/net/ip/IpServer;)V
    .registers 2

    .line 1070
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->handleInterfaceServingStateInactive(Landroid/net/ip/IpServer;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;
    .registers 1

    .line 1070
    iget-object p0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mOffload:Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;
    .registers 1

    .line 1070
    iget-object p0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;ILjava/lang/Object;)V
    .registers 3

    .line 1070
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->handleUpstreamNetworkMonitorCallback(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/State;
    .registers 1

    .line 1070
    iget-object p0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;

    return-object p0
.end method

.method private handleInterfaceServingStateActive(ILandroid/net/ip/IpServer;)V
    .registers 6

    .line 1307
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_12

    .line 1308
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1309
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mIPv6TetheringCoordinator:Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->addActiveDownstream(Landroid/net/ip/IpServer;I)V

    .line 1312
    :cond_12
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1f

    .line 1316
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$2400(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_31

    .line 1318
    :cond_1f
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mOffload:Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

    invoke-virtual {p2}, Landroid/net/ip/IpServer;->interfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->excludeDownstreamInterface(Ljava/lang/String;)V

    .line 1319
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$2400(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1323
    :goto_31
    invoke-virtual {p2}, Landroid/net/ip/IpServer;->interfaceType()I

    move-result v1

    if-nez v1, :cond_67

    .line 1324
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$2500(Lcom/android/server/connectivity/Tethering;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    .line 1325
    invoke-virtual {p2}, Landroid/net/ip/IpServer;->interfaceName()Ljava/lang/String;

    move-result-object p2

    .line 1326
    if-eq p1, v0, :cond_63

    const/4 v2, 0x3

    if-eq p1, v2, :cond_5f

    .line 1334
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2600()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown active serving mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_67

    .line 1331
    :cond_5f
    invoke-virtual {v1, p2, v0}, Landroid/net/wifi/WifiManager;->updateInterfaceIpState(Ljava/lang/String;I)V

    .line 1332
    goto :goto_67

    .line 1328
    :cond_63
    const/4 p1, 0x1

    invoke-virtual {v1, p2, p1}, Landroid/net/wifi/WifiManager;->updateInterfaceIpState(Ljava/lang/String;I)V

    .line 1338
    :cond_67
    :goto_67
    return-void
.end method

.method private handleInterfaceServingStateInactive(Landroid/net/ip/IpServer;)V
    .registers 4

    .line 1341
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1342
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mIPv6TetheringCoordinator:Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->removeActiveDownstream(Landroid/net/ip/IpServer;)V

    .line 1343
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mOffload:Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

    invoke-virtual {p1}, Landroid/net/ip/IpServer;->interfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->excludeDownstreamInterface(Ljava/lang/String;)V

    .line 1344
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$2400(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1347
    invoke-virtual {p1}, Landroid/net/ip/IpServer;->interfaceType()I

    move-result v0

    if-nez v0, :cond_36

    .line 1348
    invoke-virtual {p1}, Landroid/net/ip/IpServer;->lastError()I

    move-result v0

    if-eqz v0, :cond_36

    .line 1349
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$2500(Lcom/android/server/connectivity/Tethering;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    .line 1350
    invoke-virtual {p1}, Landroid/net/ip/IpServer;->interfaceName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 1349
    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->updateInterfaceIpState(Ljava/lang/String;I)V

    .line 1353
    :cond_36
    return-void
.end method

.method private handleUpstreamNetworkMonitorCallback(ILjava/lang/Object;)V
    .registers 5

    .line 1356
    const/16 v0, 0xa

    if-ne p1, v0, :cond_c

    .line 1357
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mOffload:Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

    check-cast p2, Ljava/util/Set;

    invoke-virtual {p1, p2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->sendOffloadExemptPrefixes(Ljava/util/Set;)V

    .line 1358
    return-void

    .line 1361
    :cond_c
    check-cast p2, Landroid/net/NetworkState;

    .line 1363
    const/4 v0, 0x0

    if-eqz p2, :cond_4c

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1, p2}, Lcom/android/server/connectivity/Tethering;->access$2200(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkState;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_4c

    .line 1379
    :cond_1a
    const/4 v1, 0x1

    if-eq p1, v1, :cond_47

    const/4 p2, 0x2

    if-eq p1, p2, :cond_43

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3e

    .line 1394
    iget-object p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {p2}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown arg1 value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    goto :goto_4b

    .line 1391
    :cond_3e
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V

    .line 1392
    goto :goto_4b

    .line 1384
    :cond_43
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->chooseUpstreamType(Z)V

    .line 1385
    goto :goto_4b

    .line 1381
    :cond_47
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V

    .line 1382
    nop

    .line 1397
    :goto_4b
    return-void

    .line 1369
    :cond_4c
    :goto_4c
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {p1}, Lcom/android/server/connectivity/Tethering;->access$2300(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/InterfaceSet;

    move-result-object p1

    if-nez p1, :cond_57

    .line 1374
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->chooseUpstreamType(Z)V

    .line 1376
    :cond_57
    return-void
.end method


# virtual methods
.method protected chooseUpstreamType(Z)V
    .registers 5

    .line 1224
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$1800(Lcom/android/server/connectivity/Tethering;)V

    .line 1226
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v0

    .line 1227
    iget-boolean v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->chooseUpstreamAutomatically:Z

    if-eqz v1, :cond_1a

    .line 1228
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$1900(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->getCurrentPreferredUpstream()Landroid/net/NetworkState;

    move-result-object v0

    goto :goto_26

    .line 1229
    :cond_1a
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$1900(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->preferredUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->selectPreferredUpstreamType(Ljava/lang/Iterable;)Landroid/net/NetworkState;

    move-result-object v0

    .line 1231
    :goto_26
    if-nez v0, :cond_3c

    .line 1232
    if-eqz p1, :cond_34

    .line 1233
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {p1}, Lcom/android/server/connectivity/Tethering;->access$1900(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->registerMobileNetworkRequest()V

    goto :goto_3c

    .line 1236
    :cond_34
    const p1, 0x50004

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->sendMessageDelayed(IJ)V

    .line 1239
    :cond_3c
    :goto_3c
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->setUpstreamNetwork(Landroid/net/NetworkState;)V

    .line 1240
    if-eqz v0, :cond_44

    iget-object p1, v0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    goto :goto_45

    :cond_44
    const/4 p1, 0x0

    .line 1241
    :goto_45
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$2000(Lcom/android/server/connectivity/Tethering;)Landroid/net/Network;

    move-result-object v0

    if-eq v0, p1, :cond_6a

    .line 1242
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/Tethering;->access$2002(Lcom/android/server/connectivity/Tethering;Landroid/net/Network;)Landroid/net/Network;

    .line 1243
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {p1}, Lcom/android/server/connectivity/Tethering;->access$1900(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$2000(Lcom/android/server/connectivity/Tethering;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->setCurrentUpstream(Landroid/net/Network;)V

    .line 1244
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {p1}, Lcom/android/server/connectivity/Tethering;->access$2000(Lcom/android/server/connectivity/Tethering;)Landroid/net/Network;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/connectivity/Tethering;->access$2100(Lcom/android/server/connectivity/Tethering;Landroid/net/Network;)V

    .line 1246
    :cond_6a
    return-void
.end method

.method protected handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V
    .registers 3

    .line 1302
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mIPv6TetheringCoordinator:Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->updateUpstreamNetworkState(Landroid/net/NetworkState;)V

    .line 1303
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mOffload:Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->updateUpstreamNetworkState(Landroid/net/NetworkState;)V

    .line 1304
    return-void
.end method

.method protected notifyDownstreamsOfNewUpstreamIface(Landroid/net/util/InterfaceSet;)V
    .registers 5

    .line 1295
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/Tethering;->access$2302(Lcom/android/server/connectivity/Tethering;Landroid/net/util/InterfaceSet;)Landroid/net/util/InterfaceSet;

    .line 1296
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ip/IpServer;

    .line 1297
    const v2, 0x50070

    invoke-virtual {v1, v2, p1}, Landroid/net/ip/IpServer;->sendMessage(ILjava/lang/Object;)V

    .line 1298
    goto :goto_b

    .line 1299
    :cond_1e
    return-void
.end method

.method protected setDnsForwarders(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 7

    .line 1274
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->defaultIPv4DNS:[Ljava/lang/String;

    .line 1275
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p2

    .line 1277
    if-eqz p2, :cond_18

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 1279
    invoke-static {p2}, Landroid/net/NetworkUtils;->makeStrings(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    .line 1282
    :cond_18
    :try_start_18
    iget-object p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {p2}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Landroid/os/INetworkManagementService;->setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V

    .line 1283
    iget-object p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {p2}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object p2

    const-string v1, "SET DNS forwarders: network=%s dnsServers=%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 1285
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    .line 1283
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_3d} :catch_3e

    .line 1291
    goto :goto_5f

    .line 1286
    :catch_3e
    move-exception p1

    .line 1289
    iget-object p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {p2}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setting DNS forwarders failed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    .line 1290
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1292
    :goto_5f
    return-void
.end method

.method protected setUpstreamNetwork(Landroid/net/NetworkState;)V
    .registers 7

    .line 1249
    nop

    .line 1250
    const/4 v0, 0x0

    if-eqz p1, :cond_3f

    .line 1254
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking for default routes on: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 1255
    invoke-static {p1}, Lcom/android/server/connectivity/tethering/TetheringInterfaceUtils;->getTetheringInterfaces(Landroid/net/NetworkState;)Landroid/net/util/InterfaceSet;

    move-result-object v1

    .line 1256
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found upstream interface(s): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    goto :goto_40

    .line 1250
    :cond_3f
    move-object v1, v0

    .line 1259
    :goto_40
    if-eqz v1, :cond_49

    .line 1260
    iget-object v2, p1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    iget-object v3, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->setDnsForwarders(Landroid/net/Network;Landroid/net/LinkProperties;)V

    .line 1262
    :cond_49
    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->notifyDownstreamsOfNewUpstreamIface(Landroid/net/util/InterfaceSet;)V

    .line 1263
    if-eqz p1, :cond_5a

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1, p1}, Lcom/android/server/connectivity/Tethering;->access$2200(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkState;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 1265
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V

    goto :goto_65

    .line 1266
    :cond_5a
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {p1}, Lcom/android/server/connectivity/Tethering;->access$2300(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/InterfaceSet;

    move-result-object p1

    if-nez p1, :cond_65

    .line 1268
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->handleNewUpstreamNetworkState(Landroid/net/NetworkState;)V

    .line 1270
    :cond_65
    :goto_65
    return-void
.end method

.method protected turnOffMasterTetherSettings()Z
    .registers 4

    .line 1203
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->stopTethering()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_37

    .line 1208
    nop

    .line 1210
    :try_start_b
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_27

    .line 1215
    nop

    .line 1216
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1217
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string v1, "SET master tether settings: OFF"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1218
    const/4 v0, 0x1

    return v0

    .line 1211
    :catch_27
    move-exception v1

    .line 1212
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/Exception;)V

    .line 1213
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1214
    return v0

    .line 1204
    :catch_37
    move-exception v1

    .line 1205
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/Exception;)V

    .line 1206
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1207
    return v0
.end method

.method protected turnOnMasterTetherSettings()Z
    .registers 5

    .line 1171
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v0

    .line 1173
    const/4 v1, 0x0

    :try_start_7
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->setIpForwardingEnabled(Z)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_56

    .line 1178
    nop

    .line 1181
    iget-boolean v2, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->enableLegacyDhcpServer:Z

    if-eqz v2, :cond_19

    .line 1182
    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->legacyDhcpRanges:[Ljava/lang/String;

    goto :goto_1b

    .line 1183
    :cond_19
    new-array v0, v1, [Ljava/lang/String;

    :goto_1b
    nop

    .line 1186
    :try_start_1c
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_25} :catch_26

    .line 1196
    goto :goto_3a

    .line 1187
    :catch_26
    move-exception v2

    .line 1189
    :try_start_27
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopTethering()V

    .line 1190
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_39} :catch_46

    .line 1195
    nop

    .line 1197
    :goto_3a
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string v1, "SET master tether settings: ON"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 1198
    return v3

    .line 1191
    :catch_46
    move-exception v0

    .line 1192
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/Exception;)V

    .line 1193
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1194
    return v1

    .line 1174
    :catch_56
    move-exception v0

    .line 1175
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/Exception;)V

    .line 1176
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1177
    return v1
.end method
