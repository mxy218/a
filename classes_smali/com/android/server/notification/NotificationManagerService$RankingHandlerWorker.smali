.class final Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;
.super Landroid/os/Handler;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/notification/RankingHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RankingHandlerWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V
    .registers 3

    .line 6658
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 6659
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6660
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 6664
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    const/16 p1, 0x3e9

    if-eq v0, p1, :cond_b

    goto :goto_17

    .line 6669
    :cond_b
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->handleRankingSort()V

    goto :goto_17

    .line 6666
    :cond_11
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$9000(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Message;)V

    .line 6667
    nop

    .line 6672
    :goto_17
    return-void
.end method

.method public requestReconsideration(Lcom/android/server/notification/RankingReconsideration;)V
    .registers 5

    .line 6682
    const/16 v0, 0x3e8

    invoke-static {p0, v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 6684
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1}, Lcom/android/server/notification/RankingReconsideration;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    .line 6685
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6686
    return-void
.end method

.method public requestSort()V
    .registers 3

    .line 6675
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->removeMessages(I)V

    .line 6676
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 6677
    iput v0, v1, Landroid/os/Message;->what:I

    .line 6678
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$RankingHandlerWorker;->sendMessage(Landroid/os/Message;)Z

    .line 6679
    return-void
.end method
