.class Lcom/android/server/am/ActivityManagerService$ProcessInfoService;
.super Landroid/os/IProcessInfoService$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessInfoService"
.end annotation


# instance fields
.field final mActivityManagerService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "activityManagerService"  # Lcom/android/server/am/ActivityManagerService;

    .line 6056
    invoke-direct {p0}, Landroid/os/IProcessInfoService$Stub;-><init>()V

    .line 6057
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 6058
    return-void
.end method

.method private convertStatsToMap(Lcom/android/internal/os/MzProcessCpuTracker$Stats;)Ljava/util/Map;
    .registers 7
    .param p1, "stats"  # Lcom/android/internal/os/MzProcessCpuTracker$Stats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/MzProcessCpuTracker$Stats;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6141
    .local v0, "statsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_7c

    .line 6142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/os/MzProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "pid"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6143
    iget-object v1, p1, Lcom/android/internal/os/MzProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6144
    iget-object v1, p1, Lcom/android/internal/os/MzProcessCpuTracker$Stats;->pName:Ljava/lang/String;

    const-string/jumbo v3, "pName"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/android/internal/os/MzProcessCpuTracker$Stats;->pss:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "pss"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6146
    iget-object v1, p1, Lcom/android/internal/os/MzProcessCpuTracker$Stats;->cpuset:Ljava/lang/String;

    const-string v3, "cpuset"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/os/MzProcessCpuTracker$Stats;->rel_utime:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "rel_utime"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/internal/os/MzProcessCpuTracker$Stats;->rel_stime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rel_stime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6150
    :cond_7c
    return-object v0
.end method


# virtual methods
.method public countWorkingProcess()I
    .registers 2

    .line 6114
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMzProcessCpuTracker:Lcom/android/internal/os/MzProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/MzProcessCpuTracker;->countWorkingProcess()I

    move-result v0

    return v0
.end method

.method public countWorkingThread()I
    .registers 2

    .line 6119
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMzProcessCpuTracker:Lcom/android/internal/os/MzProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/MzProcessCpuTracker;->countWorkingThread()I

    move-result v0

    return v0
.end method

.method public getFlag()I
    .registers 2

    .line 6081
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMzProcessCpuTracker:Lcom/android/internal/os/MzProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/MzProcessCpuTracker;->getFlag()I

    move-result v0

    return v0
.end method

