.class final Lcom/android/server/media/MediaRouterService$UserHandler;
.super Landroid/os/Handler;
.source "MediaRouterService.java"

# interfaces
.implements Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;
.implements Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UserHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;,
        Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    }
.end annotation


# static fields
.field private static final MSG_CONNECTION_TIMED_OUT:I = 0x9

.field public static final MSG_REQUEST_SET_VOLUME:I = 0x6

.field public static final MSG_REQUEST_UPDATE_VOLUME:I = 0x7

.field public static final MSG_SELECT_ROUTE:I = 0x4

.field public static final MSG_START:I = 0x1

.field public static final MSG_STOP:I = 0x2

.field public static final MSG_UNSELECT_ROUTE:I = 0x5

.field private static final MSG_UPDATE_CLIENT_STATE:I = 0x8

.field public static final MSG_UPDATE_DISCOVERY_REQUEST:I = 0x3

.field private static final MSG_UPDATE_SELECTED_ROUTE:I = 0xa

.field private static final PHASE_CONNECTED:I = 0x2

.field private static final PHASE_CONNECTING:I = 0x1

.field private static final PHASE_NOT_AVAILABLE:I = -0x1

.field private static final PHASE_NOT_CONNECTED:I = 0x0

.field private static final TIMEOUT_REASON_CONNECTION_LOST:I = 0x2

.field private static final TIMEOUT_REASON_NOT_AVAILABLE:I = 0x1

.field private static final TIMEOUT_REASON_WAITING_FOR_CONNECTED:I = 0x4

.field private static final TIMEOUT_REASON_WAITING_FOR_CONNECTING:I = 0x3


# instance fields
.field private mClientStateUpdateScheduled:Z

.field private mConnectionPhase:I

.field private mConnectionTimeoutReason:I

.field private mConnectionTimeoutStartTime:J

.field private mDiscoveryMode:I

.field private final mProviderRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRunning:Z

.field private mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

.field private final mService:Lcom/android/server/media/MediaRouterService;

.field private final mTempClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/IMediaRouterClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

