.class final Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;
.super Ljava/lang/Object;
.source "MediaRouteControllerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;


# direct methods
.method constructor <init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V
    .registers 2

    .line 1183
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 1188
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const v1, 0x1020019

    if-eq p1, v1, :cond_b9

    const v2, 0x102001a

    if-ne p1, v2, :cond_11

    goto/16 :goto_b9

    .line 1196
    :cond_11
    sget v1, Landroidx/mediarouter/R$id;->mr_control_playback_ctrl:I

    if-ne p1, v1, :cond_af

    .line 1197
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v1, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    if-eqz v1, :cond_d2

    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    if-eqz p1, :cond_d2

    .line 1198
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I

    move-result p1

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne p1, v1, :cond_28

    goto :goto_29

    :cond_28
    move v0, v2

    :goto_29
    if-eqz v0, :cond_41

    .line 1200
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->isPauseActionSupported()Z

    move-result p1

    if-eqz p1, :cond_41

    .line 1201
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->pause()V

    .line 1202
    sget v2, Landroidx/mediarouter/R$string;->mr_controller_pause:I

    goto :goto_70

    :cond_41
    if-eqz v0, :cond_59

    .line 1203
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->isStopActionSupported()Z

    move-result p1

    if-eqz p1, :cond_59

    .line 1204
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->stop()V

    .line 1205
    sget v2, Landroidx/mediarouter/R$string;->mr_controller_stop:I

    goto :goto_70

    :cond_59
    if-nez v0, :cond_70

    .line 1206
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-virtual {p1}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->isPlayActionSupported()Z

    move-result p1

    if-eqz p1, :cond_70

    .line 1207
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    .line 1208
    sget v2, Landroidx/mediarouter/R$string;->mr_controller_play:I

    .line 1211
    :cond_70
    :goto_70
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_d2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_d2

    if-eqz v2, :cond_d2

    const/16 p1, 0x4000

    .line 1213
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p1

    .line 1215
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 1216
    const-class v0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1217
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v1, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1218
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_d2

    .line 1221
    :cond_af
    sget v0, Landroidx/mediarouter/R$id;->mr_close:I

    if-ne p1, v0, :cond_d2

    .line 1222
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_d2

    .line 1190
    :cond_b9
    :goto_b9
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v2, v2, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_cd

    .line 1191
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v2, v2, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    if-ne p1, v1, :cond_ca

    const/4 v0, 0x2

    :cond_ca
    invoke-virtual {v2, v0}, Landroidx/mediarouter/media/MediaRouter;->unselect(I)V

    .line 1195
    :cond_cd
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_d2
    :goto_d2
    return-void
.end method
