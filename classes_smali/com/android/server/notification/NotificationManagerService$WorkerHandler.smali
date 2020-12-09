.class public Lcom/android/server/notification/NotificationManagerService$WorkerHandler;
.super Landroid/os/Handler;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "WorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V
    .registers 3

    .line 6599
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 6600
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6601
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 6606
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_50

    :pswitch_5  #0x3
    goto :goto_4f

    .line 6624
    :pswitch_6  #0x8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 6625
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    iget-object v4, p1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, [I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/notification/NotificationManagerService;->access$8900(Lcom/android/server/notification/NotificationManagerService;ZI[Ljava/lang/String;[I)V

    .line 6627
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_4f

    .line 6612
    :pswitch_25  #0x7
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$8500(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V

    .line 6613
    goto :goto_4f

    .line 6621
    :pswitch_2f  #0x6
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$8800(Lcom/android/server/notification/NotificationManagerService;I)V

    .line 6622
    goto :goto_4f

    .line 6618
    :pswitch_37  #0x5
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$8700(Lcom/android/server/notification/NotificationManagerService;I)V

    .line 6619
    goto :goto_4f

    .line 6615
    :pswitch_3f  #0x4
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->access$8600(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6616
    goto :goto_4f

    .line 6609
    :pswitch_45  #0x2
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$8400(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V

    .line 6610
    nop

    .line 6630
    :goto_4f
    return-void

    :pswitch_data_50
    .packed-switch 0x2
        :pswitch_45  #00000002
        :pswitch_5  #00000003
        :pswitch_3f  #00000004
        :pswitch_37  #00000005
        :pswitch_2f  #00000006
        :pswitch_25  #00000007
        :pswitch_6  #00000008
    .end packed-switch
.end method

.method protected scheduleCancelNotification(Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;)V
    .registers 3

    .line 6640
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 6641
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6643
    :cond_d
    return-void
.end method

.method protected scheduleOnPackageChanged(ZI[Ljava/lang/String;[I)V
    .registers 6

    .line 6647
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 6648
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6649
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 6650
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 6651
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 6652
    const/16 p1, 0x8

    invoke-static {p0, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6653
    return-void
.end method

.method protected scheduleSendRankingUpdate()V
    .registers 3

    .line 6633
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 6634
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 6635
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6637
    :cond_e
    return-void
.end method
