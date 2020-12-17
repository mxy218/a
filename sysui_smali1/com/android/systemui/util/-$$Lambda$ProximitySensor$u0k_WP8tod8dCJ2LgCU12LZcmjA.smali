.class public final synthetic Lcom/android/systemui/util/-$$Lambda$ProximitySensor$u0k_WP8tod8dCJ2LgCU12LZcmjA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/util/ProximitySensor;

.field private final synthetic f$1:Landroid/hardware/SensorEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/ProximitySensor;Landroid/hardware/SensorEvent;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/-$$Lambda$ProximitySensor$u0k_WP8tod8dCJ2LgCU12LZcmjA;->f$0:Lcom/android/systemui/util/ProximitySensor;

    iput-object p2, p0, Lcom/android/systemui/util/-$$Lambda$ProximitySensor$u0k_WP8tod8dCJ2LgCU12LZcmjA;->f$1:Landroid/hardware/SensorEvent;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/util/-$$Lambda$ProximitySensor$u0k_WP8tod8dCJ2LgCU12LZcmjA;->f$0:Lcom/android/systemui/util/ProximitySensor;

    iget-object p0, p0, Lcom/android/systemui/util/-$$Lambda$ProximitySensor$u0k_WP8tod8dCJ2LgCU12LZcmjA;->f$1:Landroid/hardware/SensorEvent;

    check-cast p1, Lcom/android/systemui/util/ProximitySensor$ProximitySensorListener;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/util/ProximitySensor;->lambda$onSensorEvent$0$ProximitySensor(Landroid/hardware/SensorEvent;Lcom/android/systemui/util/ProximitySensor$ProximitySensorListener;)V

    return-void
.end method
