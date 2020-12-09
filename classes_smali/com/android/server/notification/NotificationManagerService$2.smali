.class Lcom/android/server/notification/NotificationManagerService$2;
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

    .line 1150
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_23

    .line 1155
    invoke-static {p1}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    .line 1156
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p2, p2, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p2}, Lcom/android/server/notification/ZenModeHelper;->updateDefaultZenRules()V

    .line 1157
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$2;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p2}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object p2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/android/server/notification/PreferencesHelper;->onLocaleChanged(Landroid/content/Context;I)V

    .line 1159
    :cond_23
    return-void
.end method
