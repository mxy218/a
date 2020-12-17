.class Lcom/android/systemui/volume/VolumePanel$12;
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

    .line 1616
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$12;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 10

    .line 1619
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/volume/VolumePanel$extendValue;

    .line 1626
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$12;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1600(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1627
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$extendValue;->tPPoint:Lcom/android/systemui/volume/VolumePanel$PointXYWH;

    iget v1, v1, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->w:F

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1628
    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$extendValue;->tPPoint:Lcom/android/systemui/volume/VolumePanel$PointXYWH;

    iget v1, v1, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->h:F

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->F2I(F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1629
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$12;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$1600(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1630
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$12;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1600(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$extendValue;->tPPoint:Lcom/android/systemui/volume/VolumePanel$PointXYWH;

    iget v1, v1, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->x:F

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    .line 1631
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$12;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$1600(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$extendValue;->tPPoint:Lcom/android/systemui/volume/VolumePanel$PointXYWH;

    iget v1, v1, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->y:F

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 1634
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$12;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$4400(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$extendValue;->pPoint:Lcom/android/systemui/volume/VolumePanel$PointXYWH;

    iget v1, v1, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->x:F

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setX(F)V

    .line 1635
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$12;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$4400(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/volume/VolumePanel$extendValue;->pPoint:Lcom/android/systemui/volume/VolumePanel$PointXYWH;

    iget v1, v1, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->y:F

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setY(F)V

    .line 1640
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$12;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$4500(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/View;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$extendValue;->alpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1641
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$12;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$4600(Lcom/android/systemui/volume/VolumePanel;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$extendValue;->alpha:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x4008000000000000L  # 3.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1642
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$12;->this$0:Lcom/android/systemui/volume/VolumePanel;

    iget v1, p1, Lcom/android/systemui/volume/VolumePanel$extendValue;->alpha:F

    const v2, 0x3df5c28f  # 0.12f

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/volume/VolumePanel;->access$4700(Lcom/android/systemui/volume/VolumePanel;FZ)V

    .line 1644
    monitor-enter p0

    .line 1645
    :try_start_8e
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$12;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumePanel;->access$4000(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :goto_98
    if-ge v2, v0, :cond_c9

    .line 1647
    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$12;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumePanel;->access$4000(Lcom/android/systemui/volume/VolumePanel;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;

    add-int/lit8 v5, v0, -0x1

    if-ne v2, v5, :cond_bf

    .line 1649
    iget-object v1, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarBg:Landroid/view/View;

    const/high16 v5, 0x3f800000  # 1.0f

    iget v6, p1, Lcom/android/systemui/volume/VolumePanel$extendValue;->alpha:F

    float-to-double v6, v6

    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    goto :goto_c6

    .line 1651
    :cond_bf
    iget-object v1, v1, Lcom/android/systemui/volume/VolumePanel$StreamControl;->seekbarView:Lcom/meizu/common/widget/VerticalSeekBar;

    iget v5, p1, Lcom/android/systemui/volume/VolumePanel$extendValue;->alpha:F

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    :goto_c6
    add-int/lit8 v2, v2, 0x1

    goto :goto_98

    .line 1654
    :cond_c9
    monitor-exit p0

    return-void

    :catchall_cb
    move-exception p1

    monitor-exit p0
    :try_end_cd
    .catchall {:try_start_8e .. :try_end_cd} :catchall_cb

    throw p1
.end method
