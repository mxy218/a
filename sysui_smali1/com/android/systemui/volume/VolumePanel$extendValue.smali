.class Lcom/android/systemui/volume/VolumePanel$extendValue;
.super Ljava/lang/Object;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "extendValue"
.end annotation


# instance fields
.field public alpha:F

.field public pPoint:Lcom/android/systemui/volume/VolumePanel$PointXYWH;

.field public tPPoint:Lcom/android/systemui/volume/VolumePanel$PointXYWH;

.field final synthetic this$0:Lcom/android/systemui/volume/VolumePanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/VolumePanel;)V
    .registers 2

    .line 1522
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$extendValue;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel$extendValue;->init()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$PointXYWH;Lcom/android/systemui/volume/VolumePanel$PointXYWH;F)V
    .registers 6

    .line 1523
    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanel$extendValue;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1524
    invoke-direct {p0}, Lcom/android/systemui/volume/VolumePanel$extendValue;->init()V

    .line 1525
    iget-object v0, p0, Lcom/android/systemui/volume/VolumePanel$extendValue;->tPPoint:Lcom/android/systemui/volume/VolumePanel$PointXYWH;

    invoke-static {p1, p2, v0}, Lcom/android/systemui/volume/VolumePanel;->access$3700(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$PointXYWH;Lcom/android/systemui/volume/VolumePanel$PointXYWH;)V

    .line 1526
    iget-object p2, p0, Lcom/android/systemui/volume/VolumePanel$extendValue;->pPoint:Lcom/android/systemui/volume/VolumePanel$PointXYWH;

    invoke-static {p1, p3, p2}, Lcom/android/systemui/volume/VolumePanel;->access$3700(Lcom/android/systemui/volume/VolumePanel;Lcom/android/systemui/volume/VolumePanel$PointXYWH;Lcom/android/systemui/volume/VolumePanel$PointXYWH;)V

    .line 1527
    iput p4, p0, Lcom/android/systemui/volume/VolumePanel$extendValue;->alpha:F

    return-void
.end method

.method private init()V
    .registers 3

    .line 1519
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$PointXYWH;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$extendValue;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumePanel$PointXYWH;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanel$extendValue;->tPPoint:Lcom/android/systemui/volume/VolumePanel$PointXYWH;

    .line 1520
    new-instance v0, Lcom/android/systemui/volume/VolumePanel$PointXYWH;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumePanel$extendValue;->this$0:Lcom/android/systemui/volume/VolumePanel;

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumePanel$PointXYWH;-><init>(Lcom/android/systemui/volume/VolumePanel;)V

    iput-object v0, p0, Lcom/android/systemui/volume/VolumePanel$extendValue;->pPoint:Lcom/android/systemui/volume/VolumePanel$PointXYWH;

    return-void
.end method
