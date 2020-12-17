.class public Lcom/android/server/hips/intercept/BigDataInterceptionEvent;
.super Ljava/lang/Object;
.source "BigDataInterceptionEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field mAvgTime:J

.field mCallee:Ljava/lang/String;

.field mCalleeClass:Ljava/lang/String;

.field mCaller:Ljava/lang/String;

.field mCount:J

.field mInteraction:Z

.field mIntercept:Z

.field mMedianTime:J

.field mStayTimeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field runType:I


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZZ)V
    .registers 12
    .param p1, "count"  # J
    .param p3, "caller"  # Ljava/lang/String;
    .param p4, "callee"  # Ljava/lang/String;
    .param p5, "calleeClass"  # Ljava/lang/String;
    .param p6, "runType"  # I
    .param p7, "calleeStayTime"  # J
    .param p9, "interaction"  # Z
    .param p10, "intercept"  # Z

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mStayTimeList:Ljava/util/List;

    .line 23
    iput-wide p1, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mCount:J

    .line 24
    iput-object p3, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mCaller:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mCallee:Ljava/lang/String;

    .line 26
    iput-object p5, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mCalleeClass:Ljava/lang/String;

    .line 27
    iput p6, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->runType:I

    .line 28
    invoke-virtual {p0, p7, p8}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->addCalleeStayTime(J)V

    .line 29
    iput-boolean p9, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mInteraction:Z

    .line 30
    iput-boolean p10, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mIntercept:Z

    .line 31
    return-void
.end method

.method private avrage(Ljava/util/List;)J
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 124
    .local p1, "total":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v0, 0x0

    .line 125
    .local v0, "a":J
    const-wide/16 v2, 0x0

    .line 126
    .local v2, "t":J
    if-eqz p1, :cond_2a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2a

    .line 127
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-gt v4, v5, :cond_23

    .line 128
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v2, v5

    .line 127
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 130
    .end local v4  # "i":I
    :cond_23
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    int-to-long v4, v4

    div-long v0, v2, v4

    .line 132
    :cond_2a
    return-wide v0
.end method

.method private median(Ljava/util/List;)J
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    .line 110
    .local p1, "total":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const-wide/16 v0, 0x0

    .line 111
    .local v0, "j":J
    if-eqz p1, :cond_43

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_43

    .line 112
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 113
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 114
    .local v2, "size":I
    rem-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_25

    .line 115
    add-int/lit8 v3, v2, -0x1

    div-int/lit8 v3, v3, 0x2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_43

    .line 117
    :cond_25
    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v3, v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    div-int/lit8 v5, v2, 0x2

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v3, v5

    const-wide/16 v5, 0x2

    div-long v0, v3, v5

    .line 120
    .end local v2  # "size":I
    :cond_43
    :goto_43
    return-wide v0
.end method


# virtual methods
.method public addCalleeStayTime(J)V
    .registers 5
    .param p1, "time"  # J

    .line 104
    iget-object v0, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mStayTimeList:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mStayTimeList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->avrage(Ljava/util/List;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mAvgTime:J

    .line 106
    iget-object v0, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mStayTimeList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->median(Ljava/util/List;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mMedianTime:J

    .line 107
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "object"  # Ljava/lang/Object;

    .line 137
    instance-of v0, p1, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_67

    .line 138
    move-object v0, p1

    check-cast v0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;

    .line 139
    .local v0, "bigData":Lcom/android/server/hips/intercept/BigDataInterceptionEvent;
    if-eqz v0, :cond_66

    .line 140
    invoke-virtual {v0}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_66

    .line 141
    invoke-virtual {v0}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 142
    invoke-virtual {v0}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_66

    .line 143
    invoke-virtual {v0}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getCallee()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 144
    invoke-virtual {v0}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getCalleeClass()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_66

    .line 145
    invoke-virtual {v0}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getCalleeClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getCalleeClass()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_66

    .line 146
    invoke-virtual {v0}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getRunType()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->getRunType()I

    move-result v3

    if-ne v2, v3, :cond_66

    .line 147
    invoke-virtual {v0}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->isInteraction()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->isInteraction()Z

    move-result v3

    if-ne v2, v3, :cond_66

    .line 148
    invoke-virtual {v0}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->isIntercept()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->isIntercept()Z

    move-result v3

    if-ne v2, v3, :cond_66

    .line 149
    const/4 v1, 0x1

    return v1

    .line 151
    :cond_66
    return v1

    .line 154
    .end local v0  # "bigData":Lcom/android/server/hips/intercept/BigDataInterceptionEvent;
    :cond_67
    return v1
.end method

.method public getAvgTime()J
    .registers 3

    .line 88
    iget-wide v0, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mAvgTime:J

    return-wide v0
.end method

.method public getCallee()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mCallee:Ljava/lang/String;

    return-object v0
.end method

.method public getCalleeClass()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mCalleeClass:Ljava/lang/String;

    return-object v0
.end method

.method public getCaller()Ljava/lang/String;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mCaller:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()J
    .registers 3

    .line 68
    iget-wide v0, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mCount:J

    return-wide v0
.end method

.method public getMedianTime()J
    .registers 3

    .line 92
    iget-wide v0, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mMedianTime:J

    return-wide v0
.end method

.method public getRunType()I
    .registers 2

    .line 84
    iget v0, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->runType:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mCallee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mCalleeClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->runType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method

.method public isInteraction()Z
    .registers 2

    .line 96
    iget-boolean v0, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mInteraction:Z

    return v0
.end method

.method public isIntercept()Z
    .registers 2

    .line 100
    iget-boolean v0, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mIntercept:Z

    return v0
.end method

.method public setAvgTime(J)V
    .registers 3
    .param p1, "mAvgTime"  # J

    .line 54
    return-void
.end method

.method public setCallee(Ljava/lang/String;)V
    .registers 2
    .param p1, "mCallee"  # Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mCallee:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setCalleeClass(Ljava/lang/String;)V
    .registers 2
    .param p1, "mCalleeClass"  # Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mCalleeClass:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setCaller(Ljava/lang/String;)V
    .registers 2
    .param p1, "mCaller"  # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mCaller:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setCount(J)V
    .registers 3
    .param p1, "mCount"  # J

    .line 34
    iput-wide p1, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mCount:J

    .line 35
    return-void
.end method

.method public setInteraction(Z)V
    .registers 2
    .param p1, "mInteraction"  # Z

    .line 60
    iput-boolean p1, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mInteraction:Z

    .line 61
    return-void
.end method

.method public setIntercept(Z)V
    .registers 2
    .param p1, "mIntercept"  # Z

    .line 64
    iput-boolean p1, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mIntercept:Z

    .line 65
    return-void
.end method

.method public setMedianTime(J)V
    .registers 3
    .param p1, "mMedianTime"  # J

    .line 57
    return-void
.end method

.method public setRunType(I)V
    .registers 2
    .param p1, "runType"  # I

    .line 50
    iput p1, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->runType:I

    .line 51
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mCallee:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mCalleeClass:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->runType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mAvgTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mMedianTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mInteraction:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hips/intercept/BigDataInterceptionEvent;->mIntercept:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
