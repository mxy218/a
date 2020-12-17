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
    .registers 4
    .param p1, "context"  # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/android/internal/util/NotificationMessagingUtil;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/util/NotificationMessagingUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/util/NotificationMessagingUtil;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "messagingUtil"  # Lcom/android/internal/util/NotificationMessagingUtil;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/server/notification/ZenModeFiltering;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    .line 59
    return-void
.end method

.method private static audienceMatches(IFZ)Z
    .registers 7
    .param p0, "source"  # I
    .param p1, "contactAffinity"  # F
    .param p2, "isContactInWhiteList"  # Z

    .line 296
    sget-boolean v0, Lcom/android/server/notification/ZenModeFiltering;->DEBUG:Z

    const-string v1, "ZenModeHelper"

    if-eqz v0, :cond_2a

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audienceMatches source = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " contactAffinity= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " isContactInWhiteList = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_2a
    const/4 v0, 0x1

    if-eqz p0, :cond_5f

    const/4 v2, 0x0

    if-eq p0, v0, :cond_56

    const/4 v3, 0x2

    if-eq p0, v3, :cond_4d

    const/16 v2, 0x64

    if-eq p0, v2, :cond_4c

    .line 313
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered unknown source: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return v0

    .line 310
    :cond_4c
    return p2

    .line 307
    :cond_4d
    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_54

    goto :goto_55

    :cond_54
    move v0, v2

    :goto_55
    return v0

    .line 305
    :cond_56
    const/high16 v1, 0x3f000000  # 0.5f

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_5d

    goto :goto_5e

    :cond_5d
    move v0, v2

    :goto_5e
    return v0

    .line 303
    :cond_5f
    return v0
.end method

.method private static extras(Lcom/android/server/notification/NotificationRecord;)Landroid/os/Bundle;
    .registers 2
    .param p0, "record"  # Lcom/android/server/notification/NotificationRecord;

    .line 120
    if-eqz p0, :cond_17

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 121
    iget-object v0, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 120
    :goto_18
    return-object v0
.end method

