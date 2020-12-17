.class Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$6;
.super Ljava/lang/Object;
.source "EarphoneCalibrationFragment.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->startTipsImgTranslateAnimation(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;)V
    .registers 2

    .line 287
    iput-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$6;->this$0:Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    .line 299
    iget-object p0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$6;->this$0:Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;

    invoke-static {p0}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->access$200(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;)Lcom/meizu/settings/widget/GlowView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/widget/GlowView;->startAnim()V

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
