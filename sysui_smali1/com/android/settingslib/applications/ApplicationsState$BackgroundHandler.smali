.class Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundHandler"
.end annotation


# instance fields
.field mRunning:Z

.field final mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

.field final synthetic this$0:Lcom/android/settingslib/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Landroid/os/Looper;)V
    .registers 3

    .line 1065
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    .line 1066
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1343
    new-instance p1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;

    invoke-direct {p1, p0}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler$1;-><init>(Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;)V

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    return-void
.end method

.method private getCombinedSessionFlags(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/ApplicationsState$Session;",
            ">;)I"
        }
    .end annotation

    .line 1334
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter p0

    const/4 v0, 0x0

    .line 1336
    :try_start_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 1337
    invoke-static {v1}, Lcom/android/settingslib/applications/ApplicationsState$Session;->access$300(Lcom/android/settingslib/applications/ApplicationsState$Session;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_a

    .line 1339
    :cond_1c
    monitor-exit p0

    return v0

    :catchall_1e
    move-exception p1

    .line 1340
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_6 .. :try_end_20} :catchall_1e

    throw p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1073
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1074
    :try_start_9
    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_25

    .line 1075
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1076
    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_26

    :cond_25
    move-object v3, v4

    .line 1078
    :goto_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_9 .. :try_end_27} :catchall_38c

    const/4 v2, 0x0

    if-eqz v3, :cond_3d

    move v5, v2

    .line 1080
    :goto_2b
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3d

    .line 1081
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v6}, Lcom/android/settingslib/applications/ApplicationsState$Session;->handleRebuildList()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2b

    .line 1085
    :cond_3d
    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->getCombinedSessionFlags(Ljava/util/List;)I

    move-result v3

    .line 1087
    iget v5, v1, Landroid/os/Message;->what:I

    const/high16 v6, 0x800000

    const/4 v7, 0x3

    const/4 v8, 0x7

    const/16 v9, 0x8

    const/4 v10, 0x5

    const/4 v11, 0x2

    const/4 v12, 0x4

    const/4 v13, 0x6

    const/4 v14, 0x1

    packed-switch v5, :pswitch_data_390

    goto/16 :goto_38b

    .line 1252
    :pswitch_57  #0x7
    invoke-static {v3, v12}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v1

    if-eqz v1, :cond_38b

    .line 1253
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1255
    :try_start_62
    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    if-eqz v3, :cond_6a

    .line 1260
    monitor-exit v1

    return-void

    .line 1263
    :cond_6a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    move v5, v2

    .line 1264
    :goto_6f
    iget-object v7, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_f4

    .line 1265
    iget-object v7, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1266
    iget-object v8, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v8, v6}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v8

    if-eqz v8, :cond_f0

    iget-wide v8, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v11, -0x1

    cmp-long v8, v8, v11

    if-eqz v8, :cond_99

    iget-boolean v8, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    if-eqz v8, :cond_f0

    .line 1268
    :cond_99
    iget-wide v5, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    const-wide/16 v8, 0x0

    cmp-long v2, v5, v8

    if-eqz v2, :cond_ab

    iget-wide v5, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    const-wide/16 v8, 0x4e20

    sub-long v8, v3, v8

    cmp-long v2, v5, v8

    if-gez v2, :cond_ee

    .line 1270
    :cond_ab
    iget-boolean v2, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v2, :cond_c4

    .line 1271
    iput-boolean v14, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1272
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 1273
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1272
    invoke-virtual {v2, v13, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1274
    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1276
    :cond_c4
    iput-wide v3, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    .line 1277
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    iput-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUuid:Ljava/util/UUID;

    .line 1278
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 1279
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iput v3, v2, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    .line 1282
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    new-instance v3, Lcom/android/settingslib/applications/-$$Lambda$ApplicationsState$BackgroundHandler$7jhXQzAcRoT6ACDzmPBTQMi7Ldc;

    invoke-direct {v3, v0}, Lcom/android/settingslib/applications/-$$Lambda$ApplicationsState$BackgroundHandler$7jhXQzAcRoT6ACDzmPBTQMi7Ldc;-><init>(Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1315
    :cond_ee
    monitor-exit v1

    return-void

    :cond_f0
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6f

    .line 1318
    :cond_f4
    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v3, v10}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_11a

    .line 1319
    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v3, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1320
    iput-boolean v2, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1321
    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 1322
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1321
    invoke-virtual {v3, v13, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1323
    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1326
    :cond_11a
    monitor-exit v1

    goto/16 :goto_38b

    :catchall_11d
    move-exception v0

    monitor-exit v1
    :try_end_11f
    .catchall {:try_start_62 .. :try_end_11f} :catchall_11d

    throw v0

    .line 1215
    :pswitch_120  #0x6
    invoke-static {v3, v11}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v1

    if-eqz v1, :cond_199

    .line 1217
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v1

    move v3, v2

    .line 1219
    :goto_12c
    :try_start_12c
    iget-object v4, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_17b

    if-ge v3, v11, :cond_17b

    .line 1220
    iget-object v4, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1221
    iget-object v5, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_14a

    iget-boolean v5, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez v5, :cond_175

    .line 1222
    :cond_14a
    monitor-enter v4
    :try_end_14b
    .catchall {:try_start_12c .. :try_end_14b} :catchall_196

    .line 1224
    :try_start_14b
    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5, v6}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    move-result v5

    if-eqz v5, :cond_174

    .line 1226
    iget-boolean v5, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v5, :cond_172

    .line 1227
    iput-boolean v14, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1228
    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 1229
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1228
    invoke-virtual {v5, v13, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1230
    iget-object v6, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_172
    add-int/lit8 v3, v3, 0x1

    .line 1234
    :cond_174
    monitor-exit v4

    :cond_175
    add-int/lit8 v2, v2, 0x1

    goto :goto_12c

    :catchall_178
    move-exception v0

    monitor-exit v4
    :try_end_17a
    .catchall {:try_start_14b .. :try_end_17a} :catchall_178

    :try_start_17a
    throw v0

    .line 1238
    :cond_17b
    monitor-exit v1
    :try_end_17c
    .catchall {:try_start_17a .. :try_end_17c} :catchall_196

    if-lez v3, :cond_18f

    .line 1240
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_18f

    .line 1241
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_18f
    if-lt v3, v11, :cond_199

    .line 1245
    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_38b

    :catchall_196
    move-exception v0

    .line 1238
    :try_start_197
    monitor-exit v1
    :try_end_198
    .catchall {:try_start_197 .. :try_end_198} :catchall_196

    throw v0

    .line 1249
    :cond_199
    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_38b

    :pswitch_19e  #0x4, 0x5
    if-ne v5, v12, :cond_1a6

    .line 1161
    invoke-static {v3, v9}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v5

    if-nez v5, :cond_1b2

    :cond_1a6
    iget v5, v1, Landroid/os/Message;->what:I

    if-ne v5, v10, :cond_25d

    const/16 v5, 0x10

    .line 1163
    invoke-static {v3, v5}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v3

    if-eqz v3, :cond_25d

    .line 1165
    :cond_1b2
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1166
    iget v4, v1, Landroid/os/Message;->what:I

    if-ne v4, v12, :cond_1c0

    const-string v4, "android.intent.category.LAUNCHER"

    goto :goto_1c2

    :cond_1c0
    const-string v4, "android.intent.category.LEANBACK_LAUNCHER"

    :goto_1c2
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move v4, v2

    .line 1168
    :goto_1c6
    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_24c

    .line 1169
    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1176
    iget-object v6, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    const v7, 0xc0200

    invoke-virtual {v6, v3, v7, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 1183
    iget-object v7, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v7

    .line 1185
    :try_start_1e8
    iget-object v9, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 1186
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    move v15, v2

    :goto_1f7
    if-ge v15, v11, :cond_240

    .line 1188
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1189
    iget-object v13, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1190
    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v10, v17

    check-cast v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v10, :cond_21b

    .line 1192
    iput-boolean v14, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->hasLauncherEntry:Z

    .line 1193
    iget-boolean v13, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->launcherEntryEnabled:Z

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->enabled:Z

    or-int/2addr v2, v13

    iput-boolean v2, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->launcherEntryEnabled:Z

    goto :goto_239

    :cond_21b
    const-string v2, "ApplicationsState"

    .line 1196
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Cannot find pkg: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " on user "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_239
    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x5

    const/4 v13, 0x6

    const/4 v14, 0x1

    goto :goto_1f7

    .line 1201
    :cond_240
    monitor-exit v7

    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x5

    const/4 v13, 0x6

    const/4 v14, 0x1

    goto/16 :goto_1c6

    :catchall_249
    move-exception v0

    monitor-exit v7
    :try_end_24b
    .catchall {:try_start_1e8 .. :try_end_24b} :catchall_249

    throw v0

    .line 1204
    :cond_24c
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_25d

    .line 1205
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1208
    :cond_25d
    iget v1, v1, Landroid/os/Message;->what:I

    if-ne v1, v12, :cond_267

    const/4 v1, 0x5

    .line 1209
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_38b

    :cond_267
    const/4 v1, 0x6

    .line 1211
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_38b

    :pswitch_26d  #0x3
    move v1, v14

    .line 1136
    invoke-static {v3, v1}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v2

    if-eqz v2, :cond_2c2

    .line 1137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1138
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 1139
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1140
    :try_start_285
    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_28e
    if-ge v4, v3, :cond_2bd

    .line 1143
    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 1145
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_29e
    :goto_29e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2ba

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 1146
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1147
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v7, :cond_29e

    const/4 v8, 0x1

    .line 1149
    iput-boolean v8, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->isHomeApp:Z

    goto :goto_29e

    :cond_2ba
    add-int/lit8 v4, v4, 0x1

    goto :goto_28e

    .line 1154
    :cond_2bd
    monitor-exit v2

    goto :goto_2c2

    :catchall_2bf
    move-exception v0

    monitor-exit v2
    :try_end_2c1
    .catchall {:try_start_285 .. :try_end_2c1} :catchall_2bf

    throw v0

    .line 1156
    :cond_2c2
    :goto_2c2
    invoke-virtual {v0, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_38b

    .line 1092
    :pswitch_2c7  #0x2
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1094
    :goto_2ce
    :try_start_2ce
    iget-object v4, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_36b

    const/4 v4, 0x6

    if-ge v3, v4, :cond_36b

    .line 1095
    iget-boolean v4, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v4, :cond_2f7

    const/4 v4, 0x1

    .line 1096
    iput-boolean v4, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1097
    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 1098
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x6

    .line 1097
    invoke-virtual {v5, v10, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1099
    iget-object v8, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2f8

    :cond_2f7
    const/4 v4, 0x1

    .line 1101
    :goto_2f8
    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 1102
    iget v8, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 1103
    iget-object v10, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    iget-object v12, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_321

    add-int/lit8 v3, v3, 0x1

    .line 1105
    iget-object v10, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {v10, v5}, Lcom/android/settingslib/applications/ApplicationsState;->access$100(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    :cond_321
    if-eqz v8, :cond_366

    .line 1107
    iget-object v8, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v8

    if-ltz v8, :cond_364

    .line 1115
    iget-object v8, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    iget-object v10, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v8, :cond_366

    .line 1116
    iget-object v10, v8, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v10, v6}, Lcom/android/settingslib/applications/ApplicationsState;->access$200(II)Z

    move-result v10

    if-nez v10, :cond_366

    .line 1118
    iget-object v10, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    iget-object v5, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_367

    :cond_364
    move v12, v10

    goto :goto_367

    :cond_366
    const/4 v12, 0x0

    :goto_367
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2ce

    .line 1124
    :cond_36b
    monitor-exit v1
    :try_end_36c
    .catchall {:try_start_2ce .. :try_end_36c} :catchall_388

    const/4 v1, 0x6

    if-lt v3, v1, :cond_373

    .line 1127
    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_38b

    .line 1129
    :cond_373
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_384

    .line 1130
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1132
    :cond_384
    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_38b

    :catchall_388
    move-exception v0

    .line 1124
    :try_start_389
    monitor-exit v1
    :try_end_38a
    .catchall {:try_start_389 .. :try_end_38a} :catchall_388

    throw v0

    :cond_38b
    :goto_38b
    :pswitch_38b  #0x1
    return-void

    :catchall_38c
    move-exception v0

    .line 1078
    :try_start_38d
    monitor-exit v2
    :try_end_38e
    .catchall {:try_start_38d .. :try_end_38e} :catchall_38c

    throw v0

    nop

    :pswitch_data_390
    .packed-switch 0x1
        :pswitch_38b  #00000001
        :pswitch_2c7  #00000002
        :pswitch_26d  #00000003
        :pswitch_19e  #00000004
        :pswitch_19e  #00000005
        :pswitch_120  #00000006
        :pswitch_57  #00000007
    .end packed-switch
.end method

.method public synthetic lambda$handleMessage$0$ApplicationsState$BackgroundHandler()V
    .registers 5

    .line 1284
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUuid:Ljava/util/UUID;

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    .line 1288
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 1285
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v0

    .line 1290
    new-instance v1, Landroid/content/pm/PackageStats;

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settingslib/applications/ApplicationsState;

    iget v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizeUserId:I

    invoke-direct {v1, v2, v3}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    .line 1293
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCodeBytes()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/content/pm/PackageStats;->codeSize:J

    .line 1294
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 1295
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/content/pm/PackageStats;->cacheSize:J
    :try_end_37
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_37} :catch_3e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_37} :catch_3e

    .line 1297
    :try_start_37
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageStatsObserver$Stub;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3d} :catch_5c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_37 .. :try_end_3d} :catch_3e
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3d} :catch_3e

    goto :goto_5c

    :catch_3e
    move-exception v0

    .line 1302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to query stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplicationsState"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    :try_start_55
    iget-object p0, p0, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/IPackageStatsObserver$Stub;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_5c
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5c} :catch_5c

    :catch_5c
    :goto_5c
    return-void
.end method
