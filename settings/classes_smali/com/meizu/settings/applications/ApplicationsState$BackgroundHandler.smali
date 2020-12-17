.class Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundHandler"
.end annotation


# instance fields
.field mRunning:Z

.field final mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

.field final synthetic this$0:Lcom/meizu/settings/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/meizu/settings/applications/ApplicationsState;Landroid/os/Looper;)V
    .registers 3

    .line 1137
    iput-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    .line 1138
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1374
    new-instance p1, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$2;

    invoke-direct {p1, p0}, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$2;-><init>(Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;)V

    iput-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16

    .line 1145
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1146
    :try_start_5
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_21

    .line 1147
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v3, v3, Lcom/meizu/settings/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1148
    iget-object v3, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v3, v3, Lcom/meizu/settings/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    goto :goto_22

    :cond_21
    move-object v1, v2

    .line 1150
    :goto_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_33e

    const/4 v0, 0x0

    if-eqz v1, :cond_39

    move v3, v0

    .line 1152
    :goto_27
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_39

    .line 1153
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/settings/applications/ApplicationsState$Session;

    invoke-virtual {v4}, Lcom/meizu/settings/applications/ApplicationsState$Session;->handleRebuildList()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 1157
    :cond_39
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x6

    const/4 v7, 0x1

    packed-switch v1, :pswitch_data_342

    goto/16 :goto_33d

    .line 1357
    :pswitch_45  #0x6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 1358
    monitor-enter v1

    .line 1359
    :try_start_4b
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, v2}, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    .line 1360
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_6b

    .line 1361
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1364
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1366
    :cond_6b
    monitor-exit v1

    goto/16 :goto_33d

    :catchall_6e
    move-exception p0

    monitor-exit v1
    :try_end_70
    .catchall {:try_start_4b .. :try_end_70} :catchall_6e

    throw p0

    .line 1211
    :pswitch_71  #0x5
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 1212
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    move v1, v0

    .line 1214
    :goto_7f
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_fd

    .line 1215
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1221
    iget-object v3, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v3, v3, Lcom/meizu/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    const v4, 0xc0200

    invoke-virtual {v3, p1, v4, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    .line 1228
    iget-object v4, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v4, v4, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v4

    :try_start_a1
    const-string v6, "ApplicationsState"

    const-string v8, "MSG_LOAD_LAUNCHER acquired lock"

    .line 1229
    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1230
    iget-object v6, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v6, v6, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 1231
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    move v9, v0

    :goto_b7
    if-ge v9, v8, :cond_ef

    .line 1233
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1234
    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    if-eqz v11, :cond_ce

    .line 1236
    iput-boolean v7, v11, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->hasLauncherEntry:Z

    goto :goto_ec

    :cond_ce
    const-string v11, "ApplicationsState"

    .line 1238
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Cannot find pkg: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " on user "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ec
    add-int/lit8 v9, v9, 0x1

    goto :goto_b7

    :cond_ef
    const-string v2, "ApplicationsState"

    const-string v3, "MSG_LOAD_LAUNCHER releasing lock"

    .line 1242
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    monitor-exit v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_7f

    :catchall_fa
    move-exception p0

    monitor-exit v4
    :try_end_fc
    .catchall {:try_start_a1 .. :try_end_fc} :catchall_fa

    throw p0

    .line 1246
    :cond_fd
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_10f

    .line 1247
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1249
    :cond_10f
    invoke-virtual {p0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_33d

    .line 1287
    :pswitch_114  #0x4
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter p1

    :try_start_119
    const-string v1, "ApplicationsState"

    const-string v2, "MSG_LOAD_SIZES acquired lock"

    .line 1288
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    if-eqz v1, :cond_12f

    const-string p0, "ApplicationsState"

    const-string v0, "MSG_LOAD_SIZES releasing: currently computing"

    .line 1291
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    monitor-exit p1

    return-void

    .line 1295
    :cond_12f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    move v3, v0

    .line 1296
    :goto_134
    iget-object v4, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v4, v4, Lcom/meizu/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1bc

    .line 1297
    iget-object v4, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v4, v4, Lcom/meizu/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 1299
    iget-object v5, v4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->mIsUninstalledSystemApp:Z

    if-nez v5, :cond_156

    iget-wide v8, v4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v10, -0x1

    cmp-long v5, v8, v10

    if-eqz v5, :cond_15a

    :cond_156
    iget-boolean v5, v4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->sizeStale:Z

    if-eqz v5, :cond_1b8

    .line 1300
    :cond_15a
    iget-wide v8, v4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-eqz v0, :cond_16c

    iget-wide v8, v4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    const-wide/16 v10, 0x4e20

    sub-long v10, v1, v10

    cmp-long v0, v8, v10

    if-gez v0, :cond_1af

    .line 1302
    :cond_16c
    iget-boolean v0, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v0, :cond_185

    .line 1303
    iput-boolean v7, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1304
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    .line 1305
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1304
    invoke-virtual {v0, v6, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1306
    iget-object v3, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v3, v3, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1308
    :cond_185
    iput-wide v1, v4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    .line 1309
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v1, v4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/meizu/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 1310
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v1, v4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iput v1, v0, Lcom/meizu/settings/applications/ApplicationsState;->mCurComputingSizeUserId:I

    .line 1311
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v1, v4, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    iput-object v1, v0, Lcom/meizu/settings/applications/ApplicationsState;->mCurComputingSizeUuid:Ljava/util/UUID;

    .line 1313
    iget-object v0, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/meizu/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;

    new-instance v1, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler$1;-><init>(Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1af
    const-string p0, "ApplicationsState"

    const-string v0, "MSG_LOAD_SIZES releasing: now computing"

    .line 1340
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    monitor-exit p1

    return-void

    :cond_1b8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_134

    .line 1344
    :cond_1bc
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1e3

    .line 1345
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1346
    iput-boolean v0, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1347
    iget-object v1, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    .line 1348
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1347
    invoke-virtual {v1, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1349
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1e3
    const-string p0, "ApplicationsState"

    const-string v0, "MSG_LOAD_SIZES releasing lock"

    .line 1351
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    monitor-exit p1

    goto/16 :goto_33d

    :catchall_1ed
    move-exception p0

    monitor-exit p1
    :try_end_1ef
    .catchall {:try_start_119 .. :try_end_1ef} :catchall_1ed

    throw p0

    .line 1254
    :pswitch_1f0  #0x3
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter p1

    :try_start_1f5
    const-string v1, "ApplicationsState"

    const-string v2, "MSG_LOAD_ICONS acquired lock"

    .line 1255
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1256
    :goto_1fd
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_24c

    if-ge v1, v4, :cond_24c

    .line 1257
    iget-object v2, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 1258
    iget-object v8, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_21b

    iget-boolean v8, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez v8, :cond_246

    .line 1259
    :cond_21b
    monitor-enter v2
    :try_end_21c
    .catchall {:try_start_1f5 .. :try_end_21c} :catchall_273

    .line 1260
    :try_start_21c
    iget-object v8, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/meizu/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v9, v9, Lcom/meizu/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v8, v9}, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    move-result v8

    if-eqz v8, :cond_245

    .line 1261
    iget-boolean v8, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v8, :cond_243

    .line 1262
    iput-boolean v7, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1263
    iget-object v8, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    .line 1264
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1263
    invoke-virtual {v8, v6, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 1265
    iget-object v9, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v9, v9, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v9, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_243
    add-int/lit8 v1, v1, 0x1

    .line 1269
    :cond_245
    monitor-exit v2

    :cond_246
    add-int/lit8 v0, v0, 0x1

    goto :goto_1fd

    :catchall_249
    move-exception p0

    monitor-exit v2
    :try_end_24b
    .catchall {:try_start_21c .. :try_end_24b} :catchall_249

    :try_start_24b
    throw p0

    :cond_24c
    const-string v0, "ApplicationsState"

    const-string v2, "MSG_LOAD_ICONS releasing lock"

    .line 1272
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    monitor-exit p1
    :try_end_254
    .catchall {:try_start_24b .. :try_end_254} :catchall_273

    if-lez v1, :cond_267

    .line 1275
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_267

    .line 1276
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {p1, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_267
    if-lt v1, v4, :cond_26e

    .line 1280
    invoke-virtual {p0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_33d

    .line 1282
    :cond_26e
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_33d

    :catchall_273
    move-exception p0

    .line 1273
    :try_start_274
    monitor-exit p1
    :try_end_275
    .catchall {:try_start_274 .. :try_end_275} :catchall_273

    throw p0

    .line 1163
    :pswitch_276  #0x2
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter p1

    :try_start_27b
    const-string v1, "ApplicationsState"

    const-string v2, "MSG_LOAD_ENTRIES acquired lock"

    .line 1164
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    move v2, v1

    .line 1165
    :goto_284
    iget-object v5, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v5, v5, Lcom/meizu/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_315

    if-ge v2, v6, :cond_315

    .line 1166
    iget-boolean v5, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v5, :cond_2a9

    .line 1167
    iput-boolean v7, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1168
    iget-object v5, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v5, v5, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    .line 1169
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1168
    invoke-virtual {v5, v6, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1170
    iget-object v8, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1172
    :cond_2a9
    iget-object v5, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v5, v5, Lcom/meizu/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 1173
    iget v8, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 1174
    iget-object v9, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v9, v9, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    iget-object v10, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_2d2

    add-int/lit8 v2, v2, 0x1

    .line 1176
    iget-object v9, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-static {v9, v5}, Lcom/meizu/settings/applications/ApplicationsState;->access$200(Lcom/meizu/settings/applications/ApplicationsState;Landroid/content/pm/ApplicationInfo;)Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    :cond_2d2
    if-eqz v8, :cond_311

    .line 1178
    iget-object v8, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v8

    if-ltz v8, :cond_311

    .line 1186
    iget-object v8, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v8, v8, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    iget-object v9, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    if-eqz v8, :cond_311

    .line 1187
    iget-object v9, v8, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    if-nez v9, :cond_311

    .line 1189
    iget-object v9, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v9, v9, Lcom/meizu/settings/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    iget-object v5, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v5, v5, Lcom/meizu/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_311
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_284

    :cond_315
    const-string v0, "ApplicationsState"

    const-string v1, "MSG_LOAD_ENTRIES releasing lock"

    .line 1194
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    monitor-exit p1
    :try_end_31d
    .catchall {:try_start_27b .. :try_end_31d} :catchall_33a

    if-lt v2, v6, :cond_323

    .line 1198
    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_33d

    .line 1200
    :cond_323
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_336

    .line 1201
    iget-object p1, p0, Lcom/meizu/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState;->mMainHandler:Lcom/meizu/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1205
    :cond_336
    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_33d

    :catchall_33a
    move-exception p0

    .line 1195
    :try_start_33b
    monitor-exit p1
    :try_end_33c
    .catchall {:try_start_33b .. :try_end_33c} :catchall_33a

    throw p0

    :goto_33d
    :pswitch_33d  #0x1
    return-void

    :catchall_33e
    move-exception p0

    .line 1150
    :try_start_33f
    monitor-exit v0
    :try_end_340
    .catchall {:try_start_33f .. :try_end_340} :catchall_33e

    throw p0

    nop

    :pswitch_data_342
    .packed-switch 0x1
        :pswitch_33d  #00000001
        :pswitch_276  #00000002
        :pswitch_1f0  #00000003
        :pswitch_114  #00000004
        :pswitch_71  #00000005
        :pswitch_45  #00000006
    .end packed-switch
.end method
