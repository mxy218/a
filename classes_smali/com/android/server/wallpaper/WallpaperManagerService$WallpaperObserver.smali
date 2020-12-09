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
.field final mUserId:I

.field final mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final mWallpaperDir:Ljava/io/File;

.field final mWallpaperFile:Ljava/io/File;

.field final mWallpaperLockFile:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 4

    .line 211
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 212
    iget p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x688

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 214
    iget p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    .line 215
    iget p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$000(I)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    .line 216
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 217
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string/jumbo v0, "wallpaper_orig"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    .line 218
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    const-string/jumbo v0, "wallpaper_lock_orig"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockFile:Ljava/io/File;

    .line 219
    return-void
.end method

.method private dataForEvent(ZZ)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 4

    .line 222
    nop

    .line 223
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 224
    if-eqz p2, :cond_1b

    .line 225
    :try_start_a
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$200(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object p2

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    goto :goto_1c

    .line 231
    :catchall_19
    move-exception p2

    goto :goto_33

    .line 224
    :cond_1b
    const/4 p2, 0x0

    .line 227
    :goto_1c
    if-nez p2, :cond_2c

    .line 229
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$300(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object p2

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mUserId:I

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 231
    :cond_2c
    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_a .. :try_end_2d} :catchall_19

    .line 232
    if-eqz p2, :cond_30

    goto :goto_32

    :cond_30
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    :goto_32
    return-object p2

    .line 231
    :goto_33
    :try_start_33
    monitor-exit p1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_19

    throw p2
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 20

    .line 237
    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    if-nez v2, :cond_9

    .line 238
    return-void

    .line 240
    :cond_9
    const/16 v3, 0x80

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v3, :cond_11

    move v3, v4

    goto :goto_12

    :cond_11
    move v3, v5

    .line 241
    :goto_12
    const/16 v6, 0x8

    if-eq v0, v6, :cond_1b

    if-eqz v3, :cond_19

    goto :goto_1b

    :cond_19
    move v7, v5

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v7, v4

    .line 242
    :goto_1c
    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperDir:Ljava/io/File;

    invoke-direct {v8, v9, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 246
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperFile:Ljava/io/File;

    invoke-virtual {v2, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 247
    iget-object v9, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->mWallpaperLockFile:Ljava/io/File;

    invoke-virtual {v9, v8}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 248
    nop

    .line 249
    invoke-direct {v1, v2, v9}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->dataForEvent(ZZ)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v15

    .line 261
    const/4 v14, 0x2

    if-eqz v3, :cond_47

    if-eqz v9, :cond_47

    .line 268
    invoke-static {v8}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 269
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$400(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    .line 270
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0, v15, v14}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$500(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 271
    return-void

    .line 274
    :cond_47
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    .line 275
    if-nez v2, :cond_56

    if-eqz v9, :cond_53

    goto :goto_56

    :cond_53
    move-object v3, v15

    goto/16 :goto_c9

    .line 276
    :cond_56
    :goto_56
    :try_start_56
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v10, v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$600(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 277
    iget-object v10, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v10, :cond_69

    if-ne v0, v6, :cond_69

    iget-boolean v0, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    if-eqz v0, :cond_66

    goto :goto_69

    :cond_66
    move-object v3, v15

    goto/16 :goto_c9

    .line 280
    :cond_69
    :goto_69
    if-eqz v7, :cond_c8

    .line 288
    invoke-static {v8}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    .line 289
    if-eqz v3, :cond_77

    .line 296
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v3, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v0, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$700(Lcom/android/server/wallpaper/WallpaperManagerService;IZ)V

    .line 298
    :cond_77
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0, v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$800(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 302
    iput-boolean v5, v15, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    .line 303
    if-eqz v2, :cond_93

    .line 305
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$900(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v0, 0x0

    move v2, v14

    move-object v14, v15

    move-object v3, v15

    move-object v15, v0

    invoke-static/range {v10 .. v15}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1000(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    .line 307
    goto :goto_96

    .line 303
    :cond_93
    move v2, v14

    move-object v3, v15

    move v4, v5

    .line 309
    :goto_96
    if-nez v9, :cond_a0

    iget v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_9e

    goto :goto_a0

    :cond_9e
    move v5, v4

    goto :goto_b5

    .line 317
    :cond_a0
    :goto_a0
    if-nez v9, :cond_ad

    .line 318
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$200(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    iget v2, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 321
    :cond_ad
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$400(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    .line 322
    or-int/lit8 v0, v4, 0x2

    move v5, v0

    .line 325
    :goto_b5
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget v2, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1100(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 328
    iget-object v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;
    :try_end_be
    .catchall {:try_start_56 .. :try_end_be} :catchall_d2

    if-eqz v0, :cond_c9

    .line 330
    :try_start_c0
    iget-object v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v0}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_c5
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_c5} :catch_c6
    .catchall {:try_start_c0 .. :try_end_c5} :catchall_d2

    .line 334
    goto :goto_c9

    .line 331
    :catch_c6
    move-exception v0

    goto :goto_c9

    .line 280
    :cond_c8
    move-object v3, v15

    .line 339
    :cond_c9
    :goto_c9
    :try_start_c9
    monitor-exit v16
    :try_end_ca
    .catchall {:try_start_c9 .. :try_end_ca} :catchall_d2

    .line 342
    if-eqz v5, :cond_d1

    .line 343
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0, v3, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$500(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    .line 345
    :cond_d1
    return-void

    .line 339
    :catchall_d2
    move-exception v0

    :try_start_d3
    monitor-exit v16
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    throw v0
.end method
