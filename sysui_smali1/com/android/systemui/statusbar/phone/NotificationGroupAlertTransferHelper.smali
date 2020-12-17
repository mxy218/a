.class public Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;
.super Ljava/lang/Object;
.source "NotificationGroupAlertTransferHelper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;,
        Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$PendingAlertInfo;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final mGroupAlertEntries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mIsDozing:Z

.field private final mNotificationEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

.field private final mOnGroupChangeListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

.field private final mPendingAlerts:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$PendingAlertInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupAlertEntries:Landroid/util/ArrayMap;

    .line 68
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mPendingAlerts:Landroid/util/ArrayMap;

    .line 71
    const-class v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 72
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 130
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mOnGroupChangeListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    .line 181
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mNotificationEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    .line 80
    const-class v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)Landroid/util/ArrayMap;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupAlertEntries:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/AlertingNotificationManager;)V
    .registers 3

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->handleSuppressedSummaryAlerted(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/AlertingNotificationManager;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/AlertingNotificationManager;)V
    .registers 3

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->alertNotificationWhenPossible(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/AlertingNotificationManager;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->checkShouldTransferBack(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;)Landroid/util/ArrayMap;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mPendingAlerts:Landroid/util/ArrayMap;

    return-object p0
.end method

.method private alertNotificationWhenPossible(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/AlertingNotificationManager;)V
    .registers 7

    .line 392
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->getContentFlag()I

    move-result v0

    .line 393
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isInflationFlagSet(I)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2a

    .line 394
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mPendingAlerts:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$PendingAlertInfo;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$PendingAlertInfo;-><init>(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {p2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->updateInflationFlag(IZ)V

    .line 396
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->inflateViews()V

    return-void

    .line 399
    :cond_2a
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_38

    .line 400
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p2, p0, v2}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->updateNotification(Ljava/lang/String;Z)V

    goto :goto_3b

    .line 402
    :cond_38
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->showNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :goto_3b
    return-void
.end method

.method private checkShouldTransferBack(Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;)V
    .registers 13

    .line 343
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;->mLastAlertTransferTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-gez v0, :cond_8e

    .line 345
    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;->mGroup:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 347
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->onlySummaryAlerts(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    if-nez v1, :cond_18

    return-void

    .line 350
    :cond_18
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalChildren(Landroid/service/notification/StatusBarNotification;)Ljava/util/ArrayList;

    move-result-object v1

    .line 351
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 352
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;->mGroup:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->getPendingChildrenNotAlerting(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)I

    move-result v3

    add-int/2addr v2, v3

    const/4 v4, 0x1

    if-gt v2, v4, :cond_2f

    return-void

    :cond_2f
    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    .line 358
    :goto_32
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v6, v8, :cond_70

    .line 359
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 360
    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->onlySummaryAlerts(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v9

    if-eqz v9, :cond_56

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v10, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_56

    .line 362
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v9, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v7, v9, v4}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeNotification(Ljava/lang/String;Z)Z

    move v7, v4

    .line 364
    :cond_56
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mPendingAlerts:Landroid/util/ArrayMap;

    iget-object v10, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6d

    .line 367
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mPendingAlerts:Landroid/util/ArrayMap;

    iget-object v8, v8, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$PendingAlertInfo;

    iput-boolean v4, v7, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$PendingAlertInfo;->mAbortOnInflation:Z

    move v7, v4

    :cond_6d
    add-int/lit8 v6, v6, 0x1

    goto :goto_32

    :cond_70
    if-eqz v7, :cond_8e

    .line 370
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8e

    sub-int/2addr v2, v3

    if-le v2, v4, :cond_80

    move v5, v4

    :cond_80
    if-eqz v5, :cond_88

    .line 373
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->alertNotificationWhenPossible(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/AlertingNotificationManager;)V

    goto :goto_8a

    .line 376
    :cond_88
    iput-boolean v4, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;->mAlertSummaryOnNextAddition:Z

    :goto_8a
    const-wide/16 v0, 0x0

    .line 378
    iput-wide v0, p1, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;->mLastAlertTransferTime:J

    :cond_8e
    return-void
.end method

.method private getPendingChildrenNotAlerting(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)I
    .registers 6

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 233
    :cond_6
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getPendingNotificationsIterator()Ljava/lang/Iterable;

    move-result-object v0

    .line 234
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 235
    invoke-direct {p0, v2, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->isPendingNotificationInGroup(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->onlySummaryAlerts(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    if-eqz v2, :cond_e

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_29
    return v1
.end method

.method private handleSuppressedSummaryAlerted(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/AlertingNotificationManager;)V
    .registers 7

    .line 287
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 288
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupAlertEntries:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    .line 289
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;

    .line 290
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 291
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    if-nez v1, :cond_27

    goto :goto_73

    .line 296
    :cond_27
    iget-object v0, v1, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;->mGroup:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->pendingInflationsWillAddChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z

    move-result v0

    if-eqz v0, :cond_30

    return-void

    .line 301
    :cond_30
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getLogicalChildren(Landroid/service/notification/StatusBarNotification;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v0, :cond_73

    .line 303
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->keepInParent()Z

    move-result v2

    if-nez v2, :cond_73

    .line 304
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowRemoved()Z

    move-result v2

    if-nez v2, :cond_73

    .line 305
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isRowDismissed()Z

    move-result v2

    if-eqz v2, :cond_5b

    goto :goto_73

    .line 309
    :cond_5b
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6f

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->onlySummaryAlerts(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 310
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;->mLastAlertTransferTime:J

    .line 312
    :cond_6f
    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->transferAlertState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/AlertingNotificationManager;)V

    nop

    :cond_73
    :goto_73
    return-void
.end method

.method private isPendingNotificationInGroup(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z
    .registers 6

    .line 270
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p2, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->summary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupChild(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_2e

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 272
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->getGroupKey(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    iget-object p0, p2, Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;->children:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    .line 273
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2e

    const/4 p0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p0, 0x0

    :goto_2f
    return p0
.end method

.method private onAlertStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZLcom/android/systemui/statusbar/AlertingNotificationManager;)V
    .registers 5

    if-eqz p2, :cond_f

    .line 176
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 177
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->handleSuppressedSummaryAlerted(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/AlertingNotificationManager;)V

    :cond_f
    return-void
.end method

.method private onlySummaryAlerts(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .registers 2

    .line 407
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_e

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private pendingInflationsWillAddChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z
    .registers 5

    .line 249
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 252
    :cond_6
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getPendingNotificationsIterator()Ljava/lang/Iterable;

    move-result-object v0

    .line 253
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 254
    invoke-direct {p0, v2, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->isPendingNotificationInGroup(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_22
    return v1
.end method

.method private transferAlertState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/AlertingNotificationManager;)V
    .registers 5

    .line 327
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeNotification(Ljava/lang/String;Z)Z

    .line 328
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->alertNotificationWhenPossible(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/AlertingNotificationManager;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .registers 4

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    if-nez v0, :cond_13

    .line 94
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 96
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mNotificationEntryListener:Lcom/android/systemui/statusbar/notification/NotificationEntryListener;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mOnGroupChangeListener:Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;

    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->addOnGroupChangeListener(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;)V

    return-void

    .line 87
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already bound."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDozingChanged(Z)V
    .registers 6

    .line 121
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mIsDozing:Z

    if-eq v0, p1, :cond_22

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mGroupAlertEntries:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;

    const-wide/16 v2, 0x0

    .line 123
    iput-wide v2, v1, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;->mLastAlertTransferTime:J

    const/4 v2, 0x0

    .line 124
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper$GroupAlertEntry;->mAlertSummaryOnNextAddition:Z

    goto :goto_e

    .line 127
    :cond_22
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mIsDozing:Z

    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->onAlertStateChanged(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZLcom/android/systemui/statusbar/AlertingNotificationManager;)V

    return-void
.end method

.method public onStateChanged(I)V
    .registers 2

    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationGroupAlertTransferHelper;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-void
.end method
