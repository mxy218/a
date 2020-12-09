.class Lcom/android/server/notification/NotificationManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


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

    .line 1162
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 1165
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    .line 1167
    :try_start_c
    const-string/jumbo p1, "setting_name"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1168
    const-string/jumbo v0, "new_value"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1169
    const-string/jumbo v1, "restored_from_sdk_int"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 1171
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    .line 1172
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$3;->getSendingUserId()I

    move-result v2

    .line 1171
    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onSettingRestored(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1173
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1500(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v1

    .line 1174
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$3;->getSendingUserId()I

    move-result v2

    .line 1173
    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/android/server/notification/ConditionProviders;->onSettingRestored(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3c} :catch_3d

    .line 1177
    goto :goto_45

    .line 1175
    :catch_3d
    move-exception p1

    .line 1176
    const-string p2, "NotificationService"

    const-string v0, "Cannot restore managed services from settings"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1179
    :cond_45
    :goto_45
    return-void
.end method
