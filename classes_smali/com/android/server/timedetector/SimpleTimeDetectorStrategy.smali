.class public final Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;
.super Ljava/lang/Object;
.source "SimpleTimeDetectorStrategy.java"

# interfaces
.implements Lcom/android/server/timedetector/TimeDetectorStrategy;


# static fields
.field private static final SYSTEM_CLOCK_PARANOIA_THRESHOLD_MILLIS:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "timedetector.SimpleTimeDetectorStrategy"


# instance fields
.field private mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

.field private mLastNitzTime:Landroid/util/TimestampedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSystemClockTime:Landroid/util/TimestampedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSystemClockTimeSendNetworkBroadcast:Z

.field private mLastSystemClockTimeSet:Landroid/util/TimestampedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private adjustAndSetDeviceSystemClock(Landroid/util/TimestampedValue;ZJJLjava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;ZJJ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 197
    invoke-static {p1, p3, p4}, Lcom/android/server/timedetector/TimeDetectorStrategy;->getTimeAt(Landroid/util/TimestampedValue;J)J

    move-result-wide v0

    .line 201
    sub-long p5, v0, p5

    invoke-static {p5, p6}, Ljava/lang/Math;->abs(J)J

    move-result-wide p5

    .line 202
    iget-object v2, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v2}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->systemClockUpdateThresholdMillis()I

    move-result v2

    int-to-long v2, v2

    .line 203
    cmp-long v4, p5, v2

    const-string v5, " reason="

    const-string/jumbo v6, "timedetector.SimpleTimeDetectorStrategy"

    if-gez v4, :cond_4d

    .line 204
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adjustAndSetDeviceSystemClock: Not setting system clock. New time and system clock are close enough. elapsedRealtimeMillis="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " newTime="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " systemClockUpdateThreshold="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " absTimeDifference="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void

    .line 214
    :cond_4d
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Setting system clock using time="

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, " elapsedRealtimeMillis="

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " newTimeMillis="

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v6, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object p3, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {p3, v0, v1}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->setSystemClock(J)V

    .line 221
    iput-object p1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTimeSet:Landroid/util/TimestampedValue;

    .line 223
    if-eqz p2, :cond_97

    .line 226
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    const/high16 p2, 0x20000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 228
    const-string/jumbo p2, "time"

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 229
    iget-object p2, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {p2, p1}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 231
    :cond_97
    return-void
.end method

