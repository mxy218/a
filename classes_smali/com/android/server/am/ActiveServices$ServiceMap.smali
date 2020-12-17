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
    .registers 5
    .param p1, "this$0"  # Lcom/android/server/am/ActiveServices;
    .param p2, "looper"  # Landroid/os/Looper;
    .param p3, "userId"  # I

    .line 310
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    .line 311
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 288
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    .line 289
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByIntent:Landroid/util/ArrayMap;

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    .line 304
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mActiveForegroundApps:Landroid/util/ArrayMap;

    .line 312
    iput p3, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mUserId:I

    .line 313
    return-void
.end method


# virtual methods
.method ensureNotStartingBackgroundLocked(Lcom/android/server/am/ServiceRecord;)V
    .registers 5
    .param p1, "r"  # Lcom/android/server/am/ServiceRecord;

    .line 332
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ActivityManager"

    if-eqz v0, :cond_27

    .line 333
    invoke-static {}, Lcom/android/server/am/ActiveServices;->access$200()Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No longer background starting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$ServiceMap;->rescheduleDelayedStartsLocked()V

    .line 337
    :cond_27
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 338
    invoke-static {}, Lcom/android/server/am/ActiveServices;->access$200()Z

    move-result v0

    if-eqz v0, :cond_49

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No longer delaying start: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_49
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 317
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_16

    .line 319
    :cond_6
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 320
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$ServiceMap;->rescheduleDelayedStartsLocked()V

    .line 321
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 322
    nop

    .line 329
    :goto_16
    return-void

    .line 321
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method rescheduleDelayedStartsLocked()V
    .registers 13

    .line 343
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->removeMessages(I)V

    .line 344
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 345
    .local v1, "now":J
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v4, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "N":I
    :goto_f
    const-string v5, "ActivityManager"

    if-ge v3, v4, :cond_40

    .line 346
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 347
    .local v6, "r":Lcom/android/server/am/ServiceRecord;
    iget-wide v7, v6, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    cmp-long v7, v7, v1

    if-gtz v7, :cond_3e

    .line 348
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Waited long enough for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 350
    add-int/lit8 v4, v4, -0x1

    .line 351
    add-int/lit8 v3, v3, -0x1

    .line 345
    .end local v6  # "r":Lcom/android/server/am/ServiceRecord;
    :cond_3e
    add-int/2addr v3, v0

    goto :goto_f

    .line 354
    .end local v3  # "i":I
    .end local v4  # "N":I
    :cond_40
    :goto_40
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_102

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    .line 355
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    iget v6, v6, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-ge v3, v6, :cond_102

    .line 356
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 357
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    invoke-static {}, Lcom/android/server/am/ActiveServices;->access$200()Z

    move-result v6

    if-eqz v6, :cond_77

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "REM FR DELAY LIST (exec next): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_77
    invoke-static {}, Lcom/android/server/am/ActiveServices;->access$300()Z

    move-result v6

    if-eqz v6, :cond_b8

    .line 360
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_b8

    .line 361
    const-string v6, "Remaining delayed list:"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_8b
    iget-object v7, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_b8

    .line 363
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    add-int/lit8 v6, v6, 0x1

    goto :goto_8b

    .line 367
    .end local v6  # "i":I
    :cond_b8
    iput-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 368
    iget-object v6, v3, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_eb

    .line 369
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "**** NO PENDING STARTS! "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " startReq="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v3, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " delayedStop="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v3, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_100

    .line 373
    :cond_eb
    :try_start_eb
    iget-object v6, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v7, v3, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ServiceRecord$StartItem;

    iget-object v8, v4, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v7, p0

    move-object v9, v3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;
    :try_end_fe
    .catch Landroid/os/TransactionTooLargeException; {:try_start_eb .. :try_end_fe} :catch_ff

    .line 377
    goto :goto_100

    .line 375
    :catch_ff
    move-exception v4

    .line 379
    .end local v3  # "r":Lcom/android/server/am/ServiceRecord;
    :goto_100
    goto/16 :goto_40

    .line 380
    :cond_102
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_145

    .line 381
    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 382
    .local v3, "next":Lcom/android/server/am/ServiceRecord;
    iget-wide v6, v3, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    cmp-long v4, v6, v1

    if-lez v4, :cond_11b

    iget-wide v6, v3, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    goto :goto_11c

    :cond_11b
    move-wide v6, v1

    .line 383
    .local v6, "when":J
    :goto_11c
    invoke-static {}, Lcom/android/server/am/ActiveServices;->access$300()Z

    move-result v4

    if-eqz v4, :cond_13e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Top bg start is "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", can delay others up to "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_13e
    invoke-virtual {p0, v0}, Lcom/android/server/am/ActiveServices$ServiceMap;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 386
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p0, v0, v6, v7}, Lcom/android/server/am/ActiveServices$ServiceMap;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 388
    .end local v0  # "msg":Landroid/os/Message;
    .end local v3  # "next":Lcom/android/server/am/ServiceRecord;
    .end local v6  # "when":J
    :cond_145
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v3, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    iget v3, v3, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-ge v0, v3, :cond_15a

    .line 389
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v3, p0, Lcom/android/server/am/ActiveServices$ServiceMap;->mUserId:I

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->backgroundServicesFinishedLocked(I)V

    .line 391
    :cond_15a
    return-void
.end method
