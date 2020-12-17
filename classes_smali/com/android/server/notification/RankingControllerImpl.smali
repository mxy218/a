.class public Lcom/android/server/notification/RankingControllerImpl;
.super Ljava/lang/Object;
.source "RankingControllerImpl.java"

# interfaces
.implements Lcom/flyme/server/notfication/RankingController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/RankingControllerImpl$H;
    }
.end annotation


# static fields
.field private static final CLEAR_PACKAGE_DAILY:I = 0x3

.field private static final EVENT_TYPE_CLICK:I = 0x2

.field private static final EVENT_TYPE_NONE:I = -0x1

.field private static final EVENT_TYPE_POST:I = 0x1

.field private static final EVENT_TYPE_REMOVE_BY_USER:I = 0x3

.field private static final FILTER_STATE_CHANGED_FROM_SETTINGS:I = 0x1

.field private static final FILTER_STATE_CHANGED_FROM_SYSTEMUI:I = 0x0

.field private static final LOAD_DAILY_RECORDS:I = 0x4

.field private static final LOAD_PACKAGE_DATA:I = 0x1

.field private static final MAGIC_VALUE_BASE_DEFAULT:F = 100.0f

.field private static final MSG_CLICK:I = 0x6

.field private static final MSG_POST:I = 0x5

.field private static final MSG_REMOVE:I = 0x7

.field private static final ONE_DAY_TIME:J = 0x5265c00L

.field private static final SCORE_SCALE:F = 0.7f

.field private static TAG:Ljava/lang/String; = null

.field private static final UPDATE_PACKAGE_DAILY:I = 0x2


# instance fields
.field private final mAppDailyMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lmeizu/notification/RankingDaily;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppResultMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lmeizu/notification/RankingResult;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private final mCurrentFilterObserver:Landroid/database/ContentObserver;

.field private final mDataHelper:Lcom/flyme/server/notfication/DatabaseHelper;

.field private final mHandler:Lcom/android/server/notification/RankingControllerImpl$H;

.field mNotificationFirewall:Lcom/android/server/notification/NotificationFirewall;

.field private mRecordCurrentTime:J

