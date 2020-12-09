.class final Lcom/android/server/wm/VrController;
.super Ljava/lang/Object;
.source "VrController.java"


# static fields
.field private static final FLAG_NON_VR_MODE:I = 0x0

.field private static final FLAG_PERSISTENT_VR_MODE:I = 0x2

.field private static final FLAG_VR_MODE:I = 0x1

.field private static ORIG_ENUMS:[I = null

.field private static PROTO_ENUMS:[I = null

.field private static final TAG:Ljava/lang/String; = "VrController"


# instance fields
.field private final mGlobalAmLock:Ljava/lang/Object;

.field private final mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

.field private mVrRenderThreadTid:I

.field private mVrState:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 59
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_10

    sput-object v1, Lcom/android/server/wm/VrController;->ORIG_ENUMS:[I

    .line 64
    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/android/server/wm/VrController;->PROTO_ENUMS:[I

    return-void

    :array_10
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data

    :array_1a
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    .line 107
    iput v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    .line 111
    new-instance v0, Lcom/android/server/wm/VrController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/VrController$1;-><init>(Lcom/android/server/wm/VrController;)V

    iput-object v0, p0, Lcom/android/server/wm/VrController;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    .line 135
    iput-object p1, p0, Lcom/android/server/wm/VrController;->mGlobalAmLock:Ljava/lang/Object;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/VrController;)Ljava/lang/Object;
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/android/server/wm/VrController;->mGlobalAmLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/wm/VrController;IIZ)I
    .registers 4

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/VrController;->setVrRenderThreadLocked(IIZ)I

    move-result p0

    return p0
.end method

.method static synthetic access$272(Lcom/android/server/wm/VrController;I)I
    .registers 3

    .line 50
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    and-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/wm/VrController;->mVrState:I

    return p1
.end method

.method static synthetic access$276(Lcom/android/server/wm/VrController;I)I
    .registers 3

    .line 50
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/wm/VrController;->mVrState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/wm/VrController;IZ)I
    .registers 3

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/VrController;->setPersistentVrRenderThreadLocked(IZ)I

    move-result p0

    return p0
.end method

.method private changeVrModeLocked(ZLcom/android/server/wm/WindowProcessController;)Z
    .registers 5

    .line 292
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    .line 296
    if-eqz p1, :cond_9

    .line 297
    or-int/lit8 p1, v0, 0x1

    iput p1, p0, Lcom/android/server/wm/VrController;->mVrState:I

    goto :goto_d

    .line 299
    :cond_9
    and-int/lit8 p1, v0, -0x2

    iput p1, p0, Lcom/android/server/wm/VrController;->mVrState:I

    .line 302
    :goto_d
    iget p1, p0, Lcom/android/server/wm/VrController;->mVrState:I

    const/4 v1, 0x0

    if-eq v0, p1, :cond_14

    const/4 p1, 0x1

    goto :goto_15

    :cond_14
    move p1, v1

    .line 304
    :goto_15
    if-eqz p1, :cond_2a

    .line 305
    if-eqz p2, :cond_27

    .line 306
    iget v0, p2, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    if-lez v0, :cond_2a

    .line 307
    iget v0, p2, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    .line 308
    invoke-virtual {p2}, Lcom/android/server/wm/WindowProcessController;->getCurrentSchedulingGroup()I

    move-result p2

    .line 307
    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/wm/VrController;->setVrRenderThreadLocked(IIZ)I

    goto :goto_2a

    .line 311
    :cond_27
    invoke-direct {p0, v1}, Lcom/android/server/wm/VrController;->clearVrRenderThreadLocked(Z)V

    .line 314
    :cond_2a
    :goto_2a
    return p1
.end method

.method private clearVrRenderThreadLocked(Z)V
    .registers 3

    .line 410
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/VrController;->updateVrRenderThreadLocked(IZ)I

    .line 411
    return-void
.end method

.method private enforceThreadInProcess(II)V
    .registers 3

    .line 418
    invoke-static {p2, p1}, Landroid/os/Process;->isThreadInProcess(II)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 421
    return-void

    .line 419
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "VR thread does not belong to process"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private hasPersistentVrFlagSet()Z
    .registers 2

    .line 436
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private inVrMode()Z
    .registers 3

    .line 427
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method

.method private setPersistentVrRenderThreadLocked(IZ)I
    .registers 4

    .line 360
    invoke-direct {p0}, Lcom/android/server/wm/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    if-nez v0, :cond_12

    .line 361
    if-nez p2, :cond_f

    .line 362
    const-string p1, "VrController"

    const-string p2, "Failed to set persistent VR thread, system not in persistent VR mode."

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_f
    iget p1, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    return p1

    .line 367
    :cond_12
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/VrController;->updateVrRenderThreadLocked(IZ)I

    move-result p1

    return p1
.end method

.method private setVrRenderThreadLocked(IIZ)I
    .registers 7

    .line 386
    invoke-direct {p0}, Lcom/android/server/wm/VrController;->inVrMode()Z

    move-result v0

    .line 387
    invoke-direct {p0}, Lcom/android/server/wm/VrController;->hasPersistentVrFlagSet()Z

    move-result v1

    .line 388
    if-eqz v0, :cond_15

    if-nez v1, :cond_15

    const/4 v2, 0x3

    if-eq p2, v2, :cond_10

    goto :goto_15

    .line 400
    :cond_10
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/VrController;->updateVrRenderThreadLocked(IZ)I

    move-result p1

    return p1

    .line 389
    :cond_15
    :goto_15
    if-nez p3, :cond_3a

    .line 390
    nop

    .line 391
    if-nez v0, :cond_1d

    .line 392
    const-string p1, "system not in VR mode."

    goto :goto_24

    .line 393
    :cond_1d
    if-eqz v1, :cond_22

    .line 394
    const-string p1, "system in persistent VR mode."

    goto :goto_24

    .line 393
    :cond_22
    const-string p1, "caller is not the current top application."

    .line 396
    :goto_24
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to set VR thread, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VrController"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_3a
    iget p1, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    return p1
.end method

.method private updateVrRenderThreadLocked(IZ)I
    .registers 4

    .line 330
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    if-ne v0, p1, :cond_5

    .line 331
    return v0

    .line 334
    :cond_5
    if-lez v0, :cond_d

    .line 335
    invoke-static {v0, p2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsRegularPriority(IZ)Z

    .line 336
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    .line 339
    :cond_d
    if-lez p1, :cond_16

    .line 340
    iput p1, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    .line 341
    iget p1, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    invoke-static {p1, p2}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    .line 343
    :cond_16
    iget p1, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    return p1
.end method


# virtual methods
.method public onSystemReady()V
    .registers 3

    .line 142
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    .line 143
    if-eqz v0, :cond_f

    .line 144
    iget-object v1, p0, Lcom/android/server/wm/VrController;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/server/vr/VrManagerInternal;->addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    .line 146
    :cond_f
    return-void
.end method

.method public onTopProcChangedLocked(Lcom/android/server/wm/WindowProcessController;)V
    .registers 5

    .line 157
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getCurrentSchedulingGroup()I

    move-result v0

    .line 158
    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_e

    .line 159
    iget p1, p1, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/VrController;->setVrRenderThreadLocked(IIZ)I

    goto :goto_17

    .line 161
    :cond_e
    iget p1, p1, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    iget v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    if-ne p1, v0, :cond_17

    .line 162
    invoke-direct {p0, v1}, Lcom/android/server/wm/VrController;->clearVrRenderThreadLocked(Z)V

    .line 165
    :cond_17
    :goto_17
    return-void
.end method

.method public onVrModeChanged(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 11

    .line 176
    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/vr/VrManagerInternal;

    .line 177
    const/4 v0, 0x0

    if-nez v1, :cond_d

    .line 179
    return v0

    .line 185
    :cond_d
    const/4 v2, -0x1

    .line 186
    nop

    .line 187
    iget-object v3, p0, Lcom/android/server/wm/VrController;->mGlobalAmLock:Ljava/lang/Object;

    monitor-enter v3

    .line 188
    :try_start_12
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_17

    const/4 v0, 0x1

    .line 189
    :cond_17
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    .line 190
    iget v5, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 191
    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    .line 194
    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-direct {p0, v0, v7}, Lcom/android/server/wm/VrController;->changeVrModeLocked(ZLcom/android/server/wm/WindowProcessController;)Z

    move-result v7

    .line 196
    iget-object v8, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v8, :cond_32

    .line 197
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result p1

    goto :goto_33

    .line 196
    :cond_32
    move p1, v2

    .line 199
    :goto_33
    monitor-exit v3
    :try_end_34
    .catchall {:try_start_12 .. :try_end_34} :catchall_3c

    .line 203
    move v2, v0

    move-object v3, v4

    move v4, v5

    move v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vr/VrManagerInternal;->setVrMode(ZLandroid/content/ComponentName;IILandroid/content/ComponentName;)V

    .line 204
    return v7

    .line 199
    :catchall_3c
    move-exception p1

    :try_start_3d
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method public setPersistentVrThreadLocked(IILcom/android/server/wm/WindowProcessController;)V
    .registers 6

    .line 257
    invoke-direct {p0}, Lcom/android/server/wm/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    const-string v1, "VrController"

    if-nez v0, :cond_e

    .line 258
    const-string p1, "Persistent VR thread may only be set in persistent VR mode!"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void

    .line 261
    :cond_e
    if-nez p3, :cond_16

    .line 262
    const-string p1, "Persistent VR thread not set, calling process doesn\'t exist!"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void

    .line 265
    :cond_16
    if-eqz p1, :cond_1b

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/VrController;->enforceThreadInProcess(II)V

    .line 268
    :cond_1b
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/VrController;->setPersistentVrRenderThreadLocked(IZ)I

    .line 269
    return-void
.end method

.method public setVrThreadLocked(IILcom/android/server/wm/WindowProcessController;)V
    .registers 6

    .line 223
    invoke-direct {p0}, Lcom/android/server/wm/VrController;->hasPersistentVrFlagSet()Z

    move-result v0

    const-string v1, "VrController"

    if-eqz v0, :cond_e

    .line 224
    const-string p1, "VR thread cannot be set in persistent VR mode!"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    return-void

    .line 227
    :cond_e
    if-nez p3, :cond_16

    .line 228
    const-string p1, "Persistent VR thread not set, calling process doesn\'t exist!"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void

    .line 231
    :cond_16
    if-eqz p1, :cond_1b

    .line 232
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/VrController;->enforceThreadInProcess(II)V

    .line 234
    :cond_1b
    invoke-direct {p0}, Lcom/android/server/wm/VrController;->inVrMode()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_28

    .line 235
    const-string p2, "VR thread cannot be set when not in VR mode!"

    invoke-static {v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    .line 237
    :cond_28
    invoke-virtual {p3}, Lcom/android/server/wm/WindowProcessController;->getCurrentSchedulingGroup()I

    move-result p2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/VrController;->setVrRenderThreadLocked(IIZ)I

    .line 239
    :goto_2f
    if-lez p1, :cond_32

    goto :goto_33

    :cond_32
    move p1, v0

    :goto_33
    iput p1, p3, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    .line 240
    return-void
.end method

.method public shouldDisableNonVrUiLocked()Z
    .registers 2

    .line 277
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrState:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 441
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/wm/VrController;->mVrState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "[VrState=0x%x,VrRenderThreadTid=%d]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10

    .line 445
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 446
    iget v3, p0, Lcom/android/server/wm/VrController;->mVrState:I

    sget-object v4, Lcom/android/server/wm/VrController;->ORIG_ENUMS:[I

    sget-object v5, Lcom/android/server/wm/VrController;->PROTO_ENUMS:[I

    const-wide v1, 0x20e00000001L

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI[I[I)V

    .line 448
    iget v0, p0, Lcom/android/server/wm/VrController;->mVrRenderThreadTid:I

    const-wide v1, 0x10500000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 449
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 450
    return-void
.end method
