.class public abstract Landroidx/mediarouter/media/MediaRouteProvider$RouteController;
.super Ljava/lang/Object;
.source "MediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RouteController"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRelease()V
    .registers 1

    return-void
.end method

.method public onSelect()V
    .registers 1

    return-void
.end method

.method public onSetVolume(I)V
    .registers 2

    return-void
.end method

.method public onUnselect()V
    .registers 1

    return-void
.end method

.method public onUnselect(I)V
    .registers 2

    .line 418
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect()V

    return-void
.end method

.method public onUpdateVolume(I)V
    .registers 2

    return-void
.end method
