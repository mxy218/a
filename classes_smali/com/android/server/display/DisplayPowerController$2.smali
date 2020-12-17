.class Lcom/android/server/display/DisplayPowerController$2;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/RampAnimator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/DisplayPowerController;

    .line 765
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$2;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .registers 2

    .line 768
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$2;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$100(Lcom/android/server/display/DisplayPowerController;)V

    .line 769
    return-void
.end method

.method public onAnimationUpdate(I)V
    .registers 4
    .param p1, "value"  # I

    .line 774
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$2;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0, p1}, Lcom/android/server/display/DisplayPowerController;->access$200(Lcom/android/server/display/DisplayPowerController;I)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$2;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$300(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/RampAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->getRate()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$2;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$400(Lcom/android/server/display/DisplayPowerController;)I

    move-result v1

    if-eq v0, v1, :cond_1f

    .line 775
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$2;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$100(Lcom/android/server/display/DisplayPowerController;)V

    .line 777
    :cond_1f
    return-void
.end method
