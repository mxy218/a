.class Lcom/android/server/job/controllers/BackgroundJobsController$1;
.super Lcom/android/server/AppStateTracker$Listener;
.source "BackgroundJobsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/BackgroundJobsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/BackgroundJobsController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/BackgroundJobsController;)V
    .registers 2

    .line 229
    iput-object p1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-direct {p0}, Lcom/android/server/AppStateTracker$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public updateAllJobs()V
    .registers 3

    .line 232
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    iget-object v0, v0, Lcom/android/server/job/controllers/BackgroundJobsController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 233
    :try_start_5
    iget-object v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-static {v1}, Lcom/android/server/job/controllers/BackgroundJobsController;->access$000(Lcom/android/server/job/controllers/BackgroundJobsController;)V

    .line 234
    monitor-exit v0

    .line 235
    return-void

    .line 234
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public updateJobsForUid(IZ)V
    .registers 5

    .line 239
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    iget-object v0, v0, Lcom/android/server/job/controllers/BackgroundJobsController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_5
    iget-object v1, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-static {v1, p1, p2}, Lcom/android/server/job/controllers/BackgroundJobsController;->access$100(Lcom/android/server/job/controllers/BackgroundJobsController;IZ)V

    .line 241
    monitor-exit v0

    .line 242
    return-void

    .line 241
    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public updateJobsForUidPackage(ILjava/lang/String;Z)V
    .registers 5

    .line 246
    iget-object p2, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    iget-object p2, p2, Lcom/android/server/job/controllers/BackgroundJobsController;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 247
    :try_start_5
    iget-object v0, p0, Lcom/android/server/job/controllers/BackgroundJobsController$1;->this$0:Lcom/android/server/job/controllers/BackgroundJobsController;

    invoke-static {v0, p1, p3}, Lcom/android/server/job/controllers/BackgroundJobsController;->access$100(Lcom/android/server/job/controllers/BackgroundJobsController;IZ)V

    .line 248
    monitor-exit p2

    .line 249
    return-void

    .line 248
    :catchall_c
    move-exception p1

    monitor-exit p2
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p1
.end method
