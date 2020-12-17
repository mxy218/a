.class Lcom/android/server/security/TrpVectorManager$DetectTask;
.super Ljava/lang/Object;
.source "TrpVectorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/security/TrpVectorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DetectTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/security/TrpVectorManager;


# direct methods
.method private constructor <init>(Lcom/android/server/security/TrpVectorManager;)V
    .registers 2

    .line 402
    iput-object p1, p0, Lcom/android/server/security/TrpVectorManager$DetectTask;->this$0:Lcom/android/server/security/TrpVectorManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/security/TrpVectorManager;Lcom/android/server/security/TrpVectorManager$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/security/TrpVectorManager;
    .param p2, "x1"  # Lcom/android/server/security/TrpVectorManager$1;

    .line 402
    invoke-direct {p0, p1}, Lcom/android/server/security/TrpVectorManager$DetectTask;-><init>(Lcom/android/server/security/TrpVectorManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 406
    iget-object v0, p0, Lcom/android/server/security/TrpVectorManager$DetectTask;->this$0:Lcom/android/server/security/TrpVectorManager;

    monitor-enter v0

    .line 407
    :try_start_3
    iget-object v1, p0, Lcom/android/server/security/TrpVectorManager$DetectTask;->this$0:Lcom/android/server/security/TrpVectorManager;

    invoke-static {v1}, Lcom/android/server/security/TrpVectorManager;->access$200(Lcom/android/server/security/TrpVectorManager;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    if-eqz v1, :cond_ab

    iget-object v1, p0, Lcom/android/server/security/TrpVectorManager$DetectTask;->this$0:Lcom/android/server/security/TrpVectorManager;

    invoke-static {v1}, Lcom/android/server/security/TrpVectorManager;->access$200(Lcom/android/server/security/TrpVectorManager;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_ab

    iget-object v1, p0, Lcom/android/server/security/TrpVectorManager$DetectTask;->this$0:Lcom/android/server/security/TrpVectorManager;

    invoke-static {v1}, Lcom/android/server/security/TrpVectorManager;->access$300(Lcom/android/server/security/TrpVectorManager;)Lmeizu/security/TrpConfig;

    move-result-object v1

    if-nez v1, :cond_21

    goto/16 :goto_ab

    .line 412
    :cond_21
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    iget-object v2, p0, Lcom/android/server/security/TrpVectorManager$DetectTask;->this$0:Lcom/android/server/security/TrpVectorManager;

    invoke-static {v2}, Lcom/android/server/security/TrpVectorManager;->access$400(Lcom/android/server/security/TrpVectorManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_a9

    .line 413
    iget-object v2, p0, Lcom/android/server/security/TrpVectorManager$DetectTask;->this$0:Lcom/android/server/security/TrpVectorManager;

    invoke-static {v2}, Lcom/android/server/security/TrpVectorManager;->access$400(Lcom/android/server/security/TrpVectorManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 414
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/security/TrpVectorManager$DetectTask;->this$0:Lcom/android/server/security/TrpVectorManager;

    invoke-static {v3}, Lcom/android/server/security/TrpVectorManager;->access$400(Lcom/android/server/security/TrpVectorManager;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/security/TrpVector;

    .line 417
    .local v3, "trpVector":Lcom/android/server/security/TrpVector;
    if-eqz v3, :cond_a5

    invoke-virtual {v3}, Lcom/android/server/security/TrpVector;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a5

    .line 418
    iget-object v4, p0, Lcom/android/server/security/TrpVectorManager$DetectTask;->this$0:Lcom/android/server/security/TrpVectorManager;

    invoke-static {v4}, Lcom/android/server/security/TrpVectorManager;->access$300(Lcom/android/server/security/TrpVectorManager;)Lmeizu/security/TrpConfig;

    move-result-object v4

    invoke-virtual {v4}, Lmeizu/security/TrpConfig;->getTime()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/security/TrpVector;->subTimeThreshold(I)V

    .line 420
    invoke-virtual {v3}, Lcom/android/server/security/TrpVector;->isTimeToDetect()Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 423
    invoke-virtual {v3}, Lcom/android/server/security/TrpVector;->getIncrement()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/security/TrpVectorManager$DetectTask;->this$0:Lcom/android/server/security/TrpVectorManager;

    invoke-static {v5}, Lcom/android/server/security/TrpVectorManager;->access$300(Lcom/android/server/security/TrpVectorManager;)Lmeizu/security/TrpConfig;

    move-result-object v5

    invoke-virtual {v5}, Lmeizu/security/TrpConfig;->getIncrement()I

    move-result v5

    if-lt v4, v5, :cond_8b

    .line 424
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DetectTask: trigger detection of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 426
    iget-object v4, p0, Lcom/android/server/security/TrpVectorManager$DetectTask;->this$0:Lcom/android/server/security/TrpVectorManager;

    const/4 v5, 0x1

    invoke-static {v4, v2, v3, v5}, Lcom/android/server/security/TrpVectorManager;->access$500(Lcom/android/server/security/TrpVectorManager;Ljava/lang/String;Lcom/android/server/security/TrpVector;I)V

    .line 430
    :cond_8b
    invoke-virtual {v3}, Lcom/android/server/security/TrpVector;->resetIncrement()V

    .line 433
    iget-object v4, p0, Lcom/android/server/security/TrpVectorManager$DetectTask;->this$0:Lcom/android/server/security/TrpVectorManager;

    invoke-static {v4}, Lcom/android/server/security/TrpVectorManager;->access$300(Lcom/android/server/security/TrpVectorManager;)Lmeizu/security/TrpConfig;

    move-result-object v4

    invoke-virtual {v4}, Lmeizu/security/TrpConfig;->getTime()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/security/TrpVectorManager$DetectTask;->this$0:Lcom/android/server/security/TrpVectorManager;

    invoke-static {v5}, Lcom/android/server/security/TrpVectorManager;->access$300(Lcom/android/server/security/TrpVectorManager;)Lmeizu/security/TrpConfig;

    move-result-object v5

    invoke-virtual {v5}, Lmeizu/security/TrpConfig;->getTimeStep()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/security/TrpVector;->setNextTimeThreshold(II)V

    .line 412
    .end local v2  # "packageName":Ljava/lang/String;
    .end local v3  # "trpVector":Lcom/android/server/security/TrpVector;
    :cond_a5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_22

    .line 437
    .end local v1  # "i":I
    :cond_a9
    monitor-exit v0

    .line 438
    return-void

    .line 408
    :cond_ab
    :goto_ab
    const-string v1, "DetectTask: empty package queue"

    invoke-static {v1}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 409
    monitor-exit v0

    return-void

    .line 437
    :catchall_b2
    move-exception v1

    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_3 .. :try_end_b4} :catchall_b2

    throw v1
.end method
