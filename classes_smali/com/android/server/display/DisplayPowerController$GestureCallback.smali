.class final Lcom/android/server/display/DisplayPowerController$GestureCallback;
.super Landroid/view/IGestureCallback$Stub;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .registers 2

    .line 2512
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$GestureCallback;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Landroid/view/IGestureCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/display/DisplayPowerController;
    .param p2, "x1"  # Lcom/android/server/display/DisplayPowerController$1;

    .line 2512
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController$GestureCallback;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    return-void
.end method


# virtual methods
.method public onGestureTrigger(I)V
    .registers 6
    .param p1, "data"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2516
    const/16 v0, 0x66

    const-string v1, "DisplayPowerController"

    const/16 v2, 0xa1

    if-ne p1, v2, :cond_22

    .line 2517
    const-string v2, "FOD down, enable light and proximity in advance if needed"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$GestureCallback;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$2500(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2519
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$GestureCallback;->this$0:Lcom/android/server/display/DisplayPowerController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->access$1902(Lcom/android/server/display/DisplayPowerController;Z)Z

    .line 2520
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$GestureCallback;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$100(Lcom/android/server/display/DisplayPowerController;)V

    goto :goto_36

    .line 2521
    :cond_22
    const/16 v2, 0xa2

    if-ne p1, v2, :cond_36

    .line 2522
    const-string v2, "FOD up, delay reset"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$GestureCallback;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$2500(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2525
    :cond_36
    :goto_36
    return-void
.end method
