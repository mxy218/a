.class public Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;
.super Ljava/lang/Object;
.source "NetworkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Measurement"
.end annotation


# static fields
.field private static final FAILED:Ljava/lang/String; = "FAILED"

.field private static final SUCCEEDED:Ljava/lang/String; = "SUCCEEDED"


# instance fields
.field description:Ljava/lang/String;

.field finishTime:J

.field result:Ljava/lang/String;

.field startTime:J

.field private succeeded:Z

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

.field thread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    .line 123
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->result:Ljava/lang/String;

    return-void
.end method

.method private maybeFixupTimes()V
    .registers 5

    .line 149
    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$100()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    .line 153
    :cond_e
    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->startTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_18

    iget-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    iput-wide v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->startTime:J

    .line 154
    :cond_18
    return-void
.end method


# virtual methods
.method public checkSucceeded()Z
    .registers 2

    .line 126
    iget-boolean v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->succeeded:Z

    return v0
.end method

.method recordFailure(Ljava/lang/String;)V
    .registers 4

    .line 138
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->maybeFixupTimes()V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->succeeded:Z

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FAILED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->result:Ljava/lang/String;

    .line 141
    iget-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {p1}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$000(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 142
    iget-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {p1}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$000(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 144
    :cond_2a
    return-void
.end method

.method recordSuccess(Ljava/lang/String;)V
    .registers 4

    .line 129
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->maybeFixupTimes()V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->succeeded:Z

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SUCCEEDED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->result:Ljava/lang/String;

    .line 132
    iget-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {p1}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$000(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 133
    iget-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {p1}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$000(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 135
    :cond_2a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    iget-wide v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
