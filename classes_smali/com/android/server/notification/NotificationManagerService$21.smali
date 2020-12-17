.class Lcom/android/server/notification/NotificationManagerService$21;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/notification/NotificationManagerService;

    .line 9462
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$21;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 9466
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 9467
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.android.server.notification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 9469
    const-string v1, "LedTest"

    const-string v2, "breath light broadcast received!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9475
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$21;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/notification/NotificationManagerService;->access$10902(Lcom/android/server/notification/NotificationManagerService;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 9477
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$21;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v2, v2, Lcom/android/server/notification/NotificationManagerService;->mScreenOn:Z

    if-eqz v2, :cond_26

    .line 9478
    const-string/jumbo v2, "screen on ,so do not turnOnBreathLight"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9479
    return-void

    .line 9483
    :cond_26
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$21;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$11000(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_41

    .line 9484
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$21;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$11000(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 9486
    const-string/jumbo v2, "mCpuWakeLock.acquire()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9489
    :cond_41
    const/4 v2, 0x0

    const-string/jumbo v3, "ledDoubleFlash"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 9490
    .local v2, "ledDoubleFlash":Z
    const-string v3, " turnOnBreathLight >>>"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9491
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$21;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, v2}, Lcom/android/server/notification/NotificationManagerService;->access$11100(Lcom/android/server/notification/NotificationManagerService;Z)V

    .line 9494
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$21;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$11000(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_6e

    .line 9495
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$21;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$11000(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 9497
    const-string/jumbo v3, "mCpuWakeLock.release()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9500
    .end local v2  # "ledDoubleFlash":Z
    :cond_6e
    return-void
.end method
