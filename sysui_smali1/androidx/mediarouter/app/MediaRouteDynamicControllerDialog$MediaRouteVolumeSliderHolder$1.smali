.class Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;
.super Ljava/lang/Object;
.source "MediaRouteDynamicControllerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->bindRouteVolumeSliderHolder(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;


# direct methods
.method constructor <init>(Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;)V
    .registers 2

    .line 707
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 710
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mRouteForVolumeUpdatingByUser:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    const/4 v2, 0x2

    if-eqz v1, :cond_e

    .line 711
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 713
    :cond_e
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;

    iget-object v1, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    iput-object v0, v1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mRouteForVolumeUpdatingByUser:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 715
    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_20

    const/4 v0, 0x0

    goto :goto_26

    .line 716
    :cond_20
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;

    invoke-virtual {v0}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->getUnmutedVolume()I

    move-result v0

    .line 718
    :goto_26
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;

    invoke-virtual {v1, p1}, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->setMute(Z)V

    .line 719
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;

    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->mVolumeSlider:Landroidx/mediarouter/app/MediaRouteVolumeSlider;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 720
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;

    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->requestSetVolume(I)V

    .line 724
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder$1;->this$1:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog$MediaRouteVolumeSliderHolder;->this$0:Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteDynamicControllerDialog;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
