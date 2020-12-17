.class Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$4;
.super Ljava/lang/Object;
.source "EdgeBackGestureHandler.java"

# interfaces
.implements Lcom/android/systemui/recents/OverviewProxyService$GestureReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V
    .registers 2

    .line 559
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$4;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$updateGestureEvent$0$EdgeBackGestureHandler$4(Landroid/view/MotionEvent;)V
    .registers 3

    .line 564
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$4;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$700(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 565
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$4;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$800(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;Landroid/view/MotionEvent;)V

    :cond_d
    return-void
.end method

.method public updateGestureEvent(Landroid/view/MotionEvent;IZ)V
    .registers 4

    const/4 p3, 0x3

    if-eq p2, p3, :cond_6

    const/4 p3, 0x4

    if-ne p2, p3, :cond_14

    .line 563
    :cond_6
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$4;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$200(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance p3, Lcom/android/systemui/statusbar/phone/-$$Lambda$EdgeBackGestureHandler$4$lgswPBXLuFPdpoah78Qxt2Y_9d4;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$EdgeBackGestureHandler$4$lgswPBXLuFPdpoah78Qxt2Y_9d4;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$4;Landroid/view/MotionEvent;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_14
    return-void
.end method
