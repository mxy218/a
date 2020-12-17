.class Lcom/android/systemui/volume/VolumePanel$PointXYWH;
.super Ljava/lang/Object;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PointXYWH"
.end annotation


# instance fields
.field public h:F

.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;

.field public w:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .registers 2

    .line 1494
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/VolumePanel;FFFF)V
    .registers 6

    .line 1495
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1496
    iput p2, p0, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->x:F

    .line 1497
    iput p3, p0, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->y:F

    .line 1498
    iput p4, p0, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->w:F

    .line 1499
    iput p5, p0, Lcom/android/systemui/volume/VolumePanel$PointXYWH;->h:F

    return-void
.end method
