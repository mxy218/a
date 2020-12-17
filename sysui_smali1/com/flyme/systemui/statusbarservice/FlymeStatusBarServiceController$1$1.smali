.class Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1$1;
.super Ljava/lang/Object;
.source "FlymeStatusBarServiceController.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->hideAlwaysTextAndIcon(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;)V
    .registers 2

    .line 126
    iput-object p1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1$1;->this$1:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    .line 133
    iget-object p1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1$1;->this$1:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;

    iget-object p1, p1, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {p1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$000(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 134
    iget-object p1, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1$1;->this$1:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;

    iget-object p1, p1, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {p1}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$100(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object p1

    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1$1;->this$1:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;

    iget-object p0, p0, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController$1;->this$0:Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;

    invoke-static {p0}, Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;->access$000(Lcom/flyme/systemui/statusbarservice/FlymeStatusBarServiceController;)Lcom/flyme/systemui/statusbar/phone/AlwaysShowAreaView;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_21
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
