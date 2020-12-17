.class public Lcom/android/server/storage/DeviceStorageMonitorService;
.super Lcom/android/server/SystemService;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;,
        Lcom/android/server/storage/DeviceStorageMonitorService$Shell;,
        Lcom/android/server/storage/DeviceStorageMonitorService$State;
    }
.end annotation


# static fields
.field private static final BOOT_IMAGE_STORAGE_REQUIREMENT:J

.field private static final CRITICAL_LOW_THRESHOLD_BYTES:I = 0x6400000

.field private static final DEFAULT_CHECK_INTERVAL:J = 0x7530L

.field private static final DEFAULT_LOG_DELTA_BYTES:J

.field public static final EXTRA_SEQUENCE:Ljava/lang/String; = "seq"

.field private static final MSG_CHECK:I = 0x1

.field private static final MZ_SAFE_PACKAGE_NAME:Ljava/lang/String; = "com.meizu.safe"

.field static final OPTION_FORCE_UPDATE:I = 0x1

.field static final SERVICE:Ljava/lang/String; = "devicestoragemonitor"

.field private static final TAG:Ljava/lang/String; = "DeviceStorageMonitorService"

.field private static final TV_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "devicestoragemonitor.tv"


# instance fields
.field private mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

.field private mDialog:Landroid/app/AlertDialog;

.field private volatile mForceLevel:I

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

.field private mNotifManager:Landroid/app/NotificationManager;

.field private final mRemoteService:Landroid/os/Binder;

