.class abstract Landroidx/mediarouter/media/SystemMediaRouteProvider;
.super Landroidx/mediarouter/media/MediaRouteProvider;
.source "SystemMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/SystemMediaRouteProvider$Api24Impl;,
        Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanMr2Impl;,
        Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanMr1Impl;,
        Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;,
        Landroidx/mediarouter/media/SystemMediaRouteProvider$LegacyImpl;,
        Landroidx/mediarouter/media/SystemMediaRouteProvider$SyncCallback;
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 49
    new-instance v0, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Landroidx/mediarouter/media/SystemMediaRouteProvider;

    .line 50
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android"

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;-><init>(Landroid/content/ComponentName;)V

    .line 49
    invoke-direct {p0, p1, v0}, Landroidx/mediarouter/media/MediaRouteProvider;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;)V

    return-void
.end method

.method public static obtain(Landroid/content/Context;Landroidx/mediarouter/media/SystemMediaRouteProvider$SyncCallback;)Landroidx/mediarouter/media/SystemMediaRouteProvider;
    .registers 4

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_c

    .line 55
    new-instance v0, Landroidx/mediarouter/media/SystemMediaRouteProvider$Api24Impl;

    invoke-direct {v0, p0, p1}, Landroidx/mediarouter/media/SystemMediaRouteProvider$Api24Impl;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/SystemMediaRouteProvider$SyncCallback;)V

    return-object v0

    :cond_c
    const/16 v1, 0x12

    if-lt v0, v1, :cond_16

    .line 58
    new-instance v0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanMr2Impl;

    invoke-direct {v0, p0, p1}, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanMr2Impl;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/SystemMediaRouteProvider$SyncCallback;)V

    return-object v0

    :cond_16
    const/16 v1, 0x11

    if-lt v0, v1, :cond_20

    .line 61
    new-instance v0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanMr1Impl;

    invoke-direct {v0, p0, p1}, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanMr1Impl;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/SystemMediaRouteProvider$SyncCallback;)V

    return-object v0

    :cond_20
    const/16 v1, 0x10

    if-lt v0, v1, :cond_2a

    .line 64
    new-instance v0, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;

    invoke-direct {v0, p0, p1}, Landroidx/mediarouter/media/SystemMediaRouteProvider$JellybeanImpl;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/SystemMediaRouteProvider$SyncCallback;)V

    return-object v0

    .line 66
    :cond_2a
    new-instance p1, Landroidx/mediarouter/media/SystemMediaRouteProvider$LegacyImpl;

    invoke-direct {p1, p0}, Landroidx/mediarouter/media/SystemMediaRouteProvider$LegacyImpl;-><init>(Landroid/content/Context;)V

    return-object p1
.end method


# virtual methods
.method public onSyncRouteAdded(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .registers 2

    return-void
.end method

.method public onSyncRouteChanged(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .registers 2

    return-void
.end method

.method public onSyncRouteRemoved(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .registers 2

    return-void
.end method

.method public onSyncRouteSelected(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .registers 2

    return-void
.end method
