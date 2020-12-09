.class Lcom/android/server/connectivity/tethering/EntitlementManager$2;
.super Landroid/os/ResultReceiver;
.source "EntitlementManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/tethering/EntitlementManager;->buildProxyReceiver(IZLandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

.field final synthetic val$notifyFail:Z

.field final synthetic val$receiver:Landroid/os/ResultReceiver;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/EntitlementManager;Landroid/os/Handler;IZLandroid/os/ResultReceiver;)V
    .registers 6

    .line 596
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$2;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    iput p3, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$2;->val$type:I

    iput-boolean p4, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$2;->val$notifyFail:Z

    iput-object p5, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$2;->val$receiver:Landroid/os/ResultReceiver;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 4

    .line 599
    iget-object p2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$2;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    iget v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$2;->val$type:I

    invoke-static {p2, v0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$800(Lcom/android/server/connectivity/tethering/EntitlementManager;II)I

    move-result p1

    .line 600
    iget-object p2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$2;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    iget v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$2;->val$type:I

    invoke-virtual {p2, v0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->addDownstreamMapping(II)V

    .line 601
    const/16 p2, 0xb

    if-ne p1, p2, :cond_22

    iget-boolean p2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$2;->val$notifyFail:Z

    if-eqz p2, :cond_22

    .line 602
    iget-object p2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$2;->this$0:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-static {p2}, Lcom/android/server/connectivity/tethering/EntitlementManager;->access$900(Lcom/android/server/connectivity/tethering/EntitlementManager;)Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;

    move-result-object p2

    iget v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$2;->val$type:I

    invoke-interface {p2, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;->onUiEntitlementFailed(I)V

    .line 604
    :cond_22
    iget-object p2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager$2;->val$receiver:Landroid/os/ResultReceiver;

    if-eqz p2, :cond_2a

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 605
    :cond_2a
    return-void
.end method
