.class Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList$2;
.super Ljava/lang/Object;
.source "FlymeRedEnvelopeArravingSoundList.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;


# direct methods
.method constructor <init>(Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;)V
    .registers 2

    .line 61
    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList$2;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 4

    .line 65
    iget-object v0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList$2;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    invoke-static {v0, v1}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->access$402(Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;Z)Z

    .line 66
    iget-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList$2;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;

    invoke-static {p1}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->access$400(Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 67
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList$2;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;

    invoke-static {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->access$500(Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1c
    return-void
.end method