.method public getProcessStatesAndOomScoresFromPids([I[I[I)V
    .registers 5
    .param p1, "pids"  # [I
    .param p2, "states"  # [I
    .param p3, "scores"  # [I

    .line 6069
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->getProcessStatesAndOomScoresForPIDs([I[I[I)V

    .line 6071
    return-void
.end method

.method public getProcessStatesFromPids([I[I)V
    .registers 5
    .param p1, "pids"  # [I
    .param p2, "states"  # [I

    .line 6062
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/am/ActivityManagerService;->getProcessStatesAndOomScoresForPIDs([I[I[I)V

    .line 6064
    return-void
.end method

.method public getRealCpuTime()Ljava/util/Map;
    .registers 16

    .line 6086
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6087
    .local v0, "realCpuTime":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mMzProcessCpuTracker:Lcom/android/internal/os/MzProcessCpuTracker;

    iget-wide v1, v1, Lcom/android/internal/os/MzProcessCpuTracker;->mRelUserTime:J

    .line 6088
    .local v1, "relUserTime":J
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMzProcessCpuTracker:Lcom/android/internal/os/MzProcessCpuTracker;

    iget-wide v3, v3, Lcom/android/internal/os/MzProcessCpuTracker;->mRelSystemTime:J

    .line 6089
    .local v3, "relSystemTime":J
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mMzProcessCpuTracker:Lcom/android/internal/os/MzProcessCpuTracker;

    iget-wide v5, v5, Lcom/android/internal/os/MzProcessCpuTracker;->mRelIoWaitTime:J

    .line 6090
    .local v5, "relIoWaitTime":J
    iget-object v7, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mMzProcessCpuTracker:Lcom/android/internal/os/MzProcessCpuTracker;

    iget-wide v7, v7, Lcom/android/internal/os/MzProcessCpuTracker;->mRelIrqTime:J

    .line 6091
    .local v7, "relIrqTime":J
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mMzProcessCpuTracker:Lcom/android/internal/os/MzProcessCpuTracker;

    iget-wide v9, v9, Lcom/android/internal/os/MzProcessCpuTracker;->mRelSoftIrqTime:J

    .line 6092
    .local v9, "relSoftIrqTime":J
    iget-object v11, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mMzProcessCpuTracker:Lcom/android/internal/os/MzProcessCpuTracker;

    iget-wide v11, v11, Lcom/android/internal/os/MzProcessCpuTracker;->mRelIdleTime:J

    .line 6093
    .local v11, "relIdleTime":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string/jumbo v14, "mRelUserTime"

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6094
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string/jumbo v14, "mRelSystemTime"

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6095
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string/jumbo v14, "mRelIoWaitTime"

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6096
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string/jumbo v14, "mRelIrqTime"

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6097
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string/jumbo v14, "mRelSoftIrqTime"

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6098
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-string/jumbo v14, "mRelIdleTime"

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6099
    return-object v0
.end method

.method public getRealTotalTime()J
    .registers 5

    .line 6104
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMzProcessCpuTracker:Lcom/android/internal/os/MzProcessCpuTracker;

    iget-wide v0, v0, Lcom/android/internal/os/MzProcessCpuTracker;->mRelUserTime:J

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMzProcessCpuTracker:Lcom/android/internal/os/MzProcessCpuTracker;

    iget-wide v2, v2, Lcom/android/internal/os/MzProcessCpuTracker;->mRelSystemTime:J

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMzProcessCpuTracker:Lcom/android/internal/os/MzProcessCpuTracker;

    iget-wide v2, v2, Lcom/android/internal/os/MzProcessCpuTracker;->mRelIoWaitTime:J

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMzProcessCpuTracker:Lcom/android/internal/os/MzProcessCpuTracker;

    iget-wide v2, v2, Lcom/android/internal/os/MzProcessCpuTracker;->mRelIrqTime:J

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMzProcessCpuTracker:Lcom/android/internal/os/MzProcessCpuTracker;

    iget-wide v2, v2, Lcom/android/internal/os/MzProcessCpuTracker;->mRelSoftIrqTime:J

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mMzProcessCpuTracker:Lcom/android/internal/os/MzProcessCpuTracker;

    iget-wide v2, v2, Lcom/android/internal/os/MzProcessCpuTracker;->mRelIdleTime:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getWorkingProcess(I)Ljava/util/Map;
    .registers 4
    .param p1, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6124
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMzProcessCpuTracker:Lcom/android/internal/os/MzProcessCpuTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/MzProcessCpuTracker;->getWorkingProcess(I)Lcom/android/internal/os/MzProcessCpuTracker$Stats;

    move-result-object v0

    .line 6125
    .local v0, "stats":Lcom/android/internal/os/MzProcessCpuTracker$Stats;
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->convertStatsToMap(Lcom/android/internal/os/MzProcessCpuTracker$Stats;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public getWorkingThread(I)Ljava/util/Map;
    .registers 4
    .param p1, "index"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6130
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMzProcessCpuTracker:Lcom/android/internal/os/MzProcessCpuTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/MzProcessCpuTracker;->getWorkingThread(I)Lcom/android/internal/os/MzProcessCpuTracker$Stats;

    move-result-object v0

    .line 6131
    .local v0, "stats":Lcom/android/internal/os/MzProcessCpuTracker$Stats;
    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->convertStatsToMap(Lcom/android/internal/os/MzProcessCpuTracker$Stats;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public setFlag(I)V
    .registers 3
    .param p1, "flag"  # I

    .line 6076
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMzProcessCpuTracker:Lcom/android/internal/os/MzProcessCpuTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/MzProcessCpuTracker;->setFlag(I)V

    .line 6077
    return-void
.end method

.method public updateContent()Z
    .registers 2

    .line 6136
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMzProcessCpuTracker:Lcom/android/internal/os/MzProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/MzProcessCpuTracker;->updateContent()Z

    move-result v0

    return v0
.end method
