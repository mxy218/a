.class final Landroidx/mediarouter/app/MediaRouteActionProvider$MediaRouterCallback;
.super Landroidx/mediarouter/media/MediaRouter$Callback;
.source "MediaRouteActionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field private final mProviderWeak:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/mediarouter/app/MediaRouteActionProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteActionProvider;)V
    .registers 3

    .line 334
    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$Callback;-><init>()V

    .line 335
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider$MediaRouterCallback;->mProviderWeak:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private refreshRoute(Landroidx/mediarouter/media/MediaRouter;)V
    .registers 3

    .line 369
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteActionProvider$MediaRouterCallback;->mProviderWeak:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/app/MediaRouteActionProvider;

    if-eqz v0, :cond_e

    .line 371
    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteActionProvider;->refreshRoute()V

    goto :goto_11

    .line 373
    :cond_e
    invoke-virtual {p1, p0}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    :goto_11
    return-void
.end method


# virtual methods
.method public onProviderAdded(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$ProviderInfo;)V
    .registers 3

    .line 355
    invoke-direct {p0, p1}, Landroidx/mediarouter/app/MediaRouteActionProvider$MediaRouterCallback;->refreshRoute(Landroidx/mediarouter/media/MediaRouter;)V

    return-void
.end method

.method public onProviderChanged(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$ProviderInfo;)V
    .registers 3

    .line 365
    invoke-direct {p0, p1}, Landroidx/mediarouter/app/MediaRouteActionProvider$MediaRouterCallback;->refreshRoute(Landroidx/mediarouter/media/MediaRouter;)V

    return-void
.end method

.method public onProviderRemoved(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$ProviderInfo;)V
    .registers 3

    .line 360
    invoke-direct {p0, p1}, Landroidx/mediarouter/app/MediaRouteActionProvider$MediaRouterCallback;->refreshRoute(Landroidx/mediarouter/media/MediaRouter;)V

    return-void
.end method

.method public onRouteAdded(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .registers 3

    .line 340
    invoke-direct {p0, p1}, Landroidx/mediarouter/app/MediaRouteActionProvider$MediaRouterCallback;->refreshRoute(Landroidx/mediarouter/media/MediaRouter;)V

    return-void
.end method

.method public onRouteChanged(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .registers 3

    .line 350
    invoke-direct {p0, p1}, Landroidx/mediarouter/app/MediaRouteActionProvider$MediaRouterCallback;->refreshRoute(Landroidx/mediarouter/media/MediaRouter;)V

    return-void
.end method

.method public onRouteRemoved(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .registers 3

    .line 345
    invoke-direct {p0, p1}, Landroidx/mediarouter/app/MediaRouteActionProvider$MediaRouterCallback;->refreshRoute(Landroidx/mediarouter/media/MediaRouter;)V

    return-void
.end method
