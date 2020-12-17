.class Lcom/android/server/VibratorService$Vibration;
.super Ljava/lang/Object;
.source "VibratorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Vibration"
.end annotation


# instance fields
.field public effect:Landroid/os/VibrationEffect;

.field public final opPkg:Ljava/lang/String;

.field public originalEffect:Landroid/os/VibrationEffect;

.field public final reason:Ljava/lang/String;

.field public final startTime:J

.field public final startTimeDebug:J

.field final synthetic this$0:Lcom/android/server/VibratorService;

.field public final token:Landroid/os/IBinder;

.field public final uid:I

.field public final usageHint:I


# direct methods
.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p2, "token"  # Landroid/os/IBinder;
    .param p3, "effect"  # Landroid/os/VibrationEffect;
    .param p4, "usageHint"  # I
    .param p5, "uid"  # I
    .param p6, "opPkg"  # Ljava/lang/String;
    .param p7, "reason"  # Ljava/lang/String;

    .line 233
    iput-object p1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p2, p0, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    .line 235
    iput-object p3, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    .line 236
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->startTime:J

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/VibratorService$Vibration;->startTimeDebug:J

    .line 238
    iput p4, p0, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    .line 239
    iput p5, p0, Lcom/android/server/VibratorService$Vibration;->uid:I

    .line 240
    iput-object p6, p0, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    .line 241
    iput-object p7, p0, Lcom/android/server/VibratorService$Vibration;->reason:Ljava/lang/String;

    .line 242
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;Ljava/lang/String;Lcom/android/server/VibratorService$1;)V
    .registers 9
    .param p1, "x0"  # Lcom/android/server/VibratorService;
    .param p2, "x1"  # Landroid/os/IBinder;
    .param p3, "x2"  # Landroid/os/VibrationEffect;
    .param p4, "x3"  # I
    .param p5, "x4"  # I
    .param p6, "x5"  # Ljava/lang/String;
    .param p7, "x6"  # Ljava/lang/String;
    .param p8, "x7"  # Lcom/android/server/VibratorService$1;

    .line 212
    invoke-direct/range {p0 .. p7}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 245
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 246
    :try_start_7
    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v1

    if-ne p0, v1, :cond_14

    .line 247
    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$400(Lcom/android/server/VibratorService;)V

    .line 249
    :cond_14
    monitor-exit v0

    .line 250
    return-void

    .line 249
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public hasTimeoutLongerThan(J)Z
    .registers 7
    .param p1, "millis"  # J

    .line 253
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    .line 254
    .local v0, "duration":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_12

    cmp-long v2, v0, p1

    if-lez v2, :cond_12

    const/4 v2, 0x1

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return v2
.end method

.method public isAlarm()Z
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$900(I)Z

    move-result v0

    return v0
.end method

.method public isFromSystem()Z
    .registers 3

    .line 302
    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->uid:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_15

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public isHapticFeedback()Z
    .registers 9

    .line 258
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$500(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 259
    return v1

    .line 263
    :cond_c
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$600(Lcom/android/server/VibratorService;)Landroid/os/FlymeVibratorHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    invoke-virtual {v0, v2}, Landroid/os/FlymeVibratorHelper;->isHapticFeedback(Landroid/os/VibrationEffect;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 264
    return v1

    .line 268
    :cond_1b
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v0, Landroid/os/VibrationEffect$Prebaked;

    const/4 v3, 0x0

    if-eqz v2, :cond_45

    .line 269
    check-cast v0, Landroid/os/VibrationEffect$Prebaked;

    .line 270
    .local v0, "prebaked":Landroid/os/VibrationEffect$Prebaked;
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v2

    if-eqz v2, :cond_44

    if-eq v2, v1, :cond_44

    const/4 v4, 0x2

    if-eq v2, v4, :cond_44

    const/4 v4, 0x3

    if-eq v2, v4, :cond_44

    const/4 v4, 0x4

    if-eq v2, v4, :cond_44

    const/4 v4, 0x5

    if-eq v2, v4, :cond_44

    const/16 v4, 0x15

    if-eq v2, v4, :cond_44

    .line 280
    const-string v1, "VibratorService"

    const-string v2, "Unknown prebaked vibration effect, assuming it isn\'t haptic feedback."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return v3

    .line 278
    :cond_44
    return v1

    .line 285
    .end local v0  # "prebaked":Landroid/os/VibrationEffect$Prebaked;
    :cond_45
    invoke-virtual {v0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v4

    .line 286
    .local v4, "duration":J
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_56

    const-wide/16 v6, 0x1388

    cmp-long v0, v4, v6

    if-gez v0, :cond_56

    goto :goto_57

    :cond_56
    move v1, v3

    :goto_57
    return v1
.end method

.method public isNotification()Z
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$700(I)Z

    move-result v0

    return v0
.end method

.method public isRingtone()Z
    .registers 2

    .line 294
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    iget v0, p0, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$800(I)Z

    move-result v0

    return v0
.end method

.method public toInfo()Lcom/android/server/VibratorService$VibrationInfo;
    .registers 11

    .line 306
    new-instance v9, Lcom/android/server/VibratorService$VibrationInfo;

    iget-wide v1, p0, Lcom/android/server/VibratorService$Vibration;->startTimeDebug:J

    iget-object v3, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    iget-object v4, p0, Lcom/android/server/VibratorService$Vibration;->originalEffect:Landroid/os/VibrationEffect;

    iget v5, p0, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    iget v6, p0, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v7, p0, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/VibratorService$Vibration;->reason:Ljava/lang/String;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/server/VibratorService$VibrationInfo;-><init>(JLandroid/os/VibrationEffect;Landroid/os/VibrationEffect;IILjava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method
