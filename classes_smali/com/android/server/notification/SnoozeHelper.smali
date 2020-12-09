.class public Lcom/android/server/notification/SnoozeHelper;
.super Ljava/lang/Object;
.source "SnoozeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/SnoozeHelper$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final EXTRA_KEY:Ljava/lang/String; = "key"

.field private static final EXTRA_USER_ID:Ljava/lang/String; = "userId"

.field private static final INDENT:Ljava/lang/String; = "    "

.field private static final REPOST_ACTION:Ljava/lang/String;

.field private static final REPOST_SCHEME:Ljava/lang/String; = "repost"

.field private static final REQUEST_CODE_REPOST:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SnoozeHelper"


# instance fields
.field private mAm:Landroid/app/AlarmManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Lcom/android/server/notification/SnoozeHelper$Callback;

.field private final mContext:Landroid/content/Context;

.field private mPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSnoozedNotifications:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

.field private mUsers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 60
    const-string v0, "SnoozeHelper"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/SnoozeHelper;->DEBUG:Z

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EVALUATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/SnoozeHelper;->REPOST_ACTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/notification/SnoozeHelper$Callback;Lcom/android/server/notification/ManagedServices$UserProfiles;)V
    .registers 6

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 77
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    .line 79
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    .line 393
    new-instance v0, Lcom/android/server/notification/SnoozeHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/SnoozeHelper$1;-><init>(Lcom/android/server/notification/SnoozeHelper;)V

    iput-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    iput-object p1, p0, Lcom/android/server/notification/SnoozeHelper;->mContext:Landroid/content/Context;

    .line 85
    new-instance p1, Landroid/content/IntentFilter;

    sget-object v0, Lcom/android/server/notification/SnoozeHelper;->REPOST_ACTION:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 86
    const-string/jumbo v0, "repost"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    iget-object p1, p0, Lcom/android/server/notification/SnoozeHelper;->mContext:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/notification/SnoozeHelper;->mAm:Landroid/app/AlarmManager;

    .line 89
    iput-object p2, p0, Lcom/android/server/notification/SnoozeHelper;->mCallback:Lcom/android/server/notification/SnoozeHelper$Callback;

    .line 90
    iput-object p3, p0, Lcom/android/server/notification/SnoozeHelper;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    .line 91
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 58
    sget-boolean v0, Lcom/android/server/notification/SnoozeHelper;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .line 58
    sget-object v0, Lcom/android/server/notification/SnoozeHelper;->REPOST_ACTION:Ljava/lang/String;

    return-object v0
.end method