.field private final mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/util/UUID;",
            "Lcom/android/server/storage/DeviceStorageMonitorService$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 97
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->DEFAULT_LOG_DELTA_BYTES:J

    .line 106
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->BOOT_IMAGE_STORAGE_REQUIREMENT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;

    .line 287
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 120
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    .line 341
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$2;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$2;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 361
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$3;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$3;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/Binder;

    .line 624
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    .line 289
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DeviceStorageMonitorService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 290
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 292
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$1;

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService$1;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    .line 302
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/storage/DeviceStorageMonitorService;

    .line 86
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->check()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/storage/DeviceStorageMonitorService;

    .line 86
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/storage/DeviceStorageMonitorService;Ljava/util/UUID;)Landroid/content/Intent;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/storage/DeviceStorageMonitorService;
    .param p1, "x1"  # Ljava/util/UUID;

    .line 86
    invoke-direct {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->createIntent(Ljava/util/UUID;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private check()V
    .registers 31

    .line 206
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 207
    .local v2, "storage":Landroid/os/storage/StorageManager;
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 210
    .local v3, "seq":I
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/storage/VolumeInfo;

    .line 211
    .local v5, "vol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v6

    .line 212
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v2, v6}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v7

    .line 213
    .local v7, "fullBytes":J
    invoke-virtual {v2, v6}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v9

    .line 215
    .local v9, "lowBytes":J
    const-wide/32 v11, 0x6400000

    .line 221
    .local v11, "criticalLowBytes":J
    invoke-virtual {v6}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v13

    const-wide/16 v15, 0x3

    mul-long/2addr v15, v9

    const-wide/16 v17, 0x2

    div-long v15, v15, v17

    cmp-long v0, v13, v15

    if-gez v0, :cond_6b

    .line 222
    nop

    .line 223
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/pm/PackageManagerService;

    .line 225
    .local v13, "pms":Lcom/android/server/pm/PackageManagerService;
    :try_start_53
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_57} :catch_62

    mul-long v14, v9, v17

    move-object/from16 v16, v2

    .end local v2  # "storage":Landroid/os/storage/StorageManager;
    .local v16, "storage":Landroid/os/storage/StorageManager;
    const/4 v2, 0x0

    :try_start_5c
    invoke-virtual {v13, v0, v14, v15, v2}, Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;JI)V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    .line 228
    goto :goto_6d

    .line 226
    :catch_60
    move-exception v0

    goto :goto_65

    .end local v16  # "storage":Landroid/os/storage/StorageManager;
    .restart local v2  # "storage":Landroid/os/storage/StorageManager;
    :catch_62
    move-exception v0

    move-object/from16 v16, v2

    .line 227
    .end local v2  # "storage":Landroid/os/storage/StorageManager;
    .local v0, "e":Ljava/io/IOException;
    .restart local v16  # "storage":Landroid/os/storage/StorageManager;
    :goto_65
    const-string v2, "DeviceStorageMonitorService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6d

    .line 221
    .end local v0  # "e":Ljava/io/IOException;
    .end local v13  # "pms":Lcom/android/server/pm/PackageManagerService;
    .end local v16  # "storage":Landroid/os/storage/StorageManager;
    .restart local v2  # "storage":Landroid/os/storage/StorageManager;
    :cond_6b
    move-object/from16 v16, v2

    .line 233
    .end local v2  # "storage":Landroid/os/storage/StorageManager;
    .restart local v16  # "storage":Landroid/os/storage/StorageManager;
    :goto_6d
    invoke-virtual {v5}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 234
    .local v0, "uuid":Ljava/util/UUID;
    invoke-direct {v1, v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->findOrCreateState(Ljava/util/UUID;)Lcom/android/server/storage/DeviceStorageMonitorService$State;

    move-result-object v2

    .line 235
    .local v2, "state":Lcom/android/server/storage/DeviceStorageMonitorService$State;
    invoke-virtual {v6}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v13

    .line 238
    .local v13, "totalBytes":J
    nop

    .line 239
    move-wide/from16 v24, v11

    .end local v11  # "criticalLowBytes":J
    .local v24, "criticalLowBytes":J
    invoke-virtual {v6}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v11

    .line 238
    const-string v15, "debug.usableBytes"

    invoke-static {v15, v11, v12}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 242
    .local v11, "usableBytes":J
    iget v15, v2, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    .line 244
    .local v15, "oldLevel":I
    move-object/from16 v26, v4

    iget v4, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    move-object/from16 v27, v6

    .end local v6  # "file":Ljava/io/File;
    .local v27, "file":Ljava/io/File;
    const/4 v6, -0x1

    if-eq v4, v6, :cond_9b

    .line 247
    const/4 v4, -0x1

    .line 248
    .end local v15  # "oldLevel":I
    .local v4, "oldLevel":I
    iget v6, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    move v15, v4

    move v4, v6

    .local v6, "newLevel":I
    goto :goto_c7

    .line 249
    .end local v4  # "oldLevel":I
    .end local v6  # "newLevel":I
    .restart local v15  # "oldLevel":I
    :cond_9b
    cmp-long v4, v11, v7

    if-gtz v4, :cond_a1

    .line 250
    const/4 v4, 0x3

    .local v4, "newLevel":I
    goto :goto_c7

    .line 252
    .end local v4  # "newLevel":I
    :cond_a1
    const-wide/32 v17, 0x6400000

    cmp-long v4, v11, v17

    if-gtz v4, :cond_aa

    .line 253
    const/4 v4, 0x2

    .restart local v4  # "newLevel":I
    goto :goto_c7

    .line 255
    .end local v4  # "newLevel":I
    :cond_aa
    cmp-long v4, v11, v9

    if-gtz v4, :cond_b0

    .line 256
    const/4 v4, 0x1

    .restart local v4  # "newLevel":I
    goto :goto_c7

    .line 257
    .end local v4  # "newLevel":I
    :cond_b0
    sget-object v4, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v4, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c6

    invoke-static {}, Lcom/android/server/storage/DeviceStorageMonitorService;->isBootImageOnDisk()Z

    move-result v4

    if-nez v4, :cond_c6

    sget-wide v17, Lcom/android/server/storage/DeviceStorageMonitorService;->BOOT_IMAGE_STORAGE_REQUIREMENT:J

    cmp-long v4, v11, v17

    if-gez v4, :cond_c6

    .line 259
    const/4 v4, 0x1

    .restart local v4  # "newLevel":I
    goto :goto_c7

    .line 261
    .end local v4  # "newLevel":I
    :cond_c6
    const/4 v4, 0x0

    .line 265
    .restart local v4  # "newLevel":I
    :goto_c7
    move-wide/from16 v28, v7

    .end local v7  # "fullBytes":J
    .local v28, "fullBytes":J
    iget-wide v6, v2, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    sub-long/2addr v6, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sget-wide v17, Lcom/android/server/storage/DeviceStorageMonitorService;->DEFAULT_LOG_DELTA_BYTES:J

    cmp-long v6, v6, v17

    if-gtz v6, :cond_d8

    if-eq v15, v4, :cond_e9

    .line 267
    :cond_d8
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v17

    move/from16 v18, v15

    move/from16 v19, v4

    move-wide/from16 v20, v11

    move-wide/from16 v22, v13

    invoke-static/range {v17 .. v23}, Lcom/android/server/EventLogTags;->writeStorageState(Ljava/lang/String;IIJJ)V

    .line 269
    iput-wide v11, v2, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    .line 272
    :cond_e9
    invoke-direct {v1, v5, v15, v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->updateNotifications(Landroid/os/storage/VolumeInfo;II)V

    .line 273
    invoke-direct {v1, v5, v15, v4, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->updateBroadcasts(Landroid/os/storage/VolumeInfo;III)V

    .line 275
    iput v4, v2, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    .line 276
    .end local v0  # "uuid":Ljava/util/UUID;
    .end local v2  # "state":Lcom/android/server/storage/DeviceStorageMonitorService$State;
    .end local v4  # "newLevel":I
    .end local v5  # "vol":Landroid/os/storage/VolumeInfo;
    .end local v9  # "lowBytes":J
    .end local v11  # "usableBytes":J
    .end local v13  # "totalBytes":J
    .end local v15  # "oldLevel":I
    .end local v24  # "criticalLowBytes":J
    .end local v27  # "file":Ljava/io/File;
    .end local v28  # "fullBytes":J
    move-object/from16 v2, v16

    move-object/from16 v4, v26

    goto/16 :goto_1d

    .line 280
    .end local v16  # "storage":Landroid/os/storage/StorageManager;
    .local v2, "storage":Landroid/os/storage/StorageManager;
    :cond_f7
    move-object/from16 v16, v2

    .end local v2  # "storage":Landroid/os/storage/StorageManager;
    .restart local v16  # "storage":Landroid/os/storage/StorageManager;
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_10d

    .line 281
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x7530

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 284
    :cond_10d
    return-void
.end method

.method private createIntent(Ljava/util/UUID;)Landroid/content/Intent;
    .registers 4
    .param p1, "uuid"  # Ljava/util/UUID;

    .line 669
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 670
    .local v0, "lowMemIntent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 672
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->ifMzSafeExists()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 673
    nop

    .line 674
    const-string v1, "content://com.meizu.safe.junkclean/source?event=free_momery"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 673
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 675
    const-string v1, "com.meizu.safe.junkclean"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_36

    .line 677
    :cond_21
    const-string v1, "android.settings.INTERNAL_STORAGE_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_36

    .line 680
    :cond_27
    const-string v1, "android.os.storage.action.MANAGE_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 681
    const-string v1, "android.os.storage.extra.UUID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 682
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 684
    :goto_36
    return-object v0
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 3
    .param p0, "pw"  # Ljava/io/PrintWriter;

    .line 451
    const-string v0, "Device storage monitor service (devicestoragemonitor) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 453
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 454
    const-string v0, "  force-low [-f]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 455
    const-string v0, "    Force storage to be low, freezing storage state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 456
    const-string v0, "    -f: force a storage change broadcast be sent, prints new sequence."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    const-string v1, "  force-not-low [-f]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    const-string v1, "    Force storage to not be low, freezing storage state."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    const-string v1, "  reset [-f]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    const-string v1, "    Unfreeze storage state, returning to current real values."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 463
    return-void
.end method

.method private findOrCreateState(Ljava/util/UUID;)Lcom/android/server/storage/DeviceStorageMonitorService$State;
    .registers 5
    .param p1, "uuid"  # Ljava/util/UUID;

    .line 191
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    .line 192
    .local v0, "state":Lcom/android/server/storage/DeviceStorageMonitorService$State;
    if-nez v0, :cond_16

    .line 193
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService$1;)V

    move-object v0, v1

    .line 194
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_16
    return-object v0
.end method

.method private ifMzSafeExists()Z
    .registers 5

    .line 691
    const/4 v0, 0x0

    .line 693
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.meizu.safe"

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_10} :catch_12

    move-object v0, v2

    .line 696
    goto :goto_16

    .line 694
    :catch_12
    move-exception v2

    .line 695
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 697
    .end local v2  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_16
    if-eqz v0, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method private static isBootImageOnDisk()Z
    .registers 6

    .line 305
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getAllDexCodeInstructionSets()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_15

    aget-object v4, v0, v3

    .line 306
    .local v4, "instructionSet":Ljava/lang/String;
    invoke-static {v4}, Ldalvik/system/VMRuntime;->isBootClassPathOnDisk(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 307
    return v2

    .line 305
    .end local v4  # "instructionSet":Ljava/lang/String;
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 310
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method private showCriticalLowDialog(Ljava/util/UUID;)V
    .registers 6
    .param p1, "uuid"  # Ljava/util/UUID;

    .line 627
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    const-string v1, "DeviceStorageMonitorService"

    if-nez v0, :cond_60

    .line 628
    const-string v0, "Create the no space dailog"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 631
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x1080027

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 632
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0xa100081

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 634
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0xa100082

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 636
    nop

    .line 637
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0xa10006b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/server/storage/DeviceStorageMonitorService$4;

    invoke-direct {v3, p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService$4;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;Ljava/util/UUID;)V

    .line 636
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 650
    nop

    .line 651
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    .line 650
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 652
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    .line 654
    .end local v0  # "builder":Landroid/app/AlertDialog$Builder;
    :cond_60
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 655
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 656
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v3, 0x7d3

    invoke-virtual {v0, v3}, Landroid/view/Window;->setType(I)V

    .line 657
    const-string v0, "Show the no space dailog"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_96

    .line 660
    const-string v0, "ctsrunning"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_91

    .line 661
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_96

    .line 663
    :cond_91
    const-string v0, "In CTS Running,do not show the no space dailog"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_96
    :goto_96
    return-void
.end method

.method private updateBroadcasts(Landroid/os/storage/VolumeInfo;III)V
    .registers 12
    .param p1, "vol"  # Landroid/os/storage/VolumeInfo;
    .param p2, "oldLevel"  # I
    .param p3, "newLevel"  # I
    .param p4, "seq"  # I

    .line 574
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 576
    return-void

    .line 579
    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 580
    const/high16 v1, 0x5200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 583
    const-string/jumbo v2, "seq"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 584
    .local v0, "lowIntent":Landroid/content/Intent;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 588
    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 590
    .local v1, "notLowIntent":Landroid/content/Intent;
    const/4 v3, 0x1

    invoke-static {v3, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$400(III)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 591
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_59

    .line 592
    :cond_41
    invoke-static {v3, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$500(III)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 593
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 594
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 597
    :cond_59
    :goto_59
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 598
    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 599
    invoke-virtual {v3, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .line 600
    .local v3, "fullIntent":Landroid/content/Intent;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 602
    invoke-virtual {v4, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    .line 604
    .local v2, "notFullIntent":Landroid/content/Intent;
    const/4 v4, 0x3

    invoke-static {v4, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$400(III)Z

    move-result v5

    if-eqz v5, :cond_8a

    .line 605
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_a2

    .line 606
    :cond_8a
    invoke-static {v4, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$500(III)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 607
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 608
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 610
    :cond_a2
    :goto_a2
    return-void
.end method

.method private updateNotifications(Landroid/os/storage/VolumeInfo;II)V
    .registers 22
    .param p1, "vol"  # Landroid/os/storage/VolumeInfo;
    .param p2, "oldLevel"  # I
    .param p3, "newLevel"  # I

    .line 499
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 500
    .local v9, "context":Landroid/content/Context;
    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v10

    .line 502
    .local v10, "uuid":Ljava/util/UUID;
    const/4 v11, 0x1

    invoke-static {v11, v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$400(III)Z

    move-result v3

    const/16 v13, 0x17

    if-eqz v3, :cond_ce

    .line 510
    invoke-direct {v0, v10}, Lcom/android/server/storage/DeviceStorageMonitorService;->createIntent(Ljava/util/UUID;)Landroid/content/Intent;

    move-result-object v15

    .line 511
    .local v15, "lowMemIntent":Landroid/content/Intent;
    const v3, 0xa100081

    invoke-virtual {v9, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 516
    .local v8, "title":Ljava/lang/CharSequence;
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v3, v10}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    const v4, 0x10403ad

    if-eqz v3, :cond_37

    .line 518
    invoke-virtual {v9, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v7, v3

    .local v3, "details":Ljava/lang/CharSequence;
    goto :goto_3c

    .line 523
    .end local v3  # "details":Ljava/lang/CharSequence;
    :cond_37
    invoke-virtual {v9, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v7, v3

    .line 527
    .local v7, "details":Ljava/lang/CharSequence;
    :goto_3c
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    sget-object v17, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v3, v9

    move-object v5, v15

    move-object v12, v7

    .end local v7  # "details":Ljava/lang/CharSequence;
    .local v12, "details":Ljava/lang/CharSequence;
    move-object/from16 v7, v16

    move-object v14, v8

    .end local v8  # "title":Ljava/lang/CharSequence;
    .local v14, "title":Ljava/lang/CharSequence;
    move-object/from16 v8, v17

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 529
    .local v3, "intent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification$Builder;

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v4, v9, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0xa080284

    .line 533
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 535
    invoke-virtual {v4, v14}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x106001c

    .line 536
    invoke-virtual {v9, v5}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 538
    invoke-virtual {v4, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 539
    invoke-virtual {v4, v12}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 540
    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 542
    invoke-virtual {v5, v12}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    .line 541
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 543
    invoke-virtual {v4, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 544
    const-string/jumbo v5, "sys"

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$TvExtender;

    invoke-direct {v5}, Landroid/app/Notification$TvExtender;-><init>()V

    .line 546
    const-string v6, "devicestoragemonitor.tv"

    invoke-virtual {v5, v6}, Landroid/app/Notification$TvExtender;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$TvExtender;

    move-result-object v5

    .line 545
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 547
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 549
    .local v4, "notification":Landroid/app/Notification;
    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    .line 550
    iget-object v5, v4, Landroid/app/Notification;->mFlymeNotification:Landroid/app/NotificationExt;

    const v6, 0xa0802cc

    iput v6, v5, Landroid/app/NotificationExt;->notificationIcon:I

    .line 552
    iget v5, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 553
    iget-object v5, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v13, v4, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 555
    nop

    .line 556
    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 555
    const/16 v6, 0x82

    const/4 v7, 0x2

    invoke-static {v6, v5, v7}, Landroid/util/StatsLog;->write(ILjava/lang/String;I)I

    .end local v3  # "intent":Landroid/app/PendingIntent;
    .end local v4  # "notification":Landroid/app/Notification;
    .end local v12  # "details":Ljava/lang/CharSequence;
    .end local v14  # "title":Ljava/lang/CharSequence;
    .end local v15  # "lowMemIntent":Landroid/content/Intent;
    goto :goto_ee

    .line 558
    :cond_ce
    invoke-static {v11, v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$500(III)Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 559
    iget-object v3, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v13, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 561
    nop

    .line 562
    invoke-virtual/range {p1 .. p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 561
    const/16 v4, 0x82

    invoke-static {v4, v3, v11}, Landroid/util/StatsLog;->write(ILjava/lang/String;I)I

    goto :goto_ef

    .line 558
    :cond_ee
    :goto_ee
    nop

    .line 566
    :goto_ef
    const/4 v3, 0x2

    if-eq v2, v3, :cond_f5

    const/4 v3, 0x3

    if-ne v2, v3, :cond_f8

    .line 568
    :cond_f5
    invoke-direct {v0, v10}, Lcom/android/server/storage/DeviceStorageMonitorService;->showCriticalLowDialog(Ljava/util/UUID;)V

    .line 571
    :cond_f8
    return-void
.end method


# virtual methods
.method dumpImpl(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "_pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 466
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 467
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    if-eqz p3, :cond_2f

    array-length v1, p3

    if-eqz v1, :cond_2f

    const/4 v1, 0x0

    aget-object v1, p3, v1

    const-string v2, "-a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_2f

    .line 493
    :cond_18
    new-instance v2, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;

    invoke-direct {v2, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    .line 494
    .local v2, "shell":Lcom/android/server/storage/DeviceStorageMonitorService$Shell;
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/Binder;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    new-instance v9, Landroid/os/ResultReceiver;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v5, p1

    move-object v7, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    goto/16 :goto_be

    .line 468
    .end local v2  # "shell":Lcom/android/server/storage/DeviceStorageMonitorService$Shell;
    :cond_2f
    :goto_2f
    const-string v1, "Known volumes:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 469
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 470
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_38
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_96

    .line 471
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/UUID;

    .line 472
    .local v2, "uuid":Ljava/util/UUID;
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    .line 473
    .local v3, "state":Lcom/android/server/storage/DeviceStorageMonitorService$State;
    sget-object v4, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v4, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 474
    const-string v4, "Default:"

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_72

    .line 476
    :cond_5e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 478
    :goto_72
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 479
    iget v4, v3, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    invoke-static {v4}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$300(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "level"

    invoke-virtual {v0, v5, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 480
    iget-wide v4, v3, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string/jumbo v5, "lastUsableBytes"

    invoke-virtual {v0, v5, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 481
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 482
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 470
    .end local v2  # "uuid":Ljava/util/UUID;
    .end local v3  # "state":Lcom/android/server/storage/DeviceStorageMonitorService$State;
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 484
    .end local v1  # "i":I
    :cond_96
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 485
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 487
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "mSeq"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 488
    iget v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    invoke-static {v1}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$300(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mForceState"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 489
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 490
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 496
    :goto_be
    return-void
.end method

.method onShellCommand(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;Ljava/lang/String;)I
    .registers 11
    .param p1, "shell"  # Lcom/android/server/storage/DeviceStorageMonitorService$Shell;
    .param p2, "cmd"  # Ljava/lang/String;

    .line 403
    if-nez p2, :cond_7

    .line 404
    invoke-virtual {p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 406
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 407
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x6761d4f

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v1, v2, :cond_37

    const v2, 0x5b023572

    if-eq v1, v2, :cond_2d

    const v2, 0x64de7478

    if-eq v1, v2, :cond_23

    :cond_22
    goto :goto_42

    :cond_23
    const-string v1, "force-not-low"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    move v1, v6

    goto :goto_43

    :cond_2d
    const-string v1, "force-low"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    move v1, v5

    goto :goto_43

    :cond_37
    const-string/jumbo v1, "reset"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    move v1, v3

    goto :goto_43

    :goto_42
    move v1, v4

    :goto_43
    const/4 v2, 0x0

    const-string v7, "android.permission.DEVICE_POWER"

    if-eqz v1, :cond_a3

    if-eq v1, v6, :cond_7a

    if-eq v1, v3, :cond_51

    .line 445
    invoke-virtual {p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 433
    :cond_51
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I

    move-result v1

    .line 434
    .local v1, "opts":I
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iput v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 437
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 438
    .local v2, "seq":I
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_79

    .line 439
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 440
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 441
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 443
    .end local v1  # "opts":I
    .end local v2  # "seq":I
    :cond_79
    goto :goto_cc

    .line 421
    :cond_7a
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I

    move-result v1

    .line 422
    .restart local v1  # "opts":I
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iput v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 425
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 426
    .restart local v2  # "seq":I
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_a2

    .line 427
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 428
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 429
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 431
    .end local v1  # "opts":I
    .end local v2  # "seq":I
    :cond_a2
    goto :goto_cc

    .line 409
    :cond_a3
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I

    move-result v1

    .line 410
    .restart local v1  # "opts":I
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iput v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 413
    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    .line 414
    .restart local v2  # "seq":I
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_cb

    .line 415
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 416
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 417
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 419
    .end local v1  # "opts":I
    .end local v2  # "seq":I
    :cond_cb
    nop

    .line 447
    :goto_cc
    return v5
.end method

.method public onStart()V
    .registers 9

    .line 315
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 316
    .local v0, "context":Landroid/content/Context;
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    .line 318
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-direct {v1}, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;-><init>()V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    .line 319
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-virtual {v1}, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;->startWatching()V

    .line 322
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 323
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const-string v2, "android.software.leanback"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 325
    .local v2, "isTv":Z
    if-eqz v2, :cond_3a

    .line 326
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    new-instance v4, Landroid/app/NotificationChannel;

    const v5, 0x10401f8

    .line 328
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    const-string v7, "devicestoragemonitor.tv"

    invoke-direct {v4, v7, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 326
    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 333
    :cond_3a
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/Binder;

    const-string v4, "devicestoragemonitor"

    invoke-virtual {p0, v4, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 334
    const-class v3, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 337
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 338
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 339
    return-void
.end method

.method parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I
    .registers 5
    .param p1, "shell"  # Lcom/android/server/storage/DeviceStorageMonitorService$Shell;

    .line 393
    const/4 v0, 0x0

    .line 394
    .local v0, "opts":I
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "opt":Ljava/lang/String;
    if-eqz v1, :cond_13

    .line 395
    const-string v1, "-f"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 399
    :cond_13
    return v0
.end method
