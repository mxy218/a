.class public Lcom/android/server/notification/CloudNotificationHelper;
.super Ljava/lang/Object;
.source "CloudNotificationHelper.java"


# static fields
.field public static CLOUD_PACKAGE_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    const-string v0, "com.meizu.cloud"

    sput-object v0, Lcom/android/server/notification/CloudNotificationHelper;->CLOUD_PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static callReplyIntent(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;I)V
    .registers 16
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "sbn"  # Landroid/service/notification/StatusBarNotification;
    .param p2, "state"  # I

    .line 53
    if-eqz p1, :cond_56

    .line 54
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 55
    .local v0, "notification":Landroid/app/Notification;
    if-eqz v0, :cond_56

    .line 56
    iget-object v1, v0, Landroid/app/Notification;->replyIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_56

    .line 58
    :try_start_c
    iget-object v1, v0, Landroid/app/Notification;->replyIntent:Landroid/app/PendingIntent;

    .line 59
    .local v1, "replyIntent":Landroid/app/PendingIntent;
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    .line 63
    .local v2, "id":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_16
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_c .. :try_end_16} :catch_55
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_50

    .line 66
    .local v3, "token":J
    :try_start_16
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v5
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_4b

    .line 68
    .local v5, "intent":Landroid/content/Intent;
    :try_start_1a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    nop

    .line 71
    if-nez v5, :cond_26

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    goto :goto_27

    :cond_26
    move-object v6, v5

    :goto_27
    move-object v5, v6

    .line 72
    const-string v6, "flyme:notification_state"

    invoke-virtual {v5, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    const-string v6, "flyme:notification_id"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    const-string v6, "flyme:notification_pkg"

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getOrigPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    nop

    .line 76
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v8

    const/high16 v10, 0x10000000

    const/high16 v11, 0x10000000

    const/4 v12, 0x0

    .line 75
    move-object v7, p0

    move-object v9, v5

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V

    .end local v1  # "replyIntent":Landroid/app/PendingIntent;
    .end local v2  # "id":I
    .end local v3  # "token":J
    .end local v5  # "intent":Landroid/content/Intent;
    goto :goto_56

    .line 68
    .restart local v1  # "replyIntent":Landroid/app/PendingIntent;
    .restart local v2  # "id":I
    .restart local v3  # "token":J
    :catchall_4b
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0  # "notification":Landroid/app/Notification;
    .end local p0  # "context":Landroid/content/Context;
    .end local p1  # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local p2  # "state":I
    throw v5
    :try_end_50
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1a .. :try_end_50} :catch_55
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_50} :catch_50

    .line 80
    .end local v1  # "replyIntent":Landroid/app/PendingIntent;
    .end local v2  # "id":I
    .end local v3  # "token":J
    .restart local v0  # "notification":Landroid/app/Notification;
    .restart local p0  # "context":Landroid/content/Context;
    .restart local p1  # "sbn":Landroid/service/notification/StatusBarNotification;
    .restart local p2  # "state":I
    :catch_50
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_56

    .line 79
    .end local v1  # "e":Ljava/lang/Exception;
    :catch_55
    move-exception v1

    .line 86
    .end local v0  # "notification":Landroid/app/Notification;
    :cond_56
    :goto_56
    return-void
.end method

.method public static getOrigPackageName(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "notification"  # Landroid/app/Notification;
    .param p1, "pkg"  # Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/android/server/notification/CloudNotificationHelper;->CLOUD_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_1d

    .line 25
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.originalPackageName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "originalName":Ljava/lang/String;
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1d

    .line 27
    return-object v0

    .line 30
    .end local v0  # "originalName":Ljava/lang/String;
    :cond_1d
    return-object p1
.end method

.method public static getPackageUid(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 5
    .param p0, "context"  # Landroid/content/Context;
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 45
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_4
    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_9

    return v1

    .line 46
    :catchall_9
    move-exception v1

    .line 47
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .end local v1  # "throwable":Ljava/lang/Throwable;
    const/4 v1, 0x0

    return v1
.end method

.method public static putOrigPackageName(Landroid/app/Notification;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "notification"  # Landroid/app/Notification;
    .param p1, "opPkg"  # Ljava/lang/String;
    .param p2, "pkg"  # Ljava/lang/String;

    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/android/server/notification/CloudNotificationHelper;->CLOUD_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 35
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 36
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_17

    .line 37
    const-string v1, "android.originalPackageName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .end local v0  # "extras":Landroid/os/Bundle;
    :cond_17
    return-void
.end method
