.class Lcom/android/systemui/pip/tv/PipControlsView$6;
.super Ljava/lang/Object;
.source "PipControlsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/pip/tv/PipControlsView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipControlsView;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipControlsView;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView$6;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 151
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView$6;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {p1}, Lcom/android/systemui/pip/tv/PipControlsView;->access$500(Lcom/android/systemui/pip/tv/PipControlsView;)Landroid/media/session/MediaController;

    move-result-object p1

    if-eqz p1, :cond_63

    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView$6;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {p1}, Lcom/android/systemui/pip/tv/PipControlsView;->access$500(Lcom/android/systemui/pip/tv/PipControlsView;)Landroid/media/session/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p1

    if-nez p1, :cond_15

    goto :goto_63

    .line 154
    :cond_15
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView$6;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {p1}, Lcom/android/systemui/pip/tv/PipControlsView;->access$500(Lcom/android/systemui/pip/tv/PipControlsView;)Landroid/media/session/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getActions()J

    .line 155
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView$6;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {p1}, Lcom/android/systemui/pip/tv/PipControlsView;->access$500(Lcom/android/systemui/pip/tv/PipControlsView;)Landroid/media/session/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    .line 156
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView$6;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {p1}, Lcom/android/systemui/pip/tv/PipControlsView;->access$300(Lcom/android/systemui/pip/tv/PipControlsView;)Lcom/android/systemui/pip/tv/PipManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pip/tv/PipManager;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4a

    .line 157
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipControlsView$6;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {p0}, Lcom/android/systemui/pip/tv/PipControlsView;->access$500(Lcom/android/systemui/pip/tv/PipControlsView;)Landroid/media/session/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->play()V

    goto :goto_63

    .line 158
    :cond_4a
    iget-object p1, p0, Lcom/android/systemui/pip/tv/PipControlsView$6;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {p1}, Lcom/android/systemui/pip/tv/PipControlsView;->access$300(Lcom/android/systemui/pip/tv/PipControlsView;)Lcom/android/systemui/pip/tv/PipManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pip/tv/PipManager;->getPlaybackState()I

    move-result p1

    if-nez p1, :cond_63

    .line 159
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipControlsView$6;->this$0:Lcom/android/systemui/pip/tv/PipControlsView;

    invoke-static {p0}, Lcom/android/systemui/pip/tv/PipControlsView;->access$500(Lcom/android/systemui/pip/tv/PipControlsView;)Landroid/media/session/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    :cond_63
    :goto_63
    return-void
.end method