.field private final mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService;Lcom/android/server/media/MediaRouterService$UserRecord;)V
    .registers 6

    .line 910
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 896
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 898
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    .line 902
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    .line 904
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 911
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    .line 912
    iput-object p2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 913
    new-instance p2, Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-static {p1}, Lcom/android/server/media/MediaRouterService;->access$600(Lcom/android/server/media/MediaRouterService;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget v0, v0, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    invoke-direct {p2, p1, p0, p0, v0}, Lcom/android/server/media/RemoteDisplayProviderWatcher;-><init>(Landroid/content/Context;Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;Landroid/os/Handler;I)V

    iput-object p2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    .line 915
    return-void
.end method

.method private checkSelectedRouteState()V
    .registers 7

    .line 1136
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 1137
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 1138
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    .line 1139
    return-void

    .line 1143
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->isValid()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1144
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_82

    .line 1150
    :cond_1c
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 1151
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v3}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getStatus()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/media/MediaRouterService$UserHandler;->getConnectionPhase(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 1152
    const/4 v3, 0x2

    if-lt v0, v2, :cond_35

    iget v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    if-ge v4, v2, :cond_35

    .line 1153
    invoke-direct {p0, v3}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    .line 1154
    return-void

    .line 1158
    :cond_35
    iget v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    if-eqz v4, :cond_7c

    const-string v5, "MediaRouterService"

    if-eq v4, v2, :cond_5f

    if-eq v4, v3, :cond_43

    .line 1176
    invoke-direct {p0, v2}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    goto :goto_81

    .line 1160
    :cond_43
    if-eq v0, v3, :cond_5b

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected to route: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :cond_5b
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    .line 1164
    goto :goto_81

    .line 1166
    :cond_5f
    if-eq v0, v2, :cond_77

    .line 1167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connecting to route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    :cond_77
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    .line 1170
    goto :goto_81

    .line 1172
    :cond_7c
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    .line 1173
    nop

    .line 1179
    :goto_81
    return-void

    .line 1145
    :cond_82
    :goto_82
    invoke-direct {p0, v2}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    .line 1146
    return-void
.end method

.method private connectionTimedOut()V
    .registers 9

    .line 1208
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    const-string v1, "MediaRouterService"

    if-eqz v0, :cond_98

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-nez v2, :cond_c

    goto/16 :goto_98

    .line 1214
    :cond_c
    const/4 v2, 0x1

    if-eq v0, v2, :cond_7a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_63

    const/4 v2, 0x3

    const-string v3, " ms: "

    if-eq v0, v2, :cond_3f

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1b

    goto :goto_91

    .line 1230
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected route timed out while connecting after "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1231
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1230
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    .line 1224
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected route timed out while waiting for connection attempt to begin after "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1226
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1224
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    goto :goto_91

    .line 1220
    :cond_63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected route connection lost: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    goto :goto_91

    .line 1216
    :cond_7a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected route no longer available: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    nop

    .line 1235
    :goto_91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    .line 1237
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectSelectedRoute()V

    .line 1238
    return-void

    .line 1210
    :cond_98
    :goto_98
    const-string v0, "Handled connection timeout for no reason."

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    return-void
.end method

.method private findProviderRecord(Lcom/android/server/media/RemoteDisplayProviderProxy;)I
    .registers 5

    .line 1316
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1317
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1b

    .line 1318
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 1319
    invoke-virtual {v2}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object v2

    if-ne v2, p1, :cond_18

    .line 1320
    return v1

    .line 1317
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1323
    :cond_1b
    const/4 p1, -0x1

    return p1
.end method

.method private findRouteRecord(Ljava/lang/String;)Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    .registers 5

    .line 1327
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1328
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_1b

    .line 1329
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->findRouteByUniqueId(Ljava/lang/String;)Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    move-result-object v2

    .line 1330
    if-eqz v2, :cond_18

    .line 1331
    return-object v2

    .line 1328
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1334
    :cond_1b
    const/4 p1, 0x0

    return-object p1
.end method

.method private static getConnectionPhase(I)I
    .registers 3

    .line 1338
    const/4 v0, 0x2

    if-eqz p0, :cond_13

    const/4 v1, 0x1

    if-eq p0, v1, :cond_11

    if-eq p0, v0, :cond_10

    const/4 v1, 0x3

    if-eq p0, v1, :cond_11

    const/4 v1, 0x6

    if-eq p0, v1, :cond_13

    .line 1350
    const/4 p0, -0x1

    return p0

    .line 1343
    :cond_10
    return v1

    .line 1346
    :cond_11
    const/4 p0, 0x0

    return p0

    .line 1341
    :cond_13
    return v0
.end method

.method private requestSetVolume(Ljava/lang/String;I)V
    .registers 4

    .line 1072
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-eqz v0, :cond_17

    .line 1073
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 1074
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDisplayVolume(I)V

    .line 1076
    :cond_17
    return-void
.end method

.method private requestUpdateVolume(Ljava/lang/String;I)V
    .registers 4

    .line 1079
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-eqz v0, :cond_17

    .line 1080
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 1081
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->adjustDisplayVolume(I)V

    .line 1083
    :cond_17
    return-void
.end method

.method private scheduleUpdateClientState()V
    .registers 2

    .line 1241
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mClientStateUpdateScheduled:Z

    if-nez v0, :cond_c

    .line 1242
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mClientStateUpdateScheduled:Z

    .line 1243
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    .line 1245
    :cond_c
    return-void
.end method

.method private selectRoute(Ljava/lang/String;)V
    .registers 4

    .line 1035
    if-eqz p1, :cond_42

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-eqz v0, :cond_10

    .line 1037
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 1038
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->findRouteRecord(Ljava/lang/String;)Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    move-result-object p1

    .line 1039
    if-eqz p1, :cond_42

    .line 1040
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectSelectedRoute()V

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Selected route:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouterService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1044
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkSelectedRouteState()V

    .line 1045
    invoke-virtual {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getDescriptorId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setSelectedDisplay(Ljava/lang/String;)V

    .line 1047
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    .line 1050
    :cond_42
    return-void
.end method

.method private start()V
    .registers 2

    .line 988
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    if-nez v0, :cond_c

    .line 989
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    .line 990
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-virtual {v0}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->start()V

    .line 992
    :cond_c
    return-void
.end method

.method private stop()V
    .registers 2

    .line 995
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    if-eqz v0, :cond_f

    .line 996
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    .line 997
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectSelectedRoute()V

    .line 998
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-virtual {v0}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->stop()V

    .line 1000
    :cond_f
    return-void
.end method

.method private unselectRoute(Ljava/lang/String;)V
    .registers 3

    .line 1053
    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-eqz v0, :cond_13

    .line 1055
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1056
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectSelectedRoute()V

    .line 1058
    :cond_13
    return-void
.end method

.method private unselectSelectedRoute()V
    .registers 3

    .line 1061
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-eqz v0, :cond_2e

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unselected route:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouterService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setSelectedDisplay(Ljava/lang/String;)V

    .line 1064
    iput-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1065
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkSelectedRouteState()V

    .line 1067
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    .line 1069
    :cond_2e
    return-void
.end method

.method private updateClientState()V
    .registers 7

    .line 1248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mClientStateUpdateScheduled:Z

    .line 1251
    new-instance v1, Landroid/media/MediaRouterClientState;

    invoke-direct {v1}, Landroid/media/MediaRouterClientState;-><init>()V

    .line 1252
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1253
    move v3, v0

    :goto_f
    if-ge v3, v2, :cond_1f

    .line 1254
    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-virtual {v4, v1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->appendClientState(Landroid/media/MediaRouterClientState;)V

    .line 1253
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1258
    :cond_1f
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    invoke-static {v2}, Lcom/android/server/media/MediaRouterService;->access$400(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_74

    .line 1260
    :try_start_26
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iput-object v1, v3, Lcom/android/server/media/MediaRouterService$UserRecord;->mRouterState:Landroid/media/MediaRouterClientState;

    .line 1263
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v1, v1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1264
    move v3, v0

    :goto_33
    if-ge v3, v1, :cond_49

    .line 1265
    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v5, v5, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaRouterService$ClientRecord;

    iget-object v5, v5, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1264
    add-int/lit8 v3, v3, 0x1

    goto :goto_33

    .line 1267
    :cond_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_26 .. :try_end_4a} :catchall_71

    .line 1270
    :try_start_4a
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_74

    .line 1271
    nop

    :goto_51
    if-ge v0, v1, :cond_6a

    .line 1273
    :try_start_53
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/IMediaRouterClient;

    invoke-interface {v2}, Landroid/media/IMediaRouterClient;->onStateChanged()V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_5e} :catch_5f
    .catchall {:try_start_53 .. :try_end_5e} :catchall_74

    .line 1276
    goto :goto_67

    .line 1274
    :catch_5f
    move-exception v2

    .line 1275
    :try_start_60
    const-string v2, "MediaRouterService"

    const-string v3, "Failed to call onStateChanged. Client probably died."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_74

    .line 1271
    :goto_67
    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 1280
    :cond_6a
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1281
    nop

    .line 1282
    return-void

    .line 1267
    :catchall_71
    move-exception v0

    :try_start_72
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    :try_start_73
    throw v0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_74

    .line 1280
    :catchall_74
    move-exception v0

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    throw v0
.end method

.method private updateConnectionTimeout(I)V
    .registers 6

    .line 1182
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    if-eq p1, v0, :cond_30

    .line 1183
    const/16 v1, 0x9

    if-eqz v0, :cond_b

    .line 1184
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->removeMessages(I)V

    .line 1186
    :cond_b
    iput p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    .line 1187
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    .line 1188
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_27

    const/4 v0, 0x4

    if-eq p1, v0, :cond_20

    goto :goto_30

    .line 1201
    :cond_20
    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_30

    .line 1197
    :cond_27
    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1198
    goto :goto_30

    .line 1193
    :cond_2d
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    .line 1205
    :cond_30
    :goto_30
    return-void
.end method

.method private updateDiscoveryRequest()V
    .registers 9

    .line 1003
    nop

    .line 1004
    nop

    .line 1005
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    invoke-static {v0}, Lcom/android/server/media/MediaRouterService;->access$400(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1006
    :try_start_9
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v1, v1, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1007
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_15
    if-ge v3, v1, :cond_2a

    .line 1008
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v6, v6, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 1009
    iget v7, v6, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    or-int/2addr v4, v7

    .line 1010
    iget-boolean v6, v6, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    or-int/2addr v5, v6

    .line 1007
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 1012
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_5a

    .line 1015
    and-int/lit8 v0, v4, 0x4

    if-eqz v0, :cond_35

    .line 1016
    if-eqz v5, :cond_33

    .line 1017
    const/4 v0, 0x2

    goto :goto_36

    .line 1019
    :cond_33
    const/4 v0, 0x1

    goto :goto_36

    .line 1022
    :cond_35
    move v0, v2

    .line 1025
    :goto_36
    iget v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    if-eq v1, v0, :cond_59

    .line 1026
    iput v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    .line 1027
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1028
    nop

    :goto_43
    if-ge v2, v0, :cond_59

    .line 1029
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object v1

    iget v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    invoke-virtual {v1, v3}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDiscoveryMode(I)V

    .line 1028
    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 1032
    :cond_59
    return-void

    .line 1012
    :catchall_5a
    move-exception v1

    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v1
.end method

.method private updateProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/RemoteDisplayState;)V
    .registers 4

    .line 1120
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->findProviderRecord(Lcom/android/server/media/RemoteDisplayProviderProxy;)I

    move-result p1

    .line 1121
    if-ltz p1, :cond_1a

    .line 1122
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 1123
    invoke-virtual {p1, p2}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->updateDescriptor(Landroid/media/RemoteDisplayState;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 1124
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkSelectedRouteState()V

    .line 1125
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    .line 1128
    :cond_1a
    return-void
.end method

.method private updateSelectedRoute(Ljava/lang/String;)V
    .registers 9

    .line 1286
    nop

    .line 1287
    :try_start_1
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    invoke-static {v0}, Lcom/android/server/media/MediaRouterService;->access$400(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6e

    .line 1288
    :try_start_8
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaRouterService$UserRecord;->access$500(Lcom/android/server/media/MediaRouterService$UserRecord;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/media/MediaRouterService$ClientGroup;

    .line 1289
    if-nez p1, :cond_1d

    .line 1290
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_6b

    .line 1311
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1290
    return-void

    .line 1292
    :cond_1d
    :try_start_1d
    iget-object v1, p1, Lcom/android/server/media/MediaRouterService$ClientGroup;->mSelectedRouteId:Ljava/lang/String;

    .line 1293
    iget-object v2, p1, Lcom/android/server/media/MediaRouterService$ClientGroup;->mClientRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 1294
    const/4 v3, 0x0

    move v4, v3

    :goto_27
    if-ge v4, v2, :cond_43

    .line 1295
    iget-object v5, p1, Lcom/android/server/media/MediaRouterService$ClientGroup;->mClientRecords:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 1296
    iget-object v6, v5, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_40

    .line 1297
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    iget-object v5, v5, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1294
    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 1300
    :cond_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_1d .. :try_end_44} :catchall_6b

    .line 1302
    :try_start_44
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_6e

    .line 1303
    nop

    :goto_4b
    if-ge v3, p1, :cond_64

    .line 1305
    :try_start_4d
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/IMediaRouterClient;

    invoke-interface {v0, v1}, Landroid/media/IMediaRouterClient;->onSelectedRouteChanged(Ljava/lang/String;)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_58} :catch_59
    .catchall {:try_start_4d .. :try_end_58} :catchall_6e

    .line 1308
    goto :goto_61

    .line 1306
    :catch_59
    move-exception v0

    .line 1307
    :try_start_5a
    const-string v0, "MediaRouterService"

    const-string v2, "Failed to call onSelectedRouteChanged. Client probably died."

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_6e

    .line 1303
    :goto_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 1311
    :cond_64
    iget-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1312
    nop

    .line 1313
    return-void

    .line 1300
    :catchall_6b
    move-exception p1

    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw p1
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    .line 1311
    :catchall_6e
    move-exception p1

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    throw p1
.end method


# virtual methods
.method public addProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;)V
    .registers 4

    .line 1087
    invoke-virtual {p1, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setCallback(Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;)V

    .line 1088
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    invoke-virtual {p1, v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDiscoveryMode(I)V

    .line 1089
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setSelectedDisplay(Ljava/lang/String;)V

    .line 1091
    new-instance v0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-direct {v0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V

    .line 1092
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1093
    invoke-virtual {p1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->getDisplayState()Landroid/media/RemoteDisplayState;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->updateDescriptor(Landroid/media/RemoteDisplayState;)Z

    .line 1095
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    .line 1096
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 964
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Handler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 967
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mRunning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 968
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mDiscoveryMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 969
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mSelectedRouteRecord="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mConnectionPhase="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 971
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mConnectionTimeoutReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mConnectionTimeoutStartTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    if-eqz v2, :cond_ba

    .line 973
    iget-wide v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_bc

    :cond_ba
    const-string v2, "<n/a>"

    :goto_bc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 972
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 975
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 977
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 978
    if-eqz v1, :cond_e4

    .line 979
    const/4 v0, 0x0

    :goto_d4
    if-ge v0, v1, :cond_f8

    .line 980
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 979
    add-int/lit8 v0, v0, 0x1

    goto :goto_d4

    .line 983
    :cond_e4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<no providers>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 985
    :cond_f8
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 919
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_48

    goto :goto_46

    .line 957
    :pswitch_6  #0xa
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateSelectedRoute(Ljava/lang/String;)V

    goto :goto_46

    .line 953
    :pswitch_e  #0x9
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->connectionTimedOut()V

    .line 954
    goto :goto_46

    .line 949
    :pswitch_12  #0x8
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateClientState()V

    .line 950
    goto :goto_46

    .line 945
    :pswitch_16  #0x7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->requestUpdateVolume(Ljava/lang/String;I)V

    .line 946
    goto :goto_46

    .line 941
    :pswitch_20  #0x6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->requestSetVolume(Ljava/lang/String;I)V

    .line 942
    goto :goto_46

    .line 937
    :pswitch_2a  #0x5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectRoute(Ljava/lang/String;)V

    .line 938
    goto :goto_46

    .line 933
    :pswitch_32  #0x4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->selectRoute(Ljava/lang/String;)V

    .line 934
    goto :goto_46

    .line 929
    :pswitch_3a  #0x3
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateDiscoveryRequest()V

    .line 930
    goto :goto_46

    .line 925
    :pswitch_3e  #0x2
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->stop()V

    .line 926
    goto :goto_46

    .line 921
    :pswitch_42  #0x1
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->start()V

    .line 922
    nop

    .line 961
    :goto_46
    return-void

    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_42  #00000001
        :pswitch_3e  #00000002
        :pswitch_3a  #00000003
        :pswitch_32  #00000004
        :pswitch_2a  #00000005
        :pswitch_20  #00000006
        :pswitch_16  #00000007
        :pswitch_12  #00000008
        :pswitch_e  #00000009
        :pswitch_6  #0000000a
    .end packed-switch
.end method

.method public onDisplayStateChanged(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/RemoteDisplayState;)V
    .registers 3

    .line 1115
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/RemoteDisplayState;)V

    .line 1116
    return-void
.end method

.method public removeProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;)V
    .registers 4

    .line 1100
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->findProviderRecord(Lcom/android/server/media/RemoteDisplayProviderProxy;)I

    move-result v0

    .line 1101
    if-ltz v0, :cond_1f

    .line 1102
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 1103
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->updateDescriptor(Landroid/media/RemoteDisplayState;)Z

    .line 1104
    invoke-virtual {p1, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setCallback(Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;)V

    .line 1105
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDiscoveryMode(I)V

    .line 1107
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkSelectedRouteState()V

    .line 1108
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    .line 1110
    :cond_1f
    return-void
.end method
