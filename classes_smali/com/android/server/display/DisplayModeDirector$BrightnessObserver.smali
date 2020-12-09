.class Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;
    }
.end annotation


# static fields
.field private static final LIGHT_SENSOR_RATE_MS:I = 0xfa


# instance fields
.field private mAmbientBrightnessThresholds:[I

.field private mAmbientFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

.field private mAmbientLux:F

.field private final mContext:Landroid/content/Context;

.field private final mDisplayBrightnessSetting:Landroid/net/Uri;

.field private mDisplayBrightnessThresholds:[I

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

.field private mLowPowerModeEnabled:Z

.field private mRefreshRateChangeable:Z

.field private mRefreshRateInZone:I

.field private mScreenOn:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShouldObserveAmbientChange:Z

.field private mShouldObserveDisplayChange:Z

.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4

    .line 834
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    .line 835
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 806
    nop

    .line 807
    const-string/jumbo p1, "screen_brightness"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessSetting:Landroid/net/Uri;

    .line 818
    new-instance p1, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;-><init>(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/DisplayModeDirector$1;)V

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    .line 820
    const/high16 p1, -0x40800000  # -1.0f

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 828
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mScreenOn:Z

    .line 829
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    .line 830
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    .line 836
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    .line 837
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x107001b

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    .line 839
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x107000f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    .line 842
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    array-length p1, p1

    iget-object p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    array-length p2, p2

    if-ne p1, p2, :cond_47

    .line 846
    return-void

    .line 843
    :cond_47
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "display brightness threshold array and ambient brightness threshold array have different length"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)F
    .registers 1

    .line 805
    iget p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    return p0
.end method

.method static synthetic access$1102(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;F)F
    .registers 2

    .line 805
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/whitebalance/AmbientFilter;
    .registers 1

    .line 805
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V
    .registers 1

    .line 805
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)[I
    .registers 1

    .line 805
    iget-object p0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    return-object p0
.end method

.method private checkShouldObserve([I)Z
    .registers 6

    .line 996
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInZone:I

    const/4 v1, 0x0

    if-gtz v0, :cond_6

    .line 997
    return v1

    .line 1000
    :cond_6
    array-length v0, p1

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_13

    aget v3, p1, v2

    .line 1001
    if-ltz v3, :cond_10

    .line 1002
    const/4 p1, 0x1

    return p1

    .line 1000
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1006
    :cond_13
    return v1
.end method

.method private isDefaultDisplayOn()Z
    .registers 5

    .line 1072
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 1073
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1074
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_28

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/PowerManager;

    .line 1075
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_28

    move v1, v2

    goto :goto_29

    :cond_28
    nop

    .line 1074
    :goto_29
    return v1
.end method

.method private isInsideZone(IF)Z
    .registers 7

    .line 1010
    const/4 p2, 0x0

    move v0, p2

    :goto_2
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    array-length v2, v1

    if-ge v0, v2, :cond_2e

    .line 1011
    aget v1, v1, v0

    .line 1012
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    aget v2, v2, v0

    .line 1014
    const/4 v3, 0x1

    if-ltz v1, :cond_1c

    if-ltz v2, :cond_1c

    .line 1015
    if-gt p1, v1, :cond_2b

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2b

    .line 1016
    return v3

    .line 1018
    :cond_1c
    if-ltz v1, :cond_21

    .line 1019
    if-gt p1, v1, :cond_2b

    .line 1020
    return v3

    .line 1022
    :cond_21
    if-ltz v2, :cond_2b

    .line 1023
    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2b

    .line 1024
    return v3

    .line 1010
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1029
    :cond_2e
    return p2
.end method

.method private onBrightnessChangedLocked()V
    .registers 4

    .line 1033
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1036
    nop

    .line 1037
    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isInsideZone(IF)Z

    move-result v0

    .line 1038
    if-eqz v0, :cond_20

    .line 1039
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInZone:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    goto :goto_21

    .line 1038
    :cond_20
    const/4 v0, 0x0

    .line 1046
    :goto_21
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/server/display/DisplayModeDirector;->access$400(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 1047
    return-void
.end method

.method private onScreenOn(Z)V
    .registers 3

    .line 1050
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mScreenOn:Z

    if-eq v0, p1, :cond_9

    .line 1051
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mScreenOn:Z

    .line 1052
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    .line 1054
    :cond_9
    return-void
.end method

.method private restartObserver()V
    .registers 7

    .line 935
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->checkShouldObserve([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayChange:Z

    .line 936
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->checkShouldObserve([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientChange:Z

    .line 938
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 939
    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayChange:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_24

    .line 942
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 943
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessSetting:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_27

    .line 946
    :cond_24
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 949
    :goto_27
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientChange:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_85

    .line 950
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 951
    const v3, 0x104016f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 954
    nop

    .line 955
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_64

    .line 956
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v3

    .line 957
    nop

    :goto_48
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_64

    .line 958
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    .line 959
    invoke-virtual {v4}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 960
    nop

    .line 961
    move-object v1, v4

    goto :goto_64

    .line 957
    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 966
    :cond_64
    :goto_64
    if-nez v1, :cond_6d

    .line 967
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 970
    :cond_6d
    if-eqz v1, :cond_84

    .line 971
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 973
    invoke-static {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->createBrightnessFilter(Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/AmbientFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    .line 974
    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    .line 976
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isDefaultDisplayOn()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onScreenOn(Z)V

    .line 978
    :cond_84
    goto :goto_89

    .line 979
    :cond_85
    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/whitebalance/AmbientFilter;

    .line 980
    iput-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    .line 983
    :goto_89
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    if-eqz v0, :cond_9f

    .line 984
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    .line 985
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$300(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 986
    :try_start_97
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    .line 987
    monitor-exit v0

    goto :goto_9f

    :catchall_9c
    move-exception v1

    monitor-exit v0
    :try_end_9e
    .catchall {:try_start_97 .. :try_end_9e} :catchall_9c

    throw v1

    .line 989
    :cond_9f
    :goto_9f
    return-void
.end method

.method private updateSensorStatus()V
    .registers 6

    .line 1057
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_35

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    if-nez v1, :cond_9

    goto :goto_35

    .line 1061
    :cond_9
    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientChange:Z

    if-eqz v2, :cond_28

    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mScreenOn:Z

    if-eqz v2, :cond_28

    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    if-nez v2, :cond_28

    iget-boolean v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    if-eqz v2, :cond_28

    .line 1063
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    const v3, 0x3d090

    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    .line 1064
    invoke-static {v4}, Lcom/android/server/display/DisplayModeDirector;->access$1000(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v4

    .line 1063
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_34

    .line 1066
    :cond_28
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->removeCallbacks()V

    .line 1067
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1069
    :goto_34
    return-void

    .line 1058
    :cond_35
    :goto_35
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 9

    .line 909
    const-string v0, "  BrightnessObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRefreshRateInZone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInZone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 912
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_20
    if-ge v3, v1, :cond_3b

    aget v4, v0, v3

    .line 913
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mDisplayBrightnessThreshold: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 912
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 916
    :cond_3b
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    array-length v1, v0

    :goto_3e
    if-ge v2, v1, :cond_59

    aget v3, v0, v2

    .line 917
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mAmbientBrightnessThreshold: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 916
    add-int/lit8 v2, v2, 0x1

    goto :goto_3e

    .line 919
    :cond_59
    return-void
.end method

.method public observe(Landroid/hardware/SensorManager;)V
    .registers 5

    .line 849
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    .line 852
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector;->access$200(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getBrightnessThresholds()[I

    move-result-object p1

    .line 853
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$200(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getAmbientThresholds()[I

    move-result-object v0

    .line 855
    if-eqz p1, :cond_22

    if-eqz v0, :cond_22

    array-length v1, p1

    array-length v2, v0

    if-ne v1, v2, :cond_22

    .line 857
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    .line 858
    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    .line 861
    :cond_22
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector;->access$200(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInZone()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInZone:I

    .line 862
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 863
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector;->access$200(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->startListening()V

    .line 864
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 4

    .line 929
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector;->access$300(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 930
    :try_start_7
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    .line 931
    monitor-exit p1

    .line 932
    return-void

    .line 931
    :catchall_c
    move-exception p2

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw p2
.end method

.method public onDeviceConfigRefreshRateInZoneChanged(I)V
    .registers 3

    .line 902
    iget v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInZone:I

    if-eq p1, v0, :cond_9

    .line 903
    iput p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateInZone:I

    .line 904
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 906
    :cond_9
    return-void
.end method

.method public onDeviceConfigThresholdsChanged([I[I)V
    .registers 5

    .line 887
    if-eqz p1, :cond_d

    if-eqz p2, :cond_d

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_d

    .line 889
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    .line 890
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    goto :goto_2b

    .line 893
    :cond_d
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x107001b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mDisplayBrightnessThresholds:[I

    .line 895
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x107000f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mAmbientBrightnessThresholds:[I

    .line 898
    :goto_2b
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 899
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 2

    .line 922
    if-nez p1, :cond_9

    .line 923
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->isDefaultDisplayOn()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onScreenOn(Z)V

    .line 925
    :cond_9
    return-void
.end method

.method public onLowPowerModeEnabledLocked(Z)V
    .registers 3

    .line 879
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    if-eq v0, p1, :cond_9

    .line 880
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    .line 881
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    .line 883
    :cond_9
    return-void
.end method

.method public onRefreshRateSettingChangedLocked(FF)V
    .registers 4

    .line 867
    sub-float p1, p2, p1

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p1, p1, v0

    const/4 v0, 0x0

    if-lez p1, :cond_11

    const/high16 p1, 0x42700000  # 60.0f

    cmpl-float p1, p2, p1

    if-lez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    move p1, v0

    .line 868
    :goto_12
    iget-boolean p2, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    if-eq p2, p1, :cond_23

    .line 869
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    .line 870
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    .line 871
    if-nez p1, :cond_23

    .line 873
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/4 p2, 0x0

    invoke-static {p1, v0, p2}, Lcom/android/server/display/DisplayModeDirector;->access$400(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 876
    :cond_23
    return-void
.end method
