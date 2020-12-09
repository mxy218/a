.class final Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final NOTIFICATION_BADGING_URI:Landroid/net/Uri;

.field private final NOTIFICATION_BUBBLES_URI_GLOBAL:Landroid/net/Uri;

.field private final NOTIFICATION_BUBBLES_URI_SECURE:Landroid/net/Uri;

.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field private final NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .registers 3

    .line 1413
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1414
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1402
    nop

    .line 1403
    const-string/jumbo p1, "notification_badging"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    .line 1404
    nop

    .line 1405
    const-string/jumbo p1, "notification_bubbles"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BUBBLES_URI_GLOBAL:Landroid/net/Uri;

    .line 1406
    nop

    .line 1407
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BUBBLES_URI_SECURE:Landroid/net/Uri;

    .line 1408
    nop

    .line 1409
    const-string/jumbo p1, "notification_light_pulse"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 1410
    nop

    .line 1411
    const-string p1, "max_notification_enqueue_rate"

    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

    .line 1415
    return-void
.end method

.method private syncBubbleSettings(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 6

    .line 1467
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BUBBLES_URI_SECURE:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 1469
    const/4 v0, 0x1

    const-string/jumbo v1, "notification_bubbles"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1471
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1474
    if-ne v0, v2, :cond_15

    .line 1475
    return-void

    .line 1478
    :cond_15
    if-eqz p2, :cond_1b

    .line 1480
    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1e

    .line 1485
    :cond_1b
    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1489
    :goto_1e
    return-void
.end method


# virtual methods
.method observe()V
    .registers 5

    .line 1418
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1419
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1421
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1423
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1425
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BUBBLES_URI_GLOBAL:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1427
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BUBBLES_URI_SECURE:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1429
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 1430
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 1433
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 1434
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .registers 6

    .line 1437
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1438
    if-eqz p1, :cond_14

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1439
    :cond_14
    const/4 v1, -0x2

    const/4 v2, 0x0

    const-string/jumbo v3, "notification_light_pulse"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_20

    const/4 v2, 0x1

    .line 1442
    :cond_20
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-boolean v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    if-eq v1, v2, :cond_2d

    .line 1443
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-boolean v2, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationPulseEnabled:Z

    .line 1444
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2200(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1447
    :cond_2d
    if-eqz p1, :cond_37

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_RATE_LIMIT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1448
    :cond_37
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1449
    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$2700(Lcom/android/server/notification/NotificationManagerService;)F

    move-result v2

    .line 1448
    const-string v3, "max_notification_enqueue_rate"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->access$2702(Lcom/android/server/notification/NotificationManagerService;F)F

    .line 1451
    :cond_46
    if-eqz p1, :cond_50

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BADGING_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 1452
    :cond_50
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/notification/PreferencesHelper;->updateBadgingEnabled()V

    .line 1457
    :cond_59
    if-eqz p1, :cond_63

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BUBBLES_URI_GLOBAL:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 1458
    :cond_63
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BUBBLES_URI_GLOBAL:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->syncBubbleSettings(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1459
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->access$1300(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/notification/PreferencesHelper;->updateBubblesEnabled()V

    .line 1461
    :cond_71
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BUBBLES_URI_SECURE:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 1462
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_BUBBLES_URI_SECURE:Landroid/net/Uri;

    invoke-direct {p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->syncBubbleSettings(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 1464
    :cond_7e
    return-void
.end method
