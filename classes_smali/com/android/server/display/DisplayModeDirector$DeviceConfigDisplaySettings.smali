.class Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceConfigDisplaySettings"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayModeDirector;)V
    .registers 2

    .line 1159
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1160
    return-void
.end method

.method private getIntArrayProperty(Ljava/lang/String;)[I
    .registers 4

    .line 1228
    const/4 v0, 0x0

    const-string v1, "display_manager"

    invoke-static {v1, p1, v0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1231
    if-eqz p1, :cond_e

    .line 1232
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->parseIntArray(Ljava/lang/String;)[I

    move-result-object p1

    return-object p1

    .line 1235
    :cond_e
    return-object v0
.end method

.method private parseIntArray(Ljava/lang/String;)[I
    .registers 6

    .line 1239
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1240
    array-length v1, v0

    new-array v1, v1, [I

    .line 1243
    const/4 v2, 0x0

    :goto_a
    :try_start_a
    array-length v3, v1

    if-ge v2, v3, :cond_18

    .line 1244
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_15} :catch_19

    .line 1243
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1249
    :cond_18
    goto :goto_36

    .line 1246
    :catch_19
    move-exception v0

    .line 1247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect format for array: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DisplayModeDirector"

    invoke-static {v1, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1248
    const/4 v1, 0x0

    .line 1251
    :goto_36
    return-object v1
.end method


# virtual methods
.method public getAmbientThresholds()[I
    .registers 2

    .line 1180
    const-string/jumbo v0, "peak_refresh_rate_ambient_thresholds"

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getIntArrayProperty(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getBrightnessThresholds()[I
    .registers 2

    .line 1171
    const-string/jumbo v0, "peak_refresh_rate_brightness_thresholds"

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getIntArrayProperty(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPeakRefreshRate()Ljava/lang/Float;
    .registers 4

    .line 1189
    const/high16 v0, -0x40800000  # -1.0f

    const-string v1, "display_manager"

    const-string/jumbo v2, "peak_refresh_rate_default"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    .line 1193
    cmpl-float v0, v1, v0

    if-nez v0, :cond_11

    .line 1194
    const/4 v0, 0x0

    return-object v0

    .line 1196
    :cond_11
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getRefreshRateInZone()I
    .registers 4

    .line 1200
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$1900(Lcom/android/server/display/DisplayModeDirector;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1203
    const-string v1, "display_manager"

    const-string/jumbo v2, "refresh_rate_in_zone"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 1208
    return v0
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 7

    .line 1213
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getBrightnessThresholds()[I

    move-result-object p1

    .line 1214
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getAmbientThresholds()[I

    move-result-object v0

    .line 1215
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getDefaultPeakRefreshRate()Ljava/lang/Float;

    move-result-object v1

    .line 1216
    invoke-virtual {p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->getRefreshRateInZone()I

    move-result v2

    .line 1218
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector;->access$1000(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object v3

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, p1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x2

    invoke-virtual {v3, p1, v4}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1220
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1221
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector;->access$1000(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1222
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1223
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector;->access$1000(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    move-result-object p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1224
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1225
    return-void
.end method

.method public startListening()V
    .registers 3

    .line 1163
    nop

    .line 1164
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 1163
    const-string v1, "display_manager"

    invoke-static {v1, v0, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 1165
    return-void
.end method
