.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;
.super Landroid/os/FileObserver;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperObserver"
.end annotation


# instance fields
.field final mLockWallpaperFile:Ljava/io/File;

.field final mUserId:I

.field final mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final mWallpaperDir:Ljava/io/File;

.field final mWallpaperFile:Ljava/io/File;

.field final mWallpaperLockFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 5
    .param p2, "wallpaper"  # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 228
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 229
    iget p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x688

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 231
    iget p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    .line 232
    iget p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    .line 233
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 234
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string/jumbo v1, "wallpaper_orig"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    .line 235
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string/jumbo v1, "wallpaper_lock_orig"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockFile:Ljava/io/File;

    .line 237
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mLockWallpaperFile:Ljava/io/File;

    .line 239
    return-void
.end method

.method private dataForEvent(ZZ)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 7
    .param p1, "sysChanged"  # Z
    .param p2, "lockChanged"  # Z

    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 244
    if-eqz p2, :cond_1c

    .line 245
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$200(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v0, v2

    goto :goto_1c

    .line 251
    :catchall_1a
    move-exception v2

    goto :goto_35

    .line 247
    :cond_1c
    :goto_1c
    if-nez v0, :cond_2d

    .line 249
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$300(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v0, v2

    .line 251
    :cond_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_a .. :try_end_2e} :catchall_1a

    .line 252
    if-eqz v0, :cond_32

    move-object v1, v0

    goto :goto_34

    :cond_32
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    :goto_34
    return-object v1

    .line 251
    :goto_35
    :try_start_35
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_1a

    throw v2
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 23
    .param p1, "event"  # I
    .param p2, "path"  # Ljava/lang/String;

    .line 257
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    if-nez v3, :cond_9

    .line 258
    return-void

    .line 260
    :cond_9
    const/16 v0, 0x80

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v0, :cond_11

    move v0, v5

    goto :goto_12

    :cond_11
    move v0, v4

    :goto_12
    move v6, v0

    .line 261
    .local v6, "moved":Z
    const/16 v0, 0x8

    if-eq v2, v0, :cond_1c

    if-eqz v6, :cond_1a

    goto :goto_1c

    :cond_1a
    move v7, v4

    goto :goto_1d

    :cond_1c
    :goto_1c
    move v7, v5

    .line 262
    .local v7, "written":Z
    :goto_1d
    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    invoke-direct {v8, v9, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 266
    .local v8, "changedFile":Ljava/io/File;
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    invoke-virtual {v9, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 267
    .local v9, "sysWallpaperChanged":Z
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockFile:Ljava/io/File;

    invoke-virtual {v10, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 268
    .local v10, "lockWallpaperChanged":Z
    const/4 v11, 0x0

    .line 269
    .local v11, "notifyColorsWhich":I
    invoke-direct {v1, v9, v10}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->dataForEvent(ZZ)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v15

    .line 281
    .local v15, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    const/4 v14, 0x2

    if-eqz v6, :cond_48

    if-eqz v10, :cond_48

    .line 288
    invoke-static {v8}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 289
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$400(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    .line 290
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0, v15, v14}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$500(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 291
    return-void

    .line 294
    :cond_48
    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 295
    if-nez v9, :cond_57

    if-eqz v10, :cond_54

    goto :goto_57

    :cond_54
    move-object v4, v15

    goto/16 :goto_dd

    .line 296
    :cond_57
    :goto_57
    :try_start_57
    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v12, v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$600(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 297
    iget-object v12, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_f9

    if-eqz v12, :cond_6e

    if-ne v2, v0, :cond_6e

    :try_start_62
    iget-boolean v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z
    :try_end_64
    .catchall {:try_start_62 .. :try_end_64} :catchall_6a

    if-eqz v0, :cond_67

    goto :goto_6e

    :cond_67
    move-object v4, v15

    goto/16 :goto_dd

    .line 364
    :catchall_6a
    move-exception v0

    move-object v4, v15

    goto/16 :goto_fb

    .line 300
    :cond_6e
    :goto_6e
    if-eqz v7, :cond_dc

    .line 308
    :try_start_70
    invoke-static {v8}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_f9

    .line 309
    if-eqz v6, :cond_7c

    .line 316
    :try_start_75
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v12, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v0, v12, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$700(Lcom/android/server/wallpaper/WallpaperManagerService;IZ)V
    :try_end_7c
    .catchall {:try_start_75 .. :try_end_7c} :catchall_6a

    .line 318
    :cond_7c
    :try_start_7c
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0, v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$800(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 322
    iput-boolean v4, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z
    :try_end_83
    .catchall {:try_start_7c .. :try_end_83} :catchall_f9

    .line 323
    if-eqz v9, :cond_a5

    .line 325
    :try_start_85
    iget-object v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$900(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v13
    :try_end_8d
    .catchall {:try_start_85 .. :try_end_8d} :catchall_a2

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/16 v17, 0x0

    move v5, v14

    move v14, v0

    move-object/from16 v19, v15

    .end local v15  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .local v19, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    move v15, v4

    move-object/from16 v16, v19

    :try_start_98
    invoke-static/range {v12 .. v17}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1000(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_9e

    .line 327
    or-int/lit8 v11, v11, 0x1

    goto :goto_a8

    .line 364
    :catchall_9e
    move-exception v0

    move-object/from16 v4, v19

    goto :goto_fb

    .end local v19  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v15  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_a2
    move-exception v0

    move-object v4, v15

    .end local v15  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v19  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    goto :goto_fb

    .line 323
    .end local v19  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v15  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_a5
    move v5, v14

    move-object/from16 v19, v15

    .line 329
    .end local v15  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v19  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_a8
    if-nez v10, :cond_b2

    move-object/from16 v4, v19

    .end local v19  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .local v4, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :try_start_ac
    iget v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    and-int/2addr v0, v5

    if-eqz v0, :cond_c9

    goto :goto_b4

    .end local v4  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v19  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_b2
    move-object/from16 v4, v19

    .line 337
    .end local v19  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v4  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_b4
    if-nez v10, :cond_c1

    .line 338
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$200(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    iget v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 341
    :cond_c1
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$400(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    .line 342
    or-int/lit8 v0, v11, 0x2

    move v11, v0

    .line 345
    :cond_c9
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1100(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 348
    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;
    :try_end_d2
    .catchall {:try_start_ac .. :try_end_d2} :catchall_f7

    if-eqz v0, :cond_dd

    .line 350
    :try_start_d4
    iget-object v0, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v0}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_d9
    .catch Landroid/os/RemoteException; {:try_start_d4 .. :try_end_d9} :catch_da
    .catchall {:try_start_d4 .. :try_end_d9} :catchall_f7

    .line 354
    goto :goto_dd

    .line 351
    :catch_da
    move-exception v0

    goto :goto_dd

    .line 300
    .end local v4  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v15  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_dc
    move-object v4, v15

    .line 360
    .end local v15  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v4  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :cond_dd
    :goto_dd
    :try_start_dd
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mLockWallpaperFile:Ljava/io/File;

    invoke-virtual {v0, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ee

    .line 361
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFlymeWallpaperService:Lcom/android/server/wallpaper/FlymeWallpaperService;

    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v0, v5}, Lcom/android/server/wallpaper/FlymeWallpaperService;->notifyLockWallpaperChangeLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 364
    :cond_ee
    monitor-exit v18
    :try_end_ef
    .catchall {:try_start_dd .. :try_end_ef} :catchall_f7

    .line 367
    if-eqz v11, :cond_f6

    .line 368
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0, v4, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$500(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 370
    :cond_f6
    return-void

    .line 364
    :catchall_f7
    move-exception v0

    goto :goto_fb

    .end local v4  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v15  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :catchall_f9
    move-exception v0

    move-object v4, v15

    .end local v15  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .restart local v4  # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    :goto_fb
    :try_start_fb
    monitor-exit v18
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_f7

    throw v0
.end method
