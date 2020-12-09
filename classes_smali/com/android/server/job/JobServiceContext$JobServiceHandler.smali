.class Lcom/android/server/job/JobServiceContext$JobServiceHandler;
.super Landroid/os/Handler;
.source "JobServiceContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobServiceContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/JobServiceContext;


# direct methods
.method constructor <init>(Lcom/android/server/job/JobServiceContext;Landroid/os/Looper;)V
    .registers 3

    .line 501
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    .line 502
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 503
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    .line 507
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1b

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognised message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JobServiceContext"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 509
    :cond_1b
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v0}, Lcom/android/server/job/JobServiceContext;->access$000(Lcom/android/server/job/JobServiceContext;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 510
    :try_start_22
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {v2}, Lcom/android/server/job/JobServiceContext;->access$100(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobServiceContext$JobCallback;

    move-result-object v2

    if-ne v1, v2, :cond_32

    .line 511
    iget-object p1, p0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;->this$0:Lcom/android/server/job/JobServiceContext;

    invoke-static {p1}, Lcom/android/server/job/JobServiceContext;->access$200(Lcom/android/server/job/JobServiceContext;)V

    goto :goto_6a

    .line 513
    :cond_32
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/job/JobServiceContext$JobCallback;

    .line 514
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 515
    const-string v2, "Ignoring timeout of no longer active job"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    iget-object v2, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    if-eqz v2, :cond_61

    .line 517
    const-string v2, ", stopped "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    iget-wide v4, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3, v1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 520
    const-string v2, " because: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    iget-object p1, p1, Lcom/android/server/job/JobServiceContext$JobCallback;->mStoppedReason:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    :cond_61
    const-string p1, "JobServiceContext"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :goto_6a
    monitor-exit v0

    .line 526
    nop

    .line 530
    :goto_6c
    return-void

    .line 525
    :catchall_6d
    move-exception p1

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_22 .. :try_end_6f} :catchall_6d

    throw p1
.end method
