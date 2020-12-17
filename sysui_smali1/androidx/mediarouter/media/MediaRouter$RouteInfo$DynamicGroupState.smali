.class public Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouter$RouteInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DynamicGroupState"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/media/MediaRouter$RouteInfo;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .registers 2

    .line 1777
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->this$0:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSelectionState()I
    .registers 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1789
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->this$0:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDynamicDescriptor:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->getSelectionState()I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public isGroupable()Z
    .registers 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1806
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->this$0:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDynamicDescriptor:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->isGroupable()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isTransferable()Z
    .registers 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1814
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->this$0:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDynamicDescriptor:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->isTransferable()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isUnselectable()Z
    .registers 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1798
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo$DynamicGroupState;->this$0:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->mDynamicDescriptor:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->isUnselectable()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method
