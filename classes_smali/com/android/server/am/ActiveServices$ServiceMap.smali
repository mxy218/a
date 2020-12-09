.class final Lcom/android/server/am/ActiveServices$ServiceMap;
.super Landroid/os/Handler;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceMap"
.end annotation


# static fields
.field static final MSG_BG_START_TIMEOUT:I = 0x1

.field static final MSG_UPDATE_FOREGROUND_APPS:I = 0x2


# instance fields
.field final mActiveForegroundApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ActiveServices$ActiveForegroundApp;",
            ">;"
        }
    .end annotation
.end field

.field mActiveForegroundAppsChanged:Z

.field final mDelayedStartList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mServicesByInstanceName:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mServicesByIntent:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/Intent$FilterComparison;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mStartingBackground:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mUserId:I

.field final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActiveServices;Landroid/os/Looper;I)V
    .registers 4

    .line 277
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    .line 278
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 255
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 256
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    .line 258
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    .line 269
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    .line 271
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    .line 279
    iput p3, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mUserId:I

    .line 280
    return-void
.end method


# virtual methods
.method ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 3

    .line 297
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 300
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$ServiceMap;->rescheduleDelayedStartsLocked()V

    .line 302
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 305
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 284
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    goto :goto_1f

    .line 291
    :cond_9
    iget-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-virtual {p1, p0}, Lcom/android/server/am/ActiveServices;->updateForegroundApps(Lcom/android/server/am/ActiveServices$ServiceMap;)V

    goto :goto_1f

    .line 286
    :cond_f
    iget-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object p1, p1, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p1

    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 287
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$ServiceMap;->rescheduleDelayedStartsLocked()V

    .line 288
    monitor-exit p1
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_20

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 289
    nop

    .line 294
    :goto_1f
    return-void

    .line 288
    :catchall_20
    move-exception v0

    :try_start_21
    monitor-exit p1
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method rescheduleDelayedStartsLocked()V
    .registers 14

    .line 308
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->removeMessages(I)V

    .line 309
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 310
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v3

    move v3, v4

    :goto_11
    const-string v6, "ActivityManager"

    if-ge v3, v5, :cond_42

    .line 311
    iget-object v7, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ServiceRecord;

    .line 312
    iget-wide v8, v7, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    cmp-long v8, v8, v1

    if-gtz v8, :cond_40

    .line 313
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Waited long enough for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 315
    add-int/lit8 v5, v5, -0x1

    .line 316
    add-int/lit8 v3, v3, -0x1

    .line 310
    :cond_40
    add-int/2addr v3, v0

    goto :goto_11

    .line 319
    :cond_42
    :goto_42
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_a7

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    .line 320
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    iget v5, v5, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-ge v3, v5, :cond_a7

    .line 321
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/android/server/am/ServiceRecord;

    .line 332
    iput-boolean v4, v10, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 333
    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_92

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "**** NO PENDING STARTS! "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " startReq="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v10, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " delayedStop="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v10, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a6

    .line 338
    :cond_92
    :try_start_92
    iget-object v7, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v3, v10, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord$StartItem;

    iget-object v9, v3, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v8, p0

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;
    :try_end_a4
    .catch Landroid/os/TransactionTooLargeException; {:try_start_92 .. :try_end_a4} :catch_a5

    .line 342
    goto :goto_a6

    .line 340
    :catch_a5
    move-exception v3

    .line 344
    :goto_a6
    goto :goto_42

    .line 345
    :cond_a7
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_c6

    .line 346
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 347
    iget-wide v4, v3, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    cmp-long v4, v4, v1

    if-lez v4, :cond_bf

    iget-wide v1, v3, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    .line 350
    :cond_bf
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 351
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 353
    :cond_c6
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    iget v1, v1, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-ge v0, v1, :cond_db

    .line 354
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->backgroundServicesFinishedLocked(I)V

    .line 356
    :cond_db
    return-void
.end method
