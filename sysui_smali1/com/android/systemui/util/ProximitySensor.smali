.class public Lcom/android/systemui/util/ProximitySensor;
.super Ljava/lang/Object;
.source "ProximitySensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/ProximitySensor$ProximityEvent;,
        Lcom/android/systemui/util/ProximitySensor$ProximitySensorListener;
    }
.end annotation


# instance fields
.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/util/ProximitySensor$ProximitySensorListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxRange:F

.field private mNear:Z

.field private final mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Lcom/android/systemui/util/AsyncSensorManager;

.field private mTag:Ljava/lang/String;

.field private final mUsingBrightnessSensor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/AsyncSensorManager;)V
    .registers 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lcom/android/systemui/util/ProximitySensor$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/ProximitySensor$1;-><init>(Lcom/android/systemui/util/ProximitySensor;)V

    iput-object v0, p0, Lcom/android/systemui/util/ProximitySensor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/ProximitySensor;->mListeners:Ljava/util/List;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/android/systemui/util/ProximitySensor;->mTag:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/android/systemui/util/ProximitySensor;->mSensorManager:Lcom/android/systemui/util/AsyncSensorManager;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/ProximitySensor;->findBrightnessSensor(Landroid/content/Context;Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;

    move-result-object p1

    if-nez p1, :cond_26

    const/4 p1, 0x0

    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/util/ProximitySensor;->mUsingBrightnessSensor:Z

    const/16 p1, 0x8

    .line 66
    invoke-virtual {p2, p1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    goto :goto_29

    :cond_26
    const/4 p2, 0x1

    .line 68
    iput-boolean p2, p0, Lcom/android/systemui/util/ProximitySensor;->mUsingBrightnessSensor:Z

    .line 70
    :goto_29
    iput-object p1, p0, Lcom/android/systemui/util/ProximitySensor;->mSensor:Landroid/hardware/Sensor;

    .line 71
    iget-object p1, p0, Lcom/android/systemui/util/ProximitySensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz p1, :cond_36

    .line 72
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/util/ProximitySensor;->mMaxRange:F

    goto :goto_39

    :cond_36
    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lcom/android/systemui/util/ProximitySensor;->mMaxRange:F

    :goto_39
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/util/ProximitySensor;Landroid/hardware/SensorEvent;)V
    .registers 2

    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ProximitySensor;->onSensorEvent(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method private findBrightnessSensor(Landroid/content/Context;Landroid/hardware/SensorManager;)Landroid/hardware/Sensor;
    .registers 4

    .line 83
    sget p0, Lcom/android/systemui/R$string;->doze_brightness_sensor_type:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, -0x1

    .line 84
    invoke-virtual {p2, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p1

    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/hardware/Sensor;

    .line 87
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_27

    :cond_26
    const/4 p2, 0x0

    :goto_27
    return-object p2
.end method

.method private logDebug(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method private onSensorEvent(Landroid/hardware/SensorEvent;)V
    .registers 6

    .line 144
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v2, p0, Lcom/android/systemui/util/ProximitySensor;->mMaxRange:F

    cmpg-float v0, v0, v2

    const/4 v2, 0x1

    if-gez v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    .line 145
    :goto_f
    iget-boolean v3, p0, Lcom/android/systemui/util/ProximitySensor;->mUsingBrightnessSensor:Z

    if-eqz v3, :cond_1f

    .line 146
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v1

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1e

    move v0, v2

    goto :goto_1f

    :cond_1e
    move v0, v1

    .line 148
    :cond_1f
    :goto_1f
    iput-boolean v0, p0, Lcom/android/systemui/util/ProximitySensor;->mNear:Z

    .line 149
    iget-object v0, p0, Lcom/android/systemui/util/ProximitySensor;->mListeners:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/util/-$$Lambda$ProximitySensor$u0k_WP8tod8dCJ2LgCU12LZcmjA;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/util/-$$Lambda$ProximitySensor$u0k_WP8tod8dCJ2LgCU12LZcmjA;-><init>(Lcom/android/systemui/util/ProximitySensor;Landroid/hardware/SensorEvent;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public getSensorAvailable()Z
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/systemui/util/ProximitySensor;->mSensor:Landroid/hardware/Sensor;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public synthetic lambda$onSensorEvent$0$ProximitySensor(Landroid/hardware/SensorEvent;Lcom/android/systemui/util/ProximitySensor$ProximitySensorListener;)V
    .registers 6

    .line 150
    new-instance v0, Lcom/android/systemui/util/ProximitySensor$ProximityEvent;

    iget-boolean p0, p0, Lcom/android/systemui/util/ProximitySensor;->mNear:Z

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/util/ProximitySensor$ProximityEvent;-><init>(ZJ)V

    invoke-interface {p2, v0}, Lcom/android/systemui/util/ProximitySensor$ProximitySensorListener;->onProximitySensorEvent(Lcom/android/systemui/util/ProximitySensor$ProximityEvent;)V

    return-void
.end method

.method public register(Lcom/android/systemui/util/ProximitySensor$ProximitySensorListener;)Z
    .registers 4

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/util/ProximitySensor;->getSensorAvailable()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 114
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "using brightness sensor? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/util/ProximitySensor;->mUsingBrightnessSensor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/util/ProximitySensor;->logDebug(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/util/ProximitySensor;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object p1, p0, Lcom/android/systemui/util/ProximitySensor;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3b

    const-string p1, "registering sensor listener"

    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ProximitySensor;->logDebug(Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/android/systemui/util/ProximitySensor;->mSensorManager:Lcom/android/systemui/util/AsyncSensorManager;

    iget-object v1, p0, Lcom/android/systemui/util/ProximitySensor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object p0, p0, Lcom/android/systemui/util/ProximitySensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {p1, v1, p0, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_3b
    return v0
.end method

.method public setTag(Ljava/lang/String;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/android/systemui/util/ProximitySensor;->mTag:Ljava/lang/String;

    return-void
.end method

.method public unregister(Lcom/android/systemui/util/ProximitySensor$ProximitySensorListener;)V
    .registers 3

    .line 132
    iget-object v0, p0, Lcom/android/systemui/util/ProximitySensor;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 133
    iget-object p1, p0, Lcom/android/systemui/util/ProximitySensor;->mListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1a

    const-string/jumbo p1, "unregistering sensor listener"

    .line 134
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ProximitySensor;->logDebug(Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/android/systemui/util/ProximitySensor;->mSensorManager:Lcom/android/systemui/util/AsyncSensorManager;

    iget-object p0, p0, Lcom/android/systemui/util/ProximitySensor;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1a
    return-void
.end method
