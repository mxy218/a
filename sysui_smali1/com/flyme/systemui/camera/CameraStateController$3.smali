.class Lcom/flyme/systemui/camera/CameraStateController$3;
.super Ljava/lang/Object;
.source "CameraStateController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/camera/CameraStateController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/camera/CameraStateController;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/camera/CameraStateController;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/flyme/systemui/camera/CameraStateController$3;->this$0:Lcom/flyme/systemui/camera/CameraStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    .line 142
    iget-object p1, p0, Lcom/flyme/systemui/camera/CameraStateController$3;->this$0:Lcom/flyme/systemui/camera/CameraStateController;

    invoke-static {p1}, Lcom/flyme/systemui/camera/CameraStateController;->access$500(Lcom/flyme/systemui/camera/CameraStateController;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object p1, p0, Lcom/flyme/systemui/camera/CameraStateController$3;->this$0:Lcom/flyme/systemui/camera/CameraStateController;

    invoke-static {p1}, Lcom/flyme/systemui/camera/CameraStateController;->access$700(Lcom/flyme/systemui/camera/CameraStateController;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController$3;->this$0:Lcom/flyme/systemui/camera/CameraStateController;

    invoke-static {v0}, Lcom/flyme/systemui/camera/CameraStateController;->access$600(Lcom/flyme/systemui/camera/CameraStateController;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 144
    iget-object p1, p0, Lcom/flyme/systemui/camera/CameraStateController$3;->this$0:Lcom/flyme/systemui/camera/CameraStateController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/flyme/systemui/camera/CameraStateController;->access$802(Lcom/flyme/systemui/camera/CameraStateController;Z)Z

    .line 146
    iget-object p1, p0, Lcom/flyme/systemui/camera/CameraStateController$3;->this$0:Lcom/flyme/systemui/camera/CameraStateController;

    invoke-static {p1}, Lcom/flyme/systemui/camera/CameraStateController;->access$900(Lcom/flyme/systemui/camera/CameraStateController;)V

    .line 147
    iget-object p1, p0, Lcom/flyme/systemui/camera/CameraStateController$3;->this$0:Lcom/flyme/systemui/camera/CameraStateController;

    invoke-static {p1}, Lcom/flyme/systemui/camera/CameraStateController;->access$000(Lcom/flyme/systemui/camera/CameraStateController;)Z

    move-result p1

    if-nez p1, :cond_32

    .line 148
    iget-object p0, p0, Lcom/flyme/systemui/camera/CameraStateController$3;->this$0:Lcom/flyme/systemui/camera/CameraStateController;

    invoke-static {p0}, Lcom/flyme/systemui/camera/CameraStateController;->access$300(Lcom/flyme/systemui/camera/CameraStateController;)V

    :cond_32
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    .line 130
    iget-object p1, p0, Lcom/flyme/systemui/camera/CameraStateController$3;->this$0:Lcom/flyme/systemui/camera/CameraStateController;

    invoke-static {p1}, Lcom/flyme/systemui/camera/CameraStateController;->access$500(Lcom/flyme/systemui/camera/CameraStateController;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object p1, p0, Lcom/flyme/systemui/camera/CameraStateController$3;->this$0:Lcom/flyme/systemui/camera/CameraStateController;

    invoke-static {p1}, Lcom/flyme/systemui/camera/CameraStateController;->access$700(Lcom/flyme/systemui/camera/CameraStateController;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/flyme/systemui/camera/CameraStateController$3;->this$0:Lcom/flyme/systemui/camera/CameraStateController;

    invoke-static {v0}, Lcom/flyme/systemui/camera/CameraStateController;->access$600(Lcom/flyme/systemui/camera/CameraStateController;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 132
    iget-object p1, p0, Lcom/flyme/systemui/camera/CameraStateController$3;->this$0:Lcom/flyme/systemui/camera/CameraStateController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/flyme/systemui/camera/CameraStateController;->access$802(Lcom/flyme/systemui/camera/CameraStateController;Z)Z

    .line 134
    iget-object p1, p0, Lcom/flyme/systemui/camera/CameraStateController$3;->this$0:Lcom/flyme/systemui/camera/CameraStateController;

    invoke-static {p1}, Lcom/flyme/systemui/camera/CameraStateController;->access$900(Lcom/flyme/systemui/camera/CameraStateController;)V

    .line 135
    iget-object p1, p0, Lcom/flyme/systemui/camera/CameraStateController$3;->this$0:Lcom/flyme/systemui/camera/CameraStateController;

    invoke-static {p1}, Lcom/flyme/systemui/camera/CameraStateController;->access$000(Lcom/flyme/systemui/camera/CameraStateController;)Z

    move-result p1

    if-nez p1, :cond_32

    .line 136
    iget-object p0, p0, Lcom/flyme/systemui/camera/CameraStateController$3;->this$0:Lcom/flyme/systemui/camera/CameraStateController;

    invoke-static {p0}, Lcom/flyme/systemui/camera/CameraStateController;->access$300(Lcom/flyme/systemui/camera/CameraStateController;)V

    :cond_32
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 124
    iget-object p1, p0, Lcom/flyme/systemui/camera/CameraStateController$3;->this$0:Lcom/flyme/systemui/camera/CameraStateController;

    invoke-static {p1}, Lcom/flyme/systemui/camera/CameraStateController;->access$400(Lcom/flyme/systemui/camera/CameraStateController;)Lcom/opensource/svgaplayer/SVGAImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object p0, p0, Lcom/flyme/systemui/camera/CameraStateController$3;->this$0:Lcom/flyme/systemui/camera/CameraStateController;

    invoke-static {p0}, Lcom/flyme/systemui/camera/CameraStateController;->access$500(Lcom/flyme/systemui/camera/CameraStateController;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
