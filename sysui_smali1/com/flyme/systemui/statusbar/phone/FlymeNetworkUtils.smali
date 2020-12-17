.class public Lcom/flyme/systemui/statusbar/phone/FlymeNetworkUtils;
.super Ljava/lang/Object;
.source "FlymeNetworkUtils.java"


# direct methods
.method public static final isNetworkConnected(Landroid/content/Context;)Z
    .registers 2

    const-string v0, "connectivity"

    .line 10
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 11
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 13
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method
