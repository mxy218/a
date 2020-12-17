.class public Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;
.super Lmeizu/statusbar/IFlymeStatusBar$Stub;
.source "FlymeCommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$H;,
        Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;
    }
.end annotation


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCallbacks:Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;)V
    .registers 4

    .line 58
    invoke-direct {p0}, Lmeizu/statusbar/IFlymeStatusBar$Stub;-><init>()V

    const-string v0, "FlymeCommandQueue"

    .line 11
    iput-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->TAG:Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$H;-><init>(Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$1;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    .line 59
    iput-object p1, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->mCallbacks:Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;)Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->mCallbacks:Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;

    return-object p0
.end method


# virtual methods
.method public hideAlwaysTextAndIcon(Ljava/lang/String;)V
    .registers 4

    .line 97
    iget-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x90000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public releaseAndCloseHeadsUp()V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x30000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 80
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setNavigationBarBackground(IZ)V
    .registers 5

    .line 113
    iget-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0xa0000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setNavigationBarCarMode(Z)V
    .registers 5

    .line 119
    iget-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0xb0000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 120
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setNavigationBarColorTheme(IZ)V
    .registers 5

    .line 108
    iget-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setNavigationBarDarkTheme(ZZ)V
    .registers 5

    .line 103
    iget-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x70000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setNotificationReplyingInfo(Landroid/os/Bundle;)V
    .registers 4

    .line 85
    iget-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 86
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setStatusBarColorTheme(IZ)V
    .registers 5

    .line 73
    iget-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 74
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setStatusBarDarkTheme(ZZ)V
    .registers 5

    .line 67
    iget-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 68
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public showAlwaysTextAndIcon(Landroid/os/Bundle;)V
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 92
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
