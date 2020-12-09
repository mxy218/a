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

.field private static final DEFAULT_CHECK_INTERVAL:J = 0xea60L

.field private static final DEFAULT_LOG_DELTA_BYTES:J

.field public static final EXTRA_SEQUENCE:Ljava/lang/String; = "seq"

.field private static final MSG_CHECK:I = 0x1

.field static final OPTION_FORCE_UPDATE:I = 0x1

.field static final SERVICE:Ljava/lang/String; = "devicestoragemonitor"

.field private static final TAG:Ljava/lang/String; = "DeviceStorageMonitorService"

.field private static final TV_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "devicestoragemonitor.tv"


# instance fields
.field private mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

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

    .line 83
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->DEFAULT_LOG_DELTA_BYTES:J

    .line 89
    sget-object v0, Landroid/util/DataUnit;->MEBIBYTES:Landroid/util/DataUnit;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/util/DataUnit;->toBytes(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->BOOT_IMAGE_STORAGE_REQUIREMENT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 247
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 96
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 99
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    .line 301
    new-instance p1, Lcom/android/server/storage/DeviceStorageMonitorService$2;

    invoke-direct {p1, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$2;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 321
    new-instance p1, Lcom/android/server/storage/DeviceStorageMonitorService$3;

    invoke-direct {p1, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$3;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/Binder;

    .line 249
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "DeviceStorageMonitorService"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 250
    iget-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 252
    new-instance p1, Lcom/android/server/storage/DeviceStorageMonitorService$1;

    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/storage/DeviceStorageMonitorService$1;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    .line 262
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .registers 1

    .line 72
    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->check()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/os/Handler;
    .registers 1

    .line 72
    iget-object p0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private check()V
    .registers 23

    .line 177
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/storage/StorageManager;

    .line 178
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 181
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/storage/VolumeInfo;

    .line 182
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v7

    .line 183
    invoke-virtual {v2, v7}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v8

    .line 184
    invoke-virtual {v2, v7}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v10

    .line 189
    invoke-virtual {v7}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v12

    const-wide/16 v14, 0x3

    mul-long/2addr v14, v10

    const-wide/16 v16, 0x2

    div-long v14, v14, v16

    cmp-long v0, v12, v14

    const/4 v12, 0x0

    if-gez v0, :cond_60

    .line 190
    nop

    .line 191
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 193
    :try_start_50
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v13

    mul-long v14, v10, v16

    invoke-virtual {v0, v13, v14, v15, v12}, Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;JI)V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_59} :catch_5a

    .line 196
    goto :goto_60

    .line 194
    :catch_5a
    move-exception v0

    .line 195
    const-string v13, "DeviceStorageMonitorService"

    invoke-static {v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    :cond_60
    :goto_60
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    .line 202
    invoke-direct {v1, v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->findOrCreateState(Ljava/util/UUID;)Lcom/android/server/storage/DeviceStorageMonitorService$State;

    move-result-object v13

    .line 203
    invoke-virtual {v7}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v19

    .line 204
    invoke-virtual {v7}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v14

    .line 206
    iget v7, v13, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    .line 208
    iget v12, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    const/4 v5, -0x1

    if-eq v12, v5, :cond_84

    .line 211
    nop

    .line 212
    iget v7, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    move/from16 v21, v7

    move v7, v5

    move/from16 v5, v21

    goto :goto_a7

    .line 213
    :cond_84
    cmp-long v5, v14, v8

    if-gtz v5, :cond_8a

    .line 214
    const/4 v5, 0x2

    goto :goto_a7

    .line 215
    :cond_8a
    cmp-long v5, v14, v10

    if-gtz v5, :cond_90

    .line 216
    const/4 v5, 0x1

    goto :goto_a7

    .line 217
    :cond_90
    sget-object v5, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v5, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a6

    invoke-static {}, Lcom/android/server/storage/DeviceStorageMonitorService;->isBootImageOnDisk()Z

    move-result v5

    if-nez v5, :cond_a6

    sget-wide v8, Lcom/android/server/storage/DeviceStorageMonitorService;->BOOT_IMAGE_STORAGE_REQUIREMENT:J

    cmp-long v5, v14, v8

    if-gez v5, :cond_a6

    .line 219
    const/4 v5, 0x1

    goto :goto_a7

    .line 221
    :cond_a6
    const/4 v5, 0x0

    .line 225
    :goto_a7
    iget-wide v8, v13, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    sub-long/2addr v8, v14

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    sget-wide v10, Lcom/android/server/storage/DeviceStorageMonitorService;->DEFAULT_LOG_DELTA_BYTES:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_b6

    if-eq v7, v5, :cond_c6

    .line 227
    :cond_b6
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    move-wide v8, v14

    move-object v14, v0

    move v15, v7

    move/from16 v16, v5

    move-wide/from16 v17, v8

    invoke-static/range {v14 .. v20}, Lcom/android/server/EventLogTags;->writeStorageState(Ljava/lang/String;IIJJ)V

    .line 229
    iput-wide v8, v13, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    .line 232
    :cond_c6
    invoke-direct {v1, v6, v7, v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->updateNotifications(Landroid/os/storage/VolumeInfo;II)V

    .line 233
    invoke-direct {v1, v6, v7, v5, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->updateBroadcasts(Landroid/os/storage/VolumeInfo;III)V

    .line 235
    iput v5, v13, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    .line 236
    goto/16 :goto_1d

    .line 240
    :cond_d0
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_e5

    .line 241
    iget-object v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 244
    :cond_e5
    return-void
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 3

    .line 411
    const-string v0, "Device storage monitor service (devicestoragemonitor) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    const-string v0, "  force-low [-f]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    const-string v0, "    Force storage to be low, freezing storage state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    const-string v0, "    -f: force a storage change broadcast be sent, prints new sequence."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    const-string v1, "  force-not-low [-f]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    const-string v1, "    Force storage to not be low, freezing storage state."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 420
    const-string v1, "  reset [-f]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    const-string v1, "    Unfreeze storage state, returning to current real values."

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method private findOrCreateState(Ljava/util/UUID;)Lcom/android/server/storage/DeviceStorageMonitorService$State;
    .registers 4

    .line 162
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    .line 163
    if-nez v0, :cond_15

    .line 164
    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService$State;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService$1;)V

    .line 165
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_15
    return-object v0
.end method

.method private static isBootImageOnDisk()Z
    .registers 5

    .line 265
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getAllDexCodeInstructionSets()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_15

    aget-object v4, v0, v3

    .line 266
    invoke-static {v4}, Ldalvik/system/VMRuntime;->isBootClassPathOnDisk(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 267
    return v2

    .line 265
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 270
    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method private updateBroadcasts(Landroid/os/storage/VolumeInfo;III)V
    .registers 9

    .line 514
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    .line 516
    return-void

    .line 519
    :cond_d
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 520
    const/high16 v0, 0x5200000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 523
    const-string/jumbo v1, "seq"

    invoke-virtual {p1, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 524
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 528
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 530
    const/4 v2, 0x1

    invoke-static {v2, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$400(III)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 531
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_59

    .line 532
    :cond_41
    invoke-static {v2, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$500(III)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 533
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 534
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 537
    :cond_59
    :goto_59
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 538
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 539
    invoke-virtual {p1, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 540
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 541
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 542
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p4

    .line 544
    const/4 v0, 0x2

    invoke-static {v0, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$400(III)Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 545
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_a2

    .line 546
    :cond_8a
    invoke-static {v0, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$500(III)Z

    move-result p2

    if-eqz p2, :cond_a2

    .line 547
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object p2

    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 548
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, p4, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 550
    :cond_a2
    :goto_a2
    return-void
.end method

.method private updateNotifications(Landroid/os/storage/VolumeInfo;II)V
    .registers 15

    .line 459
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 460
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7

    .line 462
    const/4 v8, 0x1

    invoke-static {v8, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$400(III)Z

    move-result v0

    const/16 v9, 0x82

    const/16 v10, 0x17

    if-eqz v0, :cond_ca

    .line 463
    new-instance v2, Landroid/content/Intent;

    const-string p2, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 464
    const-string p2, "android.os.storage.extra.UUID"

    invoke-virtual {v2, p2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 465
    const/high16 p2, 0x10000000

    invoke-virtual {v2, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 467
    const p2, 0x10403b1

    invoke-virtual {v6, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    .line 471
    sget-object p3, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {p3, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p3

    const v0, 0x10403af

    if-eqz p3, :cond_49

    .line 472
    invoke-static {}, Lcom/android/server/storage/DeviceStorageMonitorService;->isBootImageOnDisk()Z

    move-result p3

    if-eqz p3, :cond_41

    .line 473
    goto :goto_44

    .line 474
    :cond_41
    const v0, 0x10403b0

    .line 472
    :goto_44
    invoke-virtual {v6, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    goto :goto_4d

    .line 476
    :cond_49
    invoke-virtual {v6, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    .line 480
    :goto_4d
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 482
    new-instance v1, Landroid/app/Notification$Builder;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v1, v6, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x10807d9

    .line 484
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 485
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x106001c

    .line 486
    invoke-virtual {v6, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 488
    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 489
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 490
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 492
    invoke-virtual {v0, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p3

    .line 491
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 493
    invoke-virtual {p2, v8}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 494
    const-string/jumbo p3, "sys"

    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p2

    new-instance p3, Landroid/app/Notification$TvExtender;

    invoke-direct {p3}, Landroid/app/Notification$TvExtender;-><init>()V

    .line 496
    const-string v0, "devicestoragemonitor.tv"

    invoke-virtual {p3, v0}, Landroid/app/Notification$TvExtender;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$TvExtender;

    move-result-object p3

    .line 495
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 497
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 498
    iget p3, p2, Landroid/app/Notification;->flags:I

    or-int/lit8 p3, p3, 0x20

    iput p3, p2, Landroid/app/Notification;->flags:I

    .line 499
    iget-object p3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p3, v0, v10, p2, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 501
    nop

    .line 502
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    .line 501
    invoke-static {v9, p1, p2}, Landroid/util/StatsLog;->write(ILjava/lang/String;I)I

    goto :goto_e8

    .line 504
    :cond_ca
    invoke-static {v8, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$500(III)Z

    move-result p2

    if-eqz p2, :cond_e8

    .line 505
    iget-object p2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p2, p3, v10, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 507
    nop

    .line 508
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 507
    invoke-static {v9, p1, v8}, Landroid/util/StatsLog;->write(ILjava/lang/String;I)I

    goto :goto_e9

    .line 504
    :cond_e8
    :goto_e8
    nop

    .line 511
    :goto_e9
    return-void
.end method


# virtual methods
.method dumpImpl(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 14

    .line 426
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 427
    const/4 p2, 0x0

    if-eqz p3, :cond_2f

    array-length v1, p3

    if-eqz v1, :cond_2f

    aget-object v1, p3, p2

    const-string v2, "-a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_2f

    .line 453
    :cond_18
    new-instance v2, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;

    invoke-direct {v2, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    .line 454
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/Binder;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    new-instance v9, Landroid/os/ResultReceiver;

    const/4 p2, 0x0

    invoke-direct {v9, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v5, p1

    move-object v7, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    goto/16 :goto_ba

    .line 428
    :cond_2f
    :goto_2f
    const-string p1, "Known volumes:"

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 430
    nop

    :goto_38
    iget-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-ge p2, p1, :cond_94

    .line 431
    iget-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/UUID;

    .line 432
    iget-object p3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    .line 433
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v1, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 434
    const-string p1, "Default:"

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_72

    .line 436
    :cond_5e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 438
    :goto_72
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 439
    iget p1, p3, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    invoke-static {p1}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$300(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "level"

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 440
    iget-wide v1, p3, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p3, "lastUsableBytes"

    invoke-virtual {v0, p3, p1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 441
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 442
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 430
    add-int/lit8 p2, p2, 0x1

    goto :goto_38

    .line 444
    :cond_94
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 445
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 447
    iget-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "mSeq"

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 448
    iget p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    invoke-static {p1}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->access$300(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "mForceState"

    invoke-virtual {v0, p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 449
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 450
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 456
    :goto_ba
    return-void
.end method

.method onShellCommand(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;Ljava/lang/String;)I
    .registers 11

    .line 363
    if-nez p2, :cond_7

    .line 364
    invoke-virtual {p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 366
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 367
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

    if-eqz v1, :cond_a1

    if-eq v1, v6, :cond_79

    if-eq v1, v3, :cond_51

    .line 405
    invoke-virtual {p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 393
    :cond_51
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I

    move-result p1

    .line 394
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v7, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iput v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 397
    iget-object p2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    .line 398
    and-int/2addr p1, v6

    if-eqz p1, :cond_78

    .line 399
    iget-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 400
    iget-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 401
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 403
    :cond_78
    goto :goto_c9

    .line 381
    :cond_79
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I

    move-result p1

    .line 382
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v7, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iput v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 385
    iget-object p2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    .line 386
    and-int/2addr p1, v6

    if-eqz p1, :cond_a0

    .line 387
    iget-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 388
    iget-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 389
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 391
    :cond_a0
    goto :goto_c9

    .line 369
    :cond_a1
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I

    move-result p1

    .line 370
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, v7, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iput v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    .line 373
    iget-object p2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p2

    .line 374
    and-int/2addr p1, v6

    if-eqz p1, :cond_c8

    .line 375
    iget-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 376
    iget-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 377
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 379
    :cond_c8
    nop

    .line 407
    :goto_c9
    return v5
.end method

.method public onStart()V
    .registers 6

    .line 275
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 276
    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    .line 278
    new-instance v1, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-direct {v1}, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;-><init>()V

    iput-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    .line 279
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-virtual {v1}, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;->startWatching()V

    .line 282
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 283
    const-string v2, "android.software.leanback"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 285
    if-eqz v1, :cond_3a

    .line 286
    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    new-instance v2, Landroid/app/NotificationChannel;

    const v3, 0x10401fc

    .line 288
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    const-string v4, "devicestoragemonitor.tv"

    invoke-direct {v2, v4, v0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 286
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 293
    :cond_3a
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/Binder;

    const-string v1, "devicestoragemonitor"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/storage/DeviceStorageMonitorService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 294
    const-class v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 297
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 299
    return-void
.end method

.method parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I
    .registers 5

    .line 353
    const/4 v0, 0x0

    .line 354
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 355
    const-string v2, "-f"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 359
    :cond_12
    return v0
.end method
