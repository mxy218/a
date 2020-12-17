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
    .param p1, "service"  # Lcom/android/server/media/MediaRouterService;
    .param p2, "userRecord"  # Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 913
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 899
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    .line 901
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    .line 905
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    .line 907
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 914
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    .line 915
    iput-object p2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 916
    new-instance v0, Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-static {p1}, Lcom/android/server/media/MediaRouterService;->access$600(Lcom/android/server/media/MediaRouterService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget v2, v2, Lcom/android/server/media/MediaRouterService$UserRecord;->mUserId:I

    invoke-direct {v0, v1, p0, p0, v2}, Lcom/android/server/media/RemoteDisplayProviderWatcher;-><init>(Landroid/content/Context;Lcom/android/server/media/RemoteDisplayProviderWatcher$Callback;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    .line 918
    return-void
.end method

.method private checkSelectedRouteState()V
    .registers 7

    .line 1139
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 1140
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 1141
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    .line 1142
    return-void

    .line 1146
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->isValid()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_82

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1147
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1c

    goto :goto_82

    .line 1153
    :cond_1c
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 1154
    .local v0, "oldPhase":I
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v3}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getStatus()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/media/MediaRouterService$UserHandler;->getConnectionPhase(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    .line 1155
    const/4 v3, 0x2

    if-lt v0, v2, :cond_35

    iget v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    if-ge v4, v2, :cond_35

    .line 1156
    invoke-direct {p0, v3}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    .line 1157
    return-void

    .line 1161
    :cond_35
    iget v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    if-eqz v4, :cond_7c

    const-string v5, "MediaRouterService"

    if-eq v4, v2, :cond_5f

    if-eq v4, v3, :cond_43

    .line 1179
    invoke-direct {p0, v2}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    goto :goto_81

    .line 1163
    :cond_43
    if-eq v0, v3, :cond_5b

    .line 1164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected to route: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :cond_5b
    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    .line 1167
    goto :goto_81

    .line 1169
    :cond_5f
    if-eq v0, v2, :cond_77

    .line 1170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting to route: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    :cond_77
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    .line 1173
    goto :goto_81

    .line 1175
    :cond_7c
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    .line 1176
    nop

    .line 1182
    :goto_81
    return-void

    .line 1148
    .end local v0  # "oldPhase":I
    :cond_82
    :goto_82
    invoke-direct {p0, v2}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateConnectionTimeout(I)V

    .line 1149
    return-void
.end method

.method private connectionTimedOut()V
    .registers 9

    .line 1211
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    const-string v1, "MediaRouterService"

    if-eqz v0, :cond_98

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-nez v2, :cond_c

    goto/16 :goto_98

    .line 1217
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

    .line 1233
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected route timed out while connecting after "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
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

    .line 1233
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_91

    .line 1227
    :cond_3f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected route timed out while waiting for connection attempt to begin after "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1229
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

    .line 1227
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    goto :goto_91

    .line 1223
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

    .line 1225
    goto :goto_91

    .line 1219
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

    .line 1221
    nop

    .line 1238
    :goto_91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    .line 1240
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectSelectedRoute()V

    .line 1241
    return-void

    .line 1213
    :cond_98
    :goto_98
    const-string v0, "Handled connection timeout for no reason."

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    return-void
.end method

.method private findProviderRecord(Lcom/android/server/media/RemoteDisplayProviderProxy;)I
    .registers 6
    .param p1, "provider"  # Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 1319
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1320
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 1321
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 1322
    .local v2, "record":Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    invoke-virtual {v2}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object v3

    if-ne v3, p1, :cond_18

    .line 1323
    return v1

    .line 1320
    .end local v2  # "record":Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1326
    .end local v1  # "i":I
    :cond_1b
    const/4 v1, -0x1

    return v1
.end method

.method private findRouteRecord(Ljava/lang/String;)Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    .registers 5
    .param p1, "uniqueId"  # Ljava/lang/String;

    .line 1330
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1331
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 1332
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-virtual {v2, p1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->findRouteByUniqueId(Ljava/lang/String;)Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    move-result-object v2

    .line 1333
    .local v2, "record":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    if-eqz v2, :cond_18

    .line 1334
    return-object v2

    .line 1331
    .end local v2  # "record":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1337
    .end local v1  # "i":I
    :cond_1b
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getConnectionPhase(I)I
    .registers 3
    .param p0, "status"  # I

    .line 1341
    const/4 v0, 0x2

    if-eqz p0, :cond_13

    const/4 v1, 0x1

    if-eq p0, v1, :cond_11

    if-eq p0, v0, :cond_10

    const/4 v1, 0x3

    if-eq p0, v1, :cond_11

    const/4 v1, 0x6

    if-eq p0, v1, :cond_13

    .line 1353
    const/4 v0, -0x1

    return v0

    .line 1346
    :cond_10
    return v1

    .line 1349
    :cond_11
    const/4 v0, 0x0

    return v0

    .line 1344
    :cond_13
    return v0
.end method

.method private requestSetVolume(Ljava/lang/String;I)V
    .registers 4
    .param p1, "routeId"  # Ljava/lang/String;
    .param p2, "volume"  # I

    .line 1075
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-eqz v0, :cond_17

    .line 1076
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1077
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDisplayVolume(I)V

    .line 1079
    :cond_17
    return-void
.end method

.method private requestUpdateVolume(Ljava/lang/String;I)V
    .registers 4
    .param p1, "routeId"  # Ljava/lang/String;
    .param p2, "direction"  # I

    .line 1082
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-eqz v0, :cond_17

    .line 1083
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1084
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->adjustDisplayVolume(I)V

    .line 1086
    :cond_17
    return-void
.end method

.method private scheduleUpdateClientState()V
    .registers 2

    .line 1244
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mClientStateUpdateScheduled:Z

    if-nez v0, :cond_c

    .line 1245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mClientStateUpdateScheduled:Z

    .line 1246
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    .line 1248
    :cond_c
    return-void
.end method

.method private selectRoute(Ljava/lang/String;)V
    .registers 5
    .param p1, "routeId"  # Ljava/lang/String;

    .line 1038
    if-eqz p1, :cond_42

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-eqz v0, :cond_10

    .line 1040
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 1041
    :cond_10
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->findRouteRecord(Ljava/lang/String;)Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    move-result-object v0

    .line 1042
    .local v0, "routeRecord":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    if-eqz v0, :cond_42

    .line 1043
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectSelectedRoute()V

    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected route:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaRouterService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1047
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkSelectedRouteState()V

    .line 1048
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getDescriptorId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setSelectedDisplay(Ljava/lang/String;)V

    .line 1050
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    .line 1053
    .end local v0  # "routeRecord":Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
    :cond_42
    return-void
.end method

.method private start()V
    .registers 2

    .line 991
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    if-nez v0, :cond_c

    .line 992
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    .line 993
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-virtual {v0}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->start()V

    .line 995
    :cond_c
    return-void
.end method

.method private stop()V
    .registers 2

    .line 998
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    if-eqz v0, :cond_f

    .line 999
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    .line 1000
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectSelectedRoute()V

    .line 1001
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-virtual {v0}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->stop()V

    .line 1003
    :cond_f
    return-void
.end method

.method private unselectRoute(Ljava/lang/String;)V
    .registers 3
    .param p1, "routeId"  # Ljava/lang/String;

    .line 1056
    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-eqz v0, :cond_13

    .line 1058
    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1059
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectSelectedRoute()V

    .line 1061
    :cond_13
    return-void
.end method

.method private unselectSelectedRoute()V
    .registers 3

    .line 1064
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    if-eqz v0, :cond_2e

    .line 1065
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

    .line 1066
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v0}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setSelectedDisplay(Ljava/lang/String;)V

    .line 1067
    iput-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    .line 1068
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkSelectedRouteState()V

    .line 1070
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    .line 1072
    :cond_2e
    return-void
.end method

.method private updateClientState()V
    .registers 8

    .line 1251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mClientStateUpdateScheduled:Z

    .line 1254
    new-instance v0, Landroid/media/MediaRouterClientState;

    invoke-direct {v0}, Landroid/media/MediaRouterClientState;-><init>()V

    .line 1255
    .local v0, "routerState":Landroid/media/MediaRouterClientState;
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1256
    .local v1, "providerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_1f

    .line 1257
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-virtual {v3, v0}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->appendClientState(Landroid/media/MediaRouterClientState;)V

    .line 1256
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1261
    .end local v2  # "i":I
    :cond_1f
    :try_start_1f
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    invoke-static {v2}, Lcom/android/server/media/MediaRouterService;->access$400(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_74

    .line 1263
    :try_start_26
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iput-object v0, v3, Lcom/android/server/media/MediaRouterService$UserRecord;->mRouterState:Landroid/media/MediaRouterClientState;

    .line 1266
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1267
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_33
    if-ge v4, v3, :cond_49

    .line 1268
    iget-object v5, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v6, v6, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaRouterService$ClientRecord;

    iget-object v6, v6, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1267
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    .line 1270
    .end local v3  # "count":I
    .end local v4  # "i":I
    :cond_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_26 .. :try_end_4a} :catchall_71

    .line 1273
    :try_start_4a
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_74

    .line 1274
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_51
    if-ge v3, v2, :cond_6a

    .line 1276
    :try_start_53
    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/IMediaRouterClient;

    invoke-interface {v4}, Landroid/media/IMediaRouterClient;->onStateChanged()V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_5e} :catch_5f
    .catchall {:try_start_53 .. :try_end_5e} :catchall_74

    .line 1279
    goto :goto_67

    .line 1277
    :catch_5f
    move-exception v4

    .line 1278
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_60
    const-string v5, "MediaRouterService"

    const-string v6, "Failed to call onStateChanged. Client probably died."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catchall {:try_start_60 .. :try_end_67} :catchall_74

    .line 1274
    .end local v4  # "ex":Landroid/os/RemoteException;
    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    .line 1283
    .end local v2  # "count":I
    .end local v3  # "i":I
    :cond_6a
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1284
    nop

    .line 1285
    return-void

    .line 1270
    :catchall_71
    move-exception v3

    :try_start_72
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    .end local v0  # "routerState":Landroid/media/MediaRouterClientState;
    .end local v1  # "providerCount":I
    .end local p0  # "this":Lcom/android/server/media/MediaRouterService$UserHandler;
    :try_start_73
    throw v3
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_74

    .line 1283
    .restart local v0  # "routerState":Landroid/media/MediaRouterClientState;
    .restart local v1  # "providerCount":I
    .restart local p0  # "this":Lcom/android/server/media/MediaRouterService$UserHandler;
    :catchall_74
    move-exception v2

    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    throw v2
.end method

.method private updateConnectionTimeout(I)V
    .registers 6
    .param p1, "reason"  # I

    .line 1185
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    if-eq p1, v0, :cond_30

    .line 1186
    const/16 v1, 0x9

    if-eqz v0, :cond_b

    .line 1187
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->removeMessages(I)V

    .line 1189
    :cond_b
    iput p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    .line 1190
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    .line 1191
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_27

    const/4 v0, 0x4

    if-eq p1, v0, :cond_20

    goto :goto_30

    .line 1204
    :cond_20
    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_30

    .line 1200
    :cond_27
    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1201
    goto :goto_30

    .line 1196
    :cond_2d
    invoke-virtual {p0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->sendEmptyMessage(I)Z

    .line 1208
    :cond_30
    :goto_30
    return-void
.end method

.method private updateDiscoveryRequest()V
    .registers 8

    .line 1006
    const/4 v0, 0x0

    .line 1007
    .local v0, "routeTypes":I
    const/4 v1, 0x0

    .line 1008
    .local v1, "activeScan":Z
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    invoke-static {v2}, Lcom/android/server/media/MediaRouterService;->access$400(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1009
    :try_start_9
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v3, v3, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1010
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    if-ge v4, v3, :cond_27

    .line 1011
    iget-object v5, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object v5, v5, Lcom/android/server/media/MediaRouterService$UserRecord;->mClientRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 1012
    .local v5, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    iget v6, v5, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    or-int/2addr v0, v6

    .line 1013
    iget-boolean v6, v5, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    or-int/2addr v1, v6

    .line 1010
    .end local v5  # "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 1015
    .end local v3  # "count":I
    .end local v4  # "i":I
    :cond_27
    monitor-exit v2
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_57

    .line 1018
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_32

    .line 1019
    if-eqz v1, :cond_30

    .line 1020
    const/4 v2, 0x2

    .local v2, "newDiscoveryMode":I
    goto :goto_33

    .line 1022
    .end local v2  # "newDiscoveryMode":I
    :cond_30
    const/4 v2, 0x1

    .restart local v2  # "newDiscoveryMode":I
    goto :goto_33

    .line 1025
    .end local v2  # "newDiscoveryMode":I
    :cond_32
    const/4 v2, 0x0

    .line 1028
    .restart local v2  # "newDiscoveryMode":I
    :goto_33
    iget v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    if-eq v3, v2, :cond_56

    .line 1029
    iput v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    .line 1030
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1031
    .restart local v3  # "count":I
    const/4 v4, 0x0

    .restart local v4  # "i":I
    :goto_40
    if-ge v4, v3, :cond_56

    .line 1032
    iget-object v5, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-virtual {v5}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object v5

    iget v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    invoke-virtual {v5, v6}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDiscoveryMode(I)V

    .line 1031
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 1035
    .end local v3  # "count":I
    .end local v4  # "i":I
    :cond_56
    return-void

    .line 1015
    .end local v2  # "newDiscoveryMode":I
    :catchall_57
    move-exception v3

    :try_start_58
    monitor-exit v2
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v3
.end method

.method private updateProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/RemoteDisplayState;)V
    .registers 6
    .param p1, "provider"  # Lcom/android/server/media/RemoteDisplayProviderProxy;
    .param p2, "state"  # Landroid/media/RemoteDisplayState;

    .line 1123
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->findProviderRecord(Lcom/android/server/media/RemoteDisplayProviderProxy;)I

    move-result v0

    .line 1124
    .local v0, "index":I
    if-ltz v0, :cond_1a

    .line 1125
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 1126
    .local v1, "providerRecord":Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    invoke-virtual {v1, p2}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->updateDescriptor(Landroid/media/RemoteDisplayState;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1127
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkSelectedRouteState()V

    .line 1128
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    .line 1131
    .end local v1  # "providerRecord":Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    :cond_1a
    return-void
.end method

.method private updateSelectedRoute(Ljava/lang/String;)V
    .registers 10
    .param p1, "groupId"  # Ljava/lang/String;

    .line 1289
    const/4 v0, 0x0

    .line 1290
    .local v0, "selectedRouteId":Ljava/lang/String;
    :try_start_1
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mService:Lcom/android/server/media/MediaRouterService;

    invoke-static {v1}, Lcom/android/server/media/MediaRouterService;->access$400(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6e

    .line 1291
    :try_start_8
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaRouterService$UserRecord;->access$500(Lcom/android/server/media/MediaRouterService$UserRecord;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRouterService$ClientGroup;

    .line 1292
    .local v2, "group":Lcom/android/server/media/MediaRouterService$ClientGroup;
    if-nez v2, :cond_1d

    .line 1293
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_6b

    .line 1314
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1293
    return-void

    .line 1295
    :cond_1d
    :try_start_1d
    iget-object v3, v2, Lcom/android/server/media/MediaRouterService$ClientGroup;->mSelectedRouteId:Ljava/lang/String;

    move-object v0, v3

    .line 1296
    iget-object v3, v2, Lcom/android/server/media/MediaRouterService$ClientGroup;->mClientRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 1297
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_27
    if-ge v4, v3, :cond_43

    .line 1298
    iget-object v5, v2, Lcom/android/server/media/MediaRouterService$ClientGroup;->mClientRecords:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/media/MediaRouterService$ClientRecord;

    .line 1299
    .local v5, "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    iget-object v6, v5, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_40

    .line 1300
    iget-object v6, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    iget-object v7, v5, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1297
    .end local v5  # "clientRecord":Lcom/android/server/media/MediaRouterService$ClientRecord;
    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 1303
    .end local v2  # "group":Lcom/android/server/media/MediaRouterService$ClientGroup;
    .end local v3  # "count":I
    .end local v4  # "i":I
    :cond_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_1d .. :try_end_44} :catchall_6b

    .line 1305
    :try_start_44
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_6e

    .line 1306
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4b
    if-ge v2, v1, :cond_64

    .line 1308
    :try_start_4d
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/IMediaRouterClient;

    invoke-interface {v3, v0}, Landroid/media/IMediaRouterClient;->onSelectedRouteChanged(Ljava/lang/String;)V
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_58} :catch_59
    .catchall {:try_start_4d .. :try_end_58} :catchall_6e

    .line 1311
    goto :goto_61

    .line 1309
    :catch_59
    move-exception v3

    .line 1310
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_5a
    const-string v4, "MediaRouterService"

    const-string v5, "Failed to call onSelectedRouteChanged. Client probably died."

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_6e

    .line 1306
    .end local v3  # "ex":Landroid/os/RemoteException;
    :goto_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b

    .line 1314
    .end local v0  # "selectedRouteId":Ljava/lang/String;
    .end local v1  # "count":I
    .end local v2  # "i":I
    :cond_64
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1315
    nop

    .line 1316
    return-void

    .line 1303
    .restart local v0  # "selectedRouteId":Ljava/lang/String;
    :catchall_6b
    move-exception v2

    :try_start_6c
    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    .end local p0  # "this":Lcom/android/server/media/MediaRouterService$UserHandler;
    .end local p1  # "groupId":Ljava/lang/String;
    :try_start_6d
    throw v2
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    .line 1314
    .end local v0  # "selectedRouteId":Ljava/lang/String;
    .restart local p0  # "this":Lcom/android/server/media/MediaRouterService$UserHandler;
    .restart local p1  # "groupId":Ljava/lang/String;
    :catchall_6e
    move-exception v0

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mTempClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    throw v0
.end method


# virtual methods
.method public addProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;)V
    .registers 4
    .param p1, "provider"  # Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 1090
    invoke-virtual {p1, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setCallback(Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;)V

    .line 1091
    iget v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    invoke-virtual {p1, v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDiscoveryMode(I)V

    .line 1092
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setSelectedDisplay(Ljava/lang/String;)V

    .line 1094
    new-instance v0, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-direct {v0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V

    .line 1095
    .local v0, "providerRecord":Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1096
    invoke-virtual {p1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->getDisplayState()Landroid/media/RemoteDisplayState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->updateDescriptor(Landroid/media/RemoteDisplayState;)Z

    .line 1098
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    .line 1099
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 967
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Handler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 970
    .local v0, "indent":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mRunning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mRunning:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 971
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mDiscoveryMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mDiscoveryMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mSelectedRouteRecord="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mSelectedRouteRecord:Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mConnectionPhase="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionPhase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mConnectionTimeoutReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mConnectionTimeoutStartTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutReason:I

    if-eqz v2, :cond_c0

    .line 976
    iget-wide v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mConnectionTimeoutStartTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_c2

    :cond_c0
    const-string v2, "<n/a>"

    :goto_c2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 975
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 978
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mWatcher:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 980
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 981
    .local v1, "providerCount":I
    if-eqz v1, :cond_eb

    .line 982
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_da
    if-ge v2, v1, :cond_ea

    .line 983
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 982
    add-int/lit8 v2, v2, 0x1

    goto :goto_da

    .end local v2  # "i":I
    :cond_ea
    goto :goto_ff

    .line 986
    :cond_eb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "<no providers>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 988
    :goto_ff
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 922
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_48

    goto :goto_46

    .line 960
    :pswitch_6  #0xa
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateSelectedRoute(Ljava/lang/String;)V

    goto :goto_46

    .line 956
    :pswitch_e  #0x9
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->connectionTimedOut()V

    .line 957
    goto :goto_46

    .line 952
    :pswitch_12  #0x8
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateClientState()V

    .line 953
    goto :goto_46

    .line 948
    :pswitch_16  #0x7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->requestUpdateVolume(Ljava/lang/String;I)V

    .line 949
    goto :goto_46

    .line 944
    :pswitch_20  #0x6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/media/MediaRouterService$UserHandler;->requestSetVolume(Ljava/lang/String;I)V

    .line 945
    goto :goto_46

    .line 940
    :pswitch_2a  #0x5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRouterService$UserHandler;->unselectRoute(Ljava/lang/String;)V

    .line 941
    goto :goto_46

    .line 936
    :pswitch_32  #0x4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/media/MediaRouterService$UserHandler;->selectRoute(Ljava/lang/String;)V

    .line 937
    goto :goto_46

    .line 932
    :pswitch_3a  #0x3
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateDiscoveryRequest()V

    .line 933
    goto :goto_46

    .line 928
    :pswitch_3e  #0x2
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->stop()V

    .line 929
    goto :goto_46

    .line 924
    :pswitch_42  #0x1
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->start()V

    .line 925
    nop

    .line 964
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
    .param p1, "provider"  # Lcom/android/server/media/RemoteDisplayProviderProxy;
    .param p2, "state"  # Landroid/media/RemoteDisplayState;

    .line 1118
    invoke-direct {p0, p1, p2}, Lcom/android/server/media/MediaRouterService$UserHandler;->updateProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/RemoteDisplayState;)V

    .line 1119
    return-void
.end method

.method public removeProvider(Lcom/android/server/media/RemoteDisplayProviderProxy;)V
    .registers 5
    .param p1, "provider"  # Lcom/android/server/media/RemoteDisplayProviderProxy;

    .line 1103
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaRouterService$UserHandler;->findProviderRecord(Lcom/android/server/media/RemoteDisplayProviderProxy;)I

    move-result v0

    .line 1104
    .local v0, "index":I
    if-ltz v0, :cond_1f

    .line 1105
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler;->mProviderRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 1106
    .local v1, "providerRecord":Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->updateDescriptor(Landroid/media/RemoteDisplayState;)Z

    .line 1107
    invoke-virtual {p1, v2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setCallback(Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;)V

    .line 1108
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/media/RemoteDisplayProviderProxy;->setDiscoveryMode(I)V

    .line 1110
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->checkSelectedRouteState()V

    .line 1111
    invoke-direct {p0}, Lcom/android/server/media/MediaRouterService$UserHandler;->scheduleUpdateClientState()V

    .line 1113
    .end local v1  # "providerRecord":Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    :cond_1f
    return-void
.end method
