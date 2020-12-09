.class Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;
.super Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
.source "TaskSnapshotPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreWriteQueueItem"
.end annotation


# instance fields
.field private final mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

.field private final mTaskId:I

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/wm/TaskSnapshotPersister;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;IILandroid/app/ActivityManager$TaskSnapshot;)V
    .registers 6

    .line 316
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;Lcom/android/server/wm/TaskSnapshotPersister$1;)V

    .line 317
    iput p2, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    .line 318
    iput p3, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    .line 319
    iput-object p4, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 320
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;)I
    .registers 1

    .line 311
    iget p0, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    return p0
.end method


# virtual methods
.method isReady()Z
    .registers 3

    .line 336
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->access$700(Lcom/android/server/wm/TaskSnapshotPersister;)Landroid/os/UserManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManagerInternal;->isUserUnlocked(I)Z

    move-result v0

    return v0
.end method

.method onDequeuedLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->access$600(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 332
    return-void
.end method

.method onQueuedLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->access$600(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 326
    return-void
.end method

.method write()V
    .registers 4

    .line 341
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/wm/TaskSnapshotPersister;->access$800(Lcom/android/server/wm/TaskSnapshotPersister;I)Z

    move-result v0

    if-nez v0, :cond_28

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create snapshot directory for user dir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v2, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    .line 343
    invoke-static {v1, v2}, Lcom/android/server/wm/TaskSnapshotPersister;->access$900(Lcom/android/server/wm/TaskSnapshotPersister;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_28
    const/4 v0, 0x0

    .line 346
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->writeProto()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_31

    .line 347
    move v0, v2

    .line 349
    :cond_31
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->writeBuffer()Z

    move-result v1

    if-nez v1, :cond_38

    .line 350
    move v0, v2

    .line 352
    :cond_38
    if-eqz v0, :cond_43

    .line 353
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    iget v2, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/TaskSnapshotPersister;->access$1000(Lcom/android/server/wm/TaskSnapshotPersister;II)V

    .line 355
    :cond_43
    return-void
.end method

.method writeBuffer()Z
    .registers 12

    .line 389
    const-string v0, " for persisting."

    const-string v1, "Unable to open "

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    .line 390
    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v3}, Landroid/app/ActivityManager$TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v3

    .line 389
    invoke-static {v2, v3}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 391
    const-string v3, "WindowManager"

    const/4 v4, 0x0

    if-nez v2, :cond_1f

    .line 392
    const-string v0, "Invalid task snapshot hw bitmap"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    return v4

    .line 396
    :cond_1f
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 397
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v6}, Landroid/app/ActivityManager$TaskSnapshot;->isReducedResolution()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_30

    .line 398
    move-object v2, v5

    goto :goto_4f

    .line 399
    :cond_30
    nop

    .line 400
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v8}, Lcom/android/server/wm/TaskSnapshotPersister;->access$1100(Lcom/android/server/wm/TaskSnapshotPersister;)F

    move-result v8

    mul-float/2addr v6, v8

    float-to-int v6, v6

    .line 401
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v8, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v8}, Lcom/android/server/wm/TaskSnapshotPersister;->access$1100(Lcom/android/server/wm/TaskSnapshotPersister;)F

    move-result v8

    mul-float/2addr v2, v8

    float-to-int v2, v2

    .line 399
    invoke-static {v5, v6, v2, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 403
    :goto_4f
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v8, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    iget v9, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    invoke-virtual {v6, v8, v9}, Lcom/android/server/wm/TaskSnapshotPersister;->getReducedResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v6

    .line 405
    :try_start_59
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 406
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x5f

    invoke-virtual {v2, v9, v10, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 407
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_68} :catch_ab

    .line 411
    nop

    .line 412
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 415
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v2}, Landroid/app/ActivityManager$TaskSnapshot;->isReducedResolution()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 416
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 417
    return v7

    .line 420
    :cond_78
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v6, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    iget v8, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    invoke-virtual {v2, v6, v8}, Lcom/android/server/wm/TaskSnapshotPersister;->getBitmapFile(II)Ljava/io/File;

    move-result-object v2

    .line 422
    :try_start_82
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 423
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v5, v8, v10, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 424
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_8f} :catch_94

    .line 428
    nop

    .line 429
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 430
    return v7

    .line 425
    :catch_94
    move-exception v5

    .line 426
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 427
    return v4

    .line 408
    :catch_ab
    move-exception v2

    .line 409
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    return v4
.end method

.method writeProto()Z
    .registers 5

    .line 358
    new-instance v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    invoke-direct {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;-><init>()V

    .line 359
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getOrientation()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    .line 360
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    .line 361
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    .line 362
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    .line 363
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    .line 364
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->isRealSnapshot()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    .line 365
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getWindowingMode()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    .line 366
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSystemUiVisibility()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->systemUiVisibility:I

    .line 367
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->isTranslucent()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    .line 368
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getTopActivityComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->topActivityComponent:Ljava/lang/String;

    .line 369
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getScale()F

    move-result v1

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->scale:F

    .line 370
    invoke-static {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v0

    .line 371
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v2, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->getProtoFile(II)Ljava/io/File;

    move-result-object v1

    .line 372
    new-instance v2, Lcom/android/internal/os/AtomicFile;

    invoke-direct {v2, v1}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    .line 373
    nop

    .line 375
    :try_start_7d
    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_81} :catch_8c

    .line 376
    :try_start_81
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 377
    invoke-virtual {v2, v3}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_87} :catch_8a

    .line 382
    nop

    .line 383
    const/4 v0, 0x1

    return v0

    .line 378
    :catch_8a
    move-exception v0

    goto :goto_8e

    :catch_8c
    move-exception v0

    const/4 v3, 0x0

    .line 379
    :goto_8e
    invoke-virtual {v2, v3}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for persisting. "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v0, 0x0

    return v0
.end method
