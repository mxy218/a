.class public Lcom/android/server/hips/intercept/SafeInterceptionEvent;
.super Ljava/lang/Object;
.source "SafeInterceptionEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field isStartProc:Z

.field mCallee:Ljava/lang/String;

.field mCaller:Ljava/lang/String;

.field mCurRealTime:J

.field mIntercept:Z


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;ZZ)V
    .registers 7
    .param p1, "realTime"  # J
    .param p3, "caller"  # Ljava/lang/String;
    .param p4, "callee"  # Ljava/lang/String;
    .param p5, "intercept"  # Z
    .param p6, "startProc"  # Z

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/android/server/hips/intercept/SafeInterceptionEvent;->mCurRealTime:J

    .line 14
    iput-object p3, p0, Lcom/android/server/hips/intercept/SafeInterceptionEvent;->mCaller:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/android/server/hips/intercept/SafeInterceptionEvent;->mCallee:Ljava/lang/String;

    .line 16
    iput-boolean p5, p0, Lcom/android/server/hips/intercept/SafeInterceptionEvent;->mIntercept:Z

    .line 17
    iput-boolean p6, p0, Lcom/android/server/hips/intercept/SafeInterceptionEvent;->isStartProc:Z

    .line 18
    return-void
.end method


# virtual methods
.method public getCallee()Ljava/lang/String;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/android/server/hips/intercept/SafeInterceptionEvent;->mCallee:Ljava/lang/String;

    return-object v0
.end method

.method public getCaller()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/android/server/hips/intercept/SafeInterceptionEvent;->mCaller:Ljava/lang/String;

    return-object v0
.end method

.method public getCurRealTime()J
    .registers 3

    .line 41
    iget-wide v0, p0, Lcom/android/server/hips/intercept/SafeInterceptionEvent;->mCurRealTime:J

    return-wide v0
.end method

.method public isIntercept()Z
    .registers 2

    .line 53
    iget-boolean v0, p0, Lcom/android/server/hips/intercept/SafeInterceptionEvent;->mIntercept:Z

    return v0
.end method

.method public isStartProc()Z
    .registers 2

    .line 57
    iget-boolean v0, p0, Lcom/android/server/hips/intercept/SafeInterceptionEvent;->isStartProc:Z

    return v0
.end method

.method public setCallee(Ljava/lang/String;)V
    .registers 2
    .param p1, "callee"  # Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/android/server/hips/intercept/SafeInterceptionEvent;->mCallee:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setCaller(Ljava/lang/String;)V
    .registers 2
    .param p1, "caller"  # Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/android/server/hips/intercept/SafeInterceptionEvent;->mCaller:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setCurRealTime(J)V
    .registers 3
    .param p1, "realTime"  # J

    .line 21
    iput-wide p1, p0, Lcom/android/server/hips/intercept/SafeInterceptionEvent;->mCurRealTime:J

    .line 22
    return-void
.end method

.method public setIntercept(Z)V
    .registers 2
    .param p1, "intercept"  # Z

    .line 33
    iput-boolean p1, p0, Lcom/android/server/hips/intercept/SafeInterceptionEvent;->mIntercept:Z

    .line 34
    return-void
.end method

.method public setStartProc(Z)V
    .registers 2
    .param p1, "startProc"  # Z

    .line 37
    iput-boolean p1, p0, Lcom/android/server/hips/intercept/SafeInterceptionEvent;->isStartProc:Z

    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/android/server/hips/intercept/SafeInterceptionEvent;->mCurRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hips/intercept/SafeInterceptionEvent;->mCaller:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/hips/intercept/SafeInterceptionEvent;->mCallee:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/hips/intercept/SafeInterceptionEvent;->mIntercept:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/hips/intercept/SafeInterceptionEvent;->isStartProc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
