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
    .param p1, "this$0"  # Lcom/android/server/location/GnssLocationProvider;

    .line 477
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$1;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 480
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receive broadcast intent, action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    if-nez v0, :cond_1e

    .line 483
    return-void

    .line 486
    :cond_1e
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_94

    :cond_26
    goto :goto_76

    :sswitch_27
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v1, 0x2

    goto :goto_76

    :sswitch_31
    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v1, 0x3

    goto :goto_76

    :sswitch_3b
    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v1, 0x7

    goto :goto_76

    :sswitch_45
    const-string v2, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v1, 0x0

    goto :goto_76

    :sswitch_4f
    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v1, 0x6

    goto :goto_76

    :sswitch_59
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v1, 0x5

    goto :goto_76

    :sswitch_63
    const-string v2, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v1, 0x1

    goto :goto_76

    :sswitch_6d
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v1, 0x4

    :goto_76
    packed-switch v1, :pswitch_data_b6

    goto :goto_92

    .line 501
    :pswitch_7a  #0x6, 0x7
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$1;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1, p1}, Lcom/android/server/location/GnssLocationProvider;->access$500(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V

    goto :goto_92

    .line 497
    :pswitch_80  #0x2, 0x3, 0x4, 0x5
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$1;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->access$400(Lcom/android/server/location/GnssLocationProvider;)V

    .line 498
    goto :goto_92

    .line 491
    :pswitch_86  #0x1
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$1;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->access$300(Lcom/android/server/location/GnssLocationProvider;)V

    .line 492
    goto :goto_92

    .line 488
    :pswitch_8c  #0x0
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$1;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->access$200(Lcom/android/server/location/GnssLocationProvider;)V

    .line 489
    nop

    .line 504
    :goto_92
    return-void

    nop

    :sswitch_data_94
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_6d
        -0x76c1dde1 -> :sswitch_63
        -0x56ac2893 -> :sswitch_59
        -0x43dd7a3f -> :sswitch_4f
        -0x2872215f -> :sswitch_45
        -0x18365bb -> :sswitch_3b
        0x33e5d967 -> :sswitch_31
        0x6a0dd473 -> :sswitch_27
    .end sparse-switch

    :pswitch_data_b6
    .packed-switch 0x0
        :pswitch_8c  #00000000
        :pswitch_86  #00000001
        :pswitch_80  #00000002
        :pswitch_80  #00000003
        :pswitch_80  #00000004
        :pswitch_80  #00000005
        :pswitch_7a  #00000006
        :pswitch_7a  #00000007
    .end packed-switch
.end method
