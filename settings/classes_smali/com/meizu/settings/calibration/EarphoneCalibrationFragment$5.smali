.class Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$5;
.super Ljava/lang/Object;
.source "EarphoneCalibrationFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->startTipsImgAlphaAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;

.field final synthetic val$image:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;Landroid/view/View;)V
    .registers 3

    .line 257
    iput-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$5;->this$0:Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;

    iput-object p2, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$5;->val$image:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 3

    .line 269
    iget-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$5;->val$image:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 270
    iget-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$5;->val$image:Landroid/view/View;

    iget-object v0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$5;->this$0:Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;

    invoke-static {v0}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->access$400(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_16

    .line 271
    iget-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$5;->this$0:Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;

    iget-object p0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$5;->val$image:Landroid/view/View;

    invoke-static {p1, p0}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->access$900(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;Landroid/view/View;)V

    :cond_16
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