.field private mTimeSetReceive:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const-string v0, "RankingControllerImpl"

    sput-object v0, Lcom/android/server/notification/RankingControllerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .registers 8
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "looper"  # Landroid/os/Looper;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppResultMap:Landroid/util/ArrayMap;

    .line 54
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mRecordCurrentTime:J

    .line 68
    new-instance v0, Lcom/android/server/notification/RankingControllerImpl$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/RankingControllerImpl$1;-><init>(Lcom/android/server/notification/RankingControllerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mCurrentFilterObserver:Landroid/database/ContentObserver;

    .line 406
    new-instance v0, Lcom/android/server/notification/RankingControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/RankingControllerImpl$2;-><init>(Lcom/android/server/notification/RankingControllerImpl;)V

    iput-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mTimeSetReceive:Landroid/content/BroadcastReceiver;

    .line 93
    iput-object p1, p0, Lcom/android/server/notification/RankingControllerImpl;->mContext:Landroid/content/Context;

    .line 94
    new-instance v0, Lcom/flyme/server/notfication/DatabaseHelper;

    const-string/jumbo v1, "notification_ranking.db"

    invoke-direct {v0, p1, v1}, Lcom/flyme/server/notfication/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mDataHelper:Lcom/flyme/server/notfication/DatabaseHelper;

    .line 95
    new-instance v0, Lcom/android/server/notification/RankingControllerImpl$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lcom/android/server/notification/RankingControllerImpl$H;-><init>(Lcom/android/server/notification/RankingControllerImpl;Landroid/os/Looper;Lcom/android/server/notification/RankingControllerImpl$1;)V

    iput-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mHandler:Lcom/android/server/notification/RankingControllerImpl$H;

    .line 96
    const/4 v0, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/RankingControllerImpl;->sendHandlerMessage(ILjava/lang/Object;)V

    .line 98
    invoke-direct {p0, p1}, Lcom/android/server/notification/RankingControllerImpl;->initTimeSetReceive(Landroid/content/Context;)V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 101
    const-string v1, "current_notification_filter_value"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/notification/RankingControllerImpl;->mCurrentFilterObserver:Landroid/database/ContentObserver;

    .line 100
    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 104
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 40
    sget-object v0, Lcom/android/server/notification/RankingControllerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/RankingControllerImpl;Ljava/lang/String;F)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/RankingControllerImpl;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # F

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingControllerImpl;->updatePackageCategoryScore(Ljava/lang/String;F)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/notification/RankingControllerImpl;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/notification/RankingControllerImpl;

    .line 40
    invoke-direct {p0}, Lcom/android/server/notification/RankingControllerImpl;->clearAllPostDate()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/notification/RankingControllerImpl;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/RankingControllerImpl;

    .line 40
    iget-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/notification/RankingControllerImpl;)Lcom/flyme/server/notfication/DatabaseHelper;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/notification/RankingControllerImpl;

    .line 40
    iget-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mDataHelper:Lcom/flyme/server/notfication/DatabaseHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/notification/RankingControllerImpl;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"  # Lcom/android/server/notification/RankingControllerImpl;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Ljava/lang/String;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingControllerImpl;->getRankingDailyKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/notification/RankingControllerImpl;Lmeizu/notification/RankingDaily;Z)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/RankingControllerImpl;
    .param p1, "x1"  # Lmeizu/notification/RankingDaily;
    .param p2, "x2"  # Z

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingControllerImpl;->updateAppDaily(Lmeizu/notification/RankingDaily;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/notification/RankingControllerImpl;Lcom/android/server/notification/NotificationRecord;I)Lmeizu/notification/RankingDaily;
    .registers 4
    .param p0, "x0"  # Lcom/android/server/notification/RankingControllerImpl;
    .param p1, "x1"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "x2"  # I

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingControllerImpl;->parseNotificationRecord(Lcom/android/server/notification/NotificationRecord;I)Lmeizu/notification/RankingDaily;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/notification/RankingControllerImpl;ILmeizu/notification/RankingDaily;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/RankingControllerImpl;
    .param p1, "x1"  # I
    .param p2, "x2"  # Lmeizu/notification/RankingDaily;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/RankingControllerImpl;->writeEvent(ILmeizu/notification/RankingDaily;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/notification/RankingControllerImpl;)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/RankingControllerImpl;

    .line 40
    iget-wide v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mRecordCurrentTime:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/server/notification/RankingControllerImpl;J)J
    .registers 3
    .param p0, "x0"  # Lcom/android/server/notification/RankingControllerImpl;
    .param p1, "x1"  # J

    .line 40
    iput-wide p1, p0, Lcom/android/server/notification/RankingControllerImpl;->mRecordCurrentTime:J

    return-wide p1
.end method

.method private clearAllPostDate()V
    .registers 6

    .line 387
    iget-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 388
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmeizu/notification/RankingDaily;

    .line 389
    .local v2, "rankingDaily":Lmeizu/notification/RankingDaily;
    if-eqz v2, :cond_2d

    .line 390
    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lmeizu/notification/RankingDaily;->postDate:J

    .line 391
    iget-object v3, p0, Lcom/android/server/notification/RankingControllerImpl;->mDataHelper:Lcom/flyme/server/notfication/DatabaseHelper;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/flyme/server/notfication/DatabaseHelper;->insertOrUpdateDaily(Lmeizu/notification/RankingDaily;Z)J

    move-result-wide v3

    iput-wide v3, v2, Lmeizu/notification/RankingDaily;->key:J

    .line 393
    .end local v1  # "key":Ljava/lang/String;
    .end local v2  # "rankingDaily":Lmeizu/notification/RankingDaily;
    :cond_2d
    goto :goto_a

    .line 394
    :cond_2e
    sget-object v0, Lcom/android/server/notification/RankingControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearAllPostDate mAppDailyMap.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    return-void
