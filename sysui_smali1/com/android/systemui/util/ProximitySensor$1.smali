.class Lcom/android/systemui/util/ProximitySensor$1;
.super Ljava/lang/Object;
.source "ProximitySensor.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/ProximitySensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/ProximitySensor;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/ProximitySensor;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/android/systemui/util/ProximitySensor$1;->this$0:Lcom/android/systemui/util/ProximitySensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3

    return-void
.end method

.method public declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 3

    monitor-enter p0

    .line 48
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/util/ProximitySensor$1;->this$0:Lcom/android/systemui/util/ProximitySensor;

    invoke-static {v0, p1}, Lcom/android/systemui/util/ProximitySensor;->access$000(Lcom/android/systemui/util/ProximitySensor;Landroid/hardware/SensorEvent;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 49
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method
