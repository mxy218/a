.class final Lcom/android/systemui/shared/system/InputConsumerController$InputEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "InputConsumerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/system/InputConsumerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/system/InputConsumerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/system/InputConsumerController;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4

    .line 66
    iput-object p1, p0, Lcom/android/systemui/shared/system/InputConsumerController$InputEventReceiver;->this$0:Lcom/android/systemui/shared/system/InputConsumerController;

    .line 67
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 4

    const/4 v0, 0x1

    .line 74
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/shared/system/InputConsumerController$InputEventReceiver;->this$0:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-static {v1}, Lcom/android/systemui/shared/system/InputConsumerController;->access$000(Lcom/android/systemui/shared/system/InputConsumerController;)Lcom/android/systemui/shared/system/InputConsumerController$InputListener;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 75
    iget-object v1, p0, Lcom/android/systemui/shared/system/InputConsumerController$InputEventReceiver;->this$0:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-static {v1}, Lcom/android/systemui/shared/system/InputConsumerController;->access$000(Lcom/android/systemui/shared/system/InputConsumerController;)Lcom/android/systemui/shared/system/InputConsumerController$InputListener;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/systemui/shared/system/InputConsumerController$InputListener;->onInputEvent(Landroid/view/InputEvent;)Z

    move-result v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_17

    .line 78
    :cond_13
    invoke-virtual {p0, p1, v0}, Landroid/view/BatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :catchall_17
    move-exception v1

    invoke-virtual {p0, p1, v0}, Landroid/view/BatchedInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v1
.end method
