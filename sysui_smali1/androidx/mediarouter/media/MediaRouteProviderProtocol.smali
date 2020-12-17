.class abstract Landroidx/mediarouter/media/MediaRouteProviderProtocol;
.super Ljava/lang/Object;
.source "MediaRouteProviderProtocol.java"


# direct methods
.method public static isValidRemoteMessenger(Landroid/os/Messenger;)Z
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    .line 293
    :try_start_3
    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_7} :catch_b

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    nop

    :catch_b
    :cond_b
    return v0
.end method
