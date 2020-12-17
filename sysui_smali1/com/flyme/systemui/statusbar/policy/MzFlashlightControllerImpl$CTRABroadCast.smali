.class Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$CTRABroadCast;
.super Landroid/content/BroadcastReceiver;
.source "MzFlashlightControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CTRABroadCast"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;)V
    .registers 2

    .line 316
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$CTRABroadCast;->this$0:Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 319
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl$CTRABroadCast;->this$0:Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;->access$300(Lcom/flyme/systemui/statusbar/policy/MzFlashlightControllerImpl;)V

    .line 320
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "action = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlashlightController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
