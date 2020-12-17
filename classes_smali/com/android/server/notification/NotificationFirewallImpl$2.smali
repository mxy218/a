.class Lcom/android/server/notification/NotificationFirewallImpl$2;
.super Ljava/lang/Object;
.source "NotificationFirewallImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationFirewallImpl;
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

    .line 63
    iput-object p1, p0, Lcom/android/server/notification/NotificationFirewallImpl$2;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 66
    invoke-static {}, Lcom/android/server/notification/NotificationFirewallImpl;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "binderDied: INotificationFilterService died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl$2;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {v0}, Lcom/android/server/notification/NotificationFirewallImpl;->access$200(Lcom/android/server/notification/NotificationFirewallImpl;)V

    .line 68
    return-void
.end method
