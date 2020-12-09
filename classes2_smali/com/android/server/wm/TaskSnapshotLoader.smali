.class Lcom/android/server/wm/TaskSnapshotLoader;
.super Ljava/lang/Object;
.source "TaskSnapshotLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mPersister:Lcom/android/server/wm/TaskSnapshotPersister;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;)V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 53
    return-void
.end method


# virtual methods
.method loadTask(IIZ)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 21

    .line 67
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const-string v14, "WindowManager"

    iget-object v3, v0, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/TaskSnapshotPersister;->getProtoFile(II)Ljava/io/File;

    move-result-object v3

    .line 68
    if-eqz p3, :cond_17

    .line 69
    iget-object v4, v0, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v4, v1, v2}, Lcom/android/server/wm/TaskSnapshotPersister;->getReducedResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v2

    goto :goto_1d

    .line 70
    :cond_17
    iget-object v4, v0, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v4, v1, v2}, Lcom/android/server/wm/TaskSnapshotPersister;->getBitmapFile(II)Ljava/io/File;

    move-result-object v2

    .line 71
    :goto_1d
    const/4 v15, 0x0

    if-eqz v2, :cond_e8

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_e8

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2e

    goto/16 :goto_e8

    .line 75
    :cond_2e
    :try_start_2e
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v3

    .line 76
    invoke-static {v3}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->parseFrom([B)Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    move-result-object v3

    .line 77
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 78
    sget-object v5, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object v5, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 79
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 80
    if-nez v4, :cond_66

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load bitmap: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-object v15

    .line 84
    :cond_66
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v5

    .line 85
    if-nez v5, :cond_85

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to retrieve gralloc buffer for bitmap: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-object v15

    .line 90
    :cond_85
    iget-object v2, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->topActivityComponent:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 93
    if-eqz p3, :cond_94

    iget-object v0, v0, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->getReducedScale()F

    move-result v0

    goto :goto_96

    :cond_94
    const/high16 v0, 0x3f800000  # 1.0f

    .line 94
    :goto_96
    iget v2, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->scale:F

    const/4 v7, 0x0

    invoke-static {v2, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_a1

    iget v0, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->scale:F

    :cond_a1
    move v9, v0

    .line 95
    new-instance v0, Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v7

    iget v8, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    new-instance v10, Landroid/graphics/Rect;

    iget v2, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    iget v4, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    iget v11, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    iget v12, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    invoke-direct {v10, v2, v4, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-boolean v11, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    iget v12, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    iget v13, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->systemUiVisibility:I

    iget-boolean v4, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    move-object v2, v0

    move-object v3, v6

    move/from16 v16, v4

    move-object v4, v5

    move-object v5, v7

    move v6, v8

    move-object v7, v10

    move/from16 v8, p3

    move v10, v11

    move v11, v12

    move v12, v13

    move/from16 v13, v16

    invoke-direct/range {v2 .. v13}, Landroid/app/ActivityManager$TaskSnapshot;-><init>(Landroid/content/ComponentName;Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;ILandroid/graphics/Rect;ZFZIIZ)V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_d1} :catch_d2

    return-object v0

    .line 100
    :catch_d2
    move-exception v0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to load task snapshot data for taskId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-object v15

    .line 72
    :cond_e8
    :goto_e8
    return-object v15
.end method
