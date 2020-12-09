.class Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppStandbyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppStandbyController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/AppStandbyController;


# direct methods
.method private constructor <init>(Lcom/android/server/usage/AppStandbyController;)V
    .registers 2

    .line 1787
    iput-object p1, p0, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/usage/AppStandbyController;Lcom/android/server/usage/AppStandbyController$1;)V
    .registers 3

    .line 1787
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 1790
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, -0x3465cce

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p2, v0, :cond_2f

    const v0, 0x33e5d967

    if-eq p2, v0, :cond_25

    const v0, 0x388694fe

    if-eq p2, v0, :cond_1b

    :cond_1a
    goto :goto_39

    :cond_1b
    const-string p2, "android.os.action.CHARGING"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    move p1, v1

    goto :goto_3a

    :cond_25
    const-string p2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    move p1, v2

    goto :goto_3a

    :cond_2f
    const-string p2, "android.os.action.DISCHARGING"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    move p1, v3

    goto :goto_3a

    :goto_39
    const/4 p1, -0x1

    :goto_3a
    if-eqz p1, :cond_4d

    if-eq p1, v3, :cond_47

    if-eq p1, v2, :cond_41

    goto :goto_53

    .line 1798
    :cond_41
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {p1}, Lcom/android/server/usage/AppStandbyController;->onDeviceIdleModeChanged()V

    goto :goto_53

    .line 1795
    :cond_47
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {p1, v1}, Lcom/android/server/usage/AppStandbyController;->setChargingState(Z)V

    .line 1796
    goto :goto_53

    .line 1792
    :cond_4d
    iget-object p1, p0, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {p1, v3}, Lcom/android/server/usage/AppStandbyController;->setChargingState(Z)V

    .line 1793
    nop

    .line 1801
    :goto_53
    return-void
.end method
