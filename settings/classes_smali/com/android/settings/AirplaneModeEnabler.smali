.class public Lcom/android/settings/AirplaneModeEnabler;
.super Ljava/lang/Object;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;
    }
.end annotation


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mOnAirplaneModeChangedListener:Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;)V
    .registers 7

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/settings/AirplaneModeEnabler$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirplaneModeEnabler$1;-><init>(Lcom/android/settings/AirplaneModeEnabler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/android/settings/AirplaneModeEnabler$2;

    new-instance v1, Landroid/os/Handler;

    .line 67
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AirplaneModeEnabler$2;-><init>(Lcom/android/settings/AirplaneModeEnabler;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 77
    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/android/settings/AirplaneModeEnabler;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 79
    iput-object p3, p0, Lcom/android/settings/AirplaneModeEnabler;->mOnAirplaneModeChangedListener:Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;

    .line 81
    new-instance p1, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object p2, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/AirplaneModeEnabler;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p2, p3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 82
    iget-object p0, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirplaneModeEnabler;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/android/settings/AirplaneModeEnabler;->onAirplaneModeChanged()V

    return-void
.end method

.method private onAirplaneModeChanged()V
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mOnAirplaneModeChangedListener:Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;

    if-eqz v0, :cond_b

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;->onAirplaneModeChanged(Z)V

    :cond_b
    return-void
.end method

.method private setAirplaneModeOn(Z)V
    .registers 4

    .line 99
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 103
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mOnAirplaneModeChangedListener:Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;

    if-eqz v0, :cond_12

    .line 104
    invoke-interface {v0, p1}, Lcom/android/settings/AirplaneModeEnabler$OnAirplaneModeChangedListener;->onAirplaneModeChanged(Z)V

    .line 108
    :cond_12
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "state"

    .line 109
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 110
    iget-object p0, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public isAirplaneModeOn()Z
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public pause()V
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 94
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public resume()V
    .registers 4

    .line 86
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 87
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 88
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/AirplaneModeEnabler;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x1

    .line 87
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public setAirplaneMode(Z)V
    .registers 5

    const-string/jumbo v0, "ril.cdma.inecmmode"

    .line 129
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1a

    .line 132
    :cond_e
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    const/16 v2, 0xb1

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 134
    invoke-direct {p0, p1}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    :goto_1a
    return-void
.end method

.method public setAirplaneModeInECM(ZZ)V
    .registers 3

    if-eqz p1, :cond_6

    .line 141
    invoke-direct {p0, p2}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    goto :goto_9

    .line 144
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/AirplaneModeEnabler;->onAirplaneModeChanged()V

    :goto_9
    return-void
.end method
