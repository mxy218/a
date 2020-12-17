.class Lcom/android/systemui/pip/phone/PipMediaController$1;
.super Landroid/content/BroadcastReceiver;
.source "PipMediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipMediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipMediaController;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipMediaController;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMediaController$1;->this$0:Lcom/android/systemui/pip/phone/PipMediaController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 82
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.systemui.pip.phone.PLAY"

    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 84
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMediaController$1;->this$0:Lcom/android/systemui/pip/phone/PipMediaController;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->access$000(Lcom/android/systemui/pip/phone/PipMediaController;)Landroid/media/session/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->play()V

    goto :goto_5b

    :cond_1a
    const-string p2, "com.android.systemui.pip.phone.PAUSE"

    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_30

    .line 86
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMediaController$1;->this$0:Lcom/android/systemui/pip/phone/PipMediaController;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->access$000(Lcom/android/systemui/pip/phone/PipMediaController;)Landroid/media/session/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    goto :goto_5b

    :cond_30
    const-string p2, "com.android.systemui.pip.phone.NEXT"

    .line 87
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_46

    .line 88
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMediaController$1;->this$0:Lcom/android/systemui/pip/phone/PipMediaController;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->access$000(Lcom/android/systemui/pip/phone/PipMediaController;)Landroid/media/session/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    goto :goto_5b

    :cond_46
    const-string p2, "com.android.systemui.pip.phone.PREV"

    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 90
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMediaController$1;->this$0:Lcom/android/systemui/pip/phone/PipMediaController;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMediaController;->access$000(Lcom/android/systemui/pip/phone/PipMediaController;)Landroid/media/session/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    :cond_5b
    :goto_5b
    return-void
.end method
