.class Lcom/android/systemui/pip/tv/PipNotification$3;
.super Ljava/lang/Object;
.source "PipNotification.java"

# interfaces
.implements Lcom/android/systemui/pip/tv/PipManager$MediaListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/tv/PipNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/tv/PipNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/tv/PipNotification;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/android/systemui/pip/tv/PipNotification$3;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaControllerChanged()V
    .registers 4

    .line 111
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification$3;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipNotification;->access$400(Lcom/android/systemui/pip/tv/PipNotification;)Lcom/android/systemui/pip/tv/PipManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pip/tv/PipManager;->getMediaController()Landroid/media/session/MediaController;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification$3;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v1}, Lcom/android/systemui/pip/tv/PipNotification;->access$500(Lcom/android/systemui/pip/tv/PipNotification;)Landroid/media/session/MediaController;

    move-result-object v1

    if-ne v1, v0, :cond_13

    return-void

    .line 115
    :cond_13
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification$3;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v1}, Lcom/android/systemui/pip/tv/PipNotification;->access$500(Lcom/android/systemui/pip/tv/PipNotification;)Landroid/media/session/MediaController;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 116
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification$3;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v1}, Lcom/android/systemui/pip/tv/PipNotification;->access$500(Lcom/android/systemui/pip/tv/PipNotification;)Landroid/media/session/MediaController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/tv/PipNotification$3;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v2}, Lcom/android/systemui/pip/tv/PipNotification;->access$600(Lcom/android/systemui/pip/tv/PipNotification;)Landroid/media/session/MediaController$Callback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 118
    :cond_2a
    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification$3;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v1, v0}, Lcom/android/systemui/pip/tv/PipNotification;->access$502(Lcom/android/systemui/pip/tv/PipNotification;Landroid/media/session/MediaController;)Landroid/media/session/MediaController;

    .line 119
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification$3;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipNotification;->access$500(Lcom/android/systemui/pip/tv/PipNotification;)Landroid/media/session/MediaController;

    move-result-object v0

    if-eqz v0, :cond_46

    .line 120
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification$3;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipNotification;->access$500(Lcom/android/systemui/pip/tv/PipNotification;)Landroid/media/session/MediaController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/tv/PipNotification$3;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v1}, Lcom/android/systemui/pip/tv/PipNotification;->access$600(Lcom/android/systemui/pip/tv/PipNotification;)Landroid/media/session/MediaController$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 122
    :cond_46
    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification$3;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipNotification;->access$000(Lcom/android/systemui/pip/tv/PipNotification;)Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/android/systemui/pip/tv/PipNotification$3;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {v0}, Lcom/android/systemui/pip/tv/PipNotification;->access$300(Lcom/android/systemui/pip/tv/PipNotification;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 124
    iget-object p0, p0, Lcom/android/systemui/pip/tv/PipNotification$3;->this$0:Lcom/android/systemui/pip/tv/PipNotification;

    invoke-static {p0}, Lcom/android/systemui/pip/tv/PipNotification;->access$100(Lcom/android/systemui/pip/tv/PipNotification;)V

    :cond_5b
    return-void
.end method
