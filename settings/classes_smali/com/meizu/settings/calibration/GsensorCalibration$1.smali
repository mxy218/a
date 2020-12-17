.class Lcom/meizu/settings/calibration/GsensorCalibration$1;
.super Ljava/lang/Object;
.source "GsensorCalibration.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/calibration/GsensorCalibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/calibration/GsensorCalibration;


# direct methods
.method constructor <init>(Lcom/meizu/settings/calibration/GsensorCalibration;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/meizu/settings/calibration/GsensorCalibration$1;->this$0:Lcom/meizu/settings/calibration/GsensorCalibration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 2

    return-void
.end method
