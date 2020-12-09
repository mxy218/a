.class final Lcom/android/server/location/GnssLocationProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/GnssLocationProvider;Landroid/os/Looper;)V
    .registers 4

    .line 2048
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    .line 2049
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2050
    return-void
.end method

.method private handleInitialize()V
    .registers 8

    .line 2106
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/location/GnssLocationProvider;->access$3500(Lcom/android/server/location/GnssLocationProvider;Z)V

    .line 2108
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->access$3600()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2109
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    new-instance v2, Lcom/android/server/location/GnssVisibilityControl;

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v4}, Lcom/android/server/location/GnssLocationProvider;->access$3800(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v5}, Lcom/android/server/location/GnssLocationProvider;->access$3900(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/internal/location/GpsNetInitiatedHandler;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/location/GnssVisibilityControl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    invoke-static {v0, v2}, Lcom/android/server/location/GnssLocationProvider;->access$3702(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssVisibilityControl;)Lcom/android/server/location/GnssVisibilityControl;

    .line 2114
    :cond_24
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$4000(Lcom/android/server/location/GnssLocationProvider;)V

    .line 2117
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2118
    const-string v2, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2119
    const-string v2, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2120
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2121
    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2122
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2123
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2124
    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2125
    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2126
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v2, v2, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->access$4100(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2128
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$4200(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssNetworkConnectivityHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->registerNetworkCallbacks()V

    .line 2131
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v0, v0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 2132
    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 2133
    const-wide/16 v2, 0x0

    .line 2134
    const/4 v5, 0x0

    .line 2135
    const-string/jumbo v6, "passive"

    invoke-static {v6, v2, v3, v5, v1}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v1

    .line 2142
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    .line 2143
    new-instance v2, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {v2, v3, v4}, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$1;)V

    .line 2146
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    .line 2143
    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 2148
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$1100(Lcom/android/server/location/GnssLocationProvider;)V

    .line 2149
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 2054
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2055
    const/4 v1, 0x1

    if-eq v0, v1, :cond_7d

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6f

    const/16 v2, 0xb

    if-eq v0, v2, :cond_68

    const/16 v2, 0xd

    if-eq v0, v2, :cond_64

    const/4 v2, 0x5

    if-eq v0, v2, :cond_5a

    const/4 v2, 0x6

    if-eq v0, v2, :cond_54

    const/4 v2, 0x7

    if-eq v0, v2, :cond_4a

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_ca

    goto :goto_82

    .line 2082
    :pswitch_1e  #0x12
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;

    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->access$3100(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)V

    .line 2083
    goto :goto_82

    .line 2079
    :pswitch_28  #0x11
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_2f

    move v2, v1

    :cond_2f
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/location/Location;

    invoke-static {v3, v2, v4}, Lcom/android/server/location/GnssLocationProvider;->access$3000(Lcom/android/server/location/GnssLocationProvider;ZLandroid/location/Location;)V

    .line 2080
    goto :goto_82

    .line 2064
    :pswitch_37  #0x10
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_3e

    move v2, v1

    :cond_3e
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/android/server/location/GnssLocationProvider;->access$2600(Lcom/android/server/location/GnssLocationProvider;ZZ)V

    .line 2065
    goto :goto_82

    .line 2073
    :cond_4a
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/location/Location;

    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->access$2900(Lcom/android/server/location/GnssLocationProvider;Landroid/location/Location;)V

    .line 2074
    goto :goto_82

    .line 2067
    :cond_54
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$2700(Lcom/android/server/location/GnssLocationProvider;)V

    .line 2068
    goto :goto_82

    .line 2061
    :cond_5a
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$2500(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/NtpTimeHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/location/NtpTimeHelper;->retrieveAndInjectNtpTime()V

    .line 2062
    goto :goto_82

    .line 2076
    :cond_64
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->handleInitialize()V

    .line 2077
    goto :goto_82

    .line 2070
    :cond_68
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/server/location/GnssLocationProvider;->access$2802(Lcom/android/server/location/GnssLocationProvider;I)I

    .line 2071
    goto :goto_82

    .line 2057
    :cond_6f
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/location/GnssLocationProvider$GpsRequest;

    .line 2058
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v4, v2, Lcom/android/server/location/GnssLocationProvider$GpsRequest;->request:Lcom/android/internal/location/ProviderRequest;

    iget-object v2, v2, Lcom/android/server/location/GnssLocationProvider$GpsRequest;->source:Landroid/os/WorkSource;

    invoke-static {v3, v4, v2}, Lcom/android/server/location/GnssLocationProvider;->access$2400(Lcom/android/server/location/GnssLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 2059
    goto :goto_82

    .line 2085
    :cond_7d
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$3200(Lcom/android/server/location/GnssLocationProvider;)V

    .line 2088
    :goto_82
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v1, :cond_c8

    .line 2090
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->access$3300(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2091
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->access$200()Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 2092
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WakeLock released by handleMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2, v0}, Lcom/android/server/location/GnssLocationProvider;->access$3400(Lcom/android/server/location/GnssLocationProvider;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GnssLocationProvider"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    :cond_c8
    return-void

    nop

    :pswitch_data_ca
    .packed-switch 0x10
        :pswitch_37  #00000010
        :pswitch_28  #00000011
        :pswitch_1e  #00000012
    .end packed-switch
.end method
