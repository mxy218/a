.class Lcom/android/server/appop/AppOpsService$1;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/appop/AppOpsService;

    .line 204
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$1;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 206
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$1;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    .line 207
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$1;->this$0:Lcom/android/server/appop/AppOpsService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/appop/AppOpsService;->mWriteScheduled:Z

    .line 208
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$1;->this$0:Lcom/android/server/appop/AppOpsService;

    iput-boolean v2, v1, Lcom/android/server/appop/AppOpsService;->mFastWriteScheduled:Z

    .line 209
    new-instance v1, Lcom/android/server/appop/AppOpsService$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/appop/AppOpsService$1$1;-><init>(Lcom/android/server/appop/AppOpsService$1;)V

    .line 215
    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 216
    nop

    .end local v1  # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    monitor-exit v0

    .line 217
    return-void

    .line 216
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method
