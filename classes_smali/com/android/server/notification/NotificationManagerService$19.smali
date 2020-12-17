.class Lcom/android/server/notification/NotificationManagerService$19;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 9443
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$19;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 9446
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$19;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_13

    .line 9447
    const-string v0, "NotiWakeupScreen"

    const-string/jumbo v1, "mShowDisableProximityRunnable.run"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9449
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$19;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$10700(Lcom/android/server/notification/NotificationManagerService;)V

    .line 9451
    :cond_13
    return-void
.end method
