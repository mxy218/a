.class Lcom/android/systemui/volume/VolumePanel$8;
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
        "Lcom/android/systemui/volume/VolumePanel$showHideValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .registers 2

    .line 1534
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$8;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(FLcom/android/systemui/volume/VolumePanel$showHideValue;Lcom/android/systemui/volume/VolumePanel$showHideValue;)Lcom/android/systemui/volume/VolumePanel$showHideValue;
    .registers 6

    .line 1539
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$showHideValue;

    iget-object p0, p0, Lcom/android/systemui/volume/VolumePanel$8;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/VolumePanel$showHideValue;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    .line 1540
    iget p0, p2, Lcom/android/systemui/volume/VolumePanel$showHideValue;->s:F

    iget v1, p3, Lcom/android/systemui/volume/VolumePanel$showHideValue;->s:F

    sub-float/2addr v1, p0

    mul-float/2addr v1, p1

    add-float/2addr p0, v1

    iput p0, v0, Lcom/android/systemui/volume/VolumePanel$showHideValue;->s:F

    .line 1541
    iget p0, p2, Lcom/android/systemui/volume/VolumePanel$showHideValue;->x:F

    iget p2, p3, Lcom/android/systemui/volume/VolumePanel$showHideValue;->x:F

    sub-float/2addr p2, p0

    mul-float/2addr p2, p1

    add-float/2addr p0, p2

    iput p0, v0, Lcom/android/systemui/volume/VolumePanel$showHideValue;->x:F

    return-object v0
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1534
    check-cast p2, Lcom/android/systemui/volume/VolumePanel$showHideValue;

    check-cast p3, Lcom/android/systemui/volume/VolumePanel$showHideValue;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/volume/VolumePanel$8;->evaluate(FLcom/android/systemui/volume/VolumePanel$showHideValue;Lcom/android/systemui/volume/VolumePanel$showHideValue;)Lcom/android/systemui/volume/VolumePanel$showHideValue;

    move-result-object p0

    return-object p0
.end method
