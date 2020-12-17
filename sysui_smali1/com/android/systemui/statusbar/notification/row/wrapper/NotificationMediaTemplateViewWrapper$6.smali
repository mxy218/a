.class Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$6;
.super Ljava/lang/Object;
.source "NotificationMediaTemplateViewWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 345
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$6;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 348
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$6;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$000(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Landroid/media/session/MediaController;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$6;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$100(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 349
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$6;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$000(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Landroid/media/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 351
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$6;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$1100(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;Landroid/media/session/PlaybackState;)V

    .line 352
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_39

    .line 353
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$6;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$1600(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)V

    goto :goto_39

    .line 356
    :cond_2e
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$6;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$800(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)V

    goto :goto_39

    .line 359
    :cond_34
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$6;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$800(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)V

    :cond_39
    :goto_39
    return-void
.end method
