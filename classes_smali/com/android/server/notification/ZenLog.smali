.class public Lcom/android/server/notification/ZenLog;
.super Ljava/lang/Object;
.source "ZenLog.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final FORMAT:Ljava/text/SimpleDateFormat;

.field private static final MSGS:[Ljava/lang/String;

.field private static final SIZE:I

.field private static final TAG:Ljava/lang/String; = "ZenLog"

.field private static final TIMES:[J

.field private static final TYPES:[I

.field private static final TYPE_ALLOW_DISABLE:I = 0x2

.field private static final TYPE_CONFIG:I = 0xb

.field private static final TYPE_DISABLE_EFFECTS:I = 0xd

.field private static final TYPE_DOWNTIME:I = 0x5

.field private static final TYPE_EXIT_CONDITION:I = 0x8

.field private static final TYPE_INTERCEPTED:I = 0x1

.field private static final TYPE_LISTENER_HINTS_CHANGED:I = 0xf

.field private static final TYPE_NOT_INTERCEPTED:I = 0xc

.field private static final TYPE_SET_CONSOLIDATED_ZEN_POLICY:I = 0x11

.field private static final TYPE_SET_NOTIFICATION_POLICY:I = 0x10

.field private static final TYPE_SET_RINGER_MODE_EXTERNAL:I = 0x3

.field private static final TYPE_SET_RINGER_MODE_INTERNAL:I = 0x4

.field private static final TYPE_SET_ZEN_MODE:I = 0x6

.field private static final TYPE_SUBSCRIBE:I = 0x9

.field private static final TYPE_SUPPRESSOR_CHANGED:I = 0xe

.field private static final TYPE_UNSUBSCRIBE:I = 0xa

.field private static final TYPE_UPDATE_ZEN_MODE:I = 0x7

.field private static sNext:I

.field private static sSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 42
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x64

    goto :goto_9

    :cond_7
    const/16 v0, 0x14

    :goto_9
    sput v0, Lcom/android/server/notification/ZenLog;->SIZE:I

    .line 44
    sget v0, Lcom/android/server/notification/ZenLog;->SIZE:I

    new-array v1, v0, [J

    sput-object v1, Lcom/android/server/notification/ZenLog;->TIMES:[J

    .line 45
    new-array v1, v0, [I

    sput-object v1, Lcom/android/server/notification/ZenLog;->TYPES:[I

    .line 46
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/notification/ZenLog;->MSGS:[Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/notification/ZenLog;->FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static append(ILjava/lang/String;)V
    .registers 7

    .line 237
    sget-object v0, Lcom/android/server/notification/ZenLog;->MSGS:[Ljava/lang/String;

    monitor-enter v0

    .line 238
    :try_start_3
    sget-object v1, Lcom/android/server/notification/ZenLog;->TIMES:[J

    sget v2, Lcom/android/server/notification/ZenLog;->sNext:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 239
    sget-object v1, Lcom/android/server/notification/ZenLog;->TYPES:[I

    sget v2, Lcom/android/server/notification/ZenLog;->sNext:I

    aput p0, v1, v2

    .line 240
    sget-object p0, Lcom/android/server/notification/ZenLog;->MSGS:[Ljava/lang/String;

    sget v1, Lcom/android/server/notification/ZenLog;->sNext:I

    aput-object p1, p0, v1

    .line 241
    sget p0, Lcom/android/server/notification/ZenLog;->sNext:I

    add-int/lit8 p0, p0, 0x1

    sget p1, Lcom/android/server/notification/ZenLog;->SIZE:I

    rem-int/2addr p0, p1

    sput p0, Lcom/android/server/notification/ZenLog;->sNext:I

    .line 242
    sget p0, Lcom/android/server/notification/ZenLog;->sSize:I

    sget p1, Lcom/android/server/notification/ZenLog;->SIZE:I

    if-ge p0, p1, :cond_2e

    .line 243
    sget p0, Lcom/android/server/notification/ZenLog;->sSize:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/android/server/notification/ZenLog;->sSize:I

    .line 245
    :cond_2e
    monitor-exit v0

    .line 247
    return-void

    .line 245
    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p0
.end method

.method private static componentListToString(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    const/4 v1, 0x0

    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    .line 227
    if-lez v1, :cond_13

    .line 228
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_13
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-static {v2}, Lcom/android/server/notification/ZenLog;->componentToString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 233
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static componentToString(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 1

    .line 220
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return-object p0
.end method

.method public static dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10

    .line 250
    sget-object v0, Lcom/android/server/notification/ZenLog;->MSGS:[Ljava/lang/String;

    monitor-enter v0

    .line 251
    :try_start_3
    sget v1, Lcom/android/server/notification/ZenLog;->sNext:I

    sget v2, Lcom/android/server/notification/ZenLog;->sSize:I

    sub-int/2addr v1, v2

    sget v2, Lcom/android/server/notification/ZenLog;->SIZE:I

    add-int/2addr v1, v2

    sget v2, Lcom/android/server/notification/ZenLog;->SIZE:I

    rem-int/2addr v1, v2

    .line 252
    const/4 v2, 0x0

    :goto_f
    sget v3, Lcom/android/server/notification/ZenLog;->sSize:I

    if-ge v2, v3, :cond_4c

    .line 253
    add-int v3, v1, v2

    sget v4, Lcom/android/server/notification/ZenLog;->SIZE:I

    rem-int/2addr v3, v4

    .line 254
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 255
    sget-object v4, Lcom/android/server/notification/ZenLog;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    sget-object v6, Lcom/android/server/notification/ZenLog;->TIMES:[J

    aget-wide v6, v6, v3

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 256
    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 257
    sget-object v4, Lcom/android/server/notification/ZenLog;->TYPES:[I

    aget v4, v4, v3

    invoke-static {v4}, Lcom/android/server/notification/ZenLog;->typeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 258
    const-string v4, ": "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 259
    sget-object v4, Lcom/android/server/notification/ZenLog;->MSGS:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 261
    :cond_4c
    monitor-exit v0

    .line 262
    return-void

    .line 261
    :catchall_4e
    move-exception p0

    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw p0
.end method

.method private static hintsToString(I)Ljava/lang/String;
    .registers 2

    .line 207
    if-eqz p0, :cond_19

    const/4 v0, 0x1

    if-eq p0, v0, :cond_16

    const/4 v0, 0x2

    if-eq p0, v0, :cond_13

    const/4 v0, 0x4

    if-eq p0, v0, :cond_10

    .line 215
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 212
    :cond_10
    const-string p0, "disable_call_effects"

    return-object p0

    .line 214
    :cond_13
    const-string p0, "disable_notification_effects"

    return-object p0

    .line 210
    :cond_16
    const-string p0, "disable_effects"

    return-object p0

    .line 208
    :cond_19
    const-string/jumbo p0, "none"

    return-object p0
.end method

.method private static ringerModeToString(I)Ljava/lang/String;
    .registers 2

    .line 188
    if-eqz p0, :cond_14

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    .line 192
    const-string/jumbo p0, "unknown"

    return-object p0

    .line 191
    :cond_c
    const-string/jumbo p0, "normal"

    return-object p0

    .line 190
    :cond_10
    const-string/jumbo p0, "vibrate"

    return-object p0

    .line 189
    :cond_14
    const-string/jumbo p0, "silent"

    return-object p0
.end method

.method private static subscribeResult(Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)Ljava/lang/String;
    .registers 2

    .line 161
    if-nez p0, :cond_6

    const-string/jumbo p0, "no provider"

    goto :goto_10

    :cond_6
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    :cond_d
    const-string/jumbo p0, "ok"

    :goto_10
    return-object p0
.end method

.method public static traceConfig(Ljava/lang/String;Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V
    .registers 5

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    if-eqz p2, :cond_14

    invoke-virtual {p2}, Landroid/service/notification/ZenModeConfig;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-static {p1, p2}, Landroid/service/notification/ZenModeConfig;->diff(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)Landroid/service/notification/ZenModeConfig$Diff;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 139
    const/16 p1, 0xb

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 142
    return-void
.end method

.method public static traceDisableEffects(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .registers 3

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xd

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 146
    return-void
.end method

.method public static traceDowntimeAutotrigger(Ljava/lang/String;)V
    .registers 2

    .line 100
    const/4 v0, 0x5

    invoke-static {v0, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 101
    return-void
.end method

.method public static traceEffectsSuppressorChanged(Ljava/util/List;Ljava/util/List;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;J)V"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "suppressed effects:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->componentListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "->"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-static {p1}, Lcom/android/server/notification/ZenLog;->componentListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 150
    const/16 p1, 0xe

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 153
    return-void
.end method

.method public static traceExitCondition(Landroid/service/notification/Condition;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 4

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/notification/ZenLog;->componentToString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x8

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 121
    return-void
.end method

.method public static traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .registers 4

    .line 72
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 73
    :cond_9
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 74
    return-void
.end method

.method public static traceListenerHintsChanged(III)V
    .registers 4

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->hintsToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "->"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-static {p1}, Lcom/android/server/notification/ZenLog;->hintsToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",listeners="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 156
    const/16 p1, 0xf

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 158
    return-void
.end method

.method public static traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .registers 4

    .line 77
    if-eqz p0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/notification/NotificationRecord;->isUpdate:Z

    if-eqz v0, :cond_7

    return-void

    .line 78
    :cond_7
    const/16 v0, 0xc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 79
    return-void
.end method

.method public static traceSetConsolidatedZenPolicy(Landroid/app/NotificationManager$Policy;Ljava/lang/String;)V
    .registers 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/NotificationManager$Policy;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x11

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 113
    return-void
.end method

.method public static traceSetNotificationPolicy(Ljava/lang/String;ILandroid/app/NotificationManager$Policy;)V
    .registers 5

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " targetSdk="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " NotificationPolicy="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 125
    const/16 p1, 0x10

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 127
    return-void
.end method

.method public static traceSetRingerModeExternal(IILjava/lang/String;II)V
    .registers 6

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",e:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "->"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {p1}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",i:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-static {p3}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-static {p4}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 83
    const/4 p1, 0x3

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 88
    return-void
.end method

.method public static traceSetRingerModeInternal(IILjava/lang/String;II)V
    .registers 6

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",i:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "->"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-static {p1}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",e:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-static {p3}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-static {p4}, Lcom/android/server/notification/ZenLog;->ringerModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 92
    const/4 p1, 0x4

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 97
    return-void
.end method

.method public static traceSetZenMode(ILjava/lang/String;)V
    .registers 3

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->zenModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 105
    return-void
.end method

.method public static traceSubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V
    .registers 4

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/server/notification/ZenLog;->subscribeResult(Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x9

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 131
    return-void
.end method

.method public static traceUnsubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V
    .registers 4

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ","

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/android/server/notification/ZenLog;->subscribeResult(Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0xa

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 135
    return-void
.end method

.method public static traceUpdateZenMode(II)V
    .registers 3

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/server/notification/ZenLog;->zenModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " -> "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/notification/ZenLog;->zenModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x7

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->append(ILjava/lang/String;)V

    .line 117
    return-void
.end method

.method private static typeToString(I)Ljava/lang/String;
    .registers 1

    .line 165
    packed-switch p0, :pswitch_data_44

    .line 183
    const-string/jumbo p0, "unknown"

    return-object p0

    .line 182
    :pswitch_7  #0x11
    const-string/jumbo p0, "set_consolidated_policy"

    return-object p0

    .line 181
    :pswitch_b  #0x10
    const-string/jumbo p0, "set_notification_policy"

    return-object p0

    .line 180
    :pswitch_f  #0xf
    const-string p0, "listener_hints_changed"

    return-object p0

    .line 179
    :pswitch_12  #0xe
    const-string/jumbo p0, "suppressor_changed"

    return-object p0

    .line 178
    :pswitch_16  #0xd
    const-string p0, "disable_effects"

    return-object p0

    .line 177
    :pswitch_19  #0xc
    const-string/jumbo p0, "not_intercepted"

    return-object p0

    .line 176
    :pswitch_1d  #0xb
    const-string p0, "config"

    return-object p0

    .line 175
    :pswitch_20  #0xa
    const-string/jumbo p0, "unsubscribe"

    return-object p0

    .line 174
    :pswitch_24  #0x9
    const-string/jumbo p0, "subscribe"

    return-object p0

    .line 173
    :pswitch_28  #0x8
    const-string p0, "exit_condition"

    return-object p0

    .line 172
    :pswitch_2b  #0x7
    const-string/jumbo p0, "update_zen_mode"

    return-object p0

    .line 171
    :pswitch_2f  #0x6
    const-string/jumbo p0, "set_zen_mode"

    return-object p0

    .line 170
    :pswitch_33  #0x5
    const-string p0, "downtime"

    return-object p0

    .line 169
    :pswitch_36  #0x4
    const-string/jumbo p0, "set_ringer_mode_internal"

    return-object p0

    .line 168
    :pswitch_3a  #0x3
    const-string/jumbo p0, "set_ringer_mode_external"

    return-object p0

    .line 167
    :pswitch_3e  #0x2
    const-string p0, "allow_disable"

    return-object p0

    .line 166
    :pswitch_41  #0x1
    const-string p0, "intercepted"

    return-object p0

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_41  #00000001
        :pswitch_3e  #00000002
        :pswitch_3a  #00000003
        :pswitch_36  #00000004
        :pswitch_33  #00000005
        :pswitch_2f  #00000006
        :pswitch_2b  #00000007
        :pswitch_28  #00000008
        :pswitch_24  #00000009
        :pswitch_20  #0000000a
        :pswitch_1d  #0000000b
        :pswitch_19  #0000000c
        :pswitch_16  #0000000d
        :pswitch_12  #0000000e
        :pswitch_f  #0000000f
        :pswitch_b  #00000010
        :pswitch_7  #00000011
    .end packed-switch
.end method

.method private static zenModeToString(I)Ljava/lang/String;
    .registers 2

    .line 197
    if-eqz p0, :cond_19

    const/4 v0, 0x1

    if-eq p0, v0, :cond_16

    const/4 v0, 0x2

    if-eq p0, v0, :cond_12

    const/4 v0, 0x3

    if-eq p0, v0, :cond_f

    .line 202
    const-string/jumbo p0, "unknown"

    return-object p0

    .line 200
    :cond_f
    const-string p0, "alarms"

    return-object p0

    .line 201
    :cond_12
    const-string/jumbo p0, "no_interruptions"

    return-object p0

    .line 199
    :cond_16
    const-string p0, "important_interruptions"

    return-object p0

    .line 198
    :cond_19
    const-string/jumbo p0, "off"

    return-object p0
.end method
