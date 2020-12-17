.class Lcom/android/server/notification/NotificationFirewallImpl$4;
.super Landroid/content/BroadcastReceiver;
.source "NotificationFirewallImpl.java"


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

    .line 115
    iput-object p1, p0, Lcom/android/server/notification/NotificationFirewallImpl$4;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 118
    invoke-static {}, Lcom/android/server/notification/NotificationFirewallImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end welcome "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/NotificationFirewallImpl$4;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {v2}, Lcom/android/server/notification/NotificationFirewallImpl;->access$400(Lcom/android/server/notification/NotificationFirewallImpl;)Lmeizu/notification/INotificationFilterService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl$4;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {v0}, Lcom/android/server/notification/NotificationFirewallImpl;->access$400(Lcom/android/server/notification/NotificationFirewallImpl;)Lmeizu/notification/INotificationFilterService;

    move-result-object v0

    if-nez v0, :cond_2b

    .line 120
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl$4;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {v0}, Lcom/android/server/notification/NotificationFirewallImpl;->access$200(Lcom/android/server/notification/NotificationFirewallImpl;)V

    .line 122
    :cond_2b
    return-void
.end method
