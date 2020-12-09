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
.field public final attrs:Landroid/media/AudioAttributes;

.field public effect:Landroid/os/VibrationEffect;

.field public final opPkg:Ljava/lang/String;

.field public originalEffect:Landroid/os/VibrationEffect;

.field public final reason:Ljava/lang/String;

.field public final startTime:J

.field public final startTimeDebug:J

.field final synthetic this$0:Lcom/android/server/VibratorService;

.field public final token:Landroid/os/IBinder;

.field public final uid:I


# direct methods
.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 210
    iput-object p1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p2, p0, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    .line 212
    iput-object p3, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    .line 213
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/VibratorService$Vibration;->startTime:J

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/VibratorService$Vibration;->startTimeDebug:J

    .line 215
    iput-object p4, p0, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/media/AudioAttributes;

    .line 216
    iput p5, p0, Lcom/android/server/VibratorService$Vibration;->uid:I

    .line 217
    iput-object p6, p0, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    .line 218
    iput-object p7, p0, Lcom/android/server/VibratorService$Vibration;->reason:Ljava/lang/String;

    .line 219
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/VibratorService$1;)V
    .registers 9

    .line 189
    invoke-direct/range {p0 .. p7}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 222
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$100(Lcom/android/server/VibratorService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 223
    :try_start_7
    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$200(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;

    move-result-object v1

    if-ne p0, v1, :cond_14

    .line 224
    iget-object v1, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    .line 226
    :cond_14
    monitor-exit v0

    .line 227
    return-void

    .line 226
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public hasTimeoutLongerThan(J)Z
    .registers 7

    .line 230
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    invoke-virtual {v0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    .line 231
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_12

    cmp-long p1, v0, p1

    if-lez p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public isAlarm()Z
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$700(I)Z

    move-result v0

    return v0
.end method

.method public isFromSystem()Z
    .registers 3

    .line 272
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

    .line 235
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$400(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 236
    return v1

    .line 238
    :cond_10
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v2, v0, Landroid/os/VibrationEffect$Prebaked;

    const/4 v3, 0x0

    if-eqz v2, :cond_3a

    .line 239
    check-cast v0, Landroid/os/VibrationEffect$Prebaked;

    .line 240
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v0

    if-eqz v0, :cond_39

    if-eq v0, v1, :cond_39

    const/4 v2, 0x2

    if-eq v0, v2, :cond_39

    const/4 v2, 0x3

    if-eq v0, v2, :cond_39

    const/4 v2, 0x4

    if-eq v0, v2, :cond_39

    const/4 v2, 0x5

    if-eq v0, v2, :cond_39

    const/16 v2, 0x15

    if-eq v0, v2, :cond_39

    .line 250
    const-string v0, "VibratorService"

    const-string v1, "Unknown prebaked vibration effect, assuming it isn\'t haptic feedback."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return v3

    .line 248
    :cond_39
    return v1

    .line 255
    :cond_3a
    invoke-virtual {v0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v4

    .line 256
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_4b

    const-wide/16 v6, 0x1388

    cmp-long v0, v4, v6

    if-gez v0, :cond_4b

    goto :goto_4c

    :cond_4b
    move v1, v3

    :goto_4c
    return v1
.end method

.method public isNotification()Z
    .registers 2

    .line 260
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$500(I)Z

    move-result v0

    return v0
.end method

.method public isRingtone()Z
    .registers 2

    .line 264
    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->this$0:Lcom/android/server/VibratorService;

    iget-object v0, p0, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/media/AudioAttributes;

    invoke-virtual {v0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$600(I)Z

    move-result v0

    return v0
.end method

.method public toInfo()Lcom/android/server/VibratorService$VibrationInfo;
    .registers 11

    .line 276
    new-instance v9, Lcom/android/server/VibratorService$VibrationInfo;

    iget-wide v1, p0, Lcom/android/server/VibratorService$Vibration;->startTimeDebug:J

    iget-object v3, p0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    iget-object v4, p0, Lcom/android/server/VibratorService$Vibration;->originalEffect:Landroid/os/VibrationEffect;

    iget-object v5, p0, Lcom/android/server/VibratorService$Vibration;->attrs:Landroid/media/AudioAttributes;

    iget v6, p0, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v7, p0, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/VibratorService$Vibration;->reason:Ljava/lang/String;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/android/server/VibratorService$VibrationInfo;-><init>(JLandroid/os/VibrationEffect;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;ILjava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method
