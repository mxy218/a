.class final Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$H;
.super Landroid/os/Handler;
.source "MzFlashlightControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;


# direct methods
.method private constructor <init>(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;Landroid/os/Looper;)V
    .registers 3

    .line 57
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$H;->this$0:Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;

    .line 58
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;Landroid/os/Looper;Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$1;)V
    .registers 4

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$H;-><init>(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_28

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1c

    const/4 v2, 0x3

    if-eq v0, v2, :cond_e

    goto :goto_2d

    .line 78
    :cond_e
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$H;->this$0:Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    invoke-static {p0, v0, v1}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->access$400(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;IZ)V

    goto :goto_2d

    .line 73
    :cond_1c
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$H;->this$0:Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->access$300(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;)V

    goto :goto_2d

    .line 69
    :cond_22
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$H;->this$0:Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->access$200(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;)V

    goto :goto_2d

    .line 65
    :cond_28
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$H;->this$0:Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->access$100(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;)V

    :goto_2d
    return-void
.end method
