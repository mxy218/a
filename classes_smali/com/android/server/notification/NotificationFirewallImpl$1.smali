.class Lcom/android/server/notification/NotificationFirewallImpl$1;
.super Landroid/database/ContentObserver;
.source "NotificationFirewallImpl.java"


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
.method constructor <init>(Lcom/android/server/notification/NotificationFirewallImpl;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/notification/NotificationFirewallImpl;
    .param p2, "x0"  # Landroid/os/Handler;

    .line 55
    iput-object p1, p0, Lcom/android/server/notification/NotificationFirewallImpl$1;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"  # Z

    .line 58
    iget-object v0, p0, Lcom/android/server/notification/NotificationFirewallImpl$1;->this$0:Lcom/android/server/notification/NotificationFirewallImpl;

    invoke-static {v0}, Lcom/android/server/notification/NotificationFirewallImpl;->access$000(Lcom/android/server/notification/NotificationFirewallImpl;)V

    .line 59
    return-void
.end method
