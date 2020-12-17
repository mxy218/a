.class Lcom/android/server/notification/NotificationFirewallImpl$3;
.super Ljava/lang/Object;
.source "NotificationFirewallImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationFirewallImpl;->initialize(Landroid/content/Context;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationFirewallImpl;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationFirewallImpl;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/notification/NotificationFirewallImpl;

    .line 91
    iput-object p1, p0, Lcom/android/server/notification/NotificationFirewallImpl$3;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"  # Landroid/content/ComponentName;
    .param p2, "service"  # Landroid/os/IBinder;

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl$3;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {v0}, Lcom/android/server/notification/NotificationFirewallImpl;->access$300(Lcom/android/server/notification/NotificationFirewallImpl;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 105
    goto :goto_f

    .line 103
    :catch_b
    move-exception v0

    .line 104
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 107
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_f
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl$3;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {p2}, Lmeizu/notification/INotificationFilterService$Stub;->asInterface(Landroid/os/IBinder;)Lmeizu/notification/INotificationFilterService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationFirewallImpl;->access$402(Lcom/android/server/notification/NotificationFirewallImpl;Lmeizu/notification/INotificationFilterService;)Lmeizu/notification/INotificationFilterService;

    .line 108
    invoke-static {}, Lcom/android/server/notification/NotificationFirewallImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bind success! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl$3;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {v2}, Lcom/android/server/notification/NotificationFirewallImpl;->access$400(Lcom/android/server/notification/NotificationFirewallImpl;)Lmeizu/notification/INotificationFilterService;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"  # Landroid/content/ComponentName;

    .line 94
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl$3;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {v0}, Lcom/android/server/notification/NotificationFirewallImpl;->access$400(Lcom/android/server/notification/NotificationFirewallImpl;)Lmeizu/notification/INotificationFilterService;

    move-result-object v0

    invoke-interface {v0}, Lmeizu/notification/INotificationFilterService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationFirewallImpl$3;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {v1}, Lcom/android/server/notification/NotificationFirewallImpl;->access$300(Lcom/android/server/notification/NotificationFirewallImpl;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 95
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl$3;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationFirewallImpl;->access$402(Lcom/android/server/notification/NotificationFirewallImpl;Lmeizu/notification/INotificationFilterService;)Lmeizu/notification/INotificationFilterService;

    .line 96
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl$3;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {v0}, Lcom/android/server/notification/NotificationFirewallImpl;->access$200(Lcom/android/server/notification/NotificationFirewallImpl;)V

    .line 97
    return-void
.end method
