.class public final Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;
.super Ljava/lang/Object;
.source "UnderprintScreenFingerprintModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$StateChangeCallback;
    }
.end annotation


# static fields
.field public static mUnderprintScreenFingerprintModel:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlreadyRegister:Z

.field private mAuthenticationAcquire:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentValue:F

.field private mDismissFingerprintPendingForMotionIntent:Landroid/app/PendingIntent;

.field private mDismissFingerprintPendingIntent:Landroid/app/PendingIntent;

.field private mFilterMotion:Z

.field private mFilterRaiseup:Z

.field private mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mMotionSensorListener:Landroid/hardware/SensorEventListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRaiseSensor:Landroid/hardware/Sensor;

.field private mRaiseSensorAleardyRegister:Z

.field private mRaiseSensorShow:Landroid/hardware/Sensor;

.field private final mRaiseupSensorShowListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mStateChangeCallback:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$StateChangeCallback;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40000000  # 2.0f

    .line 38
    iput v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mCurrentValue:F

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mFilterMotion:Z

    .line 54
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mFilterRaiseup:Z

    .line 71
    new-instance v1, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$1;-><init>(Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;)V

    iput-object v1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mMotionSensorListener:Landroid/hardware/SensorEventListener;

    .line 93
    new-instance v1, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$2;

    invoke-direct {v1, p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$2;-><init>(Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;)V

    iput-object v1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mRaiseupSensorShowListener:Landroid/hardware/SensorEventListener;

    .line 56
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mContext:Landroid/content/Context;

    const-string v1, "fingerprint"

    .line 57
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    .line 58
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mSensorManager:Landroid/hardware/SensorManager;

    .line 59
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x10004

    invoke-virtual {p1, v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mRaiseSensor:Landroid/hardware/Sensor;

    .line 60
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x10003

    invoke-virtual {p1, v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(IZ)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mRaiseSensorShow:Landroid/hardware/Sensor;

    .line 61
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mPowerManager:Landroid/os/PowerManager;

    .line 62
    iget-object p1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mContext:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mFilterMotion:Z

    return p0
.end method

.method static synthetic access$002(Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;Z)Z
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mFilterMotion:Z

    return p1
.end method

.method static synthetic access$100(Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;)Landroid/os/PowerManager;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;F)F
    .registers 2

    .line 25
    iput p1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mCurrentValue:F

    return p1
.end method

.method static synthetic access$300(Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$StateChangeCallback;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mStateChangeCallback:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$StateChangeCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;)Z
    .registers 1

    .line 25
    iget-boolean p0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mFilterRaiseup:Z

    return p0
.end method

.method static synthetic access$402(Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;Z)Z
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mFilterRaiseup:Z

    return p1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;
    .registers 3

    const-class v0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    monitor-enter v0

    .line 65
    :try_start_3
    sget-object v1, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mUnderprintScreenFingerprintModel:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    if-nez v1, :cond_e

    .line 66
    new-instance v1, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    invoke-direct {v1, p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mUnderprintScreenFingerprintModel:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;

    .line 68
    :cond_e
    sget-object p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mUnderprintScreenFingerprintModel:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public canDisMissFp()Z
    .registers 3

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mCurrentValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnderprintScreenFingerprintModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object v0

    iget p0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mCurrentValue:F

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->compareFloatValue(FF)Z

    move-result p0

    if-eqz p0, :cond_29

    const/4 p0, 0x1

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public canShowFp()Z
    .registers 4

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mCurrentValue:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UnderprintScreenFingerprintModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object v0

    iget v1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mCurrentValue:F

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->compareFloatValue(FF)Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mContext:Landroid/content/Context;

    .line 231
    invoke-static {v0}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/utils/SystemUICommonUtils;

    move-result-object v0

    iget p0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mCurrentValue:F

    const/high16 v1, 0x40000000  # 2.0f

    invoke-virtual {v0, p0, v1}, Lcom/flyme/systemui/utils/SystemUICommonUtils;->compareFloatValue(FF)Z

    move-result p0

    if-eqz p0, :cond_39

    goto :goto_3b

    :cond_39
    const/4 p0, 0x0

    return p0

    :cond_3b
    :goto_3b
    const/4 p0, 0x1

    return p0
.end method

.method public cancelDelayBroadcast()V
    .registers 3

    .line 187
    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mAuthenticationAcquire:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mDismissFingerprintPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1d

    const-string v0, "UnderprintScreenFingerprintModel"

    const-string v1, "cancel broadcast"

    .line 188
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mAuthenticationAcquire:Z

    .line 190
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mDismissFingerprintPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1d
    return-void
.end method

.method public cancelDelayBroadcastForMotion()V
    .registers 3

    .line 207
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mDismissFingerprintPendingForMotionIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_16

    const-string v0, "UnderprintScreenFingerprintModel"

    const-string v1, "cancel broadcast for motion"

    .line 208
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mDismissFingerprintPendingForMotionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_16
    return-void
.end method

.method public disMissFpicon()V
    .registers 2

    .line 162
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->setFingerprintIconVisibileFromAOD(Z)V

    return-void
.end method

.method public executeShowFp()V
    .registers 2

    .line 238
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mStateChangeCallback:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$StateChangeCallback;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-interface {p0, v0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$StateChangeCallback;->stateChange(F)V

    return-void
.end method

.method public getAuthenticationAcquire()Z
    .registers 1

    .line 213
    iget-boolean p0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mAuthenticationAcquire:Z

    return p0
.end method

.method public getFingerprintVisibility()Z
    .registers 1

    .line 242
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->isFingerprintIconVisible()Z

    move-result p0

    return p0
.end method

.method public registerRaiseSensor()V
    .registers 4

    .line 124
    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mRaiseSensorAleardyRegister:Z

    if-nez v0, :cond_23

    const-string v0, "UnderprintScreenFingerprintModel"

    const-string v1, "registerRaiseSensor"

    .line 125
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mRaiseSensorAleardyRegister:Z

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mFilterRaiseup:Z

    const-string v1, "persist.sys.meizu.fingerprint"

    .line 128
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 129
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mRaiseupSensorShowListener:Landroid/hardware/SensorEventListener;

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mRaiseSensorShow:Landroid/hardware/Sensor;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, p0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_23
    return-void
.end method

.method public registerSensor()V
    .registers 5

    .line 115
    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mAlreadyRegister:Z

    if-nez v0, :cond_1b

    const-string v0, "UnderprintScreenFingerprintModel"

    const-string v1, "register sensor"

    .line 116
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mAlreadyRegister:Z

    .line 118
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mMotionSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mRaiseSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 119
    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->sendDismissDelayBroadcastForMotion()V

    :cond_1b
    return-void
.end method

.method public sendDismissDelayBroadcast()V
    .registers 7

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mAuthenticationAcquire:Z

    .line 175
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mDismissFingerprintPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_19

    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "delay_dismiss_fingerprint"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mDismissFingerprintPendingIntent:Landroid/app/PendingIntent;

    .line 180
    :cond_19
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mDismissFingerprintPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string v0, "UnderprintScreenFingerprintModel"

    const-string v1, "send dismiss fingerprinticon broadcast"

    .line 181
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    .line 183
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mDismissFingerprintPendingIntent:Landroid/app/PendingIntent;

    .line 182
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public sendDismissDelayBroadcastForMotion()V
    .registers 7

    .line 195
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mDismissFingerprintPendingForMotionIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_16

    .line 196
    new-instance v0, Landroid/content/Intent;

    const-string v1, "delay_dismiss_fingerprint_for_motion"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mDismissFingerprintPendingForMotionIntent:Landroid/app/PendingIntent;

    .line 200
    :cond_16
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mDismissFingerprintPendingForMotionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string v0, "UnderprintScreenFingerprintModel"

    const-string v1, "send dismiss fingerprinticon broadcast for motion"

    .line 201
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mDismissFingerprintPendingForMotionIntent:Landroid/app/PendingIntent;

    .line 202
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public setAuthenticationAcquire(Z)V
    .registers 2

    .line 217
    iput-boolean p1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mAuthenticationAcquire:Z

    return-void
.end method

.method public setCallback(Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$StateChangeCallback;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mStateChangeCallback:Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel$StateChangeCallback;

    return-void
.end method

.method public showFpIcon()V
    .registers 2

    .line 158
    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->setFingerprintIconVisibileFromAOD(Z)V

    return-void
.end method

.method public unRegisterRaiseSensor()V
    .registers 3

    .line 150
    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mRaiseSensorAleardyRegister:Z

    if-eqz v0, :cond_16

    const-string v0, "UnderprintScreenFingerprintModel"

    const-string/jumbo v1, "unRegisterRaiseSensor"

    .line 151
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mRaiseSensorAleardyRegister:Z

    .line 153
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mRaiseupSensorShowListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_16
    return-void
.end method

.method public unRegisterSensor()V
    .registers 3

    .line 135
    iget-boolean v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mAlreadyRegister:Z

    if-eqz v0, :cond_28

    const-string v0, "UnderprintScreenFingerprintModel"

    const-string/jumbo v1, "unregister sensor"

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mFilterMotion:Z

    .line 138
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mFilterRaiseup:Z

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mAlreadyRegister:Z

    const/high16 v0, 0x40000000  # 2.0f

    .line 140
    iput v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mCurrentValue:F

    .line 142
    iget-object v0, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->mMotionSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 143
    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->unRegisterRaiseSensor()V

    .line 144
    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->cancelDelayBroadcast()V

    .line 145
    invoke-virtual {p0}, Lcom/flyme/systemuitools/aod/model/UnderprintScreenFingerprintModel;->cancelDelayBroadcastForMotion()V

    :cond_28
    return-void
.end method
