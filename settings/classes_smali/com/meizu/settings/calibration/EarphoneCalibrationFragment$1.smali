.class Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$1;
.super Ljava/lang/Object;
.source "EarphoneCalibrationFragment.java"

# interfaces
.implements Lcom/meizu/settings/MzSettingsActivity$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;
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

    .line 65
    iput-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$1;->this$0:Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onKeyDown->keycode:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "EarpodAdjustFragment"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1c

    return p2

    .line 73
    :cond_1c
    iget-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$1;->this$0:Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->access$012(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;I)I

    .line 74
    iget-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$1;->this$0:Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;

    invoke-static {p1}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->access$000(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;)I

    move-result p1

    const/4 v1, 0x3

    if-lt p1, v1, :cond_70

    iget-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$1;->this$0:Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;

    invoke-static {p1}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->access$100(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;)Z

    move-result p1

    if-eqz p1, :cond_34

    goto :goto_70

    .line 77
    :cond_34
    iget-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$1;->this$0:Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;

    invoke-static {p1}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->access$200(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;)Lcom/meizu/settings/widget/GlowView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/meizu/settings/widget/GlowView;->stopAnim(Z)V

    .line 78
    iget-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$1;->this$0:Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;

    invoke-static {p1}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->access$300(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;)Landroid/view/animation/TranslateAnimation;

    move-result-object p1

    if-eqz p1, :cond_4e

    .line 79
    iget-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$1;->this$0:Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;

    invoke-static {p1}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->access$300(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;)Landroid/view/animation/TranslateAnimation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/animation/TranslateAnimation;->cancel()V

    .line 81
    :cond_4e
    iget-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$1;->this$0:Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;

    invoke-static {p1}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->access$400(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 82
    iget-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$1;->this$0:Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;

    invoke-static {p1}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->access$200(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;)Lcom/meizu/settings/widget/GlowView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    iget-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$1;->this$0:Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;

    invoke-static {p1}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->access$400(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    iget-object p0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$1;->this$0:Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;

    invoke-static {p0}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->access$500(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;)V

    :cond_70
    :goto_70
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onKeyup->keyCode:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "EarpodAdjustFragment"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1c

    return p2

    .line 94
    :cond_1c
    iget-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$1;->this$0:Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;

    invoke-static {p1, p2}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->access$002(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;I)I

    .line 95
    iget-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$1;->this$0:Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;

    invoke-static {p1, p2}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->access$602(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;I)I

    .line 96
    iget-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$1;->this$0:Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;

    invoke-static {p1, p2}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->access$102(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;Z)Z

    .line 97
    iget-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$1;->this$0:Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;

    invoke-static {p1}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->access$700(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 98
    iget-object p1, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$1;->this$0:Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;

    const v0, 0x7f1207ac

    const v1, 0x7f060032

    invoke-static {p1, v0, v1}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->access$800(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;II)V

    .line 99
    iget-object p0, p0, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment$1;->this$0:Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;

    invoke-static {p0, p2}, Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;->access$702(Lcom/meizu/settings/calibration/EarphoneCalibrationFragment;Z)Z

    :cond_43
    const/4 p0, 0x1

    return p0
.end method
