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

    .line 1026
    iput-object p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 1012
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 1027
    iput-object p2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mName:Ljava/lang/String;

    .line 1028
    iput-wide p3, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    .line 1029
    iput-wide p5, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 1030
    iput-boolean p7, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    .line 1031
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckStateLocked()I

    .line 1032
    return-void
.end method

.method constructor <init>(Lcom/android/server/PackageWatchdog;Ljava/lang/String;JZ)V
    .registers 14

    .line 1022
    const-wide v5, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/PackageWatchdog$MonitoredPackage;-><init>(Lcom/android/server/PackageWatchdog;Ljava/lang/String;JJZ)V

    .line 1023
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;
    .registers 1

    .line 981
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/PackageWatchdog$MonitoredPackage;)Ljava/lang/String;
    .registers 1

    .line 981
    iget-object p0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mName:Ljava/lang/String;

    return-object p0
.end method

.method private getName()Ljava/lang/String;
    .registers 2

    .line 1132
    iget-object v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mName:Ljava/lang/String;

    return-object v0
.end method

.method private toPositive(J)J
    .registers 5

    .line 1219
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_7

    goto :goto_c

    :cond_7
    const-wide p1, 0x7fffffffffffffffL

    :goto_c
    return-wide p1
.end method

.method private toString(I)Ljava/lang/String;
    .registers 3

    .line 1203
    if-eqz p1, :cond_17

    const/4 v0, 0x1

    if-eq p1, v0, :cond_14

    const/4 v0, 0x2

    if-eq p1, v0, :cond_11

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    .line 1213
    const-string p1, "UNKNOWN"

    return-object p1

    .line 1211
    :cond_e
    const-string p1, "FAILED"

    return-object p1

    .line 1209
    :cond_11
    const-string p1, "PASSED"

    return-object p1

    .line 1207
    :cond_14
    const-string p1, "INACTIVE"

    return-object p1

    .line 1205
    :cond_17
    const-string p1, "ACTIVE"

    return-object p1
.end method

.method private updateHealthCheckStateLocked()I
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1184
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 1185
    iget-boolean v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    if-eqz v1, :cond_a

    .line 1187
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    goto :goto_2d

    .line 1188
    :cond_a
    iget-wide v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2a

    iget-wide v5, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    cmp-long v3, v5, v3

    if-gtz v3, :cond_19

    goto :goto_2a

    .line 1191
    :cond_19
    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-nez v1, :cond_26

    .line 1192
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    goto :goto_2d

    .line 1194
    :cond_26
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    goto :goto_2d

    .line 1190
    :cond_2a
    :goto_2a
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    .line 1196
    :goto_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updated health check state for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1197
    invoke-direct {p0, v0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    invoke-direct {p0, v0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1196
    const-string v1, "PackageWatchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    return v0
.end method


# virtual methods
.method public getHealthCheckStateLocked()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1142
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

    .line 1153
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->toPositive(J)J

    move-result-wide v0

    .line 1154
    invoke-virtual {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->isPendingHealthChecksLocked()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1155
    iget-wide v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->toPositive(J)J

    move-result-wide v2

    goto :goto_18

    :cond_13
    const-wide v2, 0x7fffffffffffffffL

    .line 1153
    :goto_18
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public handleElapsedTimeLocked(J)I
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1099
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_21

    .line 1100
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot handle non-positive elapsed time for package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageWatchdog"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iget p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    return p1

    .line 1104
    :cond_21
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    .line 1105
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    if-nez v0, :cond_2f

    .line 1109
    iget-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 1111
    :cond_2f
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckStateLocked()I

    move-result p1

    return p1
.end method

.method public isExpiredLocked()Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1164
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

    .line 1173
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
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1054
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1055
    iget-wide v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mUptimeStartMs:J

    sub-long v2, v0, v2

    .line 1056
    iget-object v4, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-static {v4}, Lcom/android/server/PackageWatchdog;->access$300(Lcom/android/server/PackageWatchdog;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-lez v2, :cond_19

    .line 1060
    iput v3, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailures:I

    .line 1061
    iput-wide v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mUptimeStartMs:J

    goto :goto_1e

    .line 1063
    :cond_19
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailures:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailures:I

    .line 1065
    :goto_1e
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailures:I

    iget-object v1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->this$0:Lcom/android/server/PackageWatchdog;

    invoke-static {v1}, Lcom/android/server/PackageWatchdog;->access$400(Lcom/android/server/PackageWatchdog;)I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2a

    goto :goto_2b

    :cond_2a
    move v3, v2

    .line 1066
    :goto_2b
    if-eqz v3, :cond_2f

    .line 1067
    iput v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mFailures:I

    .line 1069
    :cond_2f
    return v3
.end method

.method public setHealthCheckActiveLocked(J)I
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1079
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_39

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot set non-positive health check duration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms for package "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Using total duration "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "ms instead"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageWatchdog"

    invoke-static {p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    iget-wide p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    .line 1085
    :cond_39
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_40

    .line 1087
    iput-wide p1, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 1089
    :cond_40
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckStateLocked()I

    move-result p1

    return p1
.end method

.method public tryPassHealthCheckLocked()I
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1122
    iget v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_8

    .line 1125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    .line 1127
    :cond_8
    invoke-direct {p0}, Lcom/android/server/PackageWatchdog$MonitoredPackage;->updateHealthCheckStateLocked()I

    move-result v0

    return v0
.end method

.method public writeLocked(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
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

    .line 1037
    const-string/jumbo v0, "package"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1038
    iget-object v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mName:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1039
    iget-wide v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mDurationMs:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "duration"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1040
    iget-wide v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHealthCheckDurationMs:J

    .line 1041
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 1040
    const-string v3, "health-check-duration"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1042
    iget-boolean v2, p0, Lcom/android/server/PackageWatchdog$MonitoredPackage;->mHasPassedHealthCheck:Z

    .line 1043
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 1042
    const-string/jumbo v3, "passed-health-check"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1044
    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1045
    return-void
.end method
