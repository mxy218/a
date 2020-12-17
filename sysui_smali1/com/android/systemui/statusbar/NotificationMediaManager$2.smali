.class Lcom/android/systemui/statusbar/NotificationMediaManager$2;
.super Landroid/media/session/MediaController$Callback;
.source "NotificationMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .registers 3

    .line 175
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$300(Lcom/android/systemui/statusbar/NotificationMediaManager;)Lcom/android/systemui/statusbar/MediaArtworkProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->clearCache()V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$402(Lcom/android/systemui/statusbar/NotificationMediaManager;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;

    .line 181
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    const/4 p1, 0x1

    invoke-static {p0, p1, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$200(Lcom/android/systemui/statusbar/NotificationMediaManager;ZZ)V

    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .registers 3

    .line 161
    invoke-super {p0, p1}, Landroid/media/session/MediaController$Callback;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    if-eqz p1, :cond_1c

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$100(Lcom/android/systemui/statusbar/NotificationMediaManager;I)Z

    move-result p1

    if-nez p1, :cond_16

    .line 167
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->clearCurrentMediaNotification()V

    .line 169
    :cond_16
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationMediaManager$2;->this$0:Lcom/android/systemui/statusbar/NotificationMediaManager;

    const/4 p1, 0x1

    invoke-static {p0, p1, p1}, Lcom/android/systemui/statusbar/NotificationMediaManager;->access$200(Lcom/android/systemui/statusbar/NotificationMediaManager;ZZ)V

    :cond_1c
    return-void
.end method
