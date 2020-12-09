.class Lcom/android/server/am/ActivityManagerService$CpuBinder$1;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/android/server/utils/PriorityDump$PriorityDumper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService$CpuBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService$CpuBinder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService$CpuBinder;)V
    .registers 2

    .line 2185
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$CpuBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dumpCritical(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 7

    .line 2189
    if-eqz p4, :cond_3

    return-void

    .line 2190
    :cond_3
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$CpuBinder;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService$CpuBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string p3, "cpuinfo"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 2191
    return-void

    .line 2192
    :cond_12
    iget-object p1, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$CpuBinder;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService$CpuBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter p1

    .line 2193
    :try_start_19
    iget-object p3, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$CpuBinder;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService$CpuBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {p3}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2194
    iget-object p3, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder$1;->this$0:Lcom/android/server/am/ActivityManagerService$CpuBinder;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService$CpuBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object p3, p3, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 2195
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2194
    invoke-virtual {p3, v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2196
    monitor-exit p1

    .line 2197
    return-void

    .line 2196
    :catchall_39
    move-exception p2

    monitor-exit p1
    :try_end_3b
    .catchall {:try_start_19 .. :try_end_3b} :catchall_39

    throw p2
.end method
