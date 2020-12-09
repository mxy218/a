.class Lcom/android/server/job/controllers/QuotaController$ExecutionStats;
.super Ljava/lang/Object;
.source "QuotaController.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExecutionStats"
.end annotation


# instance fields
.field public bgJobCountInMaxPeriod:I

.field public bgJobCountInWindow:I

.field public executionTimeInMaxPeriodMs:J

.field public executionTimeInWindowMs:J

.field public expirationTimeElapsed:J

.field public inQuotaTimeElapsed:J

.field public jobCountInRateLimitingWindow:I

.field public jobCountLimit:I

.field public jobRateLimitExpirationTimeElapsed:J

.field public sessionCountInRateLimitingWindow:I

.field public sessionCountInWindow:I

.field public sessionCountLimit:I

.field public sessionRateLimitExpirationTimeElapsed:J

.field public windowSizeMs:J


# direct methods
.method constructor <init>()V
    .registers 1

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 334
    instance-of v0, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    const/4 v1, 0x0

    if-eqz v0, :cond_6b

    .line 335
    check-cast p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;

    .line 336
    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    iget-wide v4, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_6a

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    iget-wide v4, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_6a

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    iget v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    if-ne v0, v2, :cond_6a

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    iget v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    if-ne v0, v2, :cond_6a

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    iget-wide v4, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_6a

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    iget v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    if-ne v0, v2, :cond_6a

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    iget-wide v4, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_6a

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    iget v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    if-ne v0, v2, :cond_6a

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    iget v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    if-ne v0, v2, :cond_6a

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v4, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_6a

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    iget-wide v4, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_6a

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    iget v2, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    if-ne v0, v2, :cond_6a

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    iget-wide v4, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_6a

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    iget p1, p1, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    if-ne v0, p1, :cond_6a

    const/4 v1, 0x1

    :cond_6a
    return v1

    .line 354
    :cond_6b
    return v1
.end method

.method public hashCode()I
    .registers 5

    .line 360
    nop

    .line 361
    iget-wide v0, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    invoke-static {v0, v1}, Lcom/android/server/job/controllers/QuotaController;->access$100(J)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    .line 362
    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    invoke-static {v2, v3}, Lcom/android/server/job/controllers/QuotaController;->access$100(J)I

    move-result v0

    add-int/2addr v1, v0

    .line 363
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/android/server/job/controllers/QuotaController;->access$100(J)I

    move-result v0

    add-int/2addr v1, v0

    .line 364
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    int-to-long v2, v0

    invoke-static {v2, v3}, Lcom/android/server/job/controllers/QuotaController;->access$100(J)I

    move-result v0

    add-int/2addr v1, v0

    .line 365
    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    invoke-static {v2, v3}, Lcom/android/server/job/controllers/QuotaController;->access$100(J)I

    move-result v0

    add-int/2addr v1, v0

    .line 366
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    add-int/2addr v1, v0

    .line 367
    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    invoke-static {v2, v3}, Lcom/android/server/job/controllers/QuotaController;->access$100(J)I

    move-result v0

    add-int/2addr v1, v0

    .line 368
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    add-int/2addr v1, v0

    .line 369
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    add-int/2addr v1, v0

    .line 370
    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-static {v2, v3}, Lcom/android/server/job/controllers/QuotaController;->access$100(J)I

    move-result v0

    add-int/2addr v1, v0

    .line 371
    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    invoke-static {v2, v3}, Lcom/android/server/job/controllers/QuotaController;->access$100(J)I

    move-result v0

    add-int/2addr v1, v0

    .line 372
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    add-int/2addr v1, v0

    .line 373
    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    invoke-static {v2, v3}, Lcom/android/server/job/controllers/QuotaController;->access$100(J)I

    move-result v0

    add-int/2addr v1, v0

    .line 374
    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    add-int/2addr v1, v0

    .line 375
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expirationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->expirationTimeElapsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", windowSizeMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->windowSizeMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", jobCountLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sessionCountLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", executionTimeInWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInWindowMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bgJobCountInWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInWindow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", executionTimeInMaxPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->executionTimeInMaxPeriodMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bgJobCountInMaxPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->bgJobCountInMaxPeriod:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sessionCountInWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInWindow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", inQuotaTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", jobCountExpirationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobRateLimitExpirationTimeElapsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", jobCountInRateLimitingWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->jobCountInRateLimitingWindow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sessionCountExpirationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionRateLimitExpirationTimeElapsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sessionCountInRateLimitingWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/job/controllers/QuotaController$ExecutionStats;->sessionCountInRateLimitingWindow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
