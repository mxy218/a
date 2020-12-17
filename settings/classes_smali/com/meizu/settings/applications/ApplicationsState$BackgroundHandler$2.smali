.class Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$2;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;)V
    .registers 2

    .line 1374
    iput-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$2;->this$1:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .registers 16

    .line 1377
    iget-object p2, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$2;->this$1:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object p2, p2, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p2, p2, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter p2

    :try_start_7
    const-string v0, "ApplicationsState"

    const-string/jumbo v1, "onGetStatsCompleted acquired lock"

    .line 1378
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_13

    .line 1380
    monitor-exit p2

    return-void

    .line 1383
    :cond_13
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$2;->this$1:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    iget v1, p1, Landroid/content/pm/PackageStats;->userHandle:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_25

    .line 1386
    monitor-exit p2

    return-void

    .line 1388
    :cond_25
    iget-object v1, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    const/4 v1, 0x4

    if-eqz v0, :cond_120

    .line 1390
    monitor-enter v0
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_156

    const/4 v2, 0x0

    .line 1391
    :try_start_32
    iput-boolean v2, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->sizeStale:Z

    const-wide/16 v3, 0x0

    .line 1392
    iput-wide v3, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    .line 1393
    iget-wide v3, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v5, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v3, v5

    .line 1395
    iget-wide v5, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v7, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v5, v7

    add-long v7, v3, v5

    .line 1397
    iget-object v9, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$2;->this$1:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v9, v9, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    .line 1398
    invoke-static {v9, p1}, Lcom/meizu/settings/applications/ApplicationsState;->access$600(Lcom/meizu/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v9

    add-long/2addr v7, v9

    .line 1399
    iget-wide v9, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->size:J

    cmp-long v9, v9, v7

    if-nez v9, :cond_7f

    iget-wide v9, v0, Lcom/meizu/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    iget-wide v11, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_7f

    iget-wide v9, v0, Lcom/meizu/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    iget-wide v11, p1, Landroid/content/pm/PackageStats;->codeSize:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_7f

    iget-wide v9, v0, Lcom/meizu/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    iget-wide v11, p1, Landroid/content/pm/PackageStats;->dataSize:J

    cmp-long v9, v9, v11

    if-nez v9, :cond_7f

    iget-wide v9, v0, Lcom/meizu/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    cmp-long v9, v9, v3

    if-nez v9, :cond_7f

    iget-wide v9, v0, Lcom/meizu/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    cmp-long v9, v9, v5

    if-nez v9, :cond_7f

    iget-wide v9, v0, Lcom/meizu/settings/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    iget-wide v11, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    cmp-long v9, v9, v11

    if-eqz v9, :cond_104

    .line 1406
    :cond_7f
    iget-object v2, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->mIsUninstalledSystemApp:Z

    if-eqz v2, :cond_8b

    iget-object v2, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->apkFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    :cond_8b
    iput-wide v7, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->size:J

    .line 1407
    iget-wide v7, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    iput-wide v7, v0, Lcom/meizu/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    .line 1408
    iget-wide v7, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iput-wide v7, v0, Lcom/meizu/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    .line 1409
    iget-wide v7, p1, Landroid/content/pm/PackageStats;->dataSize:J

    iput-wide v7, v0, Lcom/meizu/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    .line 1410
    iput-wide v3, v0, Lcom/meizu/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    .line 1411
    iput-wide v5, v0, Lcom/meizu/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    .line 1412
    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    iput-wide v2, v0, Lcom/meizu/settings/applications/ApplicationsState$SizeInfo;->externalCacheSize:J

    .line 1413
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$2;->this$1:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-wide v3, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->size:J

    invoke-static {v2, v3, v4}, Lcom/meizu/settings/applications/ApplicationsState;->access$700(Lcom/meizu/settings/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    .line 1414
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$2;->this$1:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-static {v2, p1}, Lcom/meizu/settings/applications/ApplicationsState;->access$600(Lcom/meizu/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->internalSize:J

    .line 1415
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$2;->this$1:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-wide v3, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->internalSize:J

    invoke-static {v2, v3, v4}, Lcom/meizu/settings/applications/ApplicationsState;->access$700(Lcom/meizu/settings/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->internalSizeStr:Ljava/lang/String;

    .line 1416
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$2;->this$1:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-static {v2, p1}, Lcom/meizu/settings/applications/ApplicationsState;->access$800(Lcom/meizu/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->externalSize:J

    .line 1417
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$2;->this$1:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-wide v3, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->externalSize:J

    invoke-static {v2, v3, v4}, Lcom/meizu/settings/applications/ApplicationsState;->access$700(Lcom/meizu/settings/applications/ApplicationsState;J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->externalSizeStr:Ljava/lang/String;

    const-string v2, "ApplicationsState"

    .line 1418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set size of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 1422
    :cond_104
    monitor-exit v0
    :try_end_105
    .catchall {:try_start_32 .. :try_end_105} :catchall_11d

    if-eqz v2, :cond_120

    .line 1424
    :try_start_107
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$2;->this$1:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    iget-object v2, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1426
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$2;->this$1:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_11c
    .catchall {:try_start_107 .. :try_end_11c} :catchall_156

    goto :goto_120

    :catchall_11d
    move-exception p0

    .line 1422
    :try_start_11e
    monitor-exit v0
    :try_end_11f
    .catchall {:try_start_11e .. :try_end_11f} :catchall_11d

    :try_start_11f
    throw p0

    .line 1429
    :cond_120
    :goto_120
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$2;->this$1:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    if-eqz v0, :cond_14c

    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$2;->this$1:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    .line 1430
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14c

    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$2;->this$1:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget v0, v0, Lcom/meizu/settings/applications/ApplicationsState;->mCurComputingSizeUserId:I

    iget p1, p1, Landroid/content/pm/PackageStats;->userHandle:I

    if-ne v0, p1, :cond_14c

    .line 1432
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$2;->this$1:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/meizu/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 1433
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$2;->this$1:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_14c
    const-string p0, "ApplicationsState"

    const-string/jumbo p1, "onGetStatsCompleted releasing lock"

    .line 1435
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    monitor-exit p2

    return-void

    :catchall_156
    move-exception p0

    monitor-exit p2
    :try_end_158
    .catchall {:try_start_11f .. :try_end_158} :catchall_156

    throw p0
.end method
