.class Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$2;
.super Ljava/lang/Object;
.source "SmartTouch.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;)V
    .registers 2

    .line 474
    iput-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$2;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 482
    iget-object p1, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$2;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;

    iget-object p1, p1, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {p1}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$200(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/view/ViewGroup;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 483
    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler$2;->this$1:Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;

    iget-object p0, p0, Lcom/flyme/systemui/smarttouch/SmartTouch$AnimatorHandler;->this$0:Lcom/flyme/systemui/smarttouch/SmartTouch;

    invoke-static {p0}, Lcom/flyme/systemui/smarttouch/SmartTouch;->access$100(Lcom/flyme/systemui/smarttouch/SmartTouch;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, -0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
