.class public Lcom/android/server/security/TrpVector;
.super Ljava/lang/Object;
.source "TrpVector.java"


# instance fields
.field private mIncrement:I

.field private mIndex:I

.field private mInputSize:I

.field private mLastDetectTime:J

.field private mSessionId:Ljava/lang/String;

.field private mStatisticSize:I

.field private mStatisticVector:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeThreshold:I

.field private mTimeTick:J

.field private mVector:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(III)V
    .registers 7
    .param p1, "size"  # I
    .param p2, "statisticSize"  # I
    .param p3, "initTime"  # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/android/server/security/TrpVector;->mInputSize:I

    .line 30
    iput p2, p0, Lcom/android/server/security/TrpVector;->mStatisticSize:I

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/security/TrpVector;->mInputSize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/security/TrpVector;->mVector:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/security/TrpVector;->mStatisticSize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/security/TrpVector;->mStatisticVector:Ljava/util/ArrayList;

    .line 36
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a
    iget v1, p0, Lcom/android/server/security/TrpVector;->mStatisticSize:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2b

    .line 37
    iget-object v1, p0, Lcom/android/server/security/TrpVector;->mStatisticVector:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 39
    .end local v0  # "i":I
    :cond_2b
    iput v2, p0, Lcom/android/server/security/TrpVector;->mIncrement:I

    .line 41
    iput p3, p0, Lcom/android/server/security/TrpVector;->mTimeThreshold:I

    .line 42
    iput v2, p0, Lcom/android/server/security/TrpVector;->mIndex:I

    .line 44
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/security/TrpVector;->mTimeTick:J

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/security/TrpVector;->mLastDetectTime:J

    .line 46
    return-void
.end method


# virtual methods
.method public declared-synchronized addAction(I)V
    .registers 7
    .param p1, "actionId"  # I

    monitor-enter p0

    .line 55
    const/4 v0, 0x1

    if-lt p1, v0, :cond_5f

    :try_start_4
    iget v1, p0, Lcom/android/server/security/TrpVector;->mStatisticSize:I

    if-gt p1, v1, :cond_5f

    .line 58
    iget-object v1, p0, Lcom/android/server/security/TrpVector;->mVector:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/server/security/TrpVector;->mInputSize:I

    if-ge v1, v2, :cond_1b

    .line 59
    iget-object v1, p0, Lcom/android/server/security/TrpVector;->mVector:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .end local p0  # "this":Lcom/android/server/security/TrpVector;
    :cond_1b
    iget-wide v1, p0, Lcom/android/server/security/TrpVector;->mTimeTick:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_34

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/security/TrpVector;->mTimeTick:J

    .line 69
    iget-wide v1, p0, Lcom/android/server/security/TrpVector;->mTimeTick:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/security/TrpVector;->mSessionId:Ljava/lang/String;

    .line 73
    :cond_34
    iget-object v1, p0, Lcom/android/server/security/TrpVector;->mStatisticVector:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 74
    .local v1, "value":I
    iget-object v2, p0, Lcom/android/server/security/TrpVector;->mStatisticVector:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget v2, p0, Lcom/android/server/security/TrpVector;->mIncrement:I

    const v3, 0x7fffffff

    if-ge v2, v3, :cond_5f

    .line 78
    iget v2, p0, Lcom/android/server/security/TrpVector;->mIncrement:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/security/TrpVector;->mIncrement:I
    :try_end_5b
    .catchall {:try_start_4 .. :try_end_5b} :catchall_5c

    goto :goto_5f

    .line 54
    .end local v1  # "value":I
    .end local p1  # "actionId":I
    :catchall_5c
    move-exception p1

    monitor-exit p0

    throw p1

    .line 80
    .restart local p0  # "this":Lcom/android/server/security/TrpVector;
    .restart local p1  # "actionId":I
    :cond_5f
    :goto_5f
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized containsActionId(I)Z
    .registers 5
    .param p1, "actionId"  # I

    monitor-enter p0

    .line 151
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1d

    :try_start_4
    iget v1, p0, Lcom/android/server/security/TrpVector;->mStatisticSize:I

    if-gt p1, v1, :cond_1d

    .line 152
    iget-object v1, p0, Lcom/android/server/security/TrpVector;->mStatisticVector:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1a

    .line 153
    .local v1, "value":I
    if-lez v1, :cond_1d

    .line 154
    monitor-exit p0

    return v0

    .line 150
    .end local v1  # "value":I
    .end local p0  # "this":Lcom/android/server/security/TrpVector;
    .end local p1  # "actionId":I
    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1

    .line 157
    .restart local p0  # "this":Lcom/android/server/security/TrpVector;
    .restart local p1  # "actionId":I
    :cond_1d
    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getDetectVectors()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 90
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/server/security/TrpVector;->mInputSize:I

    iget v2, p0, Lcom/android/server/security/TrpVector;->mStatisticSize:I

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    .local v0, "vectors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/security/TrpVector;->mVector:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 94
    iget v1, p0, Lcom/android/server/security/TrpVector;->mInputSize:I

    iget-object v2, p0, Lcom/android/server/security/TrpVector;->mVector:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    .line 95
    .local v1, "left":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1a
    if-ge v2, v1, :cond_27

    .line 96
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 100
    .end local v2  # "i":I
    .end local p0  # "this":Lcom/android/server/security/TrpVector;
    :cond_27
    iget-object v2, p0, Lcom/android/server/security/TrpVector;->mStatisticVector:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    .line 102
    monitor-exit p0

    return-object v0

    .line 89
    .end local v0  # "vectors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1  # "left":I
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getIncrement()I
    .registers 2

    .line 166
    iget v0, p0, Lcom/android/server/security/TrpVector;->mIncrement:I

    return v0