.method private createPendingIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .registers 7

    .line 330
    iget-object p1, p0, Lcom/android/server/notification/SnoozeHelper;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/server/notification/SnoozeHelper;->REPOST_ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 333
    const-string/jumbo v2, "repost"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 334
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 335
    const-string v1, "key"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 336
    const-string/jumbo v0, "userId"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    .line 330
    const/4 p3, 0x1

    const/high16 v0, 0x8000000

    invoke-static {p1, p3, p2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private scheduleRepost(Ljava/lang/String;Ljava/lang/String;IJ)V
    .registers 9

    .line 341
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 343
    :try_start_4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/SnoozeHelper;->createPendingIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 344
    iget-object p2, p0, Lcom/android/server/notification/SnoozeHelper;->mAm:Landroid/app/AlarmManager;

    invoke-virtual {p2, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 345
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    add-long/2addr p2, p4

    .line 346
    sget-boolean p4, Lcom/android/server/notification/SnoozeHelper;->DEBUG:Z

    if-eqz p4, :cond_31

    const-string p4, "SnoozeHelper"

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scheduling evaluate for "

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_31
    iget-object p4, p0, Lcom/android/server/notification/SnoozeHelper;->mAm:Landroid/app/AlarmManager;

    const/4 p5, 0x2

    invoke-virtual {p4, p5, p2, p3, p1}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_3c

    .line 349
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 350
    nop

    .line 351
    return-void

    .line 349
    :catchall_3c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method


# virtual methods
.method protected cancel(ILjava/lang/String;)Z
    .registers 6

    .line 206
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    .line 207
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 208
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 209
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    .line 210
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p2

    .line 211
    nop

    :goto_36
    const/4 v0, 0x1

    if-ge v1, p2, :cond_44

    .line 212
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    iput-boolean v0, v2, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 214
    :cond_44
    return v0

    .line 217
    :cond_45
    return v1
.end method

.method protected cancel(ILjava/lang/String;Ljava/lang/String;I)Z
    .registers 7

    .line 162
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 163
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    .line 165
    if-eqz p1, :cond_57

    .line 166
    invoke-virtual {p1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 167
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 168
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    iget-object v0, v0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 169
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    if-ne v0, p4, :cond_56

    .line 170
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 171
    return p2

    .line 173
    :cond_56
    goto :goto_28

    .line 176
    :cond_57
    const/4 p1, 0x0

    return p1
.end method

.method protected cancel(IZ)Z
    .registers 10

    .line 180
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    .line 181
    if-eqz p2, :cond_12

    .line 182
    iget-object p1, p0, Lcom/android/server/notification/SnoozeHelper;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    .line 184
    :cond_12
    array-length p1, v1

    .line 185
    move p2, v2

    :goto_14
    if-ge p2, p1, :cond_4e

    .line 186
    iget-object v3, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    aget v4, v1, p2

    .line 187
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 188
    if-eqz v3, :cond_4b

    .line 189
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result p1

    .line 190
    move p2, v2

    :goto_2b
    if-ge p2, p1, :cond_4a

    .line 191
    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 192
    if-eqz v1, :cond_47

    .line 193
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 194
    move v5, v2

    :goto_3a
    if-ge v5, v4, :cond_47

    .line 195
    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    iput-boolean v0, v6, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    .line 194
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a

    .line 190
    :cond_47
    add-int/lit8 p2, p2, 0x1

    goto :goto_2b

    .line 199
    :cond_4a
    return v0

    .line 185
    :cond_4b
    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    .line 202
    :cond_4e
    return v2
.end method

.method protected clearData(ILjava/lang/String;)V
    .registers 8

    .line 306
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 307
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 308
    if-nez v0, :cond_f

    .line 309
    return-void

    .line 311
    :cond_f
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 312
    if-nez v0, :cond_18

    .line 313
    return-void

    .line 315
    :cond_18
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1e
    if-ltz v1, :cond_5c

    .line 316
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 317
    if-eqz v2, :cond_59

    .line 318
    iget-object v3, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v3, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2, v3, p1}, Lcom/android/server/notification/SnoozeHelper;->createPendingIntent(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 321
    iget-object v4, p0, Lcom/android/server/notification/SnoozeHelper;->mAm:Landroid/app/AlarmManager;

    invoke-virtual {v4, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 322
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object v2

    const/16 v3, 0x33f

    .line 323
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object v2

    const/4 v3, 0x5

    .line 324
    invoke-virtual {v2, v3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v2

    .line 322
    invoke-static {v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 315
    :cond_59
    add-int/lit8 v1, v1, -0x1

    goto :goto_1e

    .line 327
    :cond_5c
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 9

    .line 354
    const-string p2, "\n  Snoozed notifications:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    iget-object p2, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 356
    const-string v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    iget-object v2, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 359
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 360
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 361
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 363
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 365
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_82
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 366
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 368
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    goto :goto_82

    .line 371
    :cond_9b
    goto :goto_4d

    .line 372
    :cond_9c
    goto/16 :goto_f

    .line 373
    :cond_9e
    return-void
.end method

.method protected getSnoozed(ILjava/lang/String;)Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 102
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    return-object p1

    .line 104
    :cond_35
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p1
.end method

.method protected getSnoozed()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mUserProfiles:Lcom/android/server/notification/ManagedServices$UserProfiles;

    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_43

    .line 111
    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v2

    .line 112
    const/4 v3, 0x0

    move v4, v3

    :goto_13
    if-ge v4, v2, :cond_43

    .line 113
    iget-object v5, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 114
    invoke-virtual {v1, v4}, Landroid/util/IntArray;->get(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 115
    if-eqz v5, :cond_40

    .line 116
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    .line 117
    move v7, v3

    :goto_2c
    if-ge v7, v6, :cond_40

    .line 118
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    .line 119
    if-eqz v8, :cond_3d

    .line 120
    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    :cond_3d
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    .line 112
    :cond_40
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 126
    :cond_43
    return-object v0
.end method

.method protected isSnoozed(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 94
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    const/4 p1, 0x1

    goto :goto_39

    :cond_38
    const/4 p1, 0x0

    .line 94
    :goto_39
    return p1
.end method

.method public readXml(Lorg/xmlpull/v1/XmlPullParser;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    return-void
.end method

.method protected repost(Ljava/lang/String;)V
    .registers 3

    .line 238
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 239
    if-eqz v0, :cond_11

    .line 240
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/SnoozeHelper;->repost(Ljava/lang/String;I)V

    .line 242
    :cond_11
    return-void
.end method

.method protected repost(Ljava/lang/String;I)V
    .registers 6

    .line 245
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 246
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 247
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 248
    if-nez v1, :cond_17

    .line 249
    return-void

    .line 251
    :cond_17
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 252
    if-nez v0, :cond_20

    .line 253
    return-void

    .line 255
    :cond_20
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 256
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    if-eqz v0, :cond_4d

    iget-boolean p1, v0, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-nez p1, :cond_4d

    .line 260
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object p1

    const/16 v1, 0x33f

    .line 261
    invoke-virtual {p1, v1}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object p1

    const/4 v1, 0x1

    .line 262
    invoke-virtual {p1, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 260
    invoke-static {p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 263
    iget-object p1, p0, Lcom/android/server/notification/SnoozeHelper;->mCallback:Lcom/android/server/notification/SnoozeHelper$Callback;

    invoke-interface {p1, p2, v0}, Lcom/android/server/notification/SnoozeHelper$Callback;->repost(ILcom/android/server/notification/NotificationRecord;)V

    .line 265
    :cond_4d
    return-void
.end method

.method protected repostGroupSummary(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9

    .line 268
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 269
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 270
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 272
    if-eqz v0, :cond_89

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 273
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    .line 275
    if-eqz p1, :cond_89

    .line 276
    const/4 v0, 0x0

    .line 277
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 278
    const/4 v2, 0x0

    :goto_2e
    if-ge v2, v1, :cond_5a

    .line 279
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 280
    iget-object v4, v3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 281
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 282
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 283
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 284
    goto :goto_5a

    .line 278
    :cond_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_2e

    .line 288
    :cond_5a
    :goto_5a
    if-eqz v0, :cond_89

    .line 289
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/NotificationRecord;

    .line 290
    iget-object p3, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object p3, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    if-eqz p1, :cond_89

    iget-boolean p3, p1, Lcom/android/server/notification/NotificationRecord;->isCanceled:Z

    if-nez p3, :cond_89

    .line 294
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getLogMaker()Landroid/metrics/LogMaker;

    move-result-object p3

    const/16 v0, 0x33f

    .line 295
    invoke-virtual {p3, v0}, Landroid/metrics/LogMaker;->setCategory(I)Landroid/metrics/LogMaker;

    move-result-object p3

    .line 296
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p3

    .line 294
    invoke-static {p3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 297
    iget-object p3, p0, Lcom/android/server/notification/SnoozeHelper;->mCallback:Lcom/android/server/notification/SnoozeHelper$Callback;

    invoke-interface {p3, p2, p1}, Lcom/android/server/notification/SnoozeHelper$Callback;->repost(ILcom/android/server/notification/NotificationRecord;)V

    .line 303
    :cond_89
    return-void
.end method

.method setAlarmManager(Landroid/app/AlarmManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 386
    iput-object p1, p0, Lcom/android/server/notification/SnoozeHelper;->mAm:Landroid/app/AlarmManager;

    .line 387
    return-void
.end method

.method protected snooze(Lcom/android/server/notification/NotificationRecord;)V
    .registers 6

    .line 141
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 142
    sget-boolean v1, Lcom/android/server/notification/SnoozeHelper;->DEBUG:Z

    if-eqz v1, :cond_26

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Snoozing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SnoozeHelper"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_26
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 146
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 147
    if-nez v1, :cond_39

    .line 148
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 150
    :cond_39
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 151
    if-nez v2, :cond_4c

    .line 152
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 154
    :cond_4c
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v2, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v1, p0, Lcom/android/server/notification/SnoozeHelper;->mUsers:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    return-void
.end method

.method protected snooze(Lcom/android/server/notification/NotificationRecord;J)V
    .registers 11

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/server/notification/SnoozeHelper;->snooze(Lcom/android/server/notification/NotificationRecord;)V

    .line 134
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v4

    move-object v1, p0

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/notification/SnoozeHelper;->scheduleRepost(Ljava/lang/String;Ljava/lang/String;IJ)V

    .line 135
    return-void
.end method

.method protected update(ILcom/android/server/notification/NotificationRecord;)V
    .registers 4

    .line 224
    iget-object v0, p0, Lcom/android/server/notification/SnoozeHelper;->mSnoozedNotifications:Landroid/util/ArrayMap;

    .line 225
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    .line 226
    if-nez p1, :cond_f

    .line 227
    return-void

    .line 229
    :cond_f
    iget-object v0, p2, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArrayMap;

    .line 230
    if-nez p1, :cond_1e

    .line 231
    return-void

    .line 233
    :cond_1e
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 234
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    return-void
.end method

.method protected writeXml(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    return-void
.end method
