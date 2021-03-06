.class public Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;
.super Ljava/lang/Object;
.source "NotificationLogger.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;,
        Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$OnChildLocationsChangedListener;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mCurrentlyVisibleNotifications:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;"
        }
    .end annotation
.end field

.field private mDozing:Z

.field private final mDozingLock:Ljava/lang/Object;

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final mExpansionStateLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;

.field protected mHandler:Landroid/os/Handler;

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mLastVisibilityReportUptimeMs:J

.field private mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

.field private final mNotificationListener:Landroid/service/notification/NotificationListenerService;

.field protected final mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$OnChildLocationsChangedListener;

.field private final mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

.field protected mVisibilityReporter:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationListener;Lcom/android/systemui/UiOffloadThread;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;)V
    .registers 7
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mHandler:Landroid/os/Handler;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mDozingLock:Ljava/lang/Object;

    .line 83
    new-instance v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$1;-><init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$OnChildLocationsChangedListener;

    .line 104
    new-instance v0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$2;-><init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mVisibilityReporter:Ljava/lang/Runnable;

    .line 201
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    .line 202
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    .line 203
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const-string/jumbo p1, "statusbar"

    .line 205
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 204
    invoke-static {p1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 206
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mExpansionStateLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;

    .line 208
    invoke-interface {p4, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 210
    new-instance p1, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$3;-><init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)V

    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)J
    .registers 3

    .line 59
    iget-wide v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mLastVisibilityReportUptimeMs:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;J)J
    .registers 3

    .line 59
    iput-wide p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mLastVisibilityReportUptimeMs:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)Landroid/util/ArraySet;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 3

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;Landroid/util/ArraySet;)V
    .registers 2

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->recycleAllVisibilityObjects(Landroid/util/ArraySet;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;)Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mExpansionStateLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Lcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 4

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->logNotificationClear(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Lcom/android/internal/statusbar/NotificationVisibility;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V
    .registers 3

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->logNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$900(Ljava/util/Collection;)[Lcom/android/internal/statusbar/NotificationVisibility;
    .registers 1

    .line 59
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->cloneVisibilitiesAsArr(Ljava/util/Collection;)[Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object p0

    return-object p0
.end method

.method private static cloneVisibilitiesAsArr(Ljava/util/Collection;)[Lcom/android/internal/statusbar/NotificationVisibility;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;)[",
            "Lcom/android/internal/statusbar/NotificationVisibility;"
        }
    .end annotation

    .line 375
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/statusbar/NotificationVisibility;

    .line 377
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/NotificationVisibility;

    if-eqz v2, :cond_1f

    .line 379
    invoke-virtual {v2}, Lcom/android/internal/statusbar/NotificationVisibility;->clone()Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_22
    return-object v0
.end method

.method private static convertNotificationLocation(I)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_27

    const/4 v0, 0x2

    if-eq p0, v0, :cond_24

    const/4 v0, 0x4

    if-eq p0, v0, :cond_21

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1e

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x40

    if-eq p0, v0, :cond_18

    .line 191
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_UNKNOWN:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    return-object p0

    .line 189
    :cond_18
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_GONE:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    return-object p0

    .line 187
    :cond_1b
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_BOTTOM_STACK_HIDDEN:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    return-object p0

    .line 185
    :cond_1e
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_BOTTOM_STACK_PEEKING:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    return-object p0

    .line 183
    :cond_21
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_MAIN_AREA:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    return-object p0

    .line 181
    :cond_24
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_HIDDEN_TOP:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    return-object p0

    .line 179
    :cond_27
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_FIRST_HEADS_UP:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    return-object p0
.end method

.method public static getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;
    .registers 2

    if-eqz p0, :cond_22

    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_22

    .line 172
    :cond_13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getViewState()Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;

    move-result-object p0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->location:I

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->convertNotificationLocation(I)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object p0

    return-object p0

    .line 170
    :cond_22
    :goto_22
    sget-object p0, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->LOCATION_UNKNOWN:Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    return-object p0
.end method

.method private logNotificationClear(Ljava/lang/String;Landroid/service/notification/StatusBarNotification;Lcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 13

    .line 277
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    .line 280
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    const/4 v0, 0x3

    .line 283
    :try_start_11
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v5, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 p1, 0x1

    :goto_1a
    move v6, p1

    goto :goto_27

    .line 285
    :cond_1c
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->hasPulsingNotifications()Z

    move-result p1

    if-eqz p1, :cond_26

    const/4 p1, 0x2

    goto :goto_1a

    :cond_26
    move v6, v0

    :goto_27
    const/4 v7, 0x1

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    move-object v8, p3

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;IILcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_32} :catch_32

    :catch_32
    return-void
.end method

.method private logNotificationError(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V
    .registers 11

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 302
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v3

    .line 305
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v4

    .line 306
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v5

    .line 307
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 308
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    .line 301
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_21

    :catch_21
    return-void
.end method

.method private logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;)V"
        }
    .end annotation

    .line 317
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 320
    :cond_d
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->cloneVisibilitiesAsArr(Ljava/util/Collection;)[Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object p1

    .line 321
    invoke-static {p2}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->cloneVisibilitiesAsArr(Ljava/util/Collection;)[Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object p2

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mUiOffloadThread:Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/statusbar/notification/logging/-$$Lambda$NotificationLogger$e3uK-rBablkegG4HWqs1WzubMAs;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/notification/logging/-$$Lambda$NotificationLogger$e3uK-rBablkegG4HWqs1WzubMAs;-><init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;[Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private recycleAllVisibilityObjects(Landroid/util/ArraySet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/internal/statusbar/NotificationVisibility;",
            ">;)V"
        }
    .end annotation

    .line 357
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_13

    .line 359
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/statusbar/NotificationVisibility;

    invoke-virtual {v1}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 361
    :cond_13
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method private recycleAllVisibilityObjects([Lcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 4

    .line 365
    array-length p0, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p0, :cond_10

    .line 367
    aget-object v1, p1, v0

    if-eqz v1, :cond_d

    .line 368
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/android/internal/statusbar/NotificationVisibility;->recycle()V

    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_10
    return-void
.end method

.method private setDozing(Z)V
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mDozingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 269
    :try_start_3
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mDozing:Z

    .line 270
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method


# virtual methods
.method public getVisibilityReporter()Ljava/lang/Runnable;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 388
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mVisibilityReporter:Ljava/lang/Runnable;

    return-object p0
.end method

.method public synthetic lambda$logNotificationVisibilityChanges$0$NotificationLogger([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    .registers 7

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationVisibilityChanged([Lcom/android/internal/statusbar/NotificationVisibility;[Lcom/android/internal/statusbar/NotificationVisibility;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_5

    .line 330
    :catch_5
    array-length v0, p1

    if-lez v0, :cond_30

    .line 332
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_16

    .line 334
    aget-object v3, p1, v2

    iget-object v3, v3, Lcom/android/internal/statusbar/NotificationVisibility;->key:Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 337
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mDozingLock:Ljava/lang/Object;

    monitor-enter v0

    .line 340
    :try_start_19
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mDozing:Z
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_2d

    if-nez v2, :cond_2b

    .line 344
    :try_start_1d
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v2, v1}, Landroid/service/notification/NotificationListenerService;->setNotificationsShown([Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_22} :catch_23
    .catchall {:try_start_1d .. :try_end_22} :catchall_2d

    goto :goto_2b

    :catch_23
    move-exception v1

    :try_start_24
    const-string v2, "NotificationLogger"

    const-string v3, "failed setNotificationsShown: "

    .line 346
    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    :cond_2b
    :goto_2b
    monitor-exit v0

    goto :goto_30

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_2d

    throw p0

    .line 351
    :cond_30
    :goto_30
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->recycleAllVisibilityObjects([Lcom/android/internal/statusbar/NotificationVisibility;)V

    .line 352
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->recycleAllVisibilityObjects([Lcom/android/internal/statusbar/NotificationVisibility;)V

    return-void
.end method

.method public onDozingChanged(Z)V
    .registers 2

    .line 398
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->setDozing(Z)V

    return-void
.end method

.method public onExpansionChanged(Ljava/lang/String;ZZ)V
    .registers 5

    .line 405
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 406
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->get(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object v0

    .line 407
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mExpansionStateLogger:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->onExpansionChanged(Ljava/lang/String;ZZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)V

    return-void
.end method

.method public onStateChanged(I)V
    .registers 2

    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .registers 2

    .line 241
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-void
.end method

.method public setUpWithContainer(Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    return-void
.end method

.method public setVisibilityReporter(Ljava/lang/Runnable;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 412
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mVisibilityReporter:Ljava/lang/Runnable;

    return-void
.end method

.method public startNotificationLogging()V
    .registers 3

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$OnChildLocationsChangedListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->setChildLocationsChangedListener(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$OnChildLocationsChangedListener;)V

    .line 264
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mNotificationLocationsChangedListener:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$OnChildLocationsChangedListener;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$OnChildLocationsChangedListener;->onChildLocationsChanged()V

    return-void
.end method

.method public stopNotificationLogging()V
    .registers 3

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 249
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    .line 248
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->logNotificationVisibilityChanges(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mCurrentlyVisibleNotifications:Landroid/util/ArraySet;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->recycleAllVisibilityObjects(Landroid/util/ArraySet;)V

    .line 252
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mVisibilityReporter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 253
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->mListContainer:Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->setChildLocationsChangedListener(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$OnChildLocationsChangedListener;)V

    return-void
.end method