.end method

.method public getLastDetectTime()J
    .registers 3

    .line 221
    iget-wide v0, p0, Lcom/android/server/security/TrpVector;->mLastDetectTime:J

    return-wide v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/android/server/security/TrpVector;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeTick()J
    .registers 3

    .line 213
    iget-wide v0, p0, Lcom/android/server/security/TrpVector;->mTimeTick:J

    return-wide v0
.end method

.method public declared-synchronized isEmpty()Z
    .registers 2

    monitor-enter p0

    .line 138
    :try_start_1
    iget-object v0, p0, Lcom/android/server/security/TrpVector;->mVector:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .end local p0  # "this":Lcom/android/server/security/TrpVector;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isTimeToDetect()Z
    .registers 2

    .line 196
    iget v0, p0, Lcom/android/server/security/TrpVector;->mTimeThreshold:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public resetIncrement()V
    .registers 2

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/security/TrpVector;->mIncrement:I

    .line 174
    return-void
.end method

.method public resetTimeThreshold(I)V
    .registers 3
    .param p1, "newTimeThreshold"  # I

    .line 182
    iput p1, p0, Lcom/android/server/security/TrpVector;->mTimeThreshold:I

    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/security/TrpVector;->mIndex:I

    .line 184
    return-void
.end method

.method public setNextTimeThreshold(II)V
    .registers 4
    .param p1, "initTime"  # I
    .param p2, "timestep"  # I

    .line 203
    if-lez p1, :cond_12

    if-lez p2, :cond_12

    .line 205
    iget v0, p0, Lcom/android/server/security/TrpVector;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/security/TrpVector;->mIndex:I

    .line 206
    iget v0, p0, Lcom/android/server/security/TrpVector;->mIndex:I

    if-lez v0, :cond_12

    .line 207
    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/security/TrpVector;->mTimeThreshold:I

    .line 210
    :cond_12
    return-void
.end method

