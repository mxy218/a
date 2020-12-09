.class final Lcom/android/server/lights/LightsService$LightImpl;
.super Lcom/android/server/lights/Light;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LightImpl"
.end annotation


# instance fields
.field private mBrightnessLevel:I

.field private mBrightnessMode:I

.field private mColor:I

.field private final mDisplayToken:Landroid/os/IBinder;

.field private mFlashing:Z

.field private mId:I

.field private mInitialized:Z

.field private mLastBrightnessMode:I

.field private mLastColor:I

.field private mLocked:Z

.field private mMode:I

.field private mModesUpdate:Z

.field private mOffMS:I

.field private mOnMS:I

.field private final mSurfaceControlMaximumBrightness:I

.field private mUseLowPersistenceForVR:Z

.field private mVrModeEnabled:Z

.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;I)V
    .registers 4

    .line 43
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/android/server/lights/Light;-><init>()V

    .line 44
    iput p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    .line 45
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mDisplayToken:Landroid/os/IBinder;

    .line 46
    iget-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mDisplayToken:Landroid/os/IBinder;

    invoke-static {p1}, Landroid/view/SurfaceControl;->getDisplayBrightnessSupport(Landroid/os/IBinder;)Z

    move-result p1

    .line 51
    nop

    .line 52
    if-eqz p1, :cond_25

    .line 53
    const-class p1, Landroid/os/PowerManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 54
    if-eqz p1, :cond_25

    .line 55
    invoke-virtual {p1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result p1

    goto :goto_26

    .line 58
    :cond_25
    const/4 p1, 0x0

    :goto_26
    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mSurfaceControlMaximumBrightness:I

    .line 59
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;ILcom/android/server/lights/LightsService$1;)V
    .registers 5

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/lights/LightsService$LightImpl;)V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->stopFlashing()V

    return-void
.end method

