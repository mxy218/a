.class abstract Lcom/android/server/display/whitebalance/AmbientSensor;
.super Ljava/lang/Object;
.source "AmbientSensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/whitebalance/AmbientSensor$AmbientColorTemperatureSensor;,
        Lcom/android/server/display/whitebalance/AmbientSensor$AmbientBrightnessSensor;
    }
.end annotation


# static fields
.field private static final HISTORY_SIZE:I = 0x32


# instance fields
.field private mEnabled:Z

.field private mEventsCount:I

.field private mEventsHistory:Lcom/android/server/display/utils/History;

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Landroid/hardware/SensorEventListener;

.field protected mLoggingEnabled:Z

.field private mRate:I

.field protected mSensor:Landroid/hardware/Sensor;

.field protected final mSensorManager:Landroid/hardware/SensorManager;

.field protected mTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Handler;Landroid/hardware/SensorManager;I)V
    .registers 7
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "handler"  # Landroid/os/Handler;
    .param p3, "sensorManager"  # Landroid/hardware/SensorManager;
    .param p4, "rate"  # I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    new-instance v0, Lcom/android/server/display/whitebalance/AmbientSensor$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/whitebalance/AmbientSensor$1;-><init>(Lcom/android/server/display/whitebalance/AmbientSensor;)V

    iput-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mListener:Landroid/hardware/SensorEventListener;

    .line 79
    invoke-static {p2, p3, p4}, Lcom/android/server/display/whitebalance/AmbientSensor;->validateArguments(Landroid/os/Handler;Landroid/hardware/SensorManager;I)V

    .line 80
    iput-object p1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mTag:Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mLoggingEnabled:Z

    .line 82
    iput-object p2, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mHandler:Landroid/os/Handler;

    .line 83
    iput-object p3, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mSensorManager:Landroid/hardware/SensorManager;

    .line 84
    iput-boolean v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEnabled:Z

    .line 85
    iput p4, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mRate:I

    .line 86
    iput v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEventsCount:I

    .line 87
    new-instance v0, Lcom/android/server/display/utils/History;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/android/server/display/utils/History;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEventsHistory:Lcom/android/server/display/utils/History;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/whitebalance/AmbientSensor;F)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/whitebalance/AmbientSensor;
    .param p1, "x1"  # F

    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor;->handleNewEvent(F)V

    return-void
.end method

.method private disable()Z
    .registers 4

    .line 164
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 165
    return v1

    .line 167
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mLoggingEnabled:Z

    if-eqz v0, :cond_11

    .line 168
    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mTag:Ljava/lang/String;

    const-string v2, "disabling"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_11
    iput-boolean v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEnabled:Z

    .line 171
    iput v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEventsCount:I

    .line 172
    invoke-direct {p0}, Lcom/android/server/display/whitebalance/AmbientSensor;->stopListening()V

    .line 173
    const/4 v0, 0x1

    return v0
.end method

.method private enable()Z
    .registers 3

    .line 152
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEnabled:Z

    if-eqz v0, :cond_6

    .line 153
    const/4 v0, 0x0

    return v0

    .line 155
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mLoggingEnabled:Z

    if-eqz v0, :cond_11

    .line 156
    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mTag:Ljava/lang/String;

    const-string v1, "enabling"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEnabled:Z

    .line 159
    invoke-direct {p0}, Lcom/android/server/display/whitebalance/AmbientSensor;->startListening()V

    .line 160
    return v0
.end method

.method private handleNewEvent(F)V
    .registers 5
    .param p1, "value"  # F

    .line 193
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEnabled:Z

    if-nez v0, :cond_5

    .line 194
    return-void

    .line 196
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mLoggingEnabled:Z

    if-eqz v0, :cond_1f

    .line 197
    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle new event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_1f
    iget v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEventsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEventsCount:I

    .line 200
    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEventsHistory:Lcom/android/server/display/utils/History;

    invoke-virtual {v0, p1}, Lcom/android/server/display/utils/History;->add(F)V

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/server/display/whitebalance/AmbientSensor;->update(F)V

    .line 202
    return-void
.end method

.method private startListening()V
    .registers 6

    .line 177
    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_5

    .line 178
    return-void

    .line 180
    :cond_5
    iget-object v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mRate:I

    mul-int/lit16 v3, v3, 0x3e8

    iget-object v4, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 181
    return-void
.end method

.method private stopListening()V
    .registers 3

    .line 184
    iget-object v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_5

    .line 185
    return-void

    .line 187
    :cond_5
    iget-object v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 188
    return-void
.end method

.method private static validateArguments(Landroid/os/Handler;Landroid/hardware/SensorManager;I)V
    .registers 5
    .param p0, "handler"  # Landroid/os/Handler;
    .param p1, "sensorManager"  # Landroid/hardware/SensorManager;
    .param p2, "rate"  # I

    .line 142
    const-string v0, "handler cannot be null"

    invoke-static {p0, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string/jumbo v0, "sensorManager cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    if-lez p2, :cond_e

    .line 147
    return-void

    .line 145
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rate must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "writer"  # Ljava/io/PrintWriter;

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLoggingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mLoggingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mSensorManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mEventsCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEventsCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mEventsHistory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mEventsHistory:Lcom/android/server/display/utils/History;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public setEnabled(Z)Z
    .registers 3
    .param p1, "enabled"  # Z

    .line 99
    if-eqz p1, :cond_7

    .line 100
    invoke-direct {p0}, Lcom/android/server/display/whitebalance/AmbientSensor;->enable()Z

    move-result v0

    return v0

    .line 102
    :cond_7
    invoke-direct {p0}, Lcom/android/server/display/whitebalance/AmbientSensor;->disable()Z

    move-result v0

    return v0
.end method

.method public setLoggingEnabled(Z)Z
    .registers 3
    .param p1, "loggingEnabled"  # Z

    .line 115
    iget-boolean v0, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_6

    .line 116
    const/4 v0, 0x0

    return v0

    .line 118
    :cond_6
    iput-boolean p1, p0, Lcom/android/server/display/whitebalance/AmbientSensor;->mLoggingEnabled:Z

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract update(F)V
.end method
