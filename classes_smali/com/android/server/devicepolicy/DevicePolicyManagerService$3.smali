.class Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "DevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .registers 2

    .line 612
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 616
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 617
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p2, p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object p2

    const-string v0, "DevicePolicyManager"

    const v1, 0x28700e57

    invoke-virtual {p2, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 619
    const-string p2, "com.android.server.action.REMOTE_BUGREPORT_SHARING_ACCEPTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_22

    .line 620
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$300(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    goto :goto_2f

    .line 621
    :cond_22
    const-string p2, "com.android.server.action.REMOTE_BUGREPORT_SHARING_DECLINED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 622
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$400(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V

    .line 624
    :cond_2f
    :goto_2f
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$3;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$500(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 625
    return-void
.end method
