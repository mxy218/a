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
    .param p1, "persister"  # Lcom/android/server/wm/TaskSnapshotPersister;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 53
    return-void
.end method


# virtual methods
.method loadTask(IIZ)Landroid/app/ActivityManager$TaskSnapshot;
    .registers 31
    .param p1, "taskId"  # I
    .param p2, "userId"  # I
    .param p3, "reducedResolution"  # Z

    .line 67
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    const-string v15, "WindowManager"

    iget-object v0, v1, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->getProtoFile(II)Ljava/io/File;

    move-result-object v16

    .line 68
    .local v16, "protoFile":Ljava/io/File;
    if-eqz p3, :cond_17

    .line 69
    iget-object v0, v1, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->getReducedResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v0

    goto :goto_1d

    .line 70
    :cond_17
    iget-object v0, v1, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->getBitmapFile(II)Ljava/io/File;

    move-result-object v0

    :goto_1d
    move-object/from16 v17, v0

    .line 71
    .local v17, "bitmapFile":Ljava/io/File;
    const/16 v18, 0x0

    if-eqz v17, :cond_101

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_101

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_31

    goto/16 :goto_101

    .line 75
    :cond_31
    :try_start_31
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    .line 76
    .local v0, "bytes":[B
    invoke-static {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->parseFrom([B)Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    move-result-object v4

    move-object v14, v4

    .line 77
    .local v14, "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v13, v4

    .line 78
    .local v13, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object v4, v13, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 79
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v13}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v19, v4

    .line 80
    .local v19, "bitmap":Landroid/graphics/Bitmap;
    if-nez v19, :cond_6d

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load bitmap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-object v18

    .line 84
    :cond_6d
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v4

    move-object/from16 v20, v4

    .line 85
    .local v20, "buffer":Landroid/graphics/GraphicBuffer;
    if-nez v20, :cond_8e

    .line 86
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to retrieve gralloc buffer for bitmap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-static {v15, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-object v18

    .line 90
    :cond_8e
    iget-object v4, v14, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->topActivityComponent:Ljava/lang/String;

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 93
    .local v5, "topActivityComponent":Landroid/content/ComponentName;
    if-eqz p3, :cond_9d

    iget-object v4, v1, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v4}, Lcom/android/server/wm/TaskSnapshotPersister;->getReducedScale()F

    move-result v4

    goto :goto_9f

    :cond_9d
    const/high16 v4, 0x3f800000  # 1.0f

    :goto_9f
    move/from16 v21, v4

    .line 94
    .local v21, "legacyScale":F
    iget v4, v14, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->scale:F

    const/4 v6, 0x0

    invoke-static {v4, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_ae

    iget v4, v14, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->scale:F

    move v11, v4

    goto :goto_b0

    :cond_ae
    move/from16 v11, v21

    .line 95
    .local v11, "scale":F
    :goto_b0
    new-instance v22, Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v7

    iget v8, v14, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    new-instance v9, Landroid/graphics/Rect;

    iget v4, v14, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    iget v6, v14, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    iget v10, v14, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    iget v12, v14, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    invoke-direct {v9, v4, v6, v10, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-boolean v12, v14, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    iget v10, v14, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    iget v6, v14, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->systemUiVisibility:I

    iget-boolean v4, v14, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_cd} :catch_ea

    move/from16 v23, v4

    move-object/from16 v4, v22

    move/from16 v24, v6

    move-object/from16 v6, v20

    move/from16 v25, v10

    move/from16 v10, p3

    move-object/from16 v26, v13

    .end local v13  # "options":Landroid/graphics/BitmapFactory$Options;
    .local v26, "options":Landroid/graphics/BitmapFactory$Options;
    move/from16 v13, v25

    move-object/from16 v25, v14

    .end local v14  # "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    .local v25, "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    move/from16 v14, v24

    move-object v1, v15

    move/from16 v15, v23

    :try_start_e4
    invoke-direct/range {v4 .. v15}, Landroid/app/ActivityManager$TaskSnapshot;-><init>(Landroid/content/ComponentName;Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;ILandroid/graphics/Rect;ZFZIIZ)V
    :try_end_e7
    .catch Ljava/io/IOException; {:try_start_e4 .. :try_end_e7} :catch_e8

    return-object v22

    .line 100
    .end local v0  # "bytes":[B
    .end local v5  # "topActivityComponent":Landroid/content/ComponentName;
    .end local v11  # "scale":F
    .end local v19  # "bitmap":Landroid/graphics/Bitmap;
    .end local v20  # "buffer":Landroid/graphics/GraphicBuffer;
    .end local v21  # "legacyScale":F
    .end local v25  # "proto":Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;
    .end local v26  # "options":Landroid/graphics/BitmapFactory$Options;
    :catch_e8
    move-exception v0

    goto :goto_ec

    :catch_ea
    move-exception v0

    move-object v1, v15

    .line 101
    .local v0, "e":Ljava/io/IOException;
    :goto_ec
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to load task snapshot data for taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-object v18

    .line 72
    .end local v0  # "e":Ljava/io/IOException;
    :cond_101
    :goto_101
    return-object v18
.end method