.method private setLightLocked(IIIII)V
    .registers 15

    .line 172
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInLowPersistenceMode()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_9

    .line 173
    move v5, v1

    goto :goto_10

    .line 174
    :cond_9
    if-ne p5, v1, :cond_f

    .line 175
    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    move v5, p5

    goto :goto_10

    .line 174
    :cond_f
    move v5, p5

    .line 178
    :goto_10
    iget-boolean p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    if-eqz p5, :cond_2c

    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-ne p1, p5, :cond_2c

    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    if-ne p2, p5, :cond_2c

    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    if-ne p3, p5, :cond_2c

    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    if-ne p4, p5, :cond_2c

    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    if-ne p5, v5, :cond_2c

    iget-boolean p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mModesUpdate:Z

    if-eqz p5, :cond_7a

    .line 182
    :cond_2c
    const/4 p5, 0x1

    iput-boolean p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    .line 183
    iget p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    iput p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastColor:I

    .line 184
    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 185
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    .line 186
    iput p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    .line 187
    iput p4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    .line 188
    iput v5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    .line 189
    const/4 p5, 0x0

    iput-boolean p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mModesUpdate:Z

    .line 190
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setLight("

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", 0x"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 190
    const-wide/32 v7, 0x20000

    invoke-static {v7, v8, p5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 193
    :try_start_6b
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    iget v6, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessLevel:I

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/lights/LightsService;->setLight_native(IIIIIII)V
    :try_end_76
    .catchall {:try_start_6b .. :try_end_76} :catchall_7b

    .line 196
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 197
    nop

    .line 199
    :cond_7a
    return-void

    .line 196
    :catchall_7b
    move-exception p1

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method private shouldBeInLowPersistenceMode()Z
    .registers 2

    .line 202
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mUseLowPersistenceForVR:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private stopFlashing()V
    .registers 7

    .line 166
    monitor-enter p0

    .line 167
    :try_start_1
    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 168
    monitor-exit p0

    .line 169
    return-void

    .line 168
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method


# virtual methods
.method public pulse()V
    .registers 3

    .line 123
    const v0, 0xffffff

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService$LightImpl;->pulse(II)V

    .line 124
    return-void
.end method

.method public pulse(II)V
    .registers 10

    .line 128
    monitor-enter p0

    .line 129
    :try_start_1
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mFlashing:Z

    if-nez v0, :cond_2b

    .line 130
    const/4 v3, 0x2

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 132
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 133
    iget-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {p1}, Lcom/android/server/lights/LightsService;->access$000(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$000(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 135
    :cond_2b
    monitor-exit p0

    .line 136
    return-void

    .line 135
    :catchall_2d
    move-exception p1

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_2d

    throw p1
.end method

.method public setBrightness(I)V
    .registers 3

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/lights/LightsService$LightImpl;->setBrightness(II)V

    .line 64
    return-void
.end method

.method public setBrightness(II)V
    .registers 10

    .line 68
    monitor-enter p0

    .line 70
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2d

    .line 71
    :try_start_4
    const-string p2, "LightsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBrightness with LOW_PERSISTENCE unexpected #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": brightness=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    monitor-exit p0

    return-void

    .line 96
    :catchall_2b
    move-exception p1

    goto :goto_5f

    .line 78
    :cond_2d
    const/16 v0, 0xff

    if-nez p2, :cond_4a

    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInLowPersistenceMode()Z

    move-result v1

    if-nez v1, :cond_4a

    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mId:I

    if-nez v1, :cond_4a

    iget v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mSurfaceControlMaximumBrightness:I

    if-ne v1, v0, :cond_4a

    .line 89
    iget-object p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mDisplayToken:Landroid/os/IBinder;

    int-to-float p1, p1

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mSurfaceControlMaximumBrightness:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p2, p1}, Landroid/view/SurfaceControl;->setDisplayBrightness(Landroid/os/IBinder;F)Z

    goto :goto_5d

    .line 92
    :cond_4a
    and-int/2addr p1, v0

    .line 93
    const/high16 v0, -0x1000000

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    or-int v2, v0, p1

    .line 94
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 96
    :goto_5d
    monitor-exit p0

    .line 97
    return-void

    .line 96
    :goto_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_4 .. :try_end_60} :catchall_2b

    throw p1
.end method

.method public setColor(I)V
    .registers 8

    .line 101
    monitor-enter p0

    .line 102
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    :try_start_7
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 103
    monitor-exit p0

    .line 104
    return-void

    .line 103
    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public setFlashing(IIII)V
    .registers 11

    .line 108
    monitor-enter p0

    .line 109
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    :try_start_7
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 110
    monitor-exit p0

    .line 111
    return-void

    .line 110
    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public setModes(I)V
    .registers 2

    .line 115
    monitor-enter p0

    .line 116
    :try_start_1
    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessLevel:I

    .line 117
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mModesUpdate:Z

    .line 118
    monitor-exit p0

    .line 119
    return-void

    .line 118
    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public setVrMode(Z)V
    .registers 3

    .line 147
    monitor-enter p0

    .line 148
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    if-eq v0, p1, :cond_1e

    .line 149
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    .line 151
    iget-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 152
    invoke-static {p1}, Lcom/android/server/lights/LightsService;->access$100(Lcom/android/server/lights/LightsService;)I

    move-result p1

    if-nez p1, :cond_11

    const/4 p1, 0x1

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mUseLowPersistenceForVR:Z

    .line 153
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInLowPersistenceMode()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 154
    iget p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    .line 162
    :cond_1e
    monitor-exit p0

    .line 163
    return-void

    .line 162
    :catchall_20
    move-exception p1

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public turnOff()V
    .registers 7

    .line 140
    monitor-enter p0

    .line 141
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_7
    invoke-direct/range {v0 .. v5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 142
    monitor-exit p0

    .line 143
    return-void

    .line 142
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_c

    throw v0
.end method
