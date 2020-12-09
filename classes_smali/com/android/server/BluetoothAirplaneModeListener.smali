.class Lcom/android/server/BluetoothAirplaneModeListener;
.super Ljava/lang/Object;
.source "BluetoothAirplaneModeListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;,
        Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;
    }
.end annotation


# static fields
.field static final MAX_TOAST_COUNT:I = 0xa
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final MSG_AIRPLANE_MODE_CHANGED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BluetoothAirplaneModeListener"

.field static final TOAST_COUNT:Ljava/lang/String; = "bluetooth_airplane_toast_count"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mAirplaneHelper:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

.field private final mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mBluetoothManager:Lcom/android/server/BluetoothManagerService;

.field private final mHandler:Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;

.field mToastCount:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;Landroid/os/Looper;Landroid/content/Context;)V
    .registers 6

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mToastCount:I

    .line 69
    new-instance v0, Lcom/android/server/BluetoothAirplaneModeListener$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/BluetoothAirplaneModeListener$1;-><init>(Lcom/android/server/BluetoothAirplaneModeListener;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 61
    iput-object p1, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mBluetoothManager:Lcom/android/server/BluetoothManagerService;

    .line 63
    new-instance p1, Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;-><init>(Lcom/android/server/BluetoothAirplaneModeListener;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mHandler:Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;

    .line 64
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 65
    const-string p2, "airplane_mode_on"

    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 64
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/BluetoothAirplaneModeListener;)Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;
    .registers 1

    .line 46
    iget-object p0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mHandler:Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;

    return-object p0
.end method


# virtual methods
.method handleAirplaneModeChange()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 118
    invoke-virtual {p0}, Lcom/android/server/BluetoothAirplaneModeListener;->shouldSkipAirplaneModeChange()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 119
    const-string v0, "BluetoothAirplaneModeListener"

    const-string v1, "Ignore airplane mode change"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    const/4 v1, 0x2

    const-string v2, "bluetooth_on"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->setSettingsInt(Ljava/lang/String;I)V

    .line 125
    invoke-virtual {p0}, Lcom/android/server/BluetoothAirplaneModeListener;->shouldPopToast()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 126
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    invoke-virtual {v0}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->showToastMessage()V

    .line 128
    :cond_20
    return-void

    .line 130
    :cond_21
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    iget-object v1, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mBluetoothManager:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->onAirplaneModeChanged(Lcom/android/server/BluetoothManagerService;)V

    .line 131
    return-void
.end method

.method shouldPopToast()Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 108
    iget v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mToastCount:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_8

    .line 109
    const/4 v0, 0x0

    return v0

    .line 111
    :cond_8
    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mToastCount:I

    .line 112
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    iget v2, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mToastCount:I

    const-string v3, "bluetooth_airplane_toast_count"

    invoke-virtual {v0, v3, v2}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->setSettingsInt(Ljava/lang/String;I)V

    .line 113
    return v1
.end method

.method shouldSkipAirplaneModeChange()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 136
    return v1

    .line 138
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->isBluetoothOn()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    invoke-virtual {v0}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    .line 139
    invoke-virtual {v0}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->isA2dpOrHearingAidConnected()Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_1f

    .line 142
    :cond_1d
    const/4 v0, 0x1

    return v0

    .line 140
    :cond_1f
    :goto_1f
    return v1
.end method

.method start(Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 101
    const-string v0, "BluetoothAirplaneModeListener"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iput-object p1, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    .line 103
    iget-object p1, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mAirplaneHelper:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    const-string v0, "bluetooth_airplane_toast_count"

    invoke-virtual {p1, v0}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->getSettingsInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/BluetoothAirplaneModeListener;->mToastCount:I

    .line 104
    return-void
.end method
