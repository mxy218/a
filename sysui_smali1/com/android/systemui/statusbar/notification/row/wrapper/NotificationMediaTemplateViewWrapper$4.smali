.class Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$4;
.super Landroid/media/session/MediaController$Callback;
.source "NotificationMediaTemplateViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$4;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$4;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$1200(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$4;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$1200(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Landroid/media/MediaMetadata;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 157
    :cond_14
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$4;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$1202(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;

    .line 158
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$4;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$1300(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)V

    :cond_1e
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 144
    :cond_3
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$4;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$1100(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;Landroid/media/session/PlaybackState;)V

    .line 147
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$4;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$800(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)V

    goto :goto_38

    .line 148
    :cond_15
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$4;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$500(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Ljava/util/Timer;

    move-result-object p1

    if-nez p1, :cond_38

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$4;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$600(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$4;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    .line 149
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$600(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_38

    .line 150
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$4;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$700(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)V

    :cond_38
    :goto_38
    return-void
.end method

.method public onSessionDestroyed()V
    .registers 4

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$4;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$800(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$4;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$000(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Landroid/media/session/MediaController;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$4;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    instance-of v2, v1, Lcom/android/internal/widget/MediaNotificationView;

    if-eqz v2, :cond_2a

    .line 133
    check-cast v1, Lcom/android/internal/widget/MediaNotificationView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$900(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Lcom/android/internal/widget/MediaNotificationView$VisibilityChangeListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/MediaNotificationView;->removeVisibilityListener(Lcom/android/internal/widget/MediaNotificationView$VisibilityChangeListener;)V

    .line 134
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$4;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationViewWrapper;->mView:Landroid/view/View;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$1000(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Landroid/view/View$OnAttachStateChangeListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_2a
    return-void
.end method
