.class Lcom/android/systemui/volume/VolumePanel$11;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumePanel;->initAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "Lcom/android/systemui/volume/VolumePanel$extendValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .registers 2

    .line 1597
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$11;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLcom/android/systemui/volume/VolumePanel$extendValue;Lcom/android/systemui/volume/VolumePanel$extendValue;)Lcom/android/systemui/volume/VolumePanel$extendValue;
    .registers 9

    .line 1602
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$extendValue;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel$11;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumePanel$extendValue;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    .line 1603
    iget-object p0, v0, Lcom/android/systemui/volume/VolumePanel$extendValue;->tPPoint:Lcom/android/systemui/volume/VolumePanel$PointXYWH;

    iget-object v1, p2, Lcom/android/systemui/volume/VolumePanel$extendValue;->tPPoint:Lcom/android/systemui/volume/VolumePanel$PointXYWH;

    iget v2, v1, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->x:F

    iget-object v3, p3, Lcom/android/systemui/volume/VolumePanel$extendValue;->tPPoint:Lcom/android/systemui/volume/VolumePanel$PointXYWH;

    iget v4, v3, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->x:F

    sub-float/2addr v4, v2

    mul-float/2addr v4, p1

    add-float/2addr v2, v4

    iput v2, p0, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->x:F

    .line 1604
    iget v2, v1, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->y:F

    iget v4, v3, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->y:F

    sub-float/2addr v4, v2

    mul-float/2addr v4, p1

    add-float/2addr v2, v4

    iput v2, p0, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->y:F

    .line 1605
    iget v2, v1, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->w:F

    iget v4, v3, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->w:F

    sub-float/2addr v4, v2

    mul-float/2addr v4, p1

    add-float/2addr v2, v4

    iput v2, p0, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->w:F

    .line 1606
    iget v1, v1, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->h:F

    iget v2, v3, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->h:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->h:F

    .line 1607
    iget-object p0, v0, Lcom/android/systemui/volume/VolumePanel$extendValue;->pPoint:Lcom/android/systemui/volume/VolumePanel$PointXYWH;

    iget-object v1, p2, Lcom/android/systemui/volume/VolumePanel$extendValue;->pPoint:Lcom/android/systemui/volume/VolumePanel$PointXYWH;

    iget v2, v1, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->x:F

    iget-object v3, p3, Lcom/android/systemui/volume/VolumePanel$extendValue;->pPoint:Lcom/android/systemui/volume/VolumePanel$PointXYWH;

    iget v4, v3, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->x:F

    sub-float/2addr v4, v2

    mul-float/2addr v4, p1

    add-float/2addr v2, v4

    iput v2, p0, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->x:F

    .line 1608
    iget v2, v1, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->y:F

    iget v4, v3, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->y:F

    sub-float/2addr v4, v2

    mul-float/2addr v4, p1

    add-float/2addr v2, v4

    iput v2, p0, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->y:F

    .line 1609
    iget v2, v1, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->w:F

    iget v4, v3, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->w:F

    sub-float/2addr v4, v2

    mul-float/2addr v4, p1

    add-float/2addr v2, v4

    iput v2, p0, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->w:F

    .line 1610
    iget v1, v1, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->h:F

    iget v2, v3, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->h:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->h:F

    .line 1611
    iget p0, p2, Lcom/android/systemui/volume/VolumePanel$extendValue;->alpha:F

    iget p2, p3, Lcom/android/systemui/volume/VolumePanel$extendValue;->alpha:F

    sub-float/2addr p2, p0

    mul-float/2addr p2, p1

    add-float/2addr p0, p2

    iput p0, v0, Lcom/android/systemui/volume/VolumePanel$extendValue;->alpha:F

    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1597
    check-cast p2, Lcom/android/systemui/volume/VolumePanel$extendValue;

    check-cast p3, Lcom/android/systemui/volume/VolumePanel$extendValue;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/volume/VolumePanel$11;->evaluate(FLcom/android/systemui/volume/VolumePanel$extendValue;Lcom/android/systemui/volume/VolumePanel$extendValue;)Lcom/android/systemui/volume/VolumePanel$extendValue;

    move-result-object p0

    return-object p0
.end method