.method protected static isAlarm(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2
    .param p0, "record"  # Lcom/android/server/notification/NotificationRecord;

    .line 249
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x4

    .line 250
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isAudioAttributesUsage(I)Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v0, 0x1

    .line 249
    :goto_13
    return v0
.end method

.method private isCritical(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 4
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;

    .line 234
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getCriticality()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private isDefaultPhoneApp(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;

    .line 279
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    if-nez v0, :cond_35

    .line 280
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    .line 281
    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 282
    .local v0, "telecomm":Landroid/telecom/TelecomManager;
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    iput-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    .line 283
    sget-boolean v1, Lcom/android/server/notification/ZenModeFiltering;->DEBUG:Z

    if-eqz v1, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Default phone app: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ZenModeHelper"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v0  # "telecomm":Landroid/telecom/TelecomManager;
    :cond_35
    if-eqz p1, :cond_47

    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    if-eqz v0, :cond_47

    .line 286
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    const/4 v0, 0x1

    goto :goto_48

    :cond_47
    const/4 v0, 0x0

    .line 285
    :goto_48
    return v0
.end method

.method private static isEvent(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2
    .param p0, "record"  # Lcom/android/server/notification/NotificationRecord;

    .line 254
    const-string v0, "event"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isReminder(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2
    .param p0, "record"  # Lcom/android/server/notification/NotificationRecord;

    .line 258
    const-string/jumbo v0, "reminder"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static matchesCallFilter(Landroid/content/Context;ILandroid/app/NotificationManager$Policy;Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z
    .registers 20
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "zen"  # I
    .param p2, "consolidatedPolicy"  # Landroid/app/NotificationManager$Policy;
    .param p3, "userHandle"  # Landroid/os/UserHandle;
    .param p4, "extras"  # Landroid/os/Bundle;
    .param p5, "validator"  # Lcom/android/server/notification/ValidateNotificationPeople;
    .param p6, "contactsTimeoutMs"  # I
    .param p7, "timeoutAffinity"  # F

    .line 91
    move v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    return v1

    .line 92
    :cond_6
    const/4 v2, 0x3

    if-ne v0, v2, :cond_a

    return v1

    .line 93
    :cond_a
    const/4 v2, 0x1

    if-ne v0, v2, :cond_69

    .line 94
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result v3

    if-eqz v3, :cond_1f

    sget-object v3, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    .line 95
    move-object v4, p0

    move-object/from16 v11, p4

    invoke-static {v3, p0, v11}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$300(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 96
    return v2

    .line 94
    :cond_1f
    move-object v4, p0

    move-object/from16 v11, p4

    .line 98
    :cond_22
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result v3

    if-nez v3, :cond_29

    return v1

    .line 99
    :cond_29
    if-eqz p5, :cond_6c

    .line 104
    new-array v2, v2, [Z

    .line 105
    .local v2, "isContactInWhiteListOut":[Z
    move-object/from16 v5, p5

    move-object v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-object v10, v2

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/notification/ValidateNotificationPeople;->getContactAffinity(Landroid/os/UserHandle;Landroid/os/Bundle;IF[Z)F

    move-result v3

    .line 107
    .local v3, "contactAffinity":F
    aget-boolean v1, v2, v1

    .line 108
    .local v1, "isContactInWhiteList":Z
    sget-boolean v5, Lcom/android/server/notification/ZenModeFiltering;->DEBUG:Z

    if-eqz v5, :cond_60

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "matchesCallFilter isContactInWhiteList = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " contactAffinity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ZenModeHelper"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_60
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    move-result v5

    invoke-static {v5, v3, v1}, Lcom/android/server/notification/ZenModeFiltering;->audienceMatches(IFZ)Z

    move-result v5

    return v5

    .line 93
    .end local v1  # "isContactInWhiteList":Z
    .end local v2  # "isContactInWhiteListOut":[Z
    .end local v3  # "contactAffinity":F
    :cond_69
    move-object v4, p0

    move-object/from16 v11, p4

    .line 116
    :cond_6c
    return v2
.end method

.method private static shouldInterceptAudience(ILcom/android/server/notification/NotificationRecord;)Z
    .registers 4
    .param p0, "source"  # I
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;

    .line 240
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isContactInWhiteList()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/server/notification/ZenModeFiltering;->audienceMatches(IFZ)Z

    move-result v0

    if-nez v0, :cond_15

    .line 242
    const-string v0, "!audienceMatches"

    invoke-static {p1, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x1

    return v0

    .line 245
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method private static ts(J)Ljava/lang/String;
    .registers 4
    .param p0, "time"  # J

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 62
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDefaultPhoneApp="

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
    :try_start_22
    sget-object v1, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-static {v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$200(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_79

    .line 67
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "RepeatCallers.mCalls="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_37
    sget-object v2, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-static {v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$200(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_79

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

    goto :goto_37

    .line 75
    .end local v1  # "i":I
    :cond_79
    monitor-exit v0

    .line 76
    return-void

    .line 75
    :catchall_7b
    move-exception v1

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_22 .. :try_end_7d} :catchall_7b

    throw v1
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;

    .line 262
    if-eqz p1, :cond_18

    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ZenModeFiltering;->isDefaultPhoneApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 263
    const-string v0, "call"

    invoke-virtual {p1, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_16
    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 262
    :goto_19
    return v0
.end method

.method public isMedia(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;

    .line 267
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 268
    .local v0, "aa":Landroid/media/AudioAttributes;
    if-eqz v0, :cond_15

    sget-object v1, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method protected isMessage(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 4
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;

    .line 290
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/NotificationMessagingUtil;->isMessaging(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method public isSystem(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 5
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;

    .line 273
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 274
    .local v0, "aa":Landroid/media/AudioAttributes;
    if-eqz v0, :cond_15

    sget-object v1, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_15

    const/4 v1, 0x1

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
.end method

.method protected recordCall(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5
    .param p1, "record"  # Lcom/android/server/notification/NotificationRecord;

    .line 125
    sget-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/notification/ZenModeFiltering;->extras(Lcom/android/server/notification/NotificationRecord;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$400(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 126
    return-void
.end method

.method public resetRepeatCalls()V
    .registers 2

    .line 320
    sget-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$500(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)V

    .line 321
    return-void
.end method

.method public shouldIntercept(ILandroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 9
    .param p1, "zen"  # I
    .param p2, "policy"  # Landroid/app/NotificationManager$Policy;
    .param p3, "record"  # Lcom/android/server/notification/NotificationRecord;

    .line 134
    const/4 v0, 0x0

    if-eqz p1, :cond_113

    invoke-direct {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isCritical(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_113

    .line 138
    :cond_b
    iget v1, p2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 139
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    const/16 v1, 0x30

    iget-object v2, p3, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 140
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    if-ne v1, v2, :cond_32

    .line 141
    const-string/jumbo v1, "systemDndChangedNotification"

    invoke-static {p3, v1}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 142
    return v0

    .line 144
    :cond_32
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_50

    if-eq p1, v1, :cond_49

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3c

    .line 220
    return v0

    .line 150
    :cond_3c
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isAlarm(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 152
    return v0

    .line 154
    :cond_43
    const-string v0, "alarmsOnly"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 155
    return v2

    .line 147
    :cond_49
    const-string/jumbo v0, "none"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 148
    return v2

    .line 158
    :cond_50
    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result v3

    if-ne v3, v1, :cond_5d

    .line 159
    const-string/jumbo v1, "priorityApp"

    invoke-static {p3, v1}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 160
    return v0

    .line 163
    :cond_5d
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isAlarm(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 164
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    move-result v1

    if-nez v1, :cond_6f

    .line 165
    const-string v0, "!allowAlarms"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 166
    return v2

    .line 168
    :cond_6f
    return v0

    .line 170
    :cond_70
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 171
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result v1

    if-eqz v1, :cond_91

    sget-object v1, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    iget-object v3, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    .line 172
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->extras(Lcom/android/server/notification/NotificationRecord;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->access$300(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 173
    const-string/jumbo v1, "repeatCaller"

    invoke-static {p3, v1}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 174
    return v0

    .line 176
    :cond_91
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result v0

    if-nez v0, :cond_9d

    .line 177
    const-string v0, "!allowCalls"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 178
    return v2

    .line 180
    :cond_9d
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    move-result v0

    invoke-static {v0, p3}, Lcom/android/server/notification/ZenModeFiltering;->shouldInterceptAudience(ILcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0

    .line 182
    :cond_a6
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isMessage(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-eqz v1, :cond_c1

    .line 183
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowMessages()Z

    move-result v0

    if-nez v0, :cond_b8

    .line 184
    const-string v0, "!allowMessages"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 185
    return v2

    .line 187
    :cond_b8
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowMessagesFrom()I

    move-result v0

    invoke-static {v0, p3}, Lcom/android/server/notification/ZenModeFiltering;->shouldInterceptAudience(ILcom/android/server/notification/NotificationRecord;)Z

    move-result v0

    return v0

    .line 189
    :cond_c1
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isEvent(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 190
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowEvents()Z

    move-result v1

    if-nez v1, :cond_d3

    .line 191
    const-string v0, "!allowEvents"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 192
    return v2

    .line 194
    :cond_d3
    return v0

    .line 196
    :cond_d4
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isReminder(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-eqz v1, :cond_e7

    .line 197
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowReminders()Z

    move-result v1

    if-nez v1, :cond_e6

    .line 198
    const-string v0, "!allowReminders"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 199
    return v2

    .line 201
    :cond_e6
    return v0

    .line 203
    :cond_e7
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isMedia(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-eqz v1, :cond_fa

    .line 204
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    move-result v1

    if-nez v1, :cond_f9

    .line 205
    const-string v0, "!allowMedia"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 206
    return v2

    .line 208
    :cond_f9
    return v0

    .line 210
    :cond_fa
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isSystem(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-eqz v1, :cond_10d

    .line 211
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    move-result v1

    if-nez v1, :cond_10c

    .line 212
    const-string v0, "!allowSystem"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 213
    return v2

    .line 215
    :cond_10c
    return v0

    .line 217
    :cond_10d
    const-string v0, "!priority"

    invoke-static {p3, v0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    .line 218
    return v2

    .line 135
    :cond_113
    :goto_113
    return v0
.end method
