.class Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$2;
.super Ljava/lang/Object;
.source "NotificationMediaTemplateViewWrapper.java"

# interfaces
.implements Lcom/android/internal/widget/MediaNotificationView$VisibilityChangeListener;


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

    .line 97
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$2;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAggregatedVisibilityChanged(Z)V
    .registers 3

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$2;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$402(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;Z)Z

    if-eqz p1, :cond_46

    .line 101
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$2;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$000(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Landroid/media/session/MediaController;

    move-result-object p1

    if-eqz p1, :cond_46

    .line 103
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$2;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$000(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Landroid/media/session/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object p1

    if-eqz p1, :cond_4b

    .line 104
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4b

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$2;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    .line 105
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$500(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Ljava/util/Timer;

    move-result-object p1

    if-nez p1, :cond_4b

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$2;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$600(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_4b

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$2;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    .line 106
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$600(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4b

    .line 107
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$2;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$700(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)V

    goto :goto_4b

    .line 110
    :cond_46
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper$2;->this$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;->access$800(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationMediaTemplateViewWrapper;)V

    :cond_4b
    :goto_4b
    return-void
.end method
