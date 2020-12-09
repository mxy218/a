.class final Lcom/android/server/job/JobSchedulerService$ThermalStatusListener;
.super Landroid/os/IThermalStatusListener$Stub;
.source "JobSchedulerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ThermalStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method private constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .registers 2

    .line 322
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$ThermalStatusListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Landroid/os/IThermalStatusListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/JobSchedulerService$1;)V
    .registers 3

    .line 322
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService$ThermalStatusListener;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    return-void
.end method


# virtual methods
.method public onStatusChange(I)V
    .registers 5

    .line 325
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$ThermalStatusListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_5
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService$ThermalStatusListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    const/4 v2, 0x3

    if-lt p1, v2, :cond_c

    const/4 p1, 0x1

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    invoke-static {v1, p1}, Lcom/android/server/job/JobSchedulerService;->access$002(Lcom/android/server/job/JobSchedulerService;Z)Z

    .line 327
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_17

    .line 328
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$ThermalStatusListener;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->onControllerStateChanged()V

    .line 329
    return-void

    .line 327
    :catchall_17
    move-exception p1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p1
.end method
