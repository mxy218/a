.class public Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;
.super Ljava/lang/Object;
.source "BluetoothAirplaneModeListener.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothAirplaneModeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AirplaneModeHelper"
.end annotation


# instance fields
.field private volatile mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mContext:Landroid/content/Context;

.field private volatile mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

.field private final mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper$1;-><init>(Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;)V

    iput-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 157
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 158
    iput-object p1, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mContext:Landroid/content/Context;

    .line 160
    iget-object p1, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x2

    invoke-virtual {p1, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 161
    iget-object p1, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v2, 0x15

    invoke-virtual {p1, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 163
    return-void
.end method

.method static synthetic access$102(Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothHearingAid;
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    return-object p1
.end method

.method private isA2dpConnected()Z
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 244
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 245
    return v1

    .line 247
    :cond_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method private isHearingAidConnected()Z
    .registers 3

    .line 251
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    .line 252
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 253
    return v1

    .line 255
    :cond_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHearingAid;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method


# virtual methods
.method public getSettingsInt(Ljava/lang/String;)I
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public isA2dpOrHearingAidConnected()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 199
    invoke-direct {p0}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->isA2dpConnected()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->isHearingAidConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public isAirplaneModeOn()Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    move v1, v2

    :cond_11
    return v1
.end method

.method public isBluetoothOn()Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 205
    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 206
    return v1

    .line 208
    :cond_6
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method public onAirplaneModeChanged(Lcom/android/server/BluetoothManagerService;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 219
    invoke-virtual {p1}, Lcom/android/server/BluetoothManagerService;->onAirplaneModeChanged()V

    .line 220
    return-void
.end method

.method public setSettingsInt(Ljava/lang/String;I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 232
    return-void
.end method

.method public showToastMessage()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 237
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 238
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 237
    const v3, 0x1040103

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 239
    iget-object v2, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 240
    return-void
.end method
