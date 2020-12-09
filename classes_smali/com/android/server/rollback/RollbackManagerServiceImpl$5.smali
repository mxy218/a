.class Lcom/android/server/rollback/RollbackManagerServiceImpl$5;
.super Landroid/content/BroadcastReceiver;
.source "RollbackManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/rollback/RollbackManagerServiceImpl;->registerTimeChangeReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .registers 2

    .line 361
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 364
    iget-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$800(Lcom/android/server/rollback/RollbackManagerServiceImpl;)J

    move-result-wide p1

    .line 365
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$900()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$802(Lcom/android/server/rollback/RollbackManagerServiceImpl;J)J

    .line 366
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$800(Lcom/android/server/rollback/RollbackManagerServiceImpl;)J

    move-result-wide v0

    sub-long/2addr v0, p1

    .line 368
    iget-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$300(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 369
    :try_start_1d
    iget-object p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$1000(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 371
    iget-object p2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {p2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$1100(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 372
    :goto_2c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 373
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/rollback/RollbackData;

    .line 374
    iget-object v3, v2, Lcom/android/server/rollback/RollbackData;->timestamp:Ljava/time/Instant;

    invoke-virtual {v3, v0, v1}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v3

    iput-object v3, v2, Lcom/android/server/rollback/RollbackData;->timestamp:Ljava/time/Instant;

    .line 375
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v3, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$1200(Lcom/android/server/rollback/RollbackManagerServiceImpl;Lcom/android/server/rollback/RollbackData;)V

    .line 376
    goto :goto_2c

    .line 377
    :cond_46
    monitor-exit p1

    .line 378
    return-void

    .line 377
    :catchall_48
    move-exception p2

    monitor-exit p1
    :try_end_4a
    .catchall {:try_start_1d .. :try_end_4a} :catchall_48

    throw p2
.end method
