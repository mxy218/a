.class Lcom/meizu/settings/face/FlymeCreateFaceActivity$13;
.super Ljava/lang/Object;
.source "FlymeCreateFaceActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/face/FlymeCreateFaceActivity;->startViewVisibilityAnimation(Landroid/view/View;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

.field final synthetic val$startCameraPreview:Z

.field final synthetic val$visibilityViewLayout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/meizu/settings/face/FlymeCreateFaceActivity;ZLandroid/view/View;)V
    .registers 4

    .line 703
    iput-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$13;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    iput-boolean p2, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$13;->val$startCameraPreview:Z

    iput-object p3, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$13;->val$visibilityViewLayout:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 715
    iget-boolean p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$13;->val$startCameraPreview:Z

    if-eqz p1, :cond_e

    .line 716
    iget-object p1, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$13;->this$0:Lcom/meizu/settings/face/FlymeCreateFaceActivity;

    invoke-static {p1}, Lcom/meizu/settings/face/FlymeCreateFaceActivity;->access$800(Lcom/meizu/settings/face/FlymeCreateFaceActivity;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 718
    :cond_e
    iget-object p0, p0, Lcom/meizu/settings/face/FlymeCreateFaceActivity$13;->val$visibilityViewLayout:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

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