.method public subTimeThreshold(I)V
    .registers 3
    .param p1, "subtractor"  # I

    .line 187
    iget v0, p0, Lcom/android/server/security/TrpVector;->mTimeThreshold:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/security/TrpVector;->mTimeThreshold:I

    .line 188
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 235
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "TrpVector{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "mVector"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/server/security/TrpVector;->mVector:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    const-string/jumbo v3, "mStatisticVector"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/server/security/TrpVector;->mStatisticVector:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 238
    const-string/jumbo v3, "mInputSize"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lcom/android/server/security/TrpVector;->mInputSize:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 239
    const-string/jumbo v3, "mStatisticSize"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lcom/android/server/security/TrpVector;->mStatisticSize:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    const-string/jumbo v3, "mIncrement"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lcom/android/server/security/TrpVector;->mIncrement:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 241
    const-string/jumbo v3, "mTimeThreshold"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lcom/android/server/security/TrpVector;->mTimeThreshold:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    const-string/jumbo v3, "mIndex"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v3, p0, Lcom/android/server/security/TrpVector;->mIndex:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    const-string/jumbo v3, "mTimeTick"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v3, p0, Lcom/android/server/security/TrpVector;->mTimeTick:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    const-string/jumbo v3, "mLastDetectTime"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v3, p0, Lcom/android/server/security/TrpVector;->mLastDetectTime:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    const-string/jumbo v2, "mSessionId"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/security/TrpVector;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized updateInputSize(I)V
    .registers 11
    .param p1, "newInputSize"  # I

    monitor-enter p0

    .line 112
    if-lez p1, :cond_59

    :try_start_3
    iget v0, p0, Lcom/android/server/security/TrpVector;->mInputSize:I

    if-eq p1, v0, :cond_59

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    .local v0, "newVector":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/security/TrpVector;->mVector:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 116
    .local v1, "currentSize":I
    if-eqz v1, :cond_51

    .line 119
    if-le p1, v1, :cond_18

    move v2, v1

    goto :goto_19

    :cond_18
    move v2, p1

    .line 120
    .local v2, "shorter":I
    :goto_19
    iget-object v3, p0, Lcom/android/server/security/TrpVector;->mVector:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 123
    move v3, v2

    .local v3, "i":I
    :goto_24
    if-ge v3, v1, :cond_51

    .line 124
    iget-object v4, p0, Lcom/android/server/security/TrpVector;->mVector:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 126
    .local v4, "actionId":I
    iget-object v5, p0, Lcom/android/server/security/TrpVector;->mStatisticVector:Ljava/util/ArrayList;

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 127
    .local v5, "value":I
    iget-object v6, p0, Lcom/android/server/security/TrpVector;->mStatisticVector:Ljava/util/ArrayList;

    add-int/lit8 v7, v4, -0x1

    add-int/lit8 v8, v5, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 123
    nop

    .end local v4  # "actionId":I
    .end local v5  # "value":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 131
    .end local v2  # "shorter":I
    .end local v3  # "i":I
    .end local p0  # "this":Lcom/android/server/security/TrpVector;
    :cond_51
    iput-object v0, p0, Lcom/android/server/security/TrpVector;->mVector:Ljava/util/ArrayList;

    .line 132
    iput p1, p0, Lcom/android/server/security/TrpVector;->mInputSize:I
    :try_end_55
    .catchall {:try_start_3 .. :try_end_55} :catchall_56

    goto :goto_59

    .line 111
    .end local v0  # "newVector":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v1  # "currentSize":I
    .end local p1  # "newInputSize":I
    :catchall_56
    move-exception p1

    monitor-exit p0

    throw p1

    .line 134
    .restart local p0  # "this":Lcom/android/server/security/TrpVector;
    .restart local p1  # "newInputSize":I
    :cond_59
    :goto_59
    monitor-exit p0

    return-void
.end method

.method public updateLastDetectTime(J)V
    .registers 3
    .param p1, "current"  # J

    .line 225
    iput-wide p1, p0, Lcom/android/server/security/TrpVector;->mLastDetectTime:J

    .line 226
    return-void
.end method
