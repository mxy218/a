.class Lcom/android/server/DeviceIdleController$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .registers 2

    .line 580
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 582
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5bb23923

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2f

    const v1, -0x45e5283a

    if-eq v0, v1, :cond_25

    const v1, 0x1f50b9c2

    if-eq v0, v1, :cond_1b

    :cond_1a
    goto :goto_39

    :cond_1b
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    move p1, v2

    goto :goto_3a

    :cond_25
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    move p1, v3

    goto :goto_3a

    :cond_2f
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    move p1, v4

    goto :goto_3a

    :goto_39
    const/4 p1, -0x1

    :goto_3a
    if-eqz p1, :cond_80

    if-eq p1, v4, :cond_5b

    if-eq p1, v2, :cond_41

    goto :goto_86

    .line 594
    :cond_41
    const-string p1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_86

    .line 595
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 597
    if-eqz p1, :cond_86

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_86

    .line 598
    iget-object p2, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p2, p1}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    goto :goto_86

    .line 587
    :cond_5b
    const-string/jumbo p1, "present"

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 588
    const-string/jumbo v0, "plugged"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_6d

    move p2, v4

    goto :goto_6e

    :cond_6d
    move p2, v3

    .line 589
    :goto_6e
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    .line 590
    :try_start_71
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    if-eqz p1, :cond_78

    if-eqz p2, :cond_78

    move v3, v4

    :cond_78
    invoke-virtual {v1, v3}, Lcom/android/server/DeviceIdleController;->updateChargingLocked(Z)V

    .line 591
    monitor-exit v0

    .line 592
    goto :goto_86

    .line 591
    :catchall_7d
    move-exception p1

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_71 .. :try_end_7f} :catchall_7d

    throw p1

    .line 584
    :cond_80
    iget-object p1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1, p2}, Lcom/android/server/DeviceIdleController;->updateConnectivityState(Landroid/content/Intent;)V

    .line 585
    nop

    .line 603
    :cond_86
    :goto_86
    return-void
.end method
