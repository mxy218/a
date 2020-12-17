.class Lcom/android/systemui/volume/VolumePanel$9;
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

    .line 1549
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$9;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 1553
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/VolumePanel$showHideValue;

    .line 1554
    iget v0, p1, Lcom/android/systemui/volume/VolumePanel$showHideValue;->s:F

    .line 1555
    iget p1, p1, Lcom/android/systemui/volume/VolumePanel$showHideValue;->x:F

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result p1

    .line 1559
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$9;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$2000(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object v1

    int-to-float p1, p1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setX(F)V

    .line 1560
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$9;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p1}, Lcom/android/systemui/volume/VolumePanel;->access$2000(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 1561
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel$9;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {p0}, Lcom/android/systemui/volume/VolumePanel;->access$2000(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    return-void
.end method
