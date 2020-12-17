.class public Lcom/android/server/hips/intercept/InterceptionEvent;
.super Ljava/lang/Object;
.source "InterceptionEvent.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/hips/intercept/InterceptionEvent;",
        ">;"
    }
.end annotation


# instance fields
.field isStartProc:Z

.field mCallee:Ljava/lang/String;

.field mCalleeClass:Ljava/lang/String;

.field mCalleeStayTime:J

.field mCaller:Ljava/lang/String;

.field mCurRealTime:J

.field mInteraction:Z

.field mIntercept:Z

.field mReason:I

.field mRunType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(JJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V
    .registers 13
    .param p1, "realtime"  # J
    .param p3, "staytime"  # J
    .param p5, "runtype"  # I
    .param p6, "caller"  # Ljava/lang/String;
    .param p7, "callee"  # Ljava/lang/String;
    .param p8, "calleeClass"  # Ljava/lang/String;
    .param p9, "reason"  # I
    .param p10, "interaction"  # Z
    .param p11, "intercept"  # Z
    .param p12, "startProc"  # Z

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mCurRealTime:J

    .line 25
    iput-wide p3, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mCalleeStayTime:J

    .line 26
    iput p5, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mRunType:I

    .line 27
    iput-object p6, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mCaller:Ljava/lang/String;

    .line 28
    iput-object p7, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mCallee:Ljava/lang/String;

    .line 29
    iput-object p8, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mCalleeClass:Ljava/lang/String;

    .line 30
    iput-boolean p10, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mInteraction:Z

    .line 31
    iput-boolean p11, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mIntercept:Z

    .line 32
    iput p9, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mReason:I

    .line 33
    iput-boolean p12, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->isStartProc:Z

    .line 34
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/hips/intercept/InterceptionEvent;)I
    .registers 6
    .param p1, "event"  # Lcom/android/server/hips/intercept/InterceptionEvent;

    .line 118
    invoke-virtual {p0}, Lcom/android/server/hips/intercept/InterceptionEvent;->getRealTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getRealTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 6
    check-cast p1, Lcom/android/server/hips/intercept/InterceptionEvent;

    invoke-virtual {p0, p1}, Lcom/android/server/hips/intercept/InterceptionEvent;->compareTo(Lcom/android/server/hips/intercept/InterceptionEvent;)I

    move-result p1

    return p1
.end method

.method public getCallee()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mCallee:Ljava/lang/String;

    return-object v0
.end method

.method public getCalleeClass()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mCalleeClass:Ljava/lang/String;

    return-object v0
.end method

.method public getCaller()Ljava/lang/String;
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mCaller:Ljava/lang/String;

    return-object v0
.end method

.method public getInteraction()Z
    .registers 2

    .line 89
    iget-boolean v0, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mInteraction:Z

    return v0
.end method

.method public getIntercept()Z
    .registers 2

    .line 97
    iget-boolean v0, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mIntercept:Z

    return v0
.end method

.method public getRealTime()J
    .registers 3

    .line 41
    iget-wide v0, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mCurRealTime:J

    return-wide v0
.end method

.method public getReason()I
    .registers 2

    .line 105
    iget v0, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mReason:I

    return v0
.end method

.method public getRunType()I
    .registers 2

    .line 57
    iget v0, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mRunType:I

    return v0
.end method

.method public getRunType(I)Ljava/lang/String;
    .registers 5
    .param p1, "type"  # I

    .line 128
    const-string v0, ""

    .line 129
    .local v0, "runType":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_8

    .line 130
    const-string v0, "activity"

    goto :goto_34

    .line 131
    :cond_8
    const/4 v1, 0x2

    if-ne p1, v1, :cond_f

    .line 132
    const-string/jumbo v0, "service"

    goto :goto_34

    .line 133
    :cond_f
    const/4 v1, 0x3

    if-ne p1, v1, :cond_15

    .line 134
    const-string v0, "broadcast"

    goto :goto_34

    .line 135
    :cond_15
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1c

    .line 136
    const-string/jumbo v0, "provider"

    goto :goto_34

    .line 137
    :cond_1c
    const/4 v1, 0x5

    if-ne p1, v1, :cond_22

    .line 138
    const-string v0, "backup"

    goto :goto_34

    .line 140
    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_34
    return-object v0
.end method

.method public getStartProc()Z
    .registers 2

    .line 113
    iget-boolean v0, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->isStartProc:Z

    return v0
.end method

.method public getStayTime()J
    .registers 3

    .line 49
    iget-wide v0, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mCalleeStayTime:J

    return-wide v0
.end method

.method public getTime(J)Ljava/lang/String;
    .registers 6
    .param p1, "time"  # J

    .line 122
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    const-string v2, ""

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 123
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    const-string/jumbo v1, "yyyy-MM-dd HH-mm-ss"

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 124
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setCallee(Ljava/lang/String;)V
    .registers 2
    .param p1, "callee"  # Ljava/lang/String;

    .line 69
    iput-object p1, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mCallee:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setCalleeClass(Ljava/lang/String;)V
    .registers 2
    .param p1, "calleeClass"  # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mCalleeClass:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setCaller(Ljava/lang/String;)V
    .registers 2
    .param p1, "caller"  # Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mCaller:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setInteraction(Z)V
    .registers 2
    .param p1, "interaction"  # Z

    .line 85
    iput-boolean p1, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mInteraction:Z

    .line 86
    return-void
.end method

.method public setIntercept(Z)V
    .registers 2
    .param p1, "intercept"  # Z

    .line 93
    iput-boolean p1, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mIntercept:Z

    .line 94
    return-void
.end method

.method public setIsStartProc(Z)V
    .registers 2
    .param p1, "startProc"  # Z

    .line 109
    iput-boolean p1, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->isStartProc:Z

    .line 110
    return-void
.end method

.method public setRealTime(J)V
    .registers 3
    .param p1, "realTime"  # J

    .line 37
    iput-wide p1, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mCurRealTime:J

    .line 38
    return-void
.end method

.method public setReason(I)V
    .registers 2
    .param p1, "reason"  # I

    .line 101
    iput p1, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mReason:I

    .line 102
    return-void
.end method

.method public setRunType(I)V
    .registers 2
    .param p1, "runType"  # I

    .line 53
    iput p1, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mRunType:I

    .line 54
    return-void
.end method

.method public setStayTime(J)V
    .registers 3
    .param p1, "stayTime"  # J

    .line 45
    iput-wide p1, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mCalleeStayTime:J

    .line 46
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mCurRealTime:J

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hips/intercept/InterceptionEvent;->getTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mRunType:I

    invoke-virtual {p0, v1}, Lcom/android/server/hips/intercept/InterceptionEvent;->getRunType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " caller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mCallee:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mCalleeClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mReason:I

    invoke-static {v1}, Lcom/android/server/hips/intercept/InterceptionReason;->getInterceptionReason(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " fg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mInteraction:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " intercept: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mIntercept:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " start proc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->isStartProc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " stay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/hips/intercept/InterceptionEvent;->mCalleeStayTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
