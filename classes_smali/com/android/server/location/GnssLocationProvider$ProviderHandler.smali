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
    .param p2, "looper"  # Landroid/os/Looper;

    .line 2059
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    .line 2060
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2061
    return-void
.end method

.method private handleInitialize()V
    .registers 10

    .line 2114
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/location/GnssLocationProvider;->access$3100(Lcom/android/server/location/GnssLocationProvider;Z)V

    .line 2116
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->access$3200()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2117
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    new-instance v2, Lcom/android/server/location/GnssVisibilityControl;

    iget-object v3, v0, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v4}, Lcom/android/server/location/GnssLocationProvider;->access$3400(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v5}, Lcom/android/server/location/GnssLocationProvider;->access$3500(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/internal/location/GpsNetInitiatedHandler;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/location/GnssVisibilityControl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    invoke-static {v0, v2}, Lcom/android/server/location/GnssLocationProvider;->access$3302(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssVisibilityControl;)Lcom/android/server/location/GnssVisibilityControl;

    .line 2122
    :cond_24
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$3600(Lcom/android/server/location/GnssLocationProvider;)V

    .line 2125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2126
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2127
    const-string v2, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2128
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2129
    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2130
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2131
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2132
    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2133
    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2134
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v2, v2, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/GnssLocationProvider;->access$3700(Lcom/android/server/location/GnssLocationProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2136
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/GnssLocationProvider;->access$3800(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/GnssNetworkConnectivityHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->registerNetworkCallbacks()V

    .line 2139
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v2, v2, Lcom/android/server/location/GnssLocationProvider;->mContext:Landroid/content/Context;

    .line 2140
    const-string/jumbo v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 2141
    .local v2, "locManager":Landroid/location/LocationManager;
    const-wide/16 v5, 0x0

    .line 2142
    .local v5, "minTime":J
    const/4 v3, 0x0

    .line 2143
    .local v3, "minDistance":F
    const-string/jumbo v7, "passive"

    invoke-static {v7, v5, v6, v3, v1}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v1

    .line 2150
    .local v1, "request":Landroid/location/LocationRequest;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    .line 2151
    new-instance v7, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;

    iget-object v8, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {v7, v8, v4}, Lcom/android/server/location/GnssLocationProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$1;)V

    .line 2154
    invoke-virtual {p0}, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 2151
    invoke-virtual {v2, v1, v7, v4}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 2156
    iget-object v4, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v4}, Lcom/android/server/location/GnssLocationProvider;->access$800(Lcom/android/server/location/GnssLocationProvider;)V

    .line 2157
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"  # Landroid/os/Message;

    .line 2065
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2066
    .local v0, "message":I
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_6d

    const/16 v1, 0xb

    if-eq v0, v1, :cond_66

    const/16 v1, 0xd

    if-eq v0, v1, :cond_62

    const/4 v1, 0x5

    if-eq v0, v1, :cond_58

    const/4 v1, 0x6

    if-eq v0, v1, :cond_52

    const/4 v1, 0x7

    if-eq v0, v1, :cond_48

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_bc

    goto :goto_7b

    .line 2093
    :pswitch_1c  #0x12
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;

    invoke-static {v1, v3}, Lcom/android/server/location/GnssLocationProvider;->access$2800(Lcom/android/server/location/GnssLocationProvider;Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)V

    goto :goto_7b

    .line 2090
    :pswitch_26  #0x11
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_2d

    move v1, v2

    :cond_2d
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/location/Location;

    invoke-static {v3, v1, v4}, Lcom/android/server/location/GnssLocationProvider;->access$2700(Lcom/android/server/location/GnssLocationProvider;ZLandroid/location/Location;)V

    .line 2091
    goto :goto_7b

    .line 2075
    :pswitch_35  #0x10
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_3c

    move v1, v2

    :cond_3c
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v3, v1, v4}, Lcom/android/server/location/GnssLocationProvider;->access$2300(Lcom/android/server/location/GnssLocationProvider;ZZ)V

    .line 2076
    goto :goto_7b

    .line 2084
    :cond_48
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/location/Location;

    invoke-static {v1, v3}, Lcom/android/server/location/GnssLocationProvider;->access$2600(Lcom/android/server/location/GnssLocationProvider;Landroid/location/Location;)V

    .line 2085
    goto :goto_7b

    .line 2078
    :cond_52
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->access$2400(Lcom/android/server/location/GnssLocationProvider;)V

    .line 2079
    goto :goto_7b

    .line 2072
    :cond_58
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->access$2200(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/NtpTimeHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/location/NtpTimeHelper;->retrieveAndInjectNtpTime()V

    .line 2073
    goto :goto_7b

    .line 2087
    :cond_62
    invoke-direct {p0}, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->handleInitialize()V

    .line 2088
    goto :goto_7b

    .line 2081
    :cond_66
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/android/server/location/GnssLocationProvider;->access$2502(Lcom/android/server/location/GnssLocationProvider;I)I

    .line 2082
    goto :goto_7b

    .line 2068
    :cond_6d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/location/GnssLocationProvider$GpsRequest;

    .line 2069
    .local v1, "gpsRequest":Lcom/android/server/location/GnssLocationProvider$GpsRequest;
    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-object v4, v1, Lcom/android/server/location/GnssLocationProvider$GpsRequest;->request:Lcom/android/internal/location/ProviderRequest;

    iget-object v5, v1, Lcom/android/server/location/GnssLocationProvider$GpsRequest;->source:Landroid/os/WorkSource;

    invoke-static {v3, v4, v5}, Lcom/android/server/location/GnssLocationProvider;->access$2100(Lcom/android/server/location/GnssLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 2070
    nop

    .line 2096
    .end local v1  # "gpsRequest":Lcom/android/server/location/GnssLocationProvider$GpsRequest;
    :goto_7b
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v2, :cond_bb

    .line 2098
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->access$2900(Lcom/android/server/location/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WakeLock released by handleMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v2, v0}, Lcom/android/server/location/GnssLocationProvider;->access$3000(Lcom/android/server/location/GnssLocationProvider;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    :cond_bb
    return-void

    :pswitch_data_bc
    .packed-switch 0x10
        :pswitch_35  #00000010
        :pswitch_26  #00000011
        :pswitch_1c  #00000012
    .end packed-switch
.end method
