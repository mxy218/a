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
    .param p1, "this$0"  # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "looper"  # Landroid/os/Looper;

    .line 6787
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 6788
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6789
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"  # Landroid/os/Message;

    .line 6794
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_50

    :pswitch_5  #0x3
    goto :goto_4f

    .line 6812
    :pswitch_6  #0x8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 6813
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget v3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, [I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->access$9300(Lcom/android/server/notification/NotificationManagerService;ZI[Ljava/lang/String;[I)V

    .line 6815
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_4f

    .line 6800
    .end local v0  # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_25  #0x7
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$8900(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V

    .line 6801
    goto :goto_4f

    .line 6809
    :pswitch_2f  #0x6
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$9200(Lcom/android/server/notification/NotificationManagerService;I)V

    .line 6810
    goto :goto_4f

    .line 6806
    :pswitch_37  #0x5
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$9100(Lcom/android/server/notification/NotificationManagerService;I)V

    .line 6807
    goto :goto_4f

    .line 6803
    :pswitch_3f  #0x4
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$9000(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6804
    goto :goto_4f

    .line 6797
    :pswitch_45  #0x2
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/notification/NotificationManagerService$ToastRecord;

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$8800(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationManagerService$ToastRecord;)V

    .line 6798
    nop

    .line 6818
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
    .param p1, "cancelRunnable"  # Lcom/android/server/notification/NotificationManagerService$CancelNotificationRunnable;

    .line 6828
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 6829
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6831
    :cond_d
    return-void
.end method

.method protected scheduleOnPackageChanged(ZI[Ljava/lang/String;[I)V
    .registers 7
    .param p1, "removingPackage"  # Z
    .param p2, "changeUserId"  # I
    .param p3, "pkgList"  # [Ljava/lang/String;
    .param p4, "uidList"  # [I

    .line 6835
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 6836
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 6837
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 6838
    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 6839
    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 6840
    const/16 v1, 0x8

    invoke-static {p0, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6841
    return-void
.end method

.method protected scheduleSendRankingUpdate()V
    .registers 3

    .line 6821
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_e

    .line 6822
    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 6823
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 6825
    .end local v0  # "m":Landroid/os/Message;
    :cond_e
    return-void
.end method
