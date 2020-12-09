.class public Lcom/android/server/notification/ZenModeFiltering;
.super Ljava/lang/Object;
.source "ZenModeFiltering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static final REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

.field private static final TAG:Ljava/lang/String; = "ZenModeHelper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDefaultPhoneApp:Landroid/content/ComponentName;

.field private final mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/notification/ZenModeFiltering;->DEBUG:Z

    .line 44
    new-instance v0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;-><init>(Lcom/android/server/notification/ZenModeFiltering$1;)V

    sput-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    .line 53
    new-instance p1, Lcom/android/internal/util/NotificationMessagingUtil;

    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/internal/util/NotificationMessagingUtil;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/notification/ZenModeFiltering;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/util/NotificationMessagingUtil;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/server/notification/ZenModeFiltering;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    .line 59
    return-void
.end method

.method private static audienceMatches(IF)Z
    .registers 5

    .line 280
    const/4 v0, 0x1

    if-eqz p0, :cond_32

    const/4 v1, 0x0

    if-eq p0, v0, :cond_29

    const/4 v2, 0x2

    if-eq p0, v2, :cond_20

    .line 288
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Encountered unknown source: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZenModeHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    return v0

    .line 286
    :cond_20
    const/high16 p0, 0x3f800000  # 1.0f

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_27

    goto :goto_28

    :cond_27
    move v0, v1

    :goto_28
    return v0

    .line 284
    :cond_29
    const/high16 p0, 0x3f000000  # 0.5f

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    :goto_31
    return v0

    .line 282
    :cond_32
    return v0
.end method

.method private static extras(Lcom/android/server/notification/NotificationRecord;)Landroid/os/Bundle;
    .registers 2

    .line 109
    if-eqz p0, :cond_17

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 110
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    .line 109
    :goto_18
    return-object p0
.end method

