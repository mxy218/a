.class Lcom/flyme/systemui/charge/ChargeAnimationController$2;
.super Ljava/lang/Object;
.source "ChargeAnimationController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    .line 64
    iput-object p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$2;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 67
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_11

    .line 68
    iget-object p1, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$2;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {p1}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$300(Lcom/flyme/systemui/charge/ChargeAnimationController;)V

    .line 69
    iget-object p0, p0, Lcom/flyme/systemui/charge/ChargeAnimationController$2;->this$0:Lcom/flyme/systemui/charge/ChargeAnimationController;

    invoke-static {p0}, Lcom/flyme/systemui/charge/ChargeAnimationController;->access$400(Lcom/flyme/systemui/charge/ChargeAnimationController;)V

    :cond_11
    const/4 p0, 0x0

    return p0
.end method
