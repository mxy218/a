.class public Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EaseCubicInterpolator"
.end annotation


# instance fields
.field private final mControlPoint1:Lcom/android/systemui/volume/VolumePanel$PointF;

.field private final mControlPoint2:Lcom/android/systemui/volume/VolumePanel$PointF;

.field private mLastI:I

.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumePanel;FFFF)V
    .registers 7

    .line 1900
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1897
    iput p1, p0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->mLastI:I

    .line 1898
    new-instance p1, Lcom/android/systemui/volume/VolumePanel$PointF;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p1, v0}, Lcom/android/systemui/volume/VolumePanel$PointF;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->mControlPoint1:Lcom/android/systemui/volume/VolumePanel$PointF;

    .line 1899
    new-instance p1, Lcom/android/systemui/volume/VolumePanel$PointF;

    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p1, v0}, Lcom/android/systemui/volume/VolumePanel$PointF;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->mControlPoint2:Lcom/android/systemui/volume/VolumePanel$PointF;

    .line 1901
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->mControlPoint1:Lcom/android/systemui/volume/VolumePanel$PointF;

    iput p2, p1, Lcom/android/systemui/volume/VolumePanel$PointF;->x:F

    .line 1902
    iput p3, p1, Lcom/android/systemui/volume/VolumePanel$PointF;->y:F

    .line 1903
    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->mControlPoint2:Lcom/android/systemui/volume/VolumePanel$PointF;

    iput p4, p0, Lcom/android/systemui/volume/VolumePanel$PointF;->x:F

    .line 1904
    iput p5, p0, Lcom/android/systemui/volume/VolumePanel$PointF;->y:F

    return-void
.end method


# virtual methods
.method public cubicCurves(DDDDD)D
    .registers 23

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v0, p1

    mul-double v2, p1, p1

    mul-double v4, v0, v0

    mul-double v6, v4, v0

    mul-double v8, v2, p1

    mul-double/2addr v6, p3

    const-wide/high16 v10, 0x4008000000000000L  # 3.0

    mul-double/2addr v4, v10

    mul-double/2addr v4, p1

    mul-double v4, v4, p5

    add-double/2addr v6, v4

    mul-double/2addr v0, v10

    mul-double/2addr v0, v2

    mul-double v0, v0, p7

    add-double/2addr v6, v0

    mul-double v8, v8, p9

    add-double/2addr v6, v8

    return-wide v6
.end method

.method public getInterpolation(F)F
    .registers 15

    .line 1910
    iget v0, p0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->mLastI:I

    move v1, p1

    :goto_3
    const/16 v2, 0x1000

    if-ge v0, v2, :cond_2e

    const/high16 v1, 0x3f800000  # 1.0f

    int-to-float v2, v0

    mul-float/2addr v2, v1

    const/high16 v1, 0x45800000  # 4096.0f

    div-float v1, v2, v1

    float-to-double v3, v1

    const-wide/16 v5, 0x0

    .line 1912
    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->mControlPoint1:Lcom/android/systemui/volume/VolumePanel$PointF;

    iget v2, v2, Lcom/android/systemui/volume/VolumePanel$PointF;->x:F

    float-to-double v7, v2

    iget-object v2, p0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->mControlPoint2:Lcom/android/systemui/volume/VolumePanel$PointF;

    iget v2, v2, Lcom/android/systemui/volume/VolumePanel$PointF;->x:F

    float-to-double v9, v2

    const-wide/high16 v11, 0x3ff0000000000000L  # 1.0

    move-object v2, p0

    invoke-virtual/range {v2 .. v12}, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->cubicCurves(DDDDD)D

    move-result-wide v2

    float-to-double v4, p1

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_2b

    .line 1914
    iput v0, p0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->mLastI:I

    goto :goto_2e

    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2e
    :goto_2e
    float-to-double v3, v1

    const-wide/16 v5, 0x0

    .line 1918
    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->mControlPoint1:Lcom/android/systemui/volume/VolumePanel$PointF;

    iget p1, p1, Lcom/android/systemui/volume/VolumePanel$PointF;->y:F

    float-to-double v7, p1

    iget-object p1, p0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->mControlPoint2:Lcom/android/systemui/volume/VolumePanel$PointF;

    iget p1, p1, Lcom/android/systemui/volume/VolumePanel$PointF;->y:F

    float-to-double v9, p1

    const-wide/high16 v11, 0x3ff0000000000000L  # 1.0

    move-object v2, p0

    invoke-virtual/range {v2 .. v12}, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->cubicCurves(DDDDD)D

    move-result-wide v0

    const-wide v2, 0x3feff7ced916872bL  # 0.999

    cmpl-double p1, v0, v2

    if-lez p1, :cond_50

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    const/4 p1, 0x0

    .line 1921
    iput p1, p0, Lcom/android/systemui/volume/VolumePanel$EaseCubicInterpolator;->mLastI:I

    :cond_50
    double-to-float p0, v0

    return p0
.end method
