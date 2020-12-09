.class public Lcom/android/server/updates/NetworkWatchlistInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "NetworkWatchlistInstallReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 5

    .line 28
    const-string v0, "/data/misc/network_watchlist/"

    const-string/jumbo v1, "network_watchlist.xml"

    const-string v2, "metadata/"

    const-string/jumbo v3, "version"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method protected postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 34
    :try_start_0
    const-class p2, Landroid/net/NetworkWatchlistManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkWatchlistManager;

    invoke-virtual {p1}, Landroid/net/NetworkWatchlistManager;->reloadWatchlist()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 38
    goto :goto_14

    .line 35
    :catch_c
    move-exception p1

    .line 37
    const-string p1, "NetworkWatchlistInstallReceiver"

    const-string p2, "Unable to reload watchlist"

    invoke-static {p1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :goto_14
    return-void
.end method
