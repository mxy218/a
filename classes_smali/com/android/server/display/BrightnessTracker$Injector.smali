.class Lcom/android/server/display/BrightnessTracker$Injector;
.super Ljava/lang/Object;
.source "BrightnessTracker.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelIdleJob(Landroid/content/Context;)V
    .registers 2

    .line 1094
    invoke-static {p1}, Lcom/android/server/display/BrightnessIdleJob;->cancelJob(Landroid/content/Context;)V

    .line 1095
    return-void
.end method

.method public currentTimeMillis()J
    .registers 3

    .line 1062
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public elapsedRealtimeNanos()J
    .registers 3

    .line 1066
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    return-wide v0
.end method

.method public enableColorSampling(ZI)Z
    .registers 6

    .line 1131
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1132
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1133
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayedContentSamplingEnabled(IZII)Z

    move-result p1

    return p1
.end method

.method public getBackgroundHandler()Landroid/os/Handler;
    .registers 2

    .line 1043
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getFile(Ljava/lang/String;)Landroid/util/AtomicFile;
    .registers 5

    .line 1058
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDeDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getFocusedStack()Landroid/app/ActivityManager$StackInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1086
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getFrameRate(Landroid/content/Context;)F
    .registers 3

    .line 1118
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 1119
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    .line 1120
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    return p1
.end method

.method public getNightDisplayColorTemperature(Landroid/content/Context;)I
    .registers 3

    .line 1102
    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/ColorDisplayManager;

    .line 1103
    invoke-virtual {p1}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayColorTemperature()I

    move-result p1

    .line 1102
    return p1
.end method

.method public getProfileIds(Landroid/os/UserManager;I)[I
    .registers 4

    .line 1078
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 1079
    invoke-virtual {p1, p2, v0}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object p1

    return-object p1

    .line 1081
    :cond_8
    const/4 p1, 0x1

    new-array p1, p1, [I

    aput p2, p1, v0

    return-object p1
.end method

.method public getSamplingAttributes()Landroid/hardware/display/DisplayedContentSamplingAttributes;
    .registers 3

    .line 1124
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1125
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1126
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayedContentSamplingAttributes(I)Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getSecureIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .registers 5

    .line 1054
    invoke-static {p1, p2, p3, p4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public getUserId(Landroid/os/UserManager;I)I
    .registers 3

    .line 1074
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserHandle(I)I

    move-result p1

    return p1
.end method

.method public getUserSerialNumber(Landroid/os/UserManager;I)I
    .registers 3

    .line 1070
    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result p1

    return p1
.end method

.method public isBrightnessModeAutomatic(Landroid/content/ContentResolver;)Z
    .registers 5

    .line 1047
    const/4 v0, 0x0

    const-string/jumbo v1, "screen_brightness_mode"

    const/4 v2, -0x2

    invoke-static {p1, v1, v0, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_d

    move v0, v1

    :cond_d
    return v0
.end method

.method public isInteractive(Landroid/content/Context;)Z
    .registers 3

    .line 1098
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p1

    return p1
.end method

.method public isNightDisplayActivated(Landroid/content/Context;)Z
    .registers 3

    .line 1107
    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    move-result p1

    return p1
.end method

.method public registerBrightnessModeObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .registers 6

    .line 1022
    const-string/jumbo v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1025
    return-void
.end method

.method public registerDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V
    .registers 5

    .line 1139
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 1140
    invoke-virtual {p1, p2, p3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1141
    return-void
.end method

.method public registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 4

    .line 1034
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1035
    return-void
.end method

.method public registerSensorListener(Landroid/content/Context;Landroid/hardware/SensorEventListener;Landroid/os/Handler;)V
    .registers 6

    .line 1009
    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    .line 1010
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 1011
    const/4 v1, 0x3

    invoke-virtual {p1, p2, v0, v1, p3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 1013
    return-void
.end method

.method public sampleColor(I)Landroid/hardware/display/DisplayedContentSample;
    .registers 9

    .line 1111
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    .line 1112
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/hardware/display/DisplayManagerInternal;

    .line 1113
    int-to-long v3, p1

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayedContentSample(IJJ)Landroid/hardware/display/DisplayedContentSample;

    move-result-object p1

    return-object p1
.end method

.method public scheduleIdleJob(Landroid/content/Context;)V
    .registers 2

    .line 1090
    invoke-static {p1}, Lcom/android/server/display/BrightnessIdleJob;->scheduleJob(Landroid/content/Context;)V

    .line 1091
    return-void
.end method

.method public unRegisterDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;)V
    .registers 4

    .line 1145
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    .line 1146
    invoke-virtual {p1, p2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 1147
    return-void
.end method

.method public unregisterBrightnessModeObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .registers 3

    .line 1029
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1030
    return-void
.end method

.method public unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 3

    .line 1039
    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1040
    return-void
.end method

.method public unregisterSensorListener(Landroid/content/Context;Landroid/hardware/SensorEventListener;)V
    .registers 4

    .line 1016
    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    .line 1017
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1018
    return-void
.end method
