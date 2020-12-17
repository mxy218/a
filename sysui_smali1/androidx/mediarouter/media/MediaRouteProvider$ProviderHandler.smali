.class final Landroidx/mediarouter/media/MediaRouteProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "MediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/media/MediaRouteProvider;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/MediaRouteProvider;)V
    .registers 2

    .line 830
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteProvider$ProviderHandler;->this$0:Landroidx/mediarouter/media/MediaRouteProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 835
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    if-eq p1, v0, :cond_9

    goto :goto_14

    .line 840
    :cond_9
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouteProvider$ProviderHandler;->this$0:Landroidx/mediarouter/media/MediaRouteProvider;

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider;->deliverDiscoveryRequestChanged()V

    goto :goto_14

    .line 837
    :cond_f
    iget-object p0, p0, Landroidx/mediarouter/media/MediaRouteProvider$ProviderHandler;->this$0:Landroidx/mediarouter/media/MediaRouteProvider;

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProvider;->deliverDescriptorChanged()V

    :goto_14
    return-void
.end method
