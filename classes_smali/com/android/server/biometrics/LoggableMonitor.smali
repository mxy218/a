.class public abstract Lcom/android/server/biometrics/LoggableMonitor;
.super Ljava/lang/Object;
.source "LoggableMonitor.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "BiometricStats"


# instance fields
.field private mFirstAcquireTimeMs:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getFirstAcquireTimeMs()J
    .registers 3

    .line 37
    iget-wide v0, p0, Lcom/android/server/biometrics/LoggableMonitor;->mFirstAcquireTimeMs:J

    return-wide v0
.end method

.method protected isCryptoOperation()Z
    .registers 2

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method protected final logOnAcquired(Landroid/content/Context;III)V
    .registers 16

    .line 71
    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsModality()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    .line 72
    const/16 v0, 0x14

    if-ne p2, v0, :cond_22

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/LoggableMonitor;->mFirstAcquireTimeMs:J

    goto :goto_22

    .line 75
    :cond_12
    if-nez p2, :cond_22

    .line 76
    iget-wide v0, p0, Lcom/android/server/biometrics/LoggableMonitor;->mFirstAcquireTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_22

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/biometrics/LoggableMonitor;->mFirstAcquireTimeMs:J

    .line 89
    :cond_22
    :goto_22
    const/16 v2, 0x57

    .line 90
    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsModality()I

    move-result v3

    .line 92
    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->isCryptoOperation()Z

    move-result v5

    .line 93
    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsAction()I

    move-result v6

    .line 94
    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsClient()I

    move-result v7

    .line 97
    invoke-static {p1, p4}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v10

    .line 89
    move v4, p4

    move v8, p2

    move v9, p3

    invoke-static/range {v2 .. v10}, Landroid/util/StatsLog;->write(IIIZIIIIZ)I

    .line 98
    return-void
.end method

.method protected final logOnAuthenticated(Landroid/content/Context;ZZIZ)V
    .registers 16

    .line 131
    nop

    .line 132
    if-nez p2, :cond_6

    .line 133
    const/4 p2, 0x1

    move v6, p2

    goto :goto_f

    .line 136
    :cond_6
    if-eqz p5, :cond_d

    if-eqz p3, :cond_d

    .line 137
    const/4 p2, 0x2

    move v6, p2

    goto :goto_f

    .line 139
    :cond_d
    const/4 p2, 0x3

    move v6, p2

    .line 144
    :goto_f
    iget-wide v0, p0, Lcom/android/server/biometrics/LoggableMonitor;->mFirstAcquireTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-eqz p2, :cond_20

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/biometrics/LoggableMonitor;->mFirstAcquireTimeMs:J

    sub-long/2addr v0, v2

    move-wide v7, v0

    goto :goto_23

    .line 146
    :cond_20
    const-wide/16 v0, -0x1

    move-wide v7, v0

    .line 157
    :goto_23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Authentication latency: "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p5, "BiometricStats"

    invoke-static {p5, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/16 v0, 0x58

    .line 161
    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsModality()I

    move-result v1

    .line 163
    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->isCryptoOperation()Z

    move-result v3

    .line 164
    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsClient()I

    move-result v4

    .line 168
    invoke-static {p1, p4}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v9

    .line 160
    move v2, p4

    move v5, p3

    invoke-static/range {v0 .. v9}, Landroid/util/StatsLog;->write(IIIZIZIJZ)I

    .line 169
    return-void
.end method

.method protected final logOnEnrolled(IJZ)V
    .registers 13

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enroll latency: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    nop

    .line 183
    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsModality()I

    move-result v3

    .line 182
    const/16 v2, 0xb8

    move v4, p1

    move-wide v5, p2

    move v7, p4

    invoke-static/range {v2 .. v7}, Landroid/util/StatsLog;->write(IIIJZ)I

    .line 187
    return-void
.end method

.method protected final logOnError(Landroid/content/Context;III)V
    .registers 19

    .line 102
    move-object v0, p0

    iget-wide v1, v0, Lcom/android/server/biometrics/LoggableMonitor;->mFirstAcquireTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_11

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/server/biometrics/LoggableMonitor;->mFirstAcquireTimeMs:J

    sub-long/2addr v1, v3

    goto :goto_13

    :cond_11
    const-wide/16 v1, -0x1

    :goto_13
    move-wide v12, v1

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error latency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricStats"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/16 v3, 0x59

    .line 118
    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsModality()I

    move-result v4

    .line 120
    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->isCryptoOperation()Z

    move-result v6

    .line 121
    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsAction()I

    move-result v7

    .line 122
    invoke-virtual {p0}, Lcom/android/server/biometrics/LoggableMonitor;->statsClient()I

    move-result v8

    .line 125
    move-object v0, p1

    move/from16 v1, p4

    invoke-static {p1, v1}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v11

    .line 117
    move/from16 v5, p4

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-static/range {v3 .. v13}, Landroid/util/StatsLog;->write(IIIZIIIIZJ)I

    .line 127
    return-void
.end method

.method protected abstract statsAction()I
.end method

.method protected statsClient()I
    .registers 2

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract statsModality()I
.end method
