.class Lcom/flyme/systemui/wakeup/RaiseFlipperController$2;
.super Ljava/lang/Object;
.source "RaiseFlipperController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/wakeup/RaiseFlipperController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$2;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string v0, "RaiseFlipperController"

    const-string/jumbo v1, "sleep display by horizontal"

    .line 123
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object p0, p0, Lcom/flyme/systemui/wakeup/RaiseFlipperController$2;->this$0:Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    invoke-static {p0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->access$300(Lcom/flyme/systemui/wakeup/RaiseFlipperController;)Landroid/os/PowerManager;

    move-result-object p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->goToSleep(J)V

    return-void
.end method
