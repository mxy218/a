.class Lcom/flyme/systemui/charge/ChargeAnimationController$4;
.super Ljava/lang/Object;
.source "ChargeAnimationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/charge/ChargeAnimationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/charge/ChargeAnimationController;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$4;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 94
    iget-object v0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$4;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {v0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$900(Lcom/flyme/systemui/charge/ChargeAnimationController;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 100
    iget-object p0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$4;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {p0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$1000(Lcom/flyme/systemui/charge/ChargeAnimationController;)V

    return-void
.end method
