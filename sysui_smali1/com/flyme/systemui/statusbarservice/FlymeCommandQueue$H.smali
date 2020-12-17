.class final Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$H;
.super Landroid/os/Handler;
.source "FlymeCommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;


# direct methods
.method private constructor <init>(Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$H;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$1;)V
    .registers 3

    .line 129
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$H;-><init>(Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 131
    iget v0, p1, Landroid/os/Message;->what:I

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_d0

    goto/16 :goto_cf

    .line 171
    :sswitch_c
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$H;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;

    invoke-static {p0}, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->access$100(Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;)Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {p0, v0, p1}, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;->notifyEventForSystemUI(II)V

    goto/16 :goto_cf

    .line 167
    :sswitch_1b
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$H;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;

    invoke-static {p0}, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->access$100(Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;)Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_26

    move v1, v2

    :cond_26
    invoke-interface {p0, v1}, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;->setNavigationBarCarMode(Z)V

    goto/16 :goto_cf

    .line 163
    :sswitch_2b
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$H;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;

    invoke-static {p0}, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->access$100(Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;)Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_38

    move v1, v2

    :cond_38
    invoke-interface {p0, v0, v1}, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;->setNavigationBarBackground(IZ)V

    goto/16 :goto_cf

    .line 153
    :sswitch_3d
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$H;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;

    invoke-static {p0}, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->access$100(Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;)Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;->hideAlwaysTextAndIcon(Ljava/lang/String;)V

    goto/16 :goto_cf

    .line 160
    :sswitch_4c
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$H;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;

    invoke-static {p0}, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->access$100(Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;)Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_59

    move v1, v2

    :cond_59
    invoke-interface {p0, v0, v1}, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;->setNavigationBarColorTheme(IZ)V

    goto/16 :goto_cf

    .line 156
    :sswitch_5e
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$H;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;

    invoke-static {p0}, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->access$100(Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;)Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_6a

    move v0, v2

    goto :goto_6b

    :cond_6a
    move v0, v1

    :goto_6b
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_70

    move v1, v2

    :cond_70
    invoke-interface {p0, v0, v1}, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;->setNavigationBarDarkTheme(ZZ)V

    goto :goto_cf

    .line 150
    :sswitch_74
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$H;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;

    invoke-static {p0}, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->access$100(Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;)Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;->showAlwaysTextAndIcon(Landroid/os/Bundle;)V

    goto :goto_cf

    .line 146
    :sswitch_82
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_87

    move v1, v2

    .line 147
    :cond_87
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$H;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;

    invoke-static {p0}, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->access$100(Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;)Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;->setNavButtonVisible(Z)V

    goto :goto_cf

    .line 143
    :sswitch_91
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$H;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;

    invoke-static {p0}, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->access$100(Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;)Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;->setNotificationReplyingInfo(Landroid/os/Bundle;)V

    goto :goto_cf

    .line 140
    :sswitch_9f
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$H;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;

    invoke-static {p0}, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->access$100(Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;)Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;

    move-result-object p0

    invoke-interface {p0}, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;->releaseAndCloseHeadsUp()V

    goto :goto_cf

    .line 137
    :sswitch_a9
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$H;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;

    invoke-static {p0}, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->access$100(Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;)Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_b6

    move v1, v2

    :cond_b6
    invoke-interface {p0, v0, v1}, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;->setStatusBarColorTheme(IZ)V

    goto :goto_cf

    .line 134
    :sswitch_ba
    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$H;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;

    invoke-static {p0}, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;->access$100(Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue;)Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;

    move-result-object p0

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_c6

    move v0, v2

    goto :goto_c7

    :cond_c6
    move v0, v1

    :goto_c7
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_cc

    move v1, v2

    :cond_cc
    invoke-interface {p0, v0, v1}, Lcom/flyme/systemui/statusbarservice/FlymeCommandQueue$Callbacks;->setStatusBarDarkTheme(ZZ)V

    :goto_cf
    return-void

    :sswitch_data_d0
    .sparse-switch
        0x10000 -> :sswitch_ba
        0x20000 -> :sswitch_a9
        0x30000 -> :sswitch_9f
        0x40000 -> :sswitch_91
        0x50000 -> :sswitch_82
        0x60000 -> :sswitch_74
        0x70000 -> :sswitch_5e
        0x80000 -> :sswitch_4c
        0x90000 -> :sswitch_3d
        0xa0000 -> :sswitch_2b
        0xb0000 -> :sswitch_1b
        0xc0000 -> :sswitch_c
    .end sparse-switch
.end method