.method private setSystemClockIfRequired(Landroid/util/TimestampedValue;Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTime:Landroid/util/TimestampedValue;

    .line 120
    iput-boolean p2, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTimeSendNetworkBroadcast:Z

    .line 122
    iget-object v0, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->isTimeDetectionEnabled()Z

    move-result v0

    const-string/jumbo v1, "timedetector.SimpleTimeDetectorStrategy"

    if-nez v0, :cond_25

    .line 123
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setSystemClockIfRequired: Time detection is not enabled. time="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 127
    :cond_25
    iget-object v0, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->acquireWakeLock()V

    .line 129
    :try_start_2a
    iget-object v0, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->elapsedRealtimeMillis()J

    move-result-wide v5

    .line 130
    iget-object v0, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->systemClockMillis()J

    move-result-wide v7

    .line 134
    iget-object v0, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTimeSet:Landroid/util/TimestampedValue;

    if-eqz v0, :cond_70

    .line 135
    iget-object v0, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTimeSet:Landroid/util/TimestampedValue;

    invoke-static {v0, v5, v6}, Lcom/android/server/timedetector/TimeDetectorStrategy;->getTimeAt(Landroid/util/TimestampedValue;J)J

    move-result-wide v2

    .line 137
    sub-long v9, v2, v7

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    .line 138
    const-wide/16 v11, 0x7d0

    cmp-long v0, v9, v11

    if-lez v0, :cond_70

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System clock has not tracked elapsed real time clock. A clock may be inaccurate or something unexpectedly set the system clock. elapsedRealtimeMillis="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " expectedTimeMillis="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " actualTimeMillis="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_70
    const-string v9, "New time signal"

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->adjustAndSetDeviceSystemClock(Landroid/util/TimestampedValue;ZJJLjava/lang/String;)V
    :try_end_78
    .catchall {:try_start_2a .. :try_end_78} :catchall_7f

    .line 151
    iget-object p1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {p1}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->releaseWakeLock()V

    .line 152
    nop

    .line 153
    return-void

    .line 151
    :catchall_7f
    move-exception p1

    iget-object p2, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {p2}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->releaseWakeLock()V

    throw p1
.end method

.method private static validateNewNitzTime(Landroid/util/TimestampedValue;Landroid/util/TimestampedValue;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 99
    if-eqz p1, :cond_3e

    .line 100
    nop

    .line 101
    invoke-static {p0, p1}, Landroid/util/TimestampedValue;->referenceTimeDifference(Landroid/util/TimestampedValue;Landroid/util/TimestampedValue;)J

    move-result-wide v0

    .line 102
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_14

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_3e

    .line 104
    :cond_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "validateNewNitzTime: Bad NITZ signal received. referenceTimeDifference="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " lastNitzTime="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " newNitzUtcTime="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "timedetector.SimpleTimeDetectorStrategy"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 p0, 0x0

    return p0

    .line 111
    :cond_3e
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mLastNitzTime="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastNitzTime:Landroid/util/TimestampedValue;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mLastSystemClockTimeSet="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTimeSet:Landroid/util/TimestampedValue;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mLastSystemClockTime="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTime:Landroid/util/TimestampedValue;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mLastSystemClockTimeSendNetworkBroadcast="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTimeSendNetworkBroadcast:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public handleAutoTimeDetectionToggle(Z)V
    .registers 10

    .line 159
    if-eqz p1, :cond_2f

    .line 160
    iget-object p1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTime:Landroid/util/TimestampedValue;

    if-eqz p1, :cond_32

    .line 162
    iget-boolean v2, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTimeSendNetworkBroadcast:Z

    .line 164
    iget-object p1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {p1}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->acquireWakeLock()V

    .line 166
    :try_start_d
    iget-object p1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {p1}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->elapsedRealtimeMillis()J

    move-result-wide v3

    .line 167
    iget-object p1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {p1}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->systemClockMillis()J

    move-result-wide v5

    .line 170
    iget-object v1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTime:Landroid/util/TimestampedValue;

    const-string v7, "Automatic time detection enabled."

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->adjustAndSetDeviceSystemClock(Landroid/util/TimestampedValue;ZJJLjava/lang/String;)V
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_28

    .line 173
    iget-object p1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {p1}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->releaseWakeLock()V

    .line 174
    nop

    .line 175
    goto :goto_32

    .line 173
    :catchall_28
    move-exception p1

    iget-object v0, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->releaseWakeLock()V

    throw p1

    .line 179
    :cond_2f
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTimeSet:Landroid/util/TimestampedValue;

    .line 181
    :cond_32
    :goto_32
    return-void
.end method

.method public initialize(Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    .line 65
    return-void
.end method

.method public suggestTime(Landroid/app/timedetector/TimeSignal;)V
    .registers 5

    .line 69
    invoke-virtual {p1}, Landroid/app/timedetector/TimeSignal;->getSourceId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nitz"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring signal from unsupported source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "timedetector.SimpleTimeDetectorStrategy"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void

    .line 76
    :cond_25
    invoke-virtual {p1}, Landroid/app/timedetector/TimeSignal;->getUtcTime()Landroid/util/TimestampedValue;

    move-result-object v0

    .line 77
    iget-object v2, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastNitzTime:Landroid/util/TimestampedValue;

    invoke-static {v0, v2}, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->validateNewNitzTime(Landroid/util/TimestampedValue;Landroid/util/TimestampedValue;)Z

    move-result v2

    .line 78
    if-nez v2, :cond_32

    .line 79
    return-void

    .line 83
    :cond_32
    iput-object v0, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastNitzTime:Landroid/util/TimestampedValue;

    .line 89
    nop

    .line 90
    invoke-virtual {p1}, Landroid/app/timedetector/TimeSignal;->getSourceId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 92
    nop

    .line 93
    invoke-direct {p0, v0, p1}, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->setSystemClockIfRequired(Landroid/util/TimestampedValue;Z)V

    .line 94
    return-void
.end method
