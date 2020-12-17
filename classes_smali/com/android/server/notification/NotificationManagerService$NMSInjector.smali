.class Lcom/android/server/notification/NotificationManagerService$NMSInjector;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NMSInjector"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 9015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static NotiWakeupScreen(Lcom/android/server/notification/NotificationRecord;Landroid/content/Context;ZZLcom/android/server/notification/NotificationManagerService;)V
    .registers 8
    .param p0, "r"  # Lcom/android/server/notification/NotificationRecord;
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "isScreenOn"  # Z
    .param p3, "isInCall"  # Z
    .param p4, "nms"  # Lcom/android/server/notification/NotificationManagerService;

    .line 9017
    invoke-static {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NMSInjector;->shouldNotificationWakeupScreen(Lcom/android/server/notification/NotificationRecord;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 9019
    const-string v0, "NotiWakeupScreen"

    if-nez p2, :cond_48

    .line 9020
    if-eqz p3, :cond_26

    .line 9022
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "internalApp request to wakeup screen! But in call, ignore... noti.pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v2, v2, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d

    .line 9030
    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "internalApp request to wakeup screen! -- noti.pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    iget-object v2, v2, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9031
    const-string v1, "enableProximityLockLocked()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9032
    invoke-static {p4}, Lcom/android/server/notification/NotificationManagerService;->access$10400(Lcom/android/server/notification/NotificationManagerService;)V

    goto :goto_4d

    .line 9038
    :cond_48
    const-string v1, "Screen already on..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9043
    :cond_4d
    :goto_4d
    return-void
.end method

.method static shouldNotificationWakeupScreen(Lcom/android/server/notification/NotificationRecord;Landroid/content/Context;)Z
    .registers 10
    .param p0, "r"  # Lcom/android/server/notification/NotificationRecord;
    .param p1, "context"  # Landroid/content/Context;

    .line 9046
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string/jumbo v2, "lock_screen_show_notifications"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    .line 9048
    .local v0, "isLockScreenShowNotification":Z
    :goto_12
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "notification_wakeup_screen"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_21

    move v3, v1

    goto :goto_22

    :cond_21
    move v3, v2

    .line 9049
    .local v3, "isNotificationWakeupScreen":Z
    :goto_22
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "zen_mode"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_31

    move v4, v1

    goto :goto_32

    :cond_31
    move v4, v2

    .line 9051
    .local v4, "isZenModeOff":Z
    :goto_32
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isLockScreenShowNotification = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NotiWakeupScreen"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9052
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isNotificationWakeupScreen = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9053
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isZenModeOff = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9054
    if-eqz v0, :cond_7a

    if-eqz v3, :cond_7a

    if-eqz v4, :cond_7a

    .line 9055
    return v1

    .line 9057
    :cond_7a
    return v2
.end method
