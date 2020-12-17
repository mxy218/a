.class Lcom/android/server/DeviceControlService$2;
.super Ljava/lang/Object;
.source "DeviceControlService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceControlService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceControlService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/DeviceControlService;

    .line 122
    iput-object p1, p0, Lcom/android/server/DeviceControlService$2;->this$0:Lcom/android/server/DeviceControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"  # Landroid/hardware/Sensor;
    .param p2, "accuracy"  # I

    .line 131
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 2
    .param p1, "event"  # Landroid/hardware/SensorEvent;

    .line 127
    return-void
.end method
