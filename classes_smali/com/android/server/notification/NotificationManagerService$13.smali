.class Lcom/android/server/notification/NotificationManagerService$13;
.super Ljava/lang/Thread;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->playInCallNotification()V
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

    .line 6265
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 6268
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6270
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v3

    .line 6271
    if-eqz v3, :cond_4c

    .line 6272
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$8000(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Binder;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 6273
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$8000(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Binder;

    move-result-object v2

    invoke-interface {v3, v2}, Landroid/media/IRingtonePlayer;->stop(Landroid/os/IBinder;)V

    .line 6275
    :cond_1f
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    invoke-static {v2, v4}, Lcom/android/server/notification/NotificationManagerService;->access$8002(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Binder;)Landroid/os/Binder;

    .line 6276
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$8000(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Binder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$8100(Lcom/android/server/notification/NotificationManagerService;)Landroid/net/Uri;

    move-result-object v5

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 6277
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$8200(Lcom/android/server/notification/NotificationManagerService;)Landroid/media/AudioAttributes;

    move-result-object v6

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$13;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 6278
    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->access$8300(Lcom/android/server/notification/NotificationManagerService;)F

    move-result v7

    const/4 v8, 0x0

    .line 6276
    invoke-interface/range {v3 .. v8}, Landroid/media/IRingtonePlayer;->play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZ)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_45} :catch_4b
    .catchall {:try_start_4 .. :try_end_45} :catchall_46

    goto :goto_4c

    .line 6282
    :catchall_46
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 6280
    :catch_4b
    move-exception v2

    .line 6282
    :cond_4c
    :goto_4c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6283
    nop

    .line 6284
    return-void
.end method