.method protected static isAlarm(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 235
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x4

    .line 236
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isAudioAttributesUsage(I)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p0, 0x1

    .line 235
    :goto_13
    return p0
.end method

.method private isCritical(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3

    .line 223
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getCriticality()I

    move-result p1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method private isDefaultPhoneApp(Ljava/lang/String;)Z
    .registers 4

    .line 265
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    if-nez v0, :cond_35

    .line 266
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    .line 267
    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 268
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    iput-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    .line 269
    sget-boolean v0, Lcom/android/server/notification/ZenModeFiltering;->DEBUG:Z

    if-eqz v0, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default phone app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_35
    if-eqz p1, :cond_47

    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    if-eqz v0, :cond_47

    .line 272
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    const/4 p1, 0x1

    goto :goto_48

    :cond_47
    const/4 p1, 0x0

    .line 271
    :goto_48
    return p1
.end method

.method private static isEvent(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 240
    const-string v0, "event"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static isReminder(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 244
    const-string/jumbo v0, "reminder"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static matchesCallFilter(Landroid/content/Context;ILandroid/app/NotificationManager$Policy;Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z
    .registers 10

    .line 91
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    return v0

    .line 92
    :cond_5
    const/4 v1, 0x3

    if-ne p1, v1, :cond_9

    return v0

    .line 93
    :cond_9
    const/4 v1, 0x1

    if-ne p1, v1, :cond_31

    .line 94
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result p1

    if-eqz p1, :cond_1b

    sget-object p1, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    .line 95
    invoke-static {p1, p0, p4}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$300(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 96
    return v1

    .line 98
    :cond_1b
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result p0

    if-nez p0, :cond_22

    return v0

    .line 99
    :cond_22
    if-eqz p5, :cond_31

    .line 100
    invoke-virtual {p5, p3, p4, p6, p7}, Lcom/android/server/notification/ValidateNotificationPeople;->getContactAffinity(Landroid/os/UserHandle;Landroid/os/Bundle;IF)F

    move-result p0

    .line 102
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    move-result p1

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenModeFiltering;->audienceMatches(IF)Z

    move-result p0

    return p0

    .line 105
    :cond_31
    return v1
.end method

.method private static shouldInterceptAudience(ILcom/android/server/notification/NotificationRecord;)Z
    .registers 3

    .line 227
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/notification/ZenModeFiltering;->audienceMatches(IF)Z

    move-result p0

    if-nez p0, :cond_11

    .line 228
    const-string p0, "!audienceMatches"

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 229
    const/4 p0, 0x1

    return p0

    .line 231
    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method private static ts(J)Ljava/lang/String;
    .registers 4

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    .line 62
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mDefaultPhoneApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "RepeatCallers.mThresholdMinutes="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$100(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 65
    sget-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    monitor-enter v0

    .line 66
    :try_start_21
    sget-object v1, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-static {v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$200(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_78

    .line 67
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "RepeatCallers.mCalls="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    const/4 v1, 0x0

    :goto_36
    sget-object v2, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-static {v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$200(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_78

    .line 69
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    sget-object v2, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-static {v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$200(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    const-string v2, " at "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 72
    sget-object v2, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-static {v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$200(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/notification/ZenModeFiltering;->ts(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 75
    :cond_78
    monitor-exit v0

    .line 76
    return-void

    .line 75
    :catchall_7a
    move-exception p1

    monitor-exit v0
    :try_end_7c
    .catchall {:try_start_21 .. :try_end_7c} :catchall_7a

    throw p1
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3

    .line 248
    if-eqz p1, :cond_18

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeFiltering;->isDefaultPhoneApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 249
    const-string v0, "call"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    :cond_16
    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 248
    :goto_19
    return p1
.end method

.method public isMedia(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3

    .line 253
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 254
    if-eqz p1, :cond_15

    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method

.method protected isMessage(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3

    .line 276
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    iget-object p1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->isMessaging(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    return p1
.end method

.method public isSystem(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3

    .line 259
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 260
    if-eqz p1, :cond_15

    sget-object v0, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_15

    const/4 p1, 0x1

    goto :goto_16

    :cond_15
    const/4 p1, 0x0

    :goto_16
    return p1
.end method

.method protected recordCall(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4

    .line 114
    sget-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/notification/ZenModeFiltering;->extras(Lcom/android/server/notification/NotificationRecord;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$400(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 115
    return-void
.end method

.method public shouldIntercept(ILandroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 8

    .line 123
    const/4 v0, 0x0

    if-eqz p1, :cond_113

    invoke-direct {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isCritical(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_113

    .line 127
    :cond_b
    iget v1, p2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 128
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    const/16 v1, 0x30

    iget-object v2, p3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 129
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    if-ne v1, v2, :cond_32

    .line 130
    const-string/jumbo p1, "systemDndChangedNotification"

    invoke-static {p3, p1}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 131
    return v0

    .line 133
    :cond_32
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_50

    if-eq p1, v1, :cond_49

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3c

    .line 209
    return v0

    .line 139
    :cond_3c
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isAlarm(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 141
    return v0

    .line 143
    :cond_43
    const-string p1, "alarmsOnly"

    invoke-static {p3, p1}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 144
    return v2

    .line 136
    :cond_49
    const-string/jumbo p1, "none"

    invoke-static {p3, p1}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 137
    return v2

    .line 147
    :cond_50
    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result p1

    if-ne p1, v1, :cond_5d

    .line 148
    const-string/jumbo p1, "priorityApp"

    invoke-static {p3, p1}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 149
    return v0

    .line 152
    :cond_5d
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isAlarm(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 153
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    move-result p1

    if-nez p1, :cond_6f

    .line 154
    const-string p1, "!allowAlarms"

    invoke-static {p3, p1}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 155
    return v2

    .line 157
    :cond_6f
    return v0

    .line 159
    :cond_70
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_a6

    .line 160
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result p1

    if-eqz p1, :cond_91

    sget-object p1, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    .line 161
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->extras(Lcom/android/server/notification/NotificationRecord;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$300(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_91

    .line 162
    const-string/jumbo p1, "repeatCaller"

    invoke-static {p3, p1}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 163
    return v0

    .line 165
    :cond_91
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result p1

    if-nez p1, :cond_9d

    .line 166
    const-string p1, "!allowCalls"

    invoke-static {p3, p1}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 167
    return v2

    .line 169
    :cond_9d
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    move-result p1

    invoke-static {p1, p3}, Lcom/android/server/notification/ZenModeFiltering;->shouldInterceptAudience(ILcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    return p1

    .line 171
    :cond_a6
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isMessage(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_c1

    .line 172
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowMessages()Z

    move-result p1

    if-nez p1, :cond_b8

    .line 173
    const-string p1, "!allowMessages"

    invoke-static {p3, p1}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 174
    return v2

    .line 176
    :cond_b8
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowMessagesFrom()I

    move-result p1

    invoke-static {p1, p3}, Lcom/android/server/notification/ZenModeFiltering;->shouldInterceptAudience(ILcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    return p1

    .line 178
    :cond_c1
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isEvent(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_d4

    .line 179
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowEvents()Z

    move-result p1

    if-nez p1, :cond_d3

    .line 180
    const-string p1, "!allowEvents"

    invoke-static {p3, p1}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 181
    return v2

    .line 183
    :cond_d3
    return v0

    .line 185
    :cond_d4
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isReminder(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_e7

    .line 186
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowReminders()Z

    move-result p1

    if-nez p1, :cond_e6

    .line 187
    const-string p1, "!allowReminders"

    invoke-static {p3, p1}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 188
    return v2

    .line 190
    :cond_e6
    return v0

    .line 192
    :cond_e7
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isMedia(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_fa

    .line 193
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    move-result p1

    if-nez p1, :cond_f9

    .line 194
    const-string p1, "!allowMedia"

    invoke-static {p3, p1}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 195
    return v2

    .line 197
    :cond_f9
    return v0

    .line 199
    :cond_fa
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isSystem(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_10d

    .line 200
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    move-result p1

    if-nez p1, :cond_10c

    .line 201
    const-string p1, "!allowSystem"

    invoke-static {p3, p1}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 202
    return v2

    .line 204
    :cond_10c
    return v0

    .line 206
    :cond_10d
    const-string p1, "!priority"

    invoke-static {p3, p1}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 207
    return v2

    .line 124
    :cond_113
    :goto_113
    return v0
.end method
