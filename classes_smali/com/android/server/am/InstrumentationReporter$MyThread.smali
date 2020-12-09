.class final Lcom/android/server/am/InstrumentationReporter$MyThread;
.super Ljava/lang/Thread;
.source "InstrumentationReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/InstrumentationReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/InstrumentationReporter;


# direct methods
.method public constructor <init>(Lcom/android/server/am/InstrumentationReporter;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    .line 41
    const-string p1, "InstrumentationReporter"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 48
    move v1, v0

    .line 51
    :goto_5
    iget-object v2, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    iget-object v2, v2, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 52
    :try_start_a
    iget-object v3, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    iget-object v3, v3, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    .line 53
    iget-object v4, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/InstrumentationReporter;->mPendingReports:Ljava/util/ArrayList;

    .line 54
    if-eqz v3, :cond_6f

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1c

    goto :goto_6f

    .line 69
    :cond_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_86

    .line 71
    nop

    .line 73
    move v1, v0

    :goto_1f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6d

    .line 74
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/InstrumentationReporter$Report;

    .line 76
    :try_start_2b
    iget v4, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mType:I

    if-nez v4, :cond_3b

    .line 80
    iget-object v4, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v5, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mName:Landroid/content/ComponentName;

    iget v6, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mResultCode:I

    iget-object v7, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mResults:Landroid/os/Bundle;

    invoke-interface {v4, v5, v6, v7}, Landroid/app/IInstrumentationWatcher;->instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V

    goto :goto_46

    .line 86
    :cond_3b
    iget-object v4, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mWatcher:Landroid/app/IInstrumentationWatcher;

    iget-object v5, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mName:Landroid/content/ComponentName;

    iget v6, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mResultCode:I

    iget-object v7, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mResults:Landroid/os/Bundle;

    invoke-interface {v4, v5, v6, v7}, Landroid/app/IInstrumentationWatcher;->instrumentationFinished(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_46} :catch_47

    .line 92
    :goto_46
    goto :goto_6a

    .line 89
    :catch_47
    move-exception v4

    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure reporting to instrumentation watcher: comp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " results="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/am/InstrumentationReporter$Report;->mResults:Landroid/os/Bundle;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ActivityManager"

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :goto_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 94
    :cond_6d
    move v1, v0

    goto :goto_5

    .line 55
    :cond_6f
    :goto_6f
    if-nez v1, :cond_80

    .line 58
    :try_start_71
    iget-object v1, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    iget-object v1, v1, Lcom/android/server/am/InstrumentationReporter;->mLock:Ljava/lang/Object;

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_7a
    .catch Ljava/lang/InterruptedException; {:try_start_71 .. :try_end_7a} :catch_7b
    .catchall {:try_start_71 .. :try_end_7a} :catchall_86

    .line 60
    goto :goto_7c

    .line 59
    :catch_7b
    move-exception v1

    .line 61
    :goto_7c
    nop

    .line 62
    :try_start_7d
    monitor-exit v2

    const/4 v1, 0x1

    goto :goto_5

    .line 64
    :cond_80
    iget-object v0, p0, Lcom/android/server/am/InstrumentationReporter$MyThread;->this$0:Lcom/android/server/am/InstrumentationReporter;

    iput-object v5, v0, Lcom/android/server/am/InstrumentationReporter;->mThread:Ljava/lang/Thread;

    .line 66
    monitor-exit v2

    return-void

    .line 69
    :catchall_86
    move-exception v0

    monitor-exit v2
    :try_end_88
    .catchall {:try_start_7d .. :try_end_88} :catchall_86

    throw v0
.end method
