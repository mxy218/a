.class public Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
.super Ljava/lang/Object;
.source "LocationRequestStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationRequestStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageStatistics"
.end annotation


# instance fields
.field private mFastestIntervalMs:J

.field private mForegroundDurationMs:J

.field private final mInitialElapsedTimeMs:J

.field private mLastActivitationElapsedTimeMs:J

.field private mLastForegroundElapsedTimeMs:J

.field private mLastStopElapsedTimeMs:J

.field private mNumActiveRequests:I

.field private mSlowestIntervalMs:J

.field private mTotalDurationMs:J


# direct methods
.method private constructor <init>()V
    .registers 5

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mInitialElapsedTimeMs:J

    .line 131
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    .line 132
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mTotalDurationMs:J

    .line 133
    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    .line 134
    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    .line 135
    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mForegroundDurationMs:J

    .line 136
    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastForegroundElapsedTimeMs:J

    .line 137
    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastStopElapsedTimeMs:J

    .line 138
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LocationRequestStatistics$1;)V
    .registers 2
    .param p1, "x0"  # Lcom/android/server/location/LocationRequestStatistics$1;

    .line 105
    invoke-direct {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;J)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    .param p1, "x1"  # J

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->startRequesting(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;Z)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;
    .param p1, "x1"  # Z

    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->updateForeground(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;

    .line 105
    invoke-direct {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->stopRequesting()V

    return-void
.end method

.method private startRequesting(J)V
    .registers 5
    .param p1, "intervalMs"  # J

    .line 141
    iget v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    if-nez v0, :cond_a

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastActivitationElapsedTimeMs:J

    .line 145
    :cond_a
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_12

    .line 146
    iput-wide p1, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    .line 149
    :cond_12
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_1a

    .line 150
    iput-wide p1, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    .line 153
    :cond_1a
    iget v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    .line 154
    return-void
.end method

.method private stopRequesting()V
    .registers 5

    .line 166
    iget v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    if-gtz v0, :cond_c

    .line 168
    const-string v0, "LocationStats"

    const-string v1, "Reference counting corrupted in usage statistics."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void

    .line 172
    :cond_c
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    .line 173
    iget v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    if-nez v0, :cond_28

    .line 174
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastStopElapsedTimeMs:J

    .line 175
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastStopElapsedTimeMs:J

    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastActivitationElapsedTimeMs:J

    sub-long/2addr v0, v2

    .line 176
    .local v0, "lastDurationMs":J
    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mTotalDurationMs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mTotalDurationMs:J

    .line 177
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->updateForeground(Z)V

    .line 179
    .end local v0  # "lastDurationMs":J
    :cond_28
    return-void
.end method

.method private updateForeground(Z)V
    .registers 10
    .param p1, "isForeground"  # Z

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 159
    .local v0, "nowElapsedTimeMs":J
    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastForegroundElapsedTimeMs:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_13

    .line 160
    iget-wide v6, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mForegroundDurationMs:J

    sub-long v2, v0, v2

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mForegroundDurationMs:J

    .line 162
    :cond_13
    if-eqz p1, :cond_16

    move-wide v4, v0

    :cond_16
    iput-wide v4, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastForegroundElapsedTimeMs:J

    .line 163
    return-void
.end method


# virtual methods
.method public getDurationMs()J
    .registers 7

    .line 185
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mTotalDurationMs:J

    .line 186
    .local v0, "currentDurationMs":J
    iget v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    if-lez v2, :cond_f

    .line 187
    nop

    .line 188
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastActivitationElapsedTimeMs:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 190
    :cond_f
    return-wide v0
.end method

.method public getFastestIntervalMs()J
    .registers 3

    .line 223
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    return-wide v0
.end method

.method public getForegroundDurationMs()J
    .registers 7

    .line 197
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mForegroundDurationMs:J

    .line 198
    .local v0, "currentDurationMs":J
    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastForegroundElapsedTimeMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_13

    .line 199
    nop

    .line 200
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastForegroundElapsedTimeMs:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 202
    :cond_13
    return-wide v0
.end method

.method public getSlowestIntervalMs()J
    .registers 3

    .line 230
    iget-wide v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    return-wide v0
.end method

.method public getTimeSinceFirstRequestMs()J
    .registers 5

    .line 209
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mInitialElapsedTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getTimeSinceLastRequestStoppedMs()J
    .registers 5

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mLastStopElapsedTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isActive()Z
    .registers 2

    .line 237
    iget v0, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mNumActiveRequests:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .local v0, "s":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    iget-wide v3, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    cmp-long v1, v1, v3

    const-string v2, " seconds"

    const-wide/16 v3, 0x3e8

    if-nez v1, :cond_20

    .line 244
    const-string v1, "Interval "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    div-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 246
    :cond_20
    const-string v1, "Min interval "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mFastestIntervalMs:J

    div-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v1, ": Max interval "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->mSlowestIntervalMs:J

    div-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :goto_3c
    const-string v1, ": Duration requested "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->getDurationMs()J

    move-result-wide v1

    div-long/2addr v1, v3

    const-wide/16 v5, 0x3c

    div-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 251
    const-string v1, " total, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->getForegroundDurationMs()J

    move-result-wide v1

    div-long/2addr v1, v3

    div-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 253
    const-string v1, " foreground, out of the last "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->getTimeSinceFirstRequestMs()J

    move-result-wide v1

    div-long/2addr v1, v3

    div-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 255
    const-string v1, " minutes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    invoke-virtual {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->isActive()Z

    move-result v1

    if-eqz v1, :cond_79

    .line 257
    const-string v1, ": Currently active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8c

    .line 259
    :cond_79
    const-string v1, ": Last active "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {p0}, Lcom/android/server/location/LocationRequestStatistics$PackageStatistics;->getTimeSinceLastRequestStoppedMs()J

    move-result-wide v1

    div-long/2addr v1, v3

    div-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 261
    const-string v1, " minutes ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :goto_8c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
