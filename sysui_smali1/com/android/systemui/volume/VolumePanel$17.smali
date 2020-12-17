.class Lcom/android/systemui/volume/VolumePanel$17;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .registers 2

    .line 1714
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$17;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 1718
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/VolumePanel$scaleAlphaValue;

    .line 1719
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$17;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1600(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$scaleAlphaValue;->a:F

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1720
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel$17;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget p1, p1, Lcom/android/systemui/volume/VolumePanel$scaleAlphaValue;->a:F

    const v0, 0x3df5c28f  # 0.12f

    mul-float/2addr p1, v0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/volume/VolumePanel;->access$4700(Lcom/android/systemui/volume/VolumePanel;FZ)V

    return-void
.end method