.end method

.method private getRankingDailyKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "category"  # Ljava/lang/String;

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initTimeSetReceive(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;

    .line 398
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 399
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl;->mTimeSetReceive:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/notification/RankingControllerImpl;->mRecordCurrentTime:J

    .line 404
    return-void
.end method

.method private parseNotificationRecord(Lcom/android/server/notification/NotificationRecord;I)Lmeizu/notification/RankingDaily;
    .registers 7
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;
    .param p2, "eventType"  # I

    .line 323
    new-instance v0, Lmeizu/notification/RankingDaily;

    invoke-direct {v0}, Lmeizu/notification/RankingDaily;-><init>()V

    .line 324
    .local v0, "rankingDaily":Lmeizu/notification/RankingDaily;
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmeizu/notification/RankingDaily;->packageName:Ljava/lang/String;

    .line 325
    const/4 v1, 0x0

    iput v1, v0, Lmeizu/notification/RankingDaily;->allNum:I

    .line 326
    iput v1, v0, Lmeizu/notification/RankingDaily;->clickNum:I

    .line 327
    iput v1, v0, Lmeizu/notification/RankingDaily;->removeNum:I

    .line 328
    const/4 v1, 0x1

    if-eq p2, v1, :cond_30

    const/4 v2, 0x2

    if-eq p2, v2, :cond_27

    const/4 v2, 0x3

    if-eq p2, v2, :cond_1e

    goto :goto_3b

    .line 338
    :cond_1e
    iput v1, v0, Lmeizu/notification/RankingDaily;->removeNum:I

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lmeizu/notification/RankingDaily;->updateDate:J

    .line 340
    goto :goto_3b

    .line 334
    :cond_27
    iput v1, v0, Lmeizu/notification/RankingDaily;->clickNum:I

    .line 335
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lmeizu/notification/RankingDaily;->updateDate:J

    .line 336
    goto :goto_3b

    .line 330
    :cond_30
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v2

    iput-wide v2, v0, Lmeizu/notification/RankingDaily;->updateDate:J

    .line 331
    iput v1, v0, Lmeizu/notification/RankingDaily;->allNum:I

    .line 332
    nop

    .line 344
    :goto_3b
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v1, v1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-object v1, v1, Landroid/service/notification/StatusBarNotification$Filter;->category:Ljava/lang/String;

    iput-object v1, v0, Lmeizu/notification/RankingDaily;->category:Ljava/lang/String;

    .line 345
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v1, v1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget v1, v1, Landroid/service/notification/StatusBarNotification$Filter;->score:F

    iput v1, v0, Lmeizu/notification/RankingDaily;->score:F

    .line 346
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v1, v1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget v1, v1, Landroid/service/notification/StatusBarNotification$Filter;->score_scale:F

    iput v1, v0, Lmeizu/notification/RankingDaily;->score_scale:F

    .line 347
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v1, v1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget v1, v1, Landroid/service/notification/StatusBarNotification$Filter;->notificationPriority:I

    iput v1, v0, Lmeizu/notification/RankingDaily;->notification_priority:I

    .line 348
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v1, v1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget v1, v1, Landroid/service/notification/StatusBarNotification$Filter;->categoryPriority:I

    iput v1, v0, Lmeizu/notification/RankingDaily;->category_priority:I

    .line 349
    return-object v0
.end method

.method private pruneIfNecessary()V
    .registers 1

    .line 354
    return-void
.end method

.method private sendHandlerMessage(ILjava/lang/Object;)V
    .registers 5
    .param p1, "what"  # I
    .param p2, "obj"  # Ljava/lang/Object;

    .line 245
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 246
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 247
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 248
    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl;->mHandler:Lcom/android/server/notification/RankingControllerImpl$H;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/RankingControllerImpl$H;->sendMessage(Landroid/os/Message;)Z

    .line 249
    return-void
.end method

.method private updateAppDaily(Lmeizu/notification/RankingDaily;Z)V
    .registers 9
    .param p1, "RankingDaily"  # Lmeizu/notification/RankingDaily;
    .param p2, "addMode"  # Z

    .line 178
    if-eqz p2, :cond_63

    .line 179
    iget-wide v0, p1, Lmeizu/notification/RankingDaily;->updateDate:J

    invoke-static {v0, v1}, Lcom/flyme/server/notfication/MyDateUtils;->getDate(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p1, Lmeizu/notification/RankingDaily;->updateDate:J

    .line 181
    iget-object v0, p1, Lmeizu/notification/RankingDaily;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lmeizu/notification/RankingDaily;->category:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/RankingControllerImpl;->getRankingDailyKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 183
    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmeizu/notification/RankingDaily;

    .local v1, "oldDaily":Lmeizu/notification/RankingDaily;
    goto :goto_33

    .line 185
    .end local v1  # "oldDaily":Lmeizu/notification/RankingDaily;
    :cond_27
    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl;->mDataHelper:Lcom/flyme/server/notfication/DatabaseHelper;

    iget-object v2, p1, Lmeizu/notification/RankingDaily;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lmeizu/notification/RankingDaily;->category:Ljava/lang/String;

    iget-wide v4, p1, Lmeizu/notification/RankingDaily;->updateDate:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/flyme/server/notfication/DatabaseHelper;->getDaily(Ljava/lang/String;Ljava/lang/String;J)Lmeizu/notification/RankingDaily;

    move-result-object v1

    .line 188
    .restart local v1  # "oldDaily":Lmeizu/notification/RankingDaily;
    :goto_33
    if-eqz v1, :cond_5e

    .line 189
    iget-wide v2, v1, Lmeizu/notification/RankingDaily;->key:J

    iput-wide v2, p1, Lmeizu/notification/RankingDaily;->key:J

    .line 190
    iget v2, p1, Lmeizu/notification/RankingDaily;->allNum:I

    iget v3, v1, Lmeizu/notification/RankingDaily;->allNum:I

    add-int/2addr v2, v3

    iput v2, p1, Lmeizu/notification/RankingDaily;->allNum:I

    .line 191
    iget v2, p1, Lmeizu/notification/RankingDaily;->clickNum:I

    iget v3, v1, Lmeizu/notification/RankingDaily;->clickNum:I

    add-int/2addr v2, v3

    iput v2, p1, Lmeizu/notification/RankingDaily;->clickNum:I

    .line 192
    iget v2, p1, Lmeizu/notification/RankingDaily;->removeNum:I

    iget v3, v1, Lmeizu/notification/RankingDaily;->removeNum:I

    add-int/2addr v2, v3

    iput v2, p1, Lmeizu/notification/RankingDaily;->removeNum:I

    .line 193
    iget-object v2, v1, Lmeizu/notification/RankingDaily;->category:Ljava/lang/String;

    iput-object v2, p1, Lmeizu/notification/RankingDaily;->category:Ljava/lang/String;

    .line 194
    iget v2, v1, Lmeizu/notification/RankingDaily;->score_scale:F

    iput v2, p1, Lmeizu/notification/RankingDaily;->score_scale:F

    .line 195
    iget v2, v1, Lmeizu/notification/RankingDaily;->notification_priority:I

    iput v2, p1, Lmeizu/notification/RankingDaily;->notification_priority:I

    .line 196
    iget v2, v1, Lmeizu/notification/RankingDaily;->category_priority:I

    iput v2, p1, Lmeizu/notification/RankingDaily;->category_priority:I

    .line 198
    :cond_5e
    iget-object v2, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .end local v0  # "key":Ljava/lang/String;
    .end local v1  # "oldDaily":Lmeizu/notification/RankingDaily;
    :cond_63
    iget-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mDataHelper:Lcom/flyme/server/notfication/DatabaseHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/flyme/server/notfication/DatabaseHelper;->insertOrUpdateDaily(Lmeizu/notification/RankingDaily;Z)J

    move-result-wide v0

    iput-wide v0, p1, Lmeizu/notification/RankingDaily;->key:J

    .line 201
    return-void
.end method

.method private updatePackageCategoryScore(Ljava/lang/String;F)V
    .registers 6
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "score"  # F

    .line 204
    iget-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 205
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lmeizu/notification/RankingDaily;>;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 206
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 207
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmeizu/notification/RankingDaily;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 208
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmeizu/notification/RankingDaily;

    iput p2, v2, Lmeizu/notification/RankingDaily;->score:F

    .line 210
    .end local v1  # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmeizu/notification/RankingDaily;>;"
    :cond_2a
    goto :goto_a

    .line 211
    :cond_2b
    return-void
.end method

.method private writeEvent(ILmeizu/notification/RankingDaily;)V
    .registers 10
    .param p1, "eventType"  # I
    .param p2, "rankingDaily"  # Lmeizu/notification/RankingDaily;

    .line 257
    sget-object v0, Lcom/android/server/notification/RankingControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeEvent begin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rankingDaily = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p2}, Lmeizu/notification/RankingDaily;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p2, Lmeizu/notification/RankingDaily;->packageName:Ljava/lang/String;

    iget-object v1, p2, Lmeizu/notification/RankingDaily;->category:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/RankingControllerImpl;->getRankingDailyKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 263
    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmeizu/notification/RankingDaily;

    .local v1, "oldDaily":Lmeizu/notification/RankingDaily;
    goto :goto_46

    .line 265
    .end local v1  # "oldDaily":Lmeizu/notification/RankingDaily;
    :cond_3c
    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl;->mDataHelper:Lcom/flyme/server/notfication/DatabaseHelper;

    iget-object v2, p2, Lmeizu/notification/RankingDaily;->packageName:Ljava/lang/String;

    iget-object v3, p2, Lmeizu/notification/RankingDaily;->category:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/flyme/server/notfication/DatabaseHelper;->getDaily(Ljava/lang/String;Ljava/lang/String;)Lmeizu/notification/RankingDaily;

    move-result-object v1

    .line 267
    .restart local v1  # "oldDaily":Lmeizu/notification/RankingDaily;
    :goto_46
    const/4 v2, 0x1

    if-eqz v1, :cond_b6

    .line 268
    iget-wide v3, v1, Lmeizu/notification/RankingDaily;->key:J

    iput-wide v3, p2, Lmeizu/notification/RankingDaily;->key:J

    .line 269
    if-eq p1, v2, :cond_86

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6a

    const/4 v3, 0x3

    if-eq p1, v3, :cond_56

    goto :goto_b6

    .line 289
    :cond_56
    iget v3, v1, Lmeizu/notification/RankingDaily;->allNum:I

    iput v3, p2, Lmeizu/notification/RankingDaily;->allNum:I

    .line 290
    iget v3, v1, Lmeizu/notification/RankingDaily;->clickNum:I

    iput v3, p2, Lmeizu/notification/RankingDaily;->clickNum:I

    .line 291
    iget v3, p2, Lmeizu/notification/RankingDaily;->removeNum:I

    iget v4, v1, Lmeizu/notification/RankingDaily;->removeNum:I

    add-int/2addr v3, v4

    iput v3, p2, Lmeizu/notification/RankingDaily;->removeNum:I

    .line 292
    iget-wide v3, v1, Lmeizu/notification/RankingDaily;->postDate:J

    iput-wide v3, p2, Lmeizu/notification/RankingDaily;->postDate:J

    .line 293
    goto :goto_b6

    .line 282
    :cond_6a
    iget v3, v1, Lmeizu/notification/RankingDaily;->allNum:I

    iput v3, p2, Lmeizu/notification/RankingDaily;->allNum:I

    .line 283
    iget v3, p2, Lmeizu/notification/RankingDaily;->clickNum:I

    iget v4, v1, Lmeizu/notification/RankingDaily;->clickNum:I

    add-int/2addr v3, v4

    iput v3, p2, Lmeizu/notification/RankingDaily;->clickNum:I

    .line 284
    iget v3, v1, Lmeizu/notification/RankingDaily;->removeNum:I

    iput v3, p2, Lmeizu/notification/RankingDaily;->removeNum:I

    .line 285
    iget-wide v3, v1, Lmeizu/notification/RankingDaily;->postDate:J

    iput-wide v3, p2, Lmeizu/notification/RankingDaily;->postDate:J

    .line 286
    iget-object v3, p0, Lcom/android/server/notification/RankingControllerImpl;->mNotificationFirewall:Lcom/android/server/notification/NotificationFirewall;

    invoke-interface {v3, v1}, Lcom/android/server/notification/NotificationFirewall;->increaseScore(Lmeizu/notification/RankingDaily;)F

    move-result v3

    iput v3, p2, Lmeizu/notification/RankingDaily;->score:F

    .line 287
    goto :goto_b6

    .line 271
    :cond_86
    iget v3, p2, Lmeizu/notification/RankingDaily;->allNum:I

    iget v4, v1, Lmeizu/notification/RankingDaily;->allNum:I

    add-int/2addr v3, v4

    iput v3, p2, Lmeizu/notification/RankingDaily;->allNum:I

    .line 272
    iget v3, v1, Lmeizu/notification/RankingDaily;->clickNum:I

    iput v3, p2, Lmeizu/notification/RankingDaily;->clickNum:I

    .line 273
    iget v3, v1, Lmeizu/notification/RankingDaily;->removeNum:I

    iput v3, p2, Lmeizu/notification/RankingDaily;->removeNum:I

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p2, Lmeizu/notification/RankingDaily;->postDate:J

    .line 275
    iget-wide v3, p2, Lmeizu/notification/RankingDaily;->postDate:J

    iget-wide v5, v1, Lmeizu/notification/RankingDaily;->postDate:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x5265c00

    cmp-long v3, v3, v5

    if-lez v3, :cond_b2

    .line 276
    iget-object v3, p0, Lcom/android/server/notification/RankingControllerImpl;->mNotificationFirewall:Lcom/android/server/notification/NotificationFirewall;

    iget-wide v4, p2, Lmeizu/notification/RankingDaily;->postDate:J

    invoke-interface {v3, v1, v4, v5}, Lcom/android/server/notification/NotificationFirewall;->offsetScore(Lmeizu/notification/RankingDaily;J)F

    move-result v3

    iput v3, p2, Lmeizu/notification/RankingDaily;->score:F

    goto :goto_b6

    .line 278
    :cond_b2
    iget-wide v3, v1, Lmeizu/notification/RankingDaily;->postDate:J

    iput-wide v3, p2, Lmeizu/notification/RankingDaily;->postDate:J

    .line 298
    :cond_b6
    :goto_b6
    iget-object v3, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v3, p0, Lcom/android/server/notification/RankingControllerImpl;->mDataHelper:Lcom/flyme/server/notfication/DatabaseHelper;

    invoke-virtual {v3, p2, v2}, Lcom/flyme/server/notfication/DatabaseHelper;->insertOrUpdateDaily(Lmeizu/notification/RankingDaily;Z)J

    move-result-wide v2

    iput-wide v2, p2, Lmeizu/notification/RankingDaily;->key:J

    .line 300
    sget-object v2, Lcom/android/server/notification/RankingControllerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeEvent to db rankingDaily = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lmeizu/notification/RankingDaily;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-direct {p0}, Lcom/android/server/notification/RankingControllerImpl;->pruneIfNecessary()V

    .line 303
    return-void
.end method


# virtual methods
.method public addNotification(Lcom/android/server/notification/NotificationRecord;)V
    .registers 2
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/server/notification/RankingControllerImpl;->logPosted(Lcom/android/server/notification/NotificationRecord;)V

    .line 165
    return-void
.end method

.method public compare(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)I
    .registers 4
    .param p1, "sbn1"  # Landroid/service/notification/StatusBarNotification;
    .param p2, "sbn2"  # Landroid/service/notification/StatusBarNotification;

    .line 253
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 40
    check-cast p1, Landroid/service/notification/StatusBarNotification;

    check-cast p2, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/RankingControllerImpl;->compare(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)I

    move-result p1

    return p1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 9
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "filter"  # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .line 359
    const-string v0, "Current Flyme Notification Intelligent Management \n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 361
    .local v0, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lmeizu/notification/RankingDaily;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 362
    .local v2, "ds":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmeizu/notification/RankingDaily;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmeizu/notification/RankingDaily;

    invoke-virtual {v3}, Lmeizu/notification/RankingDaily;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " RankingDaily key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    .end local v2  # "ds":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmeizu/notification/RankingDaily;>;"
    goto :goto_f

    .line 365
    :cond_43
    return-void
.end method

.method public getPackageCategoryScore(Lcom/android/server/notification/NotificationRecord;)F
    .registers 8
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;

    .line 215
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v1, v1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-object v1, v1, Landroid/service/notification/StatusBarNotification$Filter;->category:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/RankingControllerImpl;->getRankingDailyKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 217
    :try_start_13
    iget-object v2, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 218
    iget-object v2, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmeizu/notification/RankingDaily;

    .line 219
    .local v2, "daily":Lmeizu/notification/RankingDaily;
    if-eqz v2, :cond_64

    .line 220
    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v3, v3, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget v3, v3, Landroid/service/notification/StatusBarNotification$Filter;->score_scale:F

    iput v3, v2, Lmeizu/notification/RankingDaily;->score_scale:F

    .line 221
    iget-object v3, p0, Lcom/android/server/notification/RankingControllerImpl;->mNotificationFirewall:Lcom/android/server/notification/NotificationFirewall;

    invoke-interface {v3, v2}, Lcom/android/server/notification/NotificationFirewall;->decreaseScore(Lmeizu/notification/RankingDaily;)F

    move-result v3

    iput v3, v2, Lmeizu/notification/RankingDaily;->score:F

    .line 222
    sget-object v3, Lcom/android/server/notification/RankingControllerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",daily.score="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lmeizu/notification/RankingDaily;->score:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ",daily.score_scale="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lmeizu/notification/RankingDaily;->score_scale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget v3, v2, Lmeizu/notification/RankingDaily;->score:F

    monitor-exit v1

    return v3

    .line 225
    .end local v2  # "daily":Lmeizu/notification/RankingDaily;
    :cond_64
    goto :goto_68

    .line 226
    :cond_65
    invoke-virtual {p0, p1}, Lcom/android/server/notification/RankingControllerImpl;->logPosted(Lcom/android/server/notification/NotificationRecord;)V

    .line 228
    :goto_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_13 .. :try_end_69} :catchall_a6

    .line 229
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v1, v1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget-object v2, p0, Lcom/android/server/notification/RankingControllerImpl;->mNotificationFirewall:Lcom/android/server/notification/NotificationFirewall;

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/notification/RankingControllerImpl;->parseNotificationRecord(Lcom/android/server/notification/NotificationRecord;I)Lmeizu/notification/RankingDaily;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/notification/NotificationFirewall;->decreaseScore(Lmeizu/notification/RankingDaily;)F

    move-result v2

    iput v2, v1, Landroid/service/notification/StatusBarNotification$Filter;->score:F

    .line 230
    sget-object v1, Lcom/android/server/notification/RankingControllerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",filter.score="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v3, v3, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget v3, v3, Landroid/service/notification/StatusBarNotification$Filter;->score:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v1, v1, Landroid/service/notification/StatusBarNotification;->filter:Landroid/service/notification/StatusBarNotification$Filter;

    iget v1, v1, Landroid/service/notification/StatusBarNotification$Filter;->score:F

    return v1

    .line 228
    :catchall_a6
    move-exception v2

    :try_start_a7
    monitor-exit v1
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    throw v2
.end method

