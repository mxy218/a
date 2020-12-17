.class Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList$1;
.super Landroid/os/Handler;
.source "FlymeRedEnvelopeArravingSoundList.java"


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

    .line 37
    iput-object p1, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList$1;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 40
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_20

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    const/4 v0, 0x3

    if-eq p1, v0, :cond_e

    goto :goto_25

    .line 52
    :cond_e
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList$1;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;

    invoke-static {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->access$300(Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;)V

    goto :goto_25

    .line 49
    :cond_14
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList$1;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;

    invoke-static {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->access$200(Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;)V

    goto :goto_25

    .line 46
    :cond_1a
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList$1;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;

    invoke-static {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->access$100(Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;)V

    goto :goto_25

    .line 43
    :cond_20
    iget-object p0, p0, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList$1;->this$0:Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;

    invoke-static {p0}, Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;->access$000(Lcom/meizu/settings/notificationstatusbar/FlymeRedEnvelopeArravingSoundList;)V

    :goto_25
    return-void
.end method
