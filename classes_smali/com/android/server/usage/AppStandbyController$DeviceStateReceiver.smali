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
    .param p1, "x0"  # Lcom/android/server/usage/AppStandbyController;
    .param p2, "x1"  # Lcom/android/server/usage/AppStandbyController$1;

    .line 1787
    invoke-direct {p0, p1}, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;-><init>(Lcom/android/server/usage/AppStandbyController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 1790
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x3465cce

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v2, :cond_2f

    const v2, 0x33e5d967

    if-eq v1, v2, :cond_25

    const v2, 0x388694fe

    if-eq v1, v2, :cond_1b

    :cond_1a
    goto :goto_39

    :cond_1b
    const-string v1, "android.os.action.CHARGING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v3

    goto :goto_3a

    :cond_25
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v4

    goto :goto_3a

    :cond_2f
    const-string v1, "android.os.action.DISCHARGING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v5

    goto :goto_3a

    :goto_39
    const/4 v0, -0x1

    :goto_3a
    if-eqz v0, :cond_4d

    if-eq v0, v5, :cond_47

    if-eq v0, v4, :cond_41

    goto :goto_53

    .line 1798
    :cond_41
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0}, Lcom/android/server/usage/AppStandbyController;->onDeviceIdleModeChanged()V

    goto :goto_53

    .line 1795
    :cond_47
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, v3}, Lcom/android/server/usage/AppStandbyController;->setChargingState(Z)V

    .line 1796
    goto :goto_53

    .line 1792
    :cond_4d
    iget-object v0, p0, Lcom/android/server/usage/AppStandbyController$DeviceStateReceiver;->this$0:Lcom/android/server/usage/AppStandbyController;

    invoke-virtual {v0, v5}, Lcom/android/server/usage/AppStandbyController;->setChargingState(Z)V

    .line 1793
    nop

    .line 1801
    :goto_53
    return-void
.end method
