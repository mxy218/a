.class final Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "VirtualDisplayAdapter.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/VirtualDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VirtualDisplayDevice"
.end annotation


# static fields
.field private static final PENDING_RESIZE:I = 0x2

.field private static final PENDING_SURFACE_CHANGE:I = 0x1

.field private static final REFRESH_RATE:F = 60.0f


# instance fields
.field private final mAppToken:Landroid/os/IBinder;

.field private final mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

.field private mDensityDpi:I

.field private mDisplayState:I

.field private final mFlags:I

.field private mHeight:I

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mIsDisplayOn:Z

.field private mMode:Landroid/view/Display$Mode;

.field final mName:Ljava/lang/String;

.field final mOwnerPackageName:Ljava/lang/String;

.field private final mOwnerUid:I

.field private mPendingChanges:I

.field private mStopped:Z

.field private mSurface:Landroid/view/Surface;

.field private mUniqueIndex:I

.field private mWidth:I

.field final synthetic this$0:Lcom/android/server/display/VirtualDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILcom/android/server/display/VirtualDisplayAdapter$Callback;Ljava/lang/String;I)V
    .registers 15

    .line 221
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    .line 222
    invoke-direct {p0, p1, p2, p13}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 223
    iput-object p3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mAppToken:Landroid/os/IBinder;

    .line 224
    iput p4, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerUid:I

    .line 225
    iput-object p5, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerPackageName:Ljava/lang/String;

    .line 226
    iput-object p6, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    .line 227
    iput p7, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    .line 228
    iput p8, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    .line 229
    const/high16 p1, 0x42700000  # 60.0f

    invoke-static {p7, p8, p1}, Lcom/android/server/display/DisplayAdapter;->createMode(IIF)Landroid/view/Display$Mode;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    .line 230
    iput p9, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    .line 231
    iput-object p10, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 232
    iput p11, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    .line 233
    iput-object p12, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    .line 234
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    .line 235
    iget p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    const/4 p3, 0x1

    or-int/2addr p2, p3

    iput p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    .line 236
    iput p14, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mUniqueIndex:I

    .line 237
    if-eqz p10, :cond_2f

    move p1, p3

    :cond_2f
    iput-boolean p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsDisplayOn:Z

    .line 238
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;)I
    .registers 1

    .line 193
    iget p0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mUniqueIndex:I

    return p0
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .line 242
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 243
    :try_start_7
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    iget-object v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mAppToken:Landroid/os/IBinder;

    invoke-static {v1, v2}, Lcom/android/server/display/VirtualDisplayAdapter;->access$100(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V

    .line 244
    const-string v1, "VirtualDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Virtual display device released because application token died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->destroyLocked(Z)V

    .line 247
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v2}, Lcom/android/server/display/VirtualDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 248
    monitor-exit v0

    .line 249
    return-void

    .line 248
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public destroyLocked(Z)V
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_a

    .line 253
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 256
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/SurfaceControl;->destroyDisplay(Landroid/os/IBinder;)V

    .line 257
    if-eqz p1, :cond_18

    .line 258
    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    invoke-virtual {p1}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->dispatchDisplayStopped()V

    .line 260
    :cond_18
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .registers 4

    .line 331
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDisplayState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStopped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mStopped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .registers 7

    .line 340
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_102

    .line 341
    new-instance v0, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 342
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 343
    invoke-virtual {p0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 345
    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 346
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 347
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 348
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/Display$Mode;

    iget-object v3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iput-object v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 349
    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 350
    int-to-float v3, v2

    iput v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 351
    int-to-float v2, v2

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 352
    const-wide/32 v2, 0xfe502a

    iput-wide v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 353
    iput v4, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 354
    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    and-int/2addr v2, v1

    if-nez v2, :cond_5b

    .line 355
    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v2, v2, 0x30

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 358
    :cond_5b
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6a

    .line 359
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    and-int/lit8 v2, v2, -0x21

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto :goto_72

    .line 361
    :cond_6a
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 364
    :goto_72
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_80

    .line 365
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 367
    :cond_80
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    const/4 v2, 0x2

    and-int/2addr v0, v2

    const/4 v3, 0x3

    if-eqz v0, :cond_a8

    .line 368
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 370
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_a8

    .line 373
    const-string/jumbo v0, "persist.demo.remoterotation"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "portrait"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 375
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 379
    :cond_a8
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_b6

    .line 380
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v5, v5, 0x200

    iput v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 382
    :cond_b6
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_c3

    .line 383
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v5, v2

    iput v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 385
    :cond_c3
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_d1

    .line 386
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 388
    :cond_d1
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_df

    .line 389
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 392
    :cond_df
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v5, 0x5

    iput v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 393
    iget v5, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mFlags:I

    and-int/lit8 v5, v5, 0x40

    if-nez v5, :cond_ec

    .line 394
    move v3, v4

    goto :goto_ed

    :cond_ec
    nop

    :goto_ed
    iput v3, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 396
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-boolean v3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsDisplayOn:Z

    if-eqz v3, :cond_f6

    move v1, v2

    :cond_f6
    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 398
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerUid:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerUid:I

    .line 399
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerPackageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->ownerPackageName:Ljava/lang/String;

    .line 401
    :cond_102
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v0
.end method

.method public hasStableUniqueId()Z
    .registers 2

    .line 264
    const/4 v0, 0x0

    return v0
.end method

.method public performTraversalLocked(Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    .line 282
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_11

    .line 283
    invoke-virtual {p0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    iget v2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setDisplaySize(Landroid/os/IBinder;II)Landroid/view/SurfaceControl$Transaction;

    .line 285
    :cond_11
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1c

    .line 286
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->setSurfaceLocked(Landroid/view/SurfaceControl$Transaction;Landroid/view/Surface;)V

    .line 288
    :cond_1c
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    .line 289
    return-void
.end method

.method public requestDisplayStateLocked(II)Ljava/lang/Runnable;
    .registers 3

    .line 269
    iget p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    if-eq p1, p2, :cond_14

    .line 270
    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDisplayState:I

    .line 271
    const/4 p2, 0x1

    if-ne p1, p2, :cond_f

    .line 272
    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    invoke-virtual {p1}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->dispatchDisplayPaused()V

    goto :goto_14

    .line 274
    :cond_f
    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mCallback:Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    invoke-virtual {p1}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->dispatchDisplayResumed()V

    .line 277
    :cond_14
    :goto_14
    const/4 p1, 0x0

    return-object p1
.end method

.method public resizeLocked(III)V
    .registers 6

    .line 304
    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    if-ne v0, p1, :cond_c

    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    if-ne v0, p2, :cond_c

    iget v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    if-eq v0, p3, :cond_2d

    .line 305
    :cond_c
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/VirtualDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 306
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter;->sendTraversalRequestLocked()V

    .line 307
    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mWidth:I

    .line 308
    iput p2, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mHeight:I

    .line 309
    const/high16 v0, 0x42700000  # 60.0f

    invoke-static {p1, p2, v0}, Lcom/android/server/display/DisplayAdapter;->createMode(IIF)Landroid/view/Display$Mode;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mMode:Landroid/view/Display$Mode;

    .line 310
    iput p3, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mDensityDpi:I

    .line 311
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 312
    iget p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    or-int/2addr p1, v1

    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    .line 314
    :cond_2d
    return-void
.end method

.method setDisplayState(Z)V
    .registers 3

    .line 317
    iget-boolean v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsDisplayOn:Z

    if-eq v0, p1, :cond_f

    .line 318
    iput-boolean p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mIsDisplayOn:Z

    .line 319
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 320
    iget-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    const/4 v0, 0x2

    invoke-virtual {p1, p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 322
    :cond_f
    return-void
.end method

.method public setSurfaceLocked(Landroid/view/Surface;)V
    .registers 5

    .line 292
    iget-boolean v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mStopped:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    if-eq v0, p1, :cond_29

    .line 293
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    if-eqz p1, :cond_12

    move v1, v2

    :cond_12
    if-eq v0, v1, :cond_1a

    .line 294
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/VirtualDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 296
    :cond_1a
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->this$0:Lcom/android/server/display/VirtualDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter;->sendTraversalRequestLocked()V

    .line 297
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 298
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 299
    iget p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    or-int/2addr p1, v2

    iput p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mPendingChanges:I

    .line 301
    :cond_29
    return-void
.end method

.method public stopLocked()V
    .registers 2

    .line 325
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->setSurfaceLocked(Landroid/view/Surface;)V

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mStopped:Z

    .line 327
    return-void
.end method
