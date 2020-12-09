.class Lcom/android/server/location/GnssLocationProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .registers 2

    .line 483
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$1;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 486
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    .line 487
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->access$200()Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "receive broadcast intent, action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_21
    if-nez p2, :cond_24

    .line 489
    return-void

    .line 492
    :cond_24
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_c6

    :cond_2d
    goto :goto_7d

    :sswitch_2e
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2d

    const/4 v0, 0x3

    goto :goto_7d

    :sswitch_38
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2d

    const/4 v0, 0x2

    goto :goto_7d

    :sswitch_42
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2d

    const/4 v0, 0x7

    goto :goto_7d

    :sswitch_4c
    const-string v1, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2d

    const/4 v0, 0x0

    goto :goto_7d

    :sswitch_56
    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2d

    const/4 v0, 0x6

    goto :goto_7d

    :sswitch_60
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2d

    const/4 v0, 0x5

    goto :goto_7d

    :sswitch_6a
    const-string v1, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2d

    move v0, v2

    goto :goto_7d

    :sswitch_74
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2d

    const/4 v0, 0x4

    :goto_7d
    packed-switch v0, :pswitch_data_e8

    goto :goto_c4

    .line 518
    :pswitch_81  #0x6, 0x7
    iget-object p2, p0, Lcom/android/server/location/GnssLocationProvider$1;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {p2, p1}, Lcom/android/server/location/GnssLocationProvider;->access$800(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V

    goto :goto_c4

    .line 500
    :pswitch_87  #0x2
    const-class p1, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/DeviceIdleController$LocalService;

    .line 502
    iget-object p2, p0, Lcom/android/server/location/GnssLocationProvider$1;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {p2}, Lcom/android/server/location/GnssLocationProvider;->access$500(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p2

    if-eqz p2, :cond_a5

    .line 503
    iget-object p2, p0, Lcom/android/server/location/GnssLocationProvider$1;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {p2}, Lcom/android/server/location/GnssLocationProvider;->access$600(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/DeviceIdleController$StationaryListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/DeviceIdleController$LocalService;->registerStationaryListener(Lcom/android/server/DeviceIdleController$StationaryListener;)V

    goto :goto_ae

    .line 505
    :cond_a5
    iget-object p2, p0, Lcom/android/server/location/GnssLocationProvider$1;->this$0:Lcom/android/server/location/GnssLocationProvider;

    .line 506
    invoke-static {p2}, Lcom/android/server/location/GnssLocationProvider;->access$600(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/DeviceIdleController$StationaryListener;

    move-result-object p2

    .line 505
    invoke-virtual {p1, p2}, Lcom/android/server/DeviceIdleController$LocalService;->unregisterStationaryListener(Lcom/android/server/DeviceIdleController$StationaryListener;)V

    .line 514
    :goto_ae
    :pswitch_ae  #0x3, 0x4, 0x5
    iget-object p1, p0, Lcom/android/server/location/GnssLocationProvider$1;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider;->access$700(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 515
    goto :goto_c4

    .line 497
    :pswitch_b8  #0x1
    iget-object p1, p0, Lcom/android/server/location/GnssLocationProvider$1;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider;->access$400(Lcom/android/server/location/GnssLocationProvider;)V

    .line 498
    goto :goto_c4

    .line 494
    :pswitch_be  #0x0
    iget-object p1, p0, Lcom/android/server/location/GnssLocationProvider$1;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {p1}, Lcom/android/server/location/GnssLocationProvider;->access$300(Lcom/android/server/location/GnssLocationProvider;)V

    .line 495
    nop

    .line 521
    :goto_c4
    return-void

    nop

    :sswitch_data_c6
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_74
        -0x76c1dde1 -> :sswitch_6a
        -0x56ac2893 -> :sswitch_60
        -0x43dd7a3f -> :sswitch_56
        -0x2872215f -> :sswitch_4c
        -0x18365bb -> :sswitch_42
        0x33e5d967 -> :sswitch_38
        0x6a0dd473 -> :sswitch_2e
    .end sparse-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_be  #00000000
        :pswitch_b8  #00000001
        :pswitch_87  #00000002
        :pswitch_ae  #00000003
        :pswitch_ae  #00000004
        :pswitch_ae  #00000005
        :pswitch_81  #00000006
        :pswitch_81  #00000007
    .end packed-switch
.end method
