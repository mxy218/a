.class public Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;
.super Lcom/android/settings/wifi/slice/WifiScanWorker;
.source "ContextualWifiScanWorker.java"


# static fields
.field private static sActiveSession:J

.field private static sVisibleUiSessionToken:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 3

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/slice/WifiScanWorker;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public static newVisibleUiSession()V
    .registers 2

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;->sVisibleUiSessionToken:J

    return-void
.end method

.method static saveSession()V
    .registers 2

    .line 49
    sget-wide v0, Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;->sVisibleUiSessionToken:J

    sput-wide v0, Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;->sActiveSession:J

    return-void
.end method


# virtual methods
.method protected clearClickedWifiOnSliceUnpinned()V
    .registers 1

    return-void
.end method

.method protected isSessionValid()Z
    .registers 5

    .line 59
    sget-wide v0, Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;->sVisibleUiSessionToken:J

    sget-wide v2, Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;->sActiveSession:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_d

    .line 60
    invoke-static {}, Lcom/android/settings/wifi/slice/WifiScanWorker;->clearClickedWifi()V

    const/4 p0, 0x0

    return p0

    :cond_d
    const/4 p0, 0x1

    return p0
.end method