.method public getPackageClickPercentage(Ljava/lang/String;Ljava/lang/String;)F
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "type"  # Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppResultMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 237
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppResultMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    .line 238
    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppResultMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmeizu/notification/RankingResult;

    iget v1, v1, Lmeizu/notification/RankingResult;->score:F

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    monitor-exit v0

    return v1

    .line 240
    :cond_1c
    monitor-exit v0

    .line 241
    return v2

    .line 240
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public logClicked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4
    .param p1, "notification"  # Lcom/android/server/notification/NotificationRecord;

    .line 314
    iget-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mHandler:Lcom/android/server/notification/RankingControllerImpl$H;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/RankingControllerImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/RankingControllerImpl$H;->sendMessage(Landroid/os/Message;)Z

    .line 315
    return-void
.end method

.method public logPosted(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4
    .param p1, "notification"  # Lcom/android/server/notification/NotificationRecord;

    .line 310
    iget-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mHandler:Lcom/android/server/notification/RankingControllerImpl$H;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/RankingControllerImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/RankingControllerImpl$H;->sendMessage(Landroid/os/Message;)Z

    .line 311
    return-void
.end method

.method public logRemoved(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4
    .param p1, "notification"  # Lcom/android/server/notification/NotificationRecord;

    .line 318
    iget-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mHandler:Lcom/android/server/notification/RankingControllerImpl$H;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/android/server/notification/RankingControllerImpl$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/RankingControllerImpl$H;->sendMessage(Landroid/os/Message;)Z

    .line 319
    return-void
.end method

.method public notificationOnCanceledByUser(Lcom/android/server/notification/NotificationRecord;)V
    .registers 2
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;

    .line 174
    invoke-virtual {p0, p1}, Lcom/android/server/notification/RankingControllerImpl;->logRemoved(Lcom/android/server/notification/NotificationRecord;)V

    .line 175
    return-void
.end method

.method public notificationOnClick(Lcom/android/server/notification/NotificationRecord;)V
    .registers 2
    .param p1, "r"  # Lcom/android/server/notification/NotificationRecord;

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/server/notification/RankingControllerImpl;->logClicked(Lcom/android/server/notification/NotificationRecord;)V

    .line 170
    return-void
.end method

.method public saveRankingDaily()V
    .registers 8

    .line 374
    iget-object v0, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 375
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 376
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/notification/RankingControllerImpl;->mAppDailyMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmeizu/notification/RankingDaily;

    .line 377
    .local v3, "rankingDaily":Lmeizu/notification/RankingDaily;
    if-eqz v3, :cond_55

    .line 378
    iget-object v4, p0, Lcom/android/server/notification/RankingControllerImpl;->mDataHelper:Lcom/flyme/server/notfication/DatabaseHelper;

    invoke-virtual {v4, v3}, Lcom/flyme/server/notfication/DatabaseHelper;->updateDailyScore(Lmeizu/notification/RankingDaily;)V

    .line 379
    sget-object v4, Lcom/android/server/notification/RankingControllerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saveRankingDailyToDB: key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lmeizu/notification/RankingDaily;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lmeizu/notification/RankingDaily;->category:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",score="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lmeizu/notification/RankingDaily;->score:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    .end local v2  # "key":Ljava/lang/String;
    .end local v3  # "rankingDaily":Lmeizu/notification/RankingDaily;
    :cond_55
    goto :goto_d

    .line 383
    :cond_56
    monitor-exit v0

    .line 384
    return-void

    .line 383
    :catchall_58
    move-exception v1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_3 .. :try_end_5a} :catchall_58

    throw v1
.end method

.method public setNotificationFirewall(Lcom/android/server/notification/NotificationFirewall;)V
    .registers 2
    .param p1, "firewall"  # Lcom/android/server/notification/NotificationFirewall;

    .line 369
    iput-object p1, p0, Lcom/android/server/notification/RankingControllerImpl;->mNotificationFirewall:Lcom/android/server/notification/NotificationFirewall;

    .line 370
    return-void
.end method
