.class Lcom/android/server/PackageWatchdog$MonitoredPackage;
.super Ljava/lang/Object;
.source "PackageWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MonitoredPackage"
.end annotation


# static fields
.field public static final STATE_ACTIVE:I = 0x0

.field public static final STATE_FAILED:I = 0x3

.field public static final STATE_INACTIVE:I = 0x1

.field public static final STATE_PASSED:I = 0x2


# instance fields
.field private mDurationMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mFailures:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mHasPassedHealthCheck:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mHealthCheckDurationMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mHealthCheckState:I

.field private final mName:Ljava/lang/String;

.field private mUptimeStartMs:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/PackageWatchdog;


# direct methods
.method constructor <init>(Lcom/android/server/PackageWatchdog;Ljava/lang/String;JJZ)V
    .registers 10
    .param p1, "this$0"  # Lcom/android/server/PackageWatchdog;
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "durationMs"  # J
    .param p5, "healthCheckDurationMs"  # J
    .param p7, "hasPassedHealthCheck"  # Z

    .line 1007
    iput-object p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 979
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 993
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 1008
    iput-object p2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mName:Ljava/lang/String;

    .line 1009
    iput-wide p3, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    .line 1010
    iput-wide p5, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 1011
    iput-boolean p7, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    .line 1012
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckStateLocked()I

    .line 1013
    return-void
.end method

.method constructor <init>(Lcom/android/server/PackageWatchdog;Ljava/lang/String;JZ)V
    .registers 14
    .param p1, "this$0"  # Lcom/android/server/PackageWatchdog;
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "durationMs"  # J
    .param p5, "hasPassedHealthCheck"  # Z

    .line 1003
    const-wide v5, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PackageWatchdog$MonitoredPackage;-><init>(Lcom/android/server/PackageWatchdog;Ljava/lang/String;JJZ)V

    .line 1004
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 962
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/PackageWatchdog$MonitoredPackage;

    .line 962
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mName:Ljava/lang/String;

    return-object v0
.end method

.method private getName()Ljava/lang/String;
    .registers 2

    .line 1113
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mName:Ljava/lang/String;

    return-object v0
.end method

.method private toPositive(J)J
    .registers 5
    .param p1, "value"  # J

    .line 1200
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_8

    move-wide v0, p1

    goto :goto_d

    :cond_8
    const-wide v0, 0x7fffffffffffffffL

    :goto_d
    return-wide v0
.end method

.method private toString(I)Ljava/lang/String;
    .registers 3
    .param p1, "state"  # I

    .line 1184
    if-eqz p1, :cond_17

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/4 v0, 0x2

    if-eq p1, v0, :cond_11

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    .line 1194
    const-string v0, "UNKNOWN"

    return-object v0

    .line 1192
    :cond_e
    const-string v0, "FAILED"

    return-object v0

    .line 1190
    :cond_11
    const-string v0, "PASSED"

    return-object v0

    .line 1188
    :cond_14
    const-string v0, "INACTIVE"

    return-object v0

    .line 1186
    :cond_17
    const-string v0, "ACTIVE"

    return-object v0
.end method

.method private updateHealthCheckStateLocked()I
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1165
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 1166
    .local v0, "oldState":I
    iget-boolean v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    if-eqz v1, :cond_a

    .line 1168
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    goto :goto_2d

    .line 1169
    :cond_a
    iget-wide v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2a

    iget-wide v5, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    cmp-long v3, v5, v3

    if-gtz v3, :cond_19

    goto :goto_2a

    .line 1172
    :cond_19
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_26

    .line 1173
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    goto :goto_2d

    .line 1175
    :cond_26
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    goto :goto_2d

    .line 1171
    :cond_2a
    :goto_2a
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 1177
    :goto_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated health check state for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1178
    invoke-direct {p0, v0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    invoke-direct {p0, v2}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1177
    const-string v2, "PackageWatchdog"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iget v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    return v1
.end method


# virtual methods
.method public getHealthCheckStateLocked()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1123
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    return v0
.end method

.method public getShortestScheduleDurationMsLocked()J
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1134
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->toPositive(J)J

    move-result-wide v0

    .line 1135
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->isPendingHealthChecksLocked()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1136
    iget-wide v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->toPositive(J)J

    move-result-wide v2

    goto :goto_18

    :cond_13
    const-wide v2, 0x7fffffffffffffffL

    .line 1134
    :goto_18
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public handleElapsedTimeLocked(J)I
    .registers 5
    .param p1, "elapsedMs"  # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1080
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_21

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot handle non-positive elapsed time for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageWatchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    return v0

    .line 1085
    :cond_21
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    .line 1086
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    if-nez v0, :cond_2f

    .line 1090
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 1092
    :cond_2f
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckStateLocked()I

    move-result v0

    return v0
.end method

.method public isExpiredLocked()Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1145
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isPendingHealthChecksLocked()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1154
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_9
    return v1
.end method

.method public onFailureLocked()Z
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1035
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1036
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mUptimeStartMs:J

    sub-long v2, v0, v2

    .line 1037
    .local v2, "duration":J
    iget-object v4, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-static {v4}, Lcom/android/server/PackageWatchdog;->access$300(Lcom/android/server/PackageWatchdog;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    if-lez v4, :cond_19

    .line 1041
    iput v5, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailures:I

    .line 1042
    iput-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mUptimeStartMs:J

    goto :goto_1e

    .line 1044
    :cond_19
    iget v4, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailures:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailures:I

    .line 1046
    :goto_1e
    iget v4, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailures:I

    iget-object v6, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-static {v6}, Lcom/android/server/PackageWatchdog;->access$400(Lcom/android/server/PackageWatchdog;)I

    move-result v6

    const/4 v7, 0x0

    if-lt v4, v6, :cond_2a

    goto :goto_2b

    :cond_2a
    move v5, v7

    :goto_2b
    move v4, v5

    .line 1047
    .local v4, "failed":Z
    if-eqz v4, :cond_30

    .line 1048
    iput v7, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailures:I

    .line 1050
    :cond_30
    return v4
.end method

.method public setHealthCheckActiveLocked(J)I
    .registers 6
    .param p1, "initialHealthCheckDurationMs"  # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1060
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_39

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot set non-positive health check duration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Using total duration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms instead"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageWatchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget-wide p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    .line 1066
    :cond_39
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    .line 1068
    iput-wide p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 1070
    :cond_40
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckStateLocked()I

    move-result v0

    return v0
.end method

.method public tryPassHealthCheckLocked()I
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1103
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    .line 1106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    .line 1108
    :cond_8
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckStateLocked()I

    move-result v0

    return v0
.end method

.method public writeLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .param p1, "out"  # Lorg/xmlpull/v1/XmlSerializer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1018
    const-string/jumbo v0, "package"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1019
    iget-object v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mName:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1020
    iget-wide v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "duration"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1021
    iget-wide v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 1022
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1021
    const-string v3, "health-check-duration"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1023
    iget-boolean v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    .line 1024
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 1023
    const-string/jumbo v3, "passed-health-check"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1025
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1026
    return-void
.end method
