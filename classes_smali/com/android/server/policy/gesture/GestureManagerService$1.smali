.class Lcom/android/server/policy/gesture/GestureManagerService$1;
.super Ljava/lang/Object;
.source "GestureManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/gesture/GestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/gesture/GestureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/policy/gesture/GestureManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/policy/gesture/GestureManagerService;

    .line 88
    iput-object p1, p0, Lcom/android/server/policy/gesture/GestureManagerService$1;->this$0:Lcom/android/server/policy/gesture/GestureManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"  # Landroid/hardware/Sensor;
    .param p2, "accuracy"  # I

    .line 97
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 2
    .param p1, "event"  # Landroid/hardware/SensorEvent;

    .line 92
    return-void
.end method
