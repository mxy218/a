.class Lcom/android/server/display/AutomaticBrightnessController$2;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 2

    .line 938
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    .line 951
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 5

    .line 941
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$1100(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 942
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 943
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget p1, p1, v2

    .line 944
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$2;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v2, v0, v1, p1}, Lcom/android/server/display/AutomaticBrightnessController;->access$1200(Lcom/android/server/display/AutomaticBrightnessController;JF)V

    .line 946
    :cond_16
    return-void
.end method
