.class Lcom/meizu/settings/calibration/ProximityCalibraton$1;
.super Ljava/lang/Object;
.source "ProximityCalibraton.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/calibration/ProximityCalibraton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/calibration/ProximityCalibraton;


# direct methods
.method constructor <init>(Lcom/meizu/settings/calibration/ProximityCalibraton;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/meizu/settings/calibration/ProximityCalibraton$1;->this$0:Lcom/meizu/settings/calibration/ProximityCalibraton;

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
