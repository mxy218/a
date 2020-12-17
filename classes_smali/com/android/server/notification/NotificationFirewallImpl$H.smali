.class final Lcom/android/server/notification/NotificationFirewallImpl$H;
.super Landroid/os/Handler;
.source "NotificationFirewallImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationFirewallImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationFirewallImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationFirewallImpl;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"  # Landroid/os/Looper;

    .line 148
    iput-object p1, p0, Lcom/android/server/notification/NotificationFirewallImpl$H;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    .line 149
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 150
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"  # Landroid/os/Message;

    .line 153
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    goto/16 :goto_bd

    .line 155
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 156
    .local v0, "sbn":Landroid/service/notification/StatusBarNotification;
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    move v2, v1

    goto :goto_13

    :cond_12
    move v2, v3

    .line 157
    .local v2, "isSystemNotification":Z
    :goto_13
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_18

    goto :goto_19

    :cond_18
    move v1, v3

    .line 159
    .local v1, "isSystemApp":Z
    :goto_19
    :try_start_19
    invoke-static {}, Lcom/android/server/notification/NotificationFirewallImpl;->access$500()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 160
    invoke-static {}, Lcom/android/server/notification/NotificationFirewallImpl;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "interceptNotification A begin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_29
    iget-object v3, p0, Lcom/android/server/notification/NotificationFirewallImpl$H;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {v3}, Lcom/android/server/notification/NotificationFirewallImpl;->access$400(Lcom/android/server/notification/NotificationFirewallImpl;)Lmeizu/notification/INotificationFilterService;

    move-result-object v3

    if-eqz v3, :cond_65

    .line 163
    iget-object v3, p0, Lcom/android/server/notification/NotificationFirewallImpl$H;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {v3}, Lcom/android/server/notification/NotificationFirewallImpl;->access$600(Lcom/android/server/notification/NotificationFirewallImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    const-wide/16 v4, 0x7d0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 164
    iget-object v3, p0, Lcom/android/server/notification/NotificationFirewallImpl$H;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    iget-object v4, p0, Lcom/android/server/notification/NotificationFirewallImpl$H;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {v4}, Lcom/android/server/notification/NotificationFirewallImpl;->access$400(Lcom/android/server/notification/NotificationFirewallImpl;)Lmeizu/notification/INotificationFilterService;

    move-result-object v4

    new-instance v5, Lcom/android/server/notification/NotificationFirewallImpl$StatusBarNotificationHolder;

    invoke-direct {v5, v0}, Lcom/android/server/notification/NotificationFirewallImpl$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    invoke-interface {v4, v5, v2, v1}, Lmeizu/notification/INotificationFilterService;->interceptNotification(Landroid/service/notification/IStatusBarNotificationHolder;ZZ)Lmeizu/notification/FilterResult;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/notification/NotificationFirewallImpl;->access$702(Lcom/android/server/notification/NotificationFirewallImpl;Lmeizu/notification/FilterResult;)Lmeizu/notification/FilterResult;

    .line 165
    iget-object v3, p0, Lcom/android/server/notification/NotificationFirewallImpl$H;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/notification/NotificationFirewallImpl;->access$802(Lcom/android/server/notification/NotificationFirewallImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    iget-object v3, p0, Lcom/android/server/notification/NotificationFirewallImpl$H;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    iget-object v3, v3, Lcom/android/server/notification/NotificationFirewallImpl;->mCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 169
    :cond_65
    invoke-static {}, Lcom/android/server/notification/NotificationFirewallImpl;->access$500()Z

    move-result v3

    if-eqz v3, :cond_75

    .line 170
    invoke-static {}, Lcom/android/server/notification/NotificationFirewallImpl;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "interceptNotification A end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_75} :catch_9c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_75} :catch_84
    .catchall {:try_start_19 .. :try_end_75} :catchall_82

    .line 177
    :cond_75
    iget-object v3, p0, Lcom/android/server/notification/NotificationFirewallImpl$H;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {v3}, Lcom/android/server/notification/NotificationFirewallImpl;->access$600(Lcom/android/server/notification/NotificationFirewallImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 178
    goto :goto_b3

    .line 177
    :catchall_82
    move-exception v3

    goto :goto_be

    .line 174
    :catch_84
    move-exception v3

    .line 175
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_85
    invoke-static {}, Lcom/android/server/notification/NotificationFirewallImpl;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "handleMessage RemoteException="

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8e
    .catchall {:try_start_85 .. :try_end_8e} :catchall_82

    .line 177
    nop

    .end local v3  # "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/notification/NotificationFirewallImpl$H;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {v3}, Lcom/android/server/notification/NotificationFirewallImpl;->access$600(Lcom/android/server/notification/NotificationFirewallImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 178
    goto :goto_b3

    .line 172
    :catch_9c
    move-exception v3

    .line 173
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_9d
    invoke-static {}, Lcom/android/server/notification/NotificationFirewallImpl;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "handleMessage InterruptedException="

    invoke-static {v4, v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a6
    .catchall {:try_start_9d .. :try_end_a6} :catchall_82

    .line 177
    nop

    .end local v3  # "e":Ljava/lang/InterruptedException;
    iget-object v3, p0, Lcom/android/server/notification/NotificationFirewallImpl$H;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {v3}, Lcom/android/server/notification/NotificationFirewallImpl;->access$600(Lcom/android/server/notification/NotificationFirewallImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v3

    if-eqz v3, :cond_bc

    .line 178
    :goto_b3
    iget-object v3, p0, Lcom/android/server/notification/NotificationFirewallImpl$H;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {v3}, Lcom/android/server/notification/NotificationFirewallImpl;->access$600(Lcom/android/server/notification/NotificationFirewallImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 182
    .end local v0  # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v1  # "isSystemApp":Z
    .end local v2  # "isSystemNotification":Z
    :cond_bc
    nop

    .line 186
    :goto_bd
    return-void

    .line 177
    .restart local v0  # "sbn":Landroid/service/notification/StatusBarNotification;
    .restart local v1  # "isSystemApp":Z
    .restart local v2  # "isSystemNotification":Z
    :goto_be
    iget-object v4, p0, Lcom/android/server/notification/NotificationFirewallImpl$H;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {v4}, Lcom/android/server/notification/NotificationFirewallImpl;->access$600(Lcom/android/server/notification/NotificationFirewallImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v4

    if-eqz v4, :cond_d3

    .line 178
    iget-object v4, p0, Lcom/android/server/notification/NotificationFirewallImpl$H;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {v4}, Lcom/android/server/notification/NotificationFirewallImpl;->access$600(Lcom/android/server/notification/NotificationFirewallImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_d3
    throw v3
.end method
