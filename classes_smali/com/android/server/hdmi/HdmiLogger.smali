.class final Lcom/android/server/hdmi/HdmiLogger;
.super Ljava/lang/Object;
.source "HdmiLogger.java"


# static fields
.field private static final DEBUG:Z

.field private static final ERROR_LOG_DURATION_MILLIS:J = 0x4e20L

.field private static final TAG:Ljava/lang/String; = "HDMI"

.field private static final sLogger:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/android/server/hdmi/HdmiLogger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mErrorTimingCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mWarningTimingCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 45
    const-string v0, "HDMI"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/hdmi/HdmiLogger;->DEBUG:Z

    .line 47
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/server/hdmi/HdmiLogger;->sLogger:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiLogger;->mWarningTimingCache:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiLogger;->mErrorTimingCache:Ljava/util/HashMap;

    .line 57
    return-void
.end method

.method private static buildMessage(Ljava/lang/String;Landroid/util/Pair;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_16

    :cond_e
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 122
    return-object p0
.end method

.method static final varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 82
    invoke-static {}, Lcom/android/server/hdmi/HdmiLogger;->getLogger()Lcom/android/server/hdmi/HdmiLogger;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->toLogString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiLogger;->debugInternal(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method private debugInternal(Ljava/lang/String;)V
    .registers 3

    .line 86
    sget-boolean v0, Lcom/android/server/hdmi/HdmiLogger;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 87
    const-string v0, "HDMI"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_9
    return-void
.end method

.method static final varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 71
    invoke-static {}, Lcom/android/server/hdmi/HdmiLogger;->getLogger()Lcom/android/server/hdmi/HdmiLogger;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->toLogString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiLogger;->errorInternal(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method private errorInternal(Ljava/lang/String;)V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLogger;->mErrorTimingCache:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->updateLog(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 77
    const-string v0, "HDMI"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_11
    return-void
.end method

.method private static getLogger()Lcom/android/server/hdmi/HdmiLogger;
    .registers 2

    .line 100
    sget-object v0, Lcom/android/server/hdmi/HdmiLogger;->sLogger:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiLogger;

    .line 101
    if-nez v0, :cond_14

    .line 102
    new-instance v0, Lcom/android/server/hdmi/HdmiLogger;

    invoke-direct {v0}, Lcom/android/server/hdmi/HdmiLogger;-><init>()V

    .line 103
    sget-object v1, Lcom/android/server/hdmi/HdmiLogger;->sLogger:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 105
    :cond_14
    return-object v0
.end method

.method private static increaseLogCount(Ljava/util/HashMap;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 129
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 130
    if-eqz v0, :cond_22

    .line 131
    new-instance v1, Landroid/util/Pair;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_22
    return-void
.end method

.method private static shouldLogNow(Landroid/util/Pair;J)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;J)Z"
        }
    .end annotation

    .line 136
    if-eqz p0, :cond_14

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x4e20

    cmp-long p0, p1, v0

    if-lez p0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 p0, 0x1

    :goto_15
    return p0
.end method

.method private static final toLogString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 92
    array-length v0, p1

    if-lez v0, :cond_8

    .line 93
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 95
    :cond_8
    return-object p0
.end method

.method private static updateLog(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 110
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 111
    invoke-static {v2, v0, v1}, Lcom/android/server/hdmi/HdmiLogger;->shouldLogNow(Landroid/util/Pair;J)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 112
    invoke-static {p1, v2}, Lcom/android/server/hdmi/HdmiLogger;->buildMessage(Ljava/lang/String;Landroid/util/Pair;)Ljava/lang/String;

    move-result-object v2

    .line 113
    new-instance v3, Landroid/util/Pair;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-object v2

    .line 116
    :cond_26
    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->increaseLogCount(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 118
    const-string p0, ""

    return-object p0
.end method

.method static final varargs warning(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    .line 60
    invoke-static {}, Lcom/android/server/hdmi/HdmiLogger;->getLogger()Lcom/android/server/hdmi/HdmiLogger;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->toLogString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiLogger;->warningInternal(Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method private warningInternal(Ljava/lang/String;)V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiLogger;->mWarningTimingCache:Ljava/util/HashMap;

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiLogger;->updateLog(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 66
    const-string v0, "HDMI"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_11
    return-void
.end method
