.class final Lcom/android/server/job/controllers/ContentObserverController$JobInstance;
.super Ljava/lang/Object;
.source "ContentObserverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ContentObserverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "JobInstance"
.end annotation


# instance fields
.field mChangedAuthorities:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mChangedUris:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final mExecuteRunner:Ljava/lang/Runnable;

.field final mJobStatus:Lcom/android/server/job/controllers/JobStatus;

.field final mMyObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;",
            ">;"
        }
    .end annotation
.end field

.field final mTimeoutRunner:Ljava/lang/Runnable;

.field mTriggerPending:Z

.field final synthetic this$0:Lcom/android/server/job/controllers/ContentObserverController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/ContentObserverController;Lcom/android/server/job/controllers/JobStatus;)V
    .registers 19

    .line 251
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 241
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mMyObservers:Ljava/util/ArrayList;

    .line 252
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    .line 253
    new-instance v3, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;

    invoke-direct {v3, v0}, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;-><init>(Lcom/android/server/job/controllers/ContentObserverController$JobInstance;)V

    iput-object v3, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Ljava/lang/Runnable;

    .line 254
    new-instance v3, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;

    invoke-direct {v3, v0}, Lcom/android/server/job/controllers/ContentObserverController$TriggerRunnable;-><init>(Lcom/android/server/job/controllers/ContentObserverController$JobInstance;)V

    iput-object v3, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTimeoutRunner:Ljava/lang/Runnable;

    .line 255
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v3

    .line 256
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v4

    .line 257
    iget-object v5, v1, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    .line 258
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 259
    if-nez v5, :cond_42

    .line 260
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    .line 261
    iget-object v6, v1, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 263
    :cond_42
    if-eqz v3, :cond_f1

    .line 264
    array-length v6, v3

    const/4 v8, 0x0

    :goto_46
    if-ge v8, v6, :cond_f1

    aget-object v9, v3, v8

    .line 265
    invoke-virtual {v5, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    .line 266
    const-string v11, " andDescendants="

    const-string v12, " for "

    const-string v13, "JobScheduler.ContentObserver"

    const/4 v14, 0x1

    if-nez v10, :cond_b0

    .line 267
    new-instance v10, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    iget-object v15, v1, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v7

    invoke-direct {v10, v1, v15, v9, v7}, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;-><init>(Lcom/android/server/job/controllers/ContentObserverController;Landroid/os/Handler;Landroid/app/job/JobInfo$TriggerContentUri;I)V

    .line 268
    invoke-virtual {v5, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-virtual {v9}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v7

    and-int/2addr v7, v14

    if-eqz v7, :cond_6f

    goto :goto_70

    :cond_6f
    const/4 v14, 0x0

    .line 271
    :goto_70
    invoke-static {}, Lcom/android/server/job/controllers/ContentObserverController;->access$000()Z

    move-result v7

    if-eqz v7, :cond_a2

    .line 272
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "New observer "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " sourceUserId="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_a2
    iget-object v7, v1, Lcom/android/server/job/controllers/ContentObserverController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 277
    invoke-virtual {v9}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v9

    .line 276
    invoke-virtual {v7, v9, v14, v10, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 282
    goto :goto_e3

    .line 283
    :cond_b0
    invoke-static {}, Lcom/android/server/job/controllers/ContentObserverController;->access$000()Z

    move-result v7

    if-eqz v7, :cond_e3

    .line 284
    invoke-virtual {v9}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v7

    and-int/2addr v7, v14

    if-eqz v7, :cond_be

    goto :goto_bf

    :cond_be
    const/4 v14, 0x0

    .line 286
    :goto_bf
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Reusing existing observer "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_e3
    :goto_e3
    iget-object v7, v10, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v7, v0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mMyObservers:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_46

    .line 294
    :cond_f1
    return-void
.end method


# virtual methods
.method detachLocked()V
    .registers 6

    .line 336
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mMyObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 337
    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_69

    .line 338
    iget-object v2, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mMyObservers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;

    .line 339
    iget-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v3, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 340
    iget-object v3, v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mJobs:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-nez v3, :cond_66

    .line 341
    invoke-static {}, Lcom/android/server/job/controllers/ContentObserverController;->access$000()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unregistering observer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUri:Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {v4}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "JobScheduler.ContentObserver"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_48
    iget-object v3, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v3, v3, Lcom/android/server/job/controllers/ContentObserverController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 345
    iget-object v3, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v3, v3, Lcom/android/server/job/controllers/ContentObserverController;->mObservers:Landroid/util/SparseArray;

    iget v4, v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUserId:I

    .line 346
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 347
    if-eqz v3, :cond_66

    .line 348
    iget-object v2, v2, Lcom/android/server/job/controllers/ContentObserverController$ObserverInstance;->mUri:Landroid/app/job/JobInfo$TriggerContentUri;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    :cond_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 352
    :cond_69
    return-void
.end method

.method scheduleLocked()V
    .registers 5

    .line 314
    iget-boolean v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    if-nez v0, :cond_16

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    .line 316
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTimeoutRunner:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentMaxDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 318
    :cond_16
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 319
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mChangedUris:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/16 v1, 0x28

    if-lt v0, v1, :cond_33

    .line 321
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_42

    .line 323
    :cond_33
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v2}, Lcom/android/server/job/controllers/JobStatus;->getTriggerContentUpdateDelay()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 325
    :goto_42
    return-void
.end method

.method trigger()V
    .registers 5

    .line 297
    nop

    .line 298
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 299
    :try_start_6
    iget-boolean v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 300
    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mJobStatus:Lcom/android/server/job/controllers/JobStatus;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/job/controllers/JobStatus;->setContentTriggerConstraintSatisfied(Z)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 301
    move v2, v3

    .line 303
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->unscheduleLocked()V

    .line 305
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_23

    .line 308
    if-eqz v2, :cond_22

    .line 309
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {v0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged()V

    .line 311
    :cond_22
    return-void

    .line 305
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method

.method unscheduleLocked()V
    .registers 3

    .line 328
    iget-boolean v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    if-eqz v0, :cond_19

    .line 329
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mExecuteRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 330
    iget-object v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->this$0:Lcom/android/server/job/controllers/ContentObserverController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ContentObserverController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTimeoutRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/ContentObserverController$JobInstance;->mTriggerPending:Z

    .line 333
    :cond_19
    return-void
.end method
