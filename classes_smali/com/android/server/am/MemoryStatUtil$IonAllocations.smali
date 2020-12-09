.class public final Lcom/android/server/am/MemoryStatUtil$IonAllocations;
.super Ljava/lang/Object;
.source "MemoryStatUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MemoryStatUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IonAllocations"
.end annotation


# instance fields
.field public count:I

.field public maxSizeInBytes:J

.field public pid:I

.field public totalSizeInBytes:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .line 370
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 371
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_33

    .line 372
    :cond_12
    check-cast p1, Lcom/android/server/am/MemoryStatUtil$IonAllocations;

    .line 373
    iget v2, p0, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->pid:I

    iget v3, p1, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->pid:I

    if-ne v2, v3, :cond_31

    iget-wide v2, p0, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->totalSizeInBytes:J

    iget-wide v4, p1, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->totalSizeInBytes:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_31

    iget v2, p0, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->count:I

    iget v3, p1, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->count:I

    if-ne v2, v3, :cond_31

    iget-wide v2, p0, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->maxSizeInBytes:J

    iget-wide v4, p1, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->maxSizeInBytes:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_31

    goto :goto_32

    :cond_31
    move v0, v1

    :goto_32
    return v0

    .line 371
    :cond_33
    :goto_33
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 379
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->pid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->totalSizeInBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->maxSizeInBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IonAllocations{pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalSizeInBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->totalSizeInBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxSizeInBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/MemoryStatUtil$IonAllocations;->maxSizeInBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
