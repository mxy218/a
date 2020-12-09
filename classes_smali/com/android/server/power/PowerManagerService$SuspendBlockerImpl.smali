.class final Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/power/SuspendBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SuspendBlockerImpl"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private mReferenceCount:I

.field private final mTraceName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .registers 4

    .line 4365
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4366
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    .line 4367
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SuspendBlocker ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mTraceName:Ljava/lang/String;

    .line 4368
    return-void
.end method


# virtual methods
.method public acquire()V
    .registers 5

    .line 4387
    monitor-enter p0

    .line 4388
    :try_start_1
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    .line 4389
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    if-ne v0, v1, :cond_1f

    .line 4393
    const-wide/32 v0, 0x20000

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mTraceName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 4394
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$NativeWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeAcquireSuspendBlocker(Ljava/lang/String;)V

    .line 4396
    :cond_1f
    monitor-exit p0

    .line 4397
    return-void

    .line 4396
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_21

    throw v0
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 4373
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    if-eqz v0, :cond_37

    .line 4374
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Suspend blocker \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" was finalized without being released!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4376
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    .line 4377
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$NativeWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    .line 4378
    const-wide/32 v1, 0x20000

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mTraceName:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_3c

    .line 4381
    :cond_37
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 4382
    nop

    .line 4383
    return-void

    .line 4381
    :catchall_3c
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public release()V
    .registers 5

    .line 4401
    monitor-enter p0

    .line 4402
    :try_start_1
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    .line 4403
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_20

    .line 4407
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$3700(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$NativeWrapper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/server/power/PowerManagerService$NativeWrapper;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V

    .line 4408
    const-wide/32 v2, 0x20000

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mTraceName:Ljava/lang/String;

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    goto :goto_48

    .line 4409
    :cond_20
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    if-gez v0, :cond_48

    .line 4410
    const-string v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Suspend blocker \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" was released without being acquired!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4412
    iput v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    .line 4414
    :cond_48
    :goto_48
    monitor-exit p0

    .line 4415
    return-void

    .line 4414
    :catchall_4a
    move-exception v0

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 4419
    monitor-enter p0

    .line 4420
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": ref count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 4421
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 4425
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 4426
    monitor-enter p0

    .line 4427
    const-wide v0, 0x10900000001L

    :try_start_a
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4428
    const-wide v0, 0x10500000002L

    iget v2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4429
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_1e

    .line 4430
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4431
    return-void

    .line 4429
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method
