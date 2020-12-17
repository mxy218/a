.class public Lcom/android/server/security/TRPEngService;
.super Lmeizu/security/ITRPEng$Stub;
.source "TRPEngService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/security/TRPEngService$AppRemoveBroadcastReceiver;,
        Lcom/android/server/security/TRPEngService$TimeTickBroadcastReceiver;
    }
.end annotation


# static fields
.field private static KEY_SETTINGS_AI_CONFIG:Ljava/lang/String; = null

.field private static final MAP_ID:Ljava/lang/String; = "1,1\n2,2\n3,3\n4,4\n5,5\n6,6\n7,7\n8,8\n9,9\n10,10\n11,11\n12,12\n13,13\n14,14\n15,15\n16,16\n17,17\n18,18\n19,19\n20,20\n21,21\n22,22\n23,23\n24,24\n25,25\n26,26\n27,27\n28,28\n29,29\n30,30\n31,31\n32,32\n33,33\n34,34\n35,35\n36,36\n37,37\n38,38\n39,39\n40,40\n41,41\n42,42\n43,43\n44,44\n45,45\n46,46\n47,47\n48,48\n49,49\n50,50\n51,51\n52,52\n53,53\n54,54\n55,55\n56,56\n57,57\n58,58\n59,59\n60,60\n61,61\n62,62\n63,63\n64,64\n65,65\n66,66\n67,67\n68,68\n69,69\n70,70\n71,71\n72,72\n73,73\n74,74\n75,75\n76,76\n77,77\n78,78\n79,79\n80,80\n81,81\n82,82\n83,83\n84,84\n85,85\n86,86\n87,87\n88,88\n1001,89\n1002,90\n1003,91\n1004,92\n1005,93\n1006,94\n1007,95\n1008,96\n1009,97\n1010,98\n1011,99\n1012,100\n1013,101\n1014,102\n1015,103\n1016,104\n1017,105\n1018,106\n1019,107\n1020,108\n1021,109\n1022,110\n1023,111\n1024,112\n1025,113\n1026,114\n1027,115\n1028,116\n1029,117\n1030,118\n1031,119\n1032,120\n1033,121\n1034,122\n1035,123\n1036,124\n1037,125\n1100,126\n1101,127\n1102,128\n1103,129\n1104,130\n1105,131\n1106,132\n1107,133\n1201,134\n1202,135\n1203,136\n1204,137\n1205,138\n1206,139\n1207,140\n1208,141\n1209,142\n1210,143\n1211,144\n1212,145\n1213,146\n1214,147\n1215,148\n1216,149\n1217,150\n1218,151\n1219,152\n1220,153\n1221,154\n1222,155\n1223,156\n1224,157\n1225,158\n1226,159\n1227,160\n1228,161\n1229,162\n1301,163\n1302,164\n1303,165\n1304,166"

.field private static final MSG_TRIGGER_DETECT:I = 0x1

.field private static final STATE_ENG_CLOSING:I = 0x2

.field private static final STATE_ENG_OFF:I = 0x4

.field private static final STATE_ENG_ON:I = 0x3

.field private static final STATE_ENG_STARTING:I = 0x1

.field private static mEngineRunType:I

.field private static mIsAiDetectOpen:Z

.field private static mMode:I

.field private static volatile mState:I

.field private static mVectorManager:Lcom/android/server/security/TrpVectorManager;

.field private static final monitorList:Lcom/android/server/security/NameListManager;

.field private static sBackgroudIncrement:I

.field private static sInited:Z

.field private static volatile sInstance:Lcom/android/server/security/TRPEngService;


# instance fields
.field private final VECTOR_VERSION:I

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAppRemoveBroadcastReceiver:Lcom/android/server/security/TRPEngService$AppRemoveBroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mForegroundApp:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mMapIds:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mProcessCacheExecutor:Ljava/util/concurrent/ExecutorService;

.field private mProcessInfo:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSystemApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetPackage:Ljava/lang/String;

.field private mTimeTickBroadcastReceiver:Lcom/android/server/security/TRPEngService$TimeTickBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/security/TRPEngService;->sInstance:Lcom/android/server/security/TRPEngService;

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/security/TRPEngService;->sInited:Z

    .line 71
    const/4 v1, 0x2

    sput v1, Lcom/android/server/security/TRPEngService;->mMode:I

    .line 78
    sput v0, Lcom/android/server/security/TRPEngService;->mEngineRunType:I

    .line 96
    const/16 v0, 0xa6

    sput v0, Lcom/android/server/security/TRPEngService;->sBackgroudIncrement:I

    .line 106
    const/4 v0, 0x4

    sput v0, Lcom/android/server/security/TRPEngService;->mState:I

    .line 110
    new-instance v0, Lcom/android/server/security/NameListManager;

    invoke-direct {v0}, Lcom/android/server/security/NameListManager;-><init>()V

    sput-object v0, Lcom/android/server/security/TRPEngService;->monitorList:Lcom/android/server/security/NameListManager;

    .line 282
    const-string v0, "ai_detect_global_switch"

    sput-object v0, Lcom/android/server/security/TRPEngService;->KEY_SETTINGS_AI_CONFIG:Ljava/lang/String;

    .line 283
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/security/TRPEngService;->mIsAiDetectOpen:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 315
    invoke-direct {p0}, Lmeizu/security/ITRPEng$Stub;-><init>()V

    .line 65
    const v0, 0x6ad3aa

    iput v0, p0, Lcom/android/server/security/TRPEngService;->VECTOR_VERSION:I

    .line 316
    iput-object p1, p0, Lcom/android/server/security/TRPEngService;->mContext:Landroid/content/Context;

    .line 317
    return-void
.end method

.method static synthetic access$000()I
    .registers 1

    .line 60
    sget v0, Lcom/android/server/security/TRPEngService;->mEngineRunType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/security/TRPEngService;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;II)V
    .registers 7
    .param p0, "x0"  # Lcom/android/server/security/TRPEngService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # Ljava/util/ArrayList;
    .param p3, "x3"  # I
    .param p4, "x4"  # Ljava/lang/String;
    .param p5, "x5"  # I
    .param p6, "x6"  # I

    .line 60
    invoke-direct/range {p0 .. p6}, Lcom/android/server/security/TRPEngService;->triggerDetect(Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;II)V

    return-void
.end method

.method static synthetic access$1000()Lcom/android/server/security/NameListManager;
    .registers 1

    .line 60
    sget-object v0, Lcom/android/server/security/TRPEngService;->monitorList:Lcom/android/server/security/NameListManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/security/TRPEngService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/security/TRPEngService;

    .line 60
    iget-object v0, p0, Lcom/android/server/security/TRPEngService;->mTargetPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/security/TRPEngService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/security/TRPEngService;

    .line 60
    iget-object v0, p0, Lcom/android/server/security/TRPEngService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/security/TRPEngService;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/security/TRPEngService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # [Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/server/security/TRPEngService;->updateProcessInfo(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700()Z
    .registers 1

    .line 60
    sget-boolean v0, Lcom/android/server/security/TRPEngService;->sInited:Z

    return v0
.end method

.method static synthetic access$800()Lcom/android/server/security/TrpVectorManager;
    .registers 1

    .line 60
    sget-object v0, Lcom/android/server/security/TRPEngService;->mVectorManager:Lcom/android/server/security/TrpVectorManager;

    return-object v0
.end method

.method static synthetic access$900()I
    .registers 1

    .line 60
    sget v0, Lcom/android/server/security/TRPEngService;->mMode:I

    return v0
.end method

.method private checkCallerPermission()Z
    .registers 9

    .line 285
    const-string v0, "TrpEng"

    const/4 v1, 0x1

    .line 286
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 287
    .local v2, "callingUid":I
    if-eqz v2, :cond_58

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_58

    .line 289
    const/4 v1, 0x0

    .line 291
    :try_start_e
    iget-object v3, p0, Lcom/android/server/security/TRPEngService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 292
    .local v3, "pkgName":Ljava/lang/String;
    if-eqz v3, :cond_2c

    .line 293
    iget-object v4, p0, Lcom/android/server/security/TRPEngService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 294
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v4, :cond_2c

    iget-object v5, p0, Lcom/android/server/security/TRPEngService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "android"

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_2c

    .line 295
    const/4 v1, 0x1

    .line 298
    .end local v4  # "info":Landroid/content/pm/ApplicationInfo;
    :cond_2c
    if-nez v1, :cond_42

    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCallerPermission, no permission pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_42} :catch_43

    .line 303
    .end local v3  # "pkgName":Ljava/lang/String;
    :cond_42
    goto :goto_58

    .line 301
    :catch_43
    move-exception v3

    .line 302
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCallerPermission E:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 306
    .end local v3  # "e":Ljava/lang/Exception;
    :cond_58
    :goto_58
    return v1
.end method

.method private checkSystemApp(I)Z
    .registers 4
    .param p1, "uid"  # I

    .line 426
    iget-object v0, p0, Lcom/android/server/security/TRPEngService;->mSystemApps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_10

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 427
    const/4 v0, 0x1

    return v0

    .line 428
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method private handleShareUid(I)Ljava/lang/String;
    .registers 8
    .param p1, "pid"  # I

    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, "processName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/security/TRPEngService;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v1, :cond_11

    .line 527
    iget-object v1, p0, Lcom/android/server/security/TRPEngService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/server/security/TRPEngService;->mActivityManager:Landroid/app/ActivityManager;

    .line 530
    :cond_11
    iget-object v1, p0, Lcom/android/server/security/TRPEngService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 531
    .local v1, "processesList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v1, :cond_42

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_42

    .line 535
    :cond_20
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_21
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_41

    .line 536
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 537
    .local v3, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_3e

    .line 540
    iget-object v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 543
    iget-object v4, p0, Lcom/android/server/security/TRPEngService;->mProcessCacheExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/android/server/security/TRPEngService$3;

    invoke-direct {v5, p0, v3}, Lcom/android/server/security/TRPEngService$3;-><init>(Lcom/android/server/security/TRPEngService;Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 551
    goto :goto_41

    .line 535
    .end local v3  # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 555
    .end local v2  # "i":I
    :cond_41
    :goto_41
    return-object v0

    .line 532
    :cond_42
    :goto_42
    const/4 v2, 0x0

    return-object v2
.end method

.method public static init(Landroid/content/Context;)Lcom/android/server/security/TRPEngService;
    .registers 3
    .param p0, "context"  # Landroid/content/Context;

    .line 321
    sget-object v0, Lcom/android/server/security/TRPEngService;->sInstance:Lcom/android/server/security/TRPEngService;

    if-nez v0, :cond_17

    .line 322
    const-class v0, Lcom/android/server/security/TRPEngService;

    monitor-enter v0

    .line 323
    :try_start_7
    sget-object v1, Lcom/android/server/security/TRPEngService;->sInstance:Lcom/android/server/security/TRPEngService;

    if-nez v1, :cond_12

    .line 324
    new-instance v1, Lcom/android/server/security/TRPEngService;

    invoke-direct {v1, p0}, Lcom/android/server/security/TRPEngService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/security/TRPEngService;->sInstance:Lcom/android/server/security/TRPEngService;

    .line 326
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 328
    :cond_17
    :goto_17
    sget-object v0, Lcom/android/server/security/TRPEngService;->sInstance:Lcom/android/server/security/TRPEngService;

    return-object v0
.end method

.method private initHandler()V
    .registers 3

    .line 379
    new-instance v0, Lcom/android/server/security/TRPEngService$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/security/TRPEngService$2;-><init>(Lcom/android/server/security/TRPEngService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/security/TRPEngService;->mHandler:Landroid/os/Handler;

    .line 404
    return-void
.end method

.method private initSystemAppCache()V
    .registers 7

    .line 408
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/TRPEngService;->mSystemApps:Landroid/util/ArrayMap;

    .line 410
    iget-object v0, p0, Lcom/android/server/security/TRPEngService;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_36

    .line 411
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 412
    .local v0, "iterator":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 413
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 414
    .local v1, "pckinfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 416
    .local v2, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_35

    .line 418
    iget-object v3, p0, Lcom/android/server/security/TRPEngService;->mSystemApps:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    .end local v1  # "pckinfo":Landroid/content/pm/PackageInfo;
    .end local v2  # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_35
    goto :goto_14

    .line 422
    .end local v0  # "iterator":Ljava/util/Iterator;
    :cond_36
    return-void
.end method

.method private initTrp(Lmeizu/security/TrpConfig;)V
    .registers 5
    .param p1, "config"  # Lmeizu/security/TrpConfig;

    .line 335
    iget-object v0, p0, Lcom/android/server/security/TRPEngService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/TRPEngService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 338
    invoke-direct {p0}, Lcom/android/server/security/TRPEngService;->initSystemAppCache()V

    .line 341
    invoke-direct {p0}, Lcom/android/server/security/TRPEngService;->loadMapID()Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/TRPEngService;->mMapIds:Landroid/util/ArrayMap;

    .line 344
    invoke-static {p0}, Lcom/android/server/security/TrpVectorManager;->getInstance(Lcom/android/server/security/TRPEngService;)Lcom/android/server/security/TrpVectorManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/security/TRPEngService;->mVectorManager:Lcom/android/server/security/TrpVectorManager;

    .line 345
    sget-object v0, Lcom/android/server/security/TRPEngService;->mVectorManager:Lcom/android/server/security/TrpVectorManager;

    new-instance v1, Lcom/android/server/security/TRPEngService$1;

    invoke-direct {v1, p0}, Lcom/android/server/security/TRPEngService$1;-><init>(Lcom/android/server/security/TRPEngService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/security/TrpVectorManager;->setOnTriggerListener(Lcom/android/server/security/TrpVectorManager$OnTriggerListener;)V

    .line 353
    sget-object v0, Lcom/android/server/security/TRPEngService;->mVectorManager:Lcom/android/server/security/TrpVectorManager;

    invoke-virtual {v0, p1}, Lcom/android/server/security/TrpVectorManager;->initConfig(Lmeizu/security/TrpConfig;)V

    .line 354
    sget-object v0, Lcom/android/server/security/TRPEngService;->monitorList:Lcom/android/server/security/NameListManager;

    invoke-virtual {v0}, Lcom/android/server/security/NameListManager;->init()V

    .line 356
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/security/TRPEngService;->mProcessInfo:Landroid/util/ArrayMap;

    .line 357
    new-instance v0, Lcom/android/server/security/TrpUtils$RxThreadFactory;

    const-string v1, "TrpProcessCacheThread-"

    invoke-direct {v0, v1}, Lcom/android/server/security/TrpUtils$RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/security/TRPEngService;->mProcessCacheExecutor:Ljava/util/concurrent/ExecutorService;

    .line 361
    invoke-direct {p0}, Lcom/android/server/security/TRPEngService;->registerReceiver()V

    .line 362
    invoke-direct {p0}, Lcom/android/server/security/TRPEngService;->initHandler()V

    .line 365
    iget-object v0, p0, Lcom/android/server/security/TRPEngService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/security/TRPEngService;->KEY_SETTINGS_AI_CONFIG:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 366
    .local v0, "aiDetSwitch":I
    if-ne v2, v0, :cond_75

    .line 367
    const/4 v0, 0x1

    .line 368
    iget-object v1, p0, Lcom/android/server/security/TRPEngService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/security/TRPEngService;->KEY_SETTINGS_AI_CONFIG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initTrp default open aiDetSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 371
    :cond_75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initTrp flyme aiDetSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TrpEng"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    if-lez v0, :cond_90

    const/4 v1, 0x1

    goto :goto_91

    :cond_90
    const/4 v1, 0x0

    :goto_91
    sput-boolean v1, Lcom/android/server/security/TRPEngService;->mIsAiDetectOpen:Z

    .line 375
    return-void
.end method

.method private loadMapID()Landroid/util/ArrayMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 437
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 438
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 439
    .local v1, "index":I
    const-string v2, "1,1\n2,2\n3,3\n4,4\n5,5\n6,6\n7,7\n8,8\n9,9\n10,10\n11,11\n12,12\n13,13\n14,14\n15,15\n16,16\n17,17\n18,18\n19,19\n20,20\n21,21\n22,22\n23,23\n24,24\n25,25\n26,26\n27,27\n28,28\n29,29\n30,30\n31,31\n32,32\n33,33\n34,34\n35,35\n36,36\n37,37\n38,38\n39,39\n40,40\n41,41\n42,42\n43,43\n44,44\n45,45\n46,46\n47,47\n48,48\n49,49\n50,50\n51,51\n52,52\n53,53\n54,54\n55,55\n56,56\n57,57\n58,58\n59,59\n60,60\n61,61\n62,62\n63,63\n64,64\n65,65\n66,66\n67,67\n68,68\n69,69\n70,70\n71,71\n72,72\n73,73\n74,74\n75,75\n76,76\n77,77\n78,78\n79,79\n80,80\n81,81\n82,82\n83,83\n84,84\n85,85\n86,86\n87,87\n88,88\n1001,89\n1002,90\n1003,91\n1004,92\n1005,93\n1006,94\n1007,95\n1008,96\n1009,97\n1010,98\n1011,99\n1012,100\n1013,101\n1014,102\n1015,103\n1016,104\n1017,105\n1018,106\n1019,107\n1020,108\n1021,109\n1022,110\n1023,111\n1024,112\n1025,113\n1026,114\n1027,115\n1028,116\n1029,117\n1030,118\n1031,119\n1032,120\n1033,121\n1034,122\n1035,123\n1036,124\n1037,125\n1100,126\n1101,127\n1102,128\n1103,129\n1104,130\n1105,131\n1106,132\n1107,133\n1201,134\n1202,135\n1203,136\n1204,137\n1205,138\n1206,139\n1207,140\n1208,141\n1209,142\n1210,143\n1211,144\n1212,145\n1213,146\n1214,147\n1215,148\n1216,149\n1217,150\n1218,151\n1219,152\n1220,153\n1221,154\n1222,155\n1223,156\n1224,157\n1225,158\n1226,159\n1227,160\n1228,161\n1229,162\n1301,163\n1302,164\n1303,165\n1304,166"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 440
    .local v3, "length":I
    :goto_c
    if-ge v1, v3, :cond_4a

    .line 441
    const-string v4, "\n"

    invoke-virtual {v2, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 443
    .local v4, "split":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1e

    .line 444
    invoke-virtual {v2, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 445
    .local v6, "line":Ljava/lang/String;
    add-int/lit8 v1, v4, 0x1

    goto :goto_23

    .line 447
    .end local v6  # "line":Ljava/lang/String;
    :cond_1e
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 448
    .restart local v6  # "line":Ljava/lang/String;
    move v1, v3

    .line 451
    :goto_23
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 452
    .local v7, "lineSplit":I
    if-eq v7, v5, :cond_49

    .line 453
    const/4 v5, 0x0

    invoke-virtual {v6, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 454
    .local v5, "id":Ljava/lang/String;
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 456
    .local v8, "mapId":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    .end local v4  # "split":I
    .end local v5  # "id":Ljava/lang/String;
    .end local v6  # "line":Ljava/lang/String;
    .end local v7  # "lineSplit":I
    .end local v8  # "mapId":Ljava/lang/String;
    :cond_49
    goto :goto_c

    .line 460
    :cond_4a
    return-object v0
.end method

.method private registerReceiver()V
    .registers 5

    .line 899
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 900
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 901
    new-instance v1, Lcom/android/server/security/TRPEngService$TimeTickBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/security/TRPEngService$TimeTickBroadcastReceiver;-><init>(Lcom/android/server/security/TRPEngService$1;)V

    iput-object v1, p0, Lcom/android/server/security/TRPEngService;->mTimeTickBroadcastReceiver:Lcom/android/server/security/TRPEngService$TimeTickBroadcastReceiver;

    .line 902
    iget-object v1, p0, Lcom/android/server/security/TRPEngService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/security/TRPEngService;->mTimeTickBroadcastReceiver:Lcom/android/server/security/TRPEngService$TimeTickBroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 905
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 906
    .local v1, "filter1":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 907
    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 908
    const-string/jumbo v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 909
    new-instance v3, Lcom/android/server/security/TRPEngService$AppRemoveBroadcastReceiver;

    invoke-direct {v3, v2}, Lcom/android/server/security/TRPEngService$AppRemoveBroadcastReceiver;-><init>(Lcom/android/server/security/TRPEngService$1;)V

    iput-object v3, p0, Lcom/android/server/security/TRPEngService;->mAppRemoveBroadcastReceiver:Lcom/android/server/security/TRPEngService$AppRemoveBroadcastReceiver;

    .line 910
    iget-object v2, p0, Lcom/android/server/security/TRPEngService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/security/TRPEngService;->mAppRemoveBroadcastReceiver:Lcom/android/server/security/TRPEngService$AppRemoveBroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 911
    return-void
.end method

.method private startTrpEng(Lmeizu/security/TrpConfig;)I
    .registers 8
    .param p1, "config"  # Lmeizu/security/TrpConfig;

    .line 979
    sget v0, Lcom/android/server/security/TRPEngService;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_33

    const/4 v2, 0x2

    if-eq v0, v2, :cond_30

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2e

    const/4 v4, 0x4

    if-eq v0, v4, :cond_10

    goto :goto_2f

    .line 984
    :cond_10
    const-class v0, Lcom/android/server/security/TRPEngService;

    monitor-enter v0

    .line 986
    :try_start_13
    sget v5, Lcom/android/server/security/TRPEngService;->mState:I

    if-ne v5, v4, :cond_29

    .line 987
    sput v1, Lcom/android/server/security/TRPEngService;->mState:I
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_2b

    .line 990
    :try_start_19
    invoke-direct {p0, p1}, Lcom/android/server/security/TRPEngService;->initTrp(Lmeizu/security/TrpConfig;)V

    .line 991
    sput v3, Lcom/android/server/security/TRPEngService;->mState:I

    .line 992
    sput-boolean v1, Lcom/android/server/security/TRPEngService;->sInited:Z
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_20} :catch_21
    .catchall {:try_start_19 .. :try_end_20} :catchall_2b

    .line 997
    goto :goto_29

    .line 993
    :catch_21
    move-exception v1

    .line 994
    .local v1, "e":Ljava/lang/Exception;
    :try_start_22
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 995
    sput v4, Lcom/android/server/security/TRPEngService;->mState:I

    .line 996
    sput-boolean v2, Lcom/android/server/security/TRPEngService;->sInited:Z

    .line 999
    .end local v1  # "e":Ljava/lang/Exception;
    :cond_29
    :goto_29
    monitor-exit v0

    .line 1000
    goto :goto_2f

    .line 999
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2b

    throw v1

    .line 1002
    :cond_2e
    nop

    .line 1009
    :goto_2f
    return v2

    .line 982
    :cond_30
    const/16 v0, -0x64

    return v0

    .line 1005
    :cond_33
    const/16 v0, -0x65

    return v0
.end method

.method private stopTrpEng()I
    .registers 6

    .line 1014
    sget v0, Lcom/android/server/security/TRPEngService;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_67

    .line 1015
    const-class v0, Lcom/android/server/security/TRPEngService;

    monitor-enter v0

    .line 1016
    :try_start_8
    sget v2, Lcom/android/server/security/TRPEngService;->mState:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_62

    .line 1017
    const/4 v1, 0x2

    sput v1, Lcom/android/server/security/TRPEngService;->mState:I
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_64

    .line 1020
    :try_start_10
    invoke-direct {p0}, Lcom/android/server/security/TRPEngService;->unregisterReceiver()V

    .line 1023
    sget-object v2, Lcom/android/server/security/TRPEngService;->mVectorManager:Lcom/android/server/security/TrpVectorManager;

    const/4 v4, 0x0

    if-eqz v2, :cond_1f

    .line 1024
    sget-object v2, Lcom/android/server/security/TRPEngService;->mVectorManager:Lcom/android/server/security/TrpVectorManager;

    invoke-virtual {v2}, Lcom/android/server/security/TrpVectorManager;->release()V

    .line 1025
    sput-object v4, Lcom/android/server/security/TRPEngService;->mVectorManager:Lcom/android/server/security/TrpVectorManager;

    .line 1028
    :cond_1f
    sget-object v2, Lcom/android/server/security/TRPEngService;->monitorList:Lcom/android/server/security/NameListManager;

    invoke-virtual {v2}, Lcom/android/server/security/NameListManager;->release()V

    .line 1031
    iget-object v2, p0, Lcom/android/server/security/TRPEngService;->mProcessCacheExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_2d

    .line 1032
    iget-object v2, p0, Lcom/android/server/security/TRPEngService;->mProcessCacheExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1033
    :cond_2d
    iget-object v2, p0, Lcom/android/server/security/TRPEngService;->mProcessInfo:Landroid/util/ArrayMap;

    if-eqz v2, :cond_38

    .line 1034
    iget-object v2, p0, Lcom/android/server/security/TRPEngService;->mProcessInfo:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 1035
    iput-object v4, p0, Lcom/android/server/security/TRPEngService;->mProcessInfo:Landroid/util/ArrayMap;

    .line 1039
    :cond_38
    iget-object v2, p0, Lcom/android/server/security/TRPEngService;->mMapIds:Landroid/util/ArrayMap;

    if-eqz v2, :cond_43

    .line 1040
    iget-object v2, p0, Lcom/android/server/security/TRPEngService;->mMapIds:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 1041
    iput-object v4, p0, Lcom/android/server/security/TRPEngService;->mMapIds:Landroid/util/ArrayMap;

    .line 1045
    :cond_43
    iget-object v2, p0, Lcom/android/server/security/TRPEngService;->mSystemApps:Landroid/util/ArrayMap;

    if-eqz v2, :cond_4e

    .line 1046
    iget-object v2, p0, Lcom/android/server/security/TRPEngService;->mSystemApps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 1047
    iput-object v4, p0, Lcom/android/server/security/TRPEngService;->mSystemApps:Landroid/util/ArrayMap;

    .line 1050
    :cond_4e
    iput-object v4, p0, Lcom/android/server/security/TRPEngService;->mTargetPackage:Ljava/lang/String;

    .line 1051
    iput-object v4, p0, Lcom/android/server/security/TRPEngService;->mForegroundApp:Ljava/lang/String;

    .line 1052
    iput-object v4, p0, Lcom/android/server/security/TRPEngService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1053
    iput-object v4, p0, Lcom/android/server/security/TRPEngService;->mActivityManager:Landroid/app/ActivityManager;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_56} :catch_57
    .catchall {:try_start_10 .. :try_end_56} :catchall_64

    .line 1057
    goto :goto_5b

    .line 1055
    :catch_57
    move-exception v2

    .line 1056
    .local v2, "e":Ljava/lang/Exception;
    :try_start_58
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1058
    .end local v2  # "e":Ljava/lang/Exception;
    :goto_5b
    sput v1, Lcom/android/server/security/TRPEngService;->mMode:I

    .line 1059
    const/4 v1, 0x4

    sput v1, Lcom/android/server/security/TRPEngService;->mState:I

    .line 1060
    sput-boolean v3, Lcom/android/server/security/TRPEngService;->sInited:Z

    .line 1062
    :cond_62
    monitor-exit v0

    .line 1067
    return v3

    .line 1062
    :catchall_64
    move-exception v1

    monitor-exit v0
    :try_end_66
    .catchall {:try_start_58 .. :try_end_66} :catchall_64

    throw v1

    .line 1064
    :cond_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail stop TrpEng current STATE is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/security/TRPEngService;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmeizu/security/TrpLog;->e(Ljava/lang/String;)V

    .line 1065
    const/4 v0, -0x1

    return v0
.end method

.method private triggerDetect(Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;II)V
    .registers 22
    .param p1, "packageName"  # Ljava/lang/String;
    .param p3, "runType"  # I
    .param p4, "sessionId"  # Ljava/lang/String;
    .param p5, "triggerReason"  # I
    .param p6, "monitorSize"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 476
    .local p2, "vectors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v9, p0

    move-object/from16 v10, p1

    iget-object v0, v9, Lcom/android/server/security/TRPEngService;->mProcessInfo:Landroid/util/ArrayMap;

    if-eqz v0, :cond_3f

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v9, Lcom/android/server/security/TRPEngService;->mProcessInfo:Landroid/util/ArrayMap;

    invoke-virtual {v1, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v11, v0

    .line 479
    .local v11, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 480
    .local v12, "num":I
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_21
    if-ge v13, v12, :cond_3e

    .line 481
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 482
    .local v14, "realPackageName":Ljava/lang/String;
    move-object v0, p0

    move-object v1, v14

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move v7, v13

    move v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/android/server/security/TRPEngService;->triggerDetect(Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;IIII)V

    .line 480
    .end local v14  # "realPackageName":Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    goto :goto_21

    .line 484
    .end local v11  # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12  # "num":I
    .end local v13  # "i":I
    :cond_3e
    goto :goto_51

    .line 485
    :cond_3f
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/security/TRPEngService;->triggerDetect(Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;IIII)V

    .line 487
    :goto_51
    return-void
.end method

.method private triggerDetect(Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;IIII)V
    .registers 12
    .param p1, "packageName"  # Ljava/lang/String;
    .param p3, "runType"  # I
    .param p4, "sessionId"  # Ljava/lang/String;
    .param p5, "triggerReason"  # I
    .param p6, "monitorSize"  # I
    .param p7, "packageNumber"  # I
    .param p8, "packageIndex"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            "IIII)V"
        }
    .end annotation

    .line 493
    .local p2, "vectors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5a

    if-eqz p2, :cond_5a

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_5a

    .line 496
    :cond_f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 497
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "packageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v1, "actionVector"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 499
    const-string v1, "engineRunType"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 502
    const-string/jumbo v1, "packageNumber"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 503
    const-string/jumbo v1, "packageIndex"

    invoke-virtual {v0, v1, p8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 506
    const-string/jumbo v1, "sessionId"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string/jumbo v1, "triggerReason"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 508
    const-string/jumbo v1, "monitorSize"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 509
    sget v1, Lcom/android/server/security/TRPEngService;->mMode:I

    const-string/jumbo v2, "monitorMode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 511
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 512
    .local v1, "message":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 513
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 514
    iget-object v2, p0, Lcom/android/server/security/TRPEngService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 515
    return-void

    .line 494
    .end local v0  # "bundle":Landroid/os/Bundle;
    .end local v1  # "message":Landroid/os/Message;
    :cond_5a
    :goto_5a
    return-void
.end method

.method private unregisterReceiver()V
    .registers 3

    .line 915
    iget-object v0, p0, Lcom/android/server/security/TRPEngService;->mTimeTickBroadcastReceiver:Lcom/android/server/security/TRPEngService$TimeTickBroadcastReceiver;

    if-eqz v0, :cond_9

    .line 916
    iget-object v1, p0, Lcom/android/server/security/TRPEngService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 918
    :cond_9
    iget-object v0, p0, Lcom/android/server/security/TRPEngService;->mAppRemoveBroadcastReceiver:Lcom/android/server/security/TRPEngService$AppRemoveBroadcastReceiver;

    if-eqz v0, :cond_12

    .line 919
    iget-object v1, p0, Lcom/android/server/security/TRPEngService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 921
    :cond_12
    return-void
.end method

.method private updateMonitorList(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "isMonitor"  # Z

    .line 746
    invoke-static {p1}, Lcom/android/server/security/TrpUtils;->isNullString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 747
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_1d

    .line 749
    sget v2, Lcom/android/server/security/TRPEngService;->mMode:I

    if-ne v2, v1, :cond_13

    .line 750
    sget-object v1, Lcom/android/server/security/TRPEngService;->monitorList:Lcom/android/server/security/NameListManager;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/security/NameListManager;->remove(Ljava/lang/String;I)V

    .line 752
    :cond_13
    sget v1, Lcom/android/server/security/TRPEngService;->mMode:I

    if-ne v1, v0, :cond_2f

    .line 753
    sget-object v0, Lcom/android/server/security/TRPEngService;->monitorList:Lcom/android/server/security/NameListManager;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/security/NameListManager;->add(Ljava/lang/String;I)V

    goto :goto_2f

    .line 757
    :cond_1d
    sget v2, Lcom/android/server/security/TRPEngService;->mMode:I

    if-ne v2, v1, :cond_26

    .line 758
    sget-object v1, Lcom/android/server/security/TRPEngService;->monitorList:Lcom/android/server/security/NameListManager;

    invoke-virtual {v1, p1, v2}, Lcom/android/server/security/NameListManager;->add(Ljava/lang/String;I)V

    .line 760
    :cond_26
    sget v1, Lcom/android/server/security/TRPEngService;->mMode:I

    if-ne v1, v0, :cond_2f

    .line 761
    sget-object v0, Lcom/android/server/security/TRPEngService;->monitorList:Lcom/android/server/security/NameListManager;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/security/NameListManager;->remove(Ljava/lang/String;I)V

    .line 765
    :cond_2f
    :goto_2f
    return-void
.end method

.method private updateProcessInfo(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8
    .param p1, "processName"  # Ljava/lang/String;
    .param p2, "pkgList"  # [Ljava/lang/String;

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateProcessInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 565
    if-eqz p2, :cond_87

    array-length v0, p2

    if-eqz v0, :cond_87

    iget-object v0, p0, Lcom/android/server/security/TRPEngService;->mProcessInfo:Landroid/util/ArrayMap;

    if-nez v0, :cond_2b

    goto :goto_87

    .line 569
    :cond_2b
    monitor-enter p0

    .line 570
    :try_start_2c
    iget-object v0, p0, Lcom/android/server/security/TRPEngService;->mProcessInfo:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 571
    iget-object v0, p0, Lcom/android/server/security/TRPEngService;->mProcessInfo:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 572
    .local v0, "curPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_50

    .line 573
    array-length v1, p2

    const/4 v2, 0x0

    :goto_40
    if-ge v2, v1, :cond_50

    aget-object v3, p2, v2

    .line 574
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 575
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    .end local v3  # "pkg":Ljava/lang/String;
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 579
    .end local v0  # "curPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_50
    goto :goto_5f

    .line 580
    :cond_51
    iget-object v0, p0, Lcom/android/server/security/TRPEngService;->mProcessInfo:Landroid/util/ArrayMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    :goto_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_2c .. :try_end_60} :catchall_84

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateProcessInfo finished:: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/security/TRPEngService;->mProcessInfo:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 584
    return-void

    .line 582
    :catchall_84
    move-exception v0

    :try_start_85
    monitor-exit p0
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw v0

    .line 566
    :cond_87
    :goto_87
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 312
    invoke-super {p0}, Lmeizu/security/ITRPEng$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 892
    const v0, 0x6ad3aa

    return v0
.end method

.method public setAction(III)I
    .registers 12
    .param p1, "actionID"  # I
    .param p2, "uid"  # I
    .param p3, "pid"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 605
    sget-boolean v0, Lcom/android/server/security/TRPEngService;->sInited:Z

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 606
    const-string/jumbo v0, "setAction failed: SET_ACTION_ERROR_UNINITIALIZED"

    invoke-static {v0}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 607
    return v1

    .line 610
    :cond_c
    sget-boolean v0, Lcom/android/server/security/TRPEngService;->mIsAiDetectOpen:Z

    if-nez v0, :cond_19

    .line 611
    const-string/jumbo v0, "setAction failed: SET_ACTION_ERROR_CLOSED."

    invoke-static {v0}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 612
    const/16 v0, 0x65

    return v0

    .line 615
    :cond_19
    invoke-static {p1}, Lmeizu/security/TRPEngManager;->isInterProcessAction(I)Z

    move-result v0

    const/4 v2, 0x0

    const-string/jumbo v3, "setAction failed: SET_ACTION_ERROR_FAKE_CALL. [c:%s|a:%s|u:%s]"

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v0, :cond_4c

    .line 616
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 617
    .local v0, "callingUid":I
    const/16 v6, 0x3e9

    if-eq v0, v6, :cond_4b

    .line 618
    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 619
    const/16 v1, 0x66

    return v1

    .line 621
    .end local v0  # "callingUid":I
    :cond_4b
    goto :goto_6d

    .line 622
    :cond_4c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 623
    .restart local v0  # "callingUid":I
    if-eq v0, p2, :cond_6d

    .line 624
    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v5

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 629
    .end local v0  # "callingUid":I
    :cond_6d
    :goto_6d
    invoke-direct {p0, p2}, Lcom/android/server/security/TRPEngService;->checkSystemApp(I)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 630
    const-string/jumbo v0, "setAction failed: SET_ACTION_ERROR_SYSTEM_APP"

    invoke-static {v0}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 631
    const/4 v0, 0x6

    return v0

    .line 634
    :cond_7b
    iget-object v0, p0, Lcom/android/server/security/TRPEngService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 635
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 636
    const-string/jumbo v1, "setAction failed: SET_ACTION_ERROR_INVALID_UID"

    invoke-static {v1}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 637
    return v5

    .line 641
    :cond_8e
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 642
    invoke-direct {p0, p3}, Lcom/android/server/security/TRPEngService;->handleShareUid(I)Ljava/lang/String;

    move-result-object v0

    .line 643
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a7

    .line 644
    const-string/jumbo v1, "setAction failed: SET_ACTION_ERROR_INVALID_UID: SHAREUID"

    invoke-static {v1}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 645
    return v5

    .line 649
    :cond_a7
    sget-object v1, Lcom/android/server/security/TRPEngService;->monitorList:Lcom/android/server/security/NameListManager;

    sget v2, Lcom/android/server/security/TRPEngService;->mMode:I

    invoke-virtual {v1, v0, v2}, Lcom/android/server/security/NameListManager;->isMonitor(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_b9

    .line 650
    const-string/jumbo v1, "setAction failed: SET_ACTION_ERROR_NOT_IN_FILTER"

    invoke-static {v1}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 651
    const/4 v1, 0x5

    return v1

    .line 655
    :cond_b9
    iget-object v1, p0, Lcom/android/server/security/TRPEngService;->mMapIds:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_cc

    .line 656
    const-string/jumbo v1, "setAction failed: SET_ACTION_ERROR_INVALID_ACTIONID"

    invoke-static {v1}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 657
    return v4

    .line 660
    :cond_cc
    iget-object v1, p0, Lcom/android/server/security/TRPEngService;->mMapIds:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 663
    iget-object v1, p0, Lcom/android/server/security/TRPEngService;->mForegroundApp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e7

    .line 664
    sget v1, Lcom/android/server/security/TRPEngService;->sBackgroudIncrement:I

    add-int/2addr p1, v1

    .line 666
    :cond_e7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAction success::("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 667
    sget-object v1, Lcom/android/server/security/TRPEngService;->mVectorManager:Lcom/android/server/security/TrpVectorManager;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/security/TrpVectorManager;->addAction(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public setBroadcastTarget(Ljava/lang/String;)V
    .registers 4
    .param p1, "targetPackageName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 869
    sget-boolean v0, Lcom/android/server/security/TRPEngService;->sInited:Z

    if-nez v0, :cond_b

    .line 870
    const-string/jumbo v0, "setBroadcastTarget failed: uninitialized"

    invoke-static {v0}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 871
    return-void

    .line 873
    :cond_b
    invoke-direct {p0}, Lcom/android/server/security/TRPEngService;->checkCallerPermission()Z

    move-result v0

    if-nez v0, :cond_17

    .line 874
    const-string v0, "Call setBroadcastTarget permission denied!"

    invoke-static {v0}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 875
    return-void

    .line 878
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBroadcastTarget = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 880
    iput-object p1, p0, Lcom/android/server/security/TRPEngService;->mTargetPackage:Ljava/lang/String;

    .line 881
    return-void
.end method

.method public setForegroundApp(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 680
    sget-boolean v0, Lcom/android/server/security/TRPEngService;->sInited:Z

    if-nez v0, :cond_b

    .line 681
    const-string/jumbo v0, "setForegroundApp failed: uninitialized"

    invoke-static {v0}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 682
    return-void

    .line 684
    :cond_b
    invoke-direct {p0}, Lcom/android/server/security/TRPEngService;->checkCallerPermission()Z

    move-result v0

    if-nez v0, :cond_17

    .line 685
    const-string v0, "Call setForegroundApp permission denied!"

    invoke-static {v0}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 686
    return-void

    .line 690
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setForegroundApp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 691
    iput-object p1, p0, Lcom/android/server/security/TRPEngService;->mForegroundApp:Ljava/lang/String;

    .line 692
    return-void
.end method

.method public setPackageToFilter(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "inBundle"  # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 705
    sget-boolean v0, Lcom/android/server/security/TRPEngService;->sInited:Z

    if-nez v0, :cond_b

    .line 706
    const-string/jumbo v0, "setPackageToFilter failed: uninitialized"

    invoke-static {v0}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 707
    return-void

    .line 709
    :cond_b
    invoke-direct {p0}, Lcom/android/server/security/TRPEngService;->checkCallerPermission()Z

    move-result v0

    if-nez v0, :cond_17

    .line 710
    const-string v0, "Call setPackageToFilter permission denied!"

    invoke-static {v0}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 711
    return-void

    .line 714
    :cond_17
    if-nez p1, :cond_20

    .line 715
    const-string/jumbo v0, "setPackageToFilter() failed: null bundle"

    invoke-static {v0}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 716
    return-void

    .line 719
    :cond_20
    const-string/jumbo v0, "packageName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 720
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 721
    const-string/jumbo v1, "setPackageToFilter() failed: empty packageName"

    invoke-static {v1}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 722
    return-void

    .line 725
    :cond_34
    const-string v1, "_int"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 726
    .local v1, "intParam":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_70

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_43

    goto :goto_70

    .line 732
    :cond_43
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5a

    .line 734
    sget-object v2, Lcom/android/server/security/TRPEngService;->mVectorManager:Lcom/android/server/security/TrpVectorManager;

    invoke-virtual {v2, v0}, Lcom/android/server/security/TrpVectorManager;->addPackageToMonitor(Ljava/lang/String;)V

    .line 735
    invoke-direct {p0, v0, v4}, Lcom/android/server/security/TRPEngService;->updateMonitorList(Ljava/lang/String;Z)V

    goto :goto_6f

    .line 737
    :cond_5a
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_6f

    .line 739
    sget-object v3, Lcom/android/server/security/TRPEngService;->mVectorManager:Lcom/android/server/security/TrpVectorManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v0, v4}, Lcom/android/server/security/TrpVectorManager;->removePackageFromMonitor(Ljava/lang/String;I)V

    .line 740
    invoke-direct {p0, v0, v2}, Lcom/android/server/security/TRPEngService;->updateMonitorList(Ljava/lang/String;Z)V

    .line 742
    :cond_6f
    :goto_6f
    return-void

    .line 727
    :cond_70
    :goto_70
    const-string/jumbo v2, "setPackageToFilter() failed: empty _int param"

    invoke-static {v2}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 728
    return-void
.end method

.method public updateConfig(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "inBundle"  # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 776
    invoke-direct {p0}, Lcom/android/server/security/TRPEngService;->checkCallerPermission()Z

    move-result v0

    if-nez v0, :cond_c

    .line 777
    const-string v0, "Call updateConfig permission denied!"

    invoke-static {v0}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 778
    return-void

    .line 780
    :cond_c
    if-nez p1, :cond_15

    .line 781
    const-string/jumbo v0, "updateConfig() failed: null bundle"

    invoke-static {v0}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 782
    return-void

    .line 786
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 787
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 788
    .local v2, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    .end local v2  # "key":Ljava/lang/String;
    goto :goto_22

    .line 790
    :cond_53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 795
    sget-object v1, Lcom/android/server/security/TRPEngService;->KEY_SETTINGS_AI_CONFIG:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 796
    .local v1, "aiDetSwitch":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_a5

    .line 797
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateConfig flyme aiDetSwitch: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/security/TRPEngService;->mIsAiDetectOpen:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "-->"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "TrpEng"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    if-lez v1, :cond_9b

    move v3, v4

    :cond_9b
    move v2, v3

    .line 799
    .local v2, "newState":Z
    sget-boolean v3, Lcom/android/server/security/TRPEngService;->mIsAiDetectOpen:Z

    if-eq v2, v3, :cond_a2

    sget-object v3, Lcom/android/server/security/TRPEngService;->mVectorManager:Lcom/android/server/security/TrpVectorManager;

    .line 802
    :cond_a2
    sput-boolean v2, Lcom/android/server/security/TRPEngService;->mIsAiDetectOpen:Z

    .line 803
    return-void

    .line 808
    .end local v2  # "newState":Z
    :cond_a5
    const-string/jumbo v2, "monitorAll"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    .line 809
    .local v5, "hasMonitorKey":Z
    const/4 v6, 0x2

    if-eqz v5, :cond_cb

    sget-boolean v7, Lcom/android/server/security/TRPEngService;->sInited:Z

    if-eqz v7, :cond_cb

    .line 810
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_bb

    move v2, v4

    goto :goto_bc

    :cond_bb
    move v2, v6

    .line 812
    .local v2, "newMode":I
    :goto_bc
    sget v3, Lcom/android/server/security/TRPEngService;->mMode:I

    if-eq v3, v2, :cond_cb

    .line 814
    sput v2, Lcom/android/server/security/TRPEngService;->mMode:I

    .line 815
    sget-object v3, Lcom/android/server/security/TRPEngService;->mVectorManager:Lcom/android/server/security/TrpVectorManager;

    sget-object v7, Lcom/android/server/security/TRPEngService;->monitorList:Lcom/android/server/security/NameListManager;

    sget v8, Lcom/android/server/security/TRPEngService;->mMode:I

    invoke-virtual {v3, v7, v8}, Lcom/android/server/security/TrpVectorManager;->updateMonitor(Lcom/android/server/security/NameListManager;I)V

    .line 819
    .end local v2  # "newMode":I
    :cond_cb
    const-string v2, "engineRunType"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    .line 820
    .local v3, "hasRunTypeKey":Z
    const-string v7, "config"

    if-eqz v3, :cond_106

    .line 821
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 822
    .local v2, "engineRunType":I
    if-ne v2, v4, :cond_ea

    .line 825
    sget-boolean v4, Lcom/android/server/security/TRPEngService;->sInited:Z

    if-eqz v4, :cond_e9

    .line 826
    invoke-direct {p0}, Lcom/android/server/security/TRPEngService;->stopTrpEng()I

    .line 828
    sget v4, Lcom/android/server/security/TRPEngService;->mState:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_e9

    .line 829
    sput v2, Lcom/android/server/security/TRPEngService;->mEngineRunType:I

    .line 831
    :cond_e9
    return-void

    .line 833
    :cond_ea
    const/4 v4, 0x3

    if-eq v2, v4, :cond_ef

    if-ne v2, v6, :cond_106

    .line 836
    :cond_ef
    sput v2, Lcom/android/server/security/TRPEngService;->mEngineRunType:I

    .line 838
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lmeizu/security/TrpConfig;

    .line 839
    .local v4, "config":Lmeizu/security/TrpConfig;
    if-eqz v4, :cond_106

    .line 840
    sget-boolean v6, Lcom/android/server/security/TRPEngService;->sInited:Z

    if-nez v6, :cond_101

    .line 841
    invoke-direct {p0, v4}, Lcom/android/server/security/TRPEngService;->startTrpEng(Lmeizu/security/TrpConfig;)I

    .line 842
    goto :goto_106

    .line 843
    :cond_101
    const-string v6, "TRP has been inited"

    invoke-static {v6}, Lmeizu/security/TrpLog;->d(Ljava/lang/String;)V

    .line 849
    .end local v2  # "engineRunType":I
    .end local v4  # "config":Lmeizu/security/TrpConfig;
    :cond_106
    :goto_106
    sget-boolean v2, Lcom/android/server/security/TRPEngService;->sInited:Z

    if-eqz v2, :cond_117

    .line 851
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lmeizu/security/TrpConfig;

    .line 852
    .local v2, "config":Lmeizu/security/TrpConfig;
    if-eqz v2, :cond_117

    .line 853
    sget-object v4, Lcom/android/server/security/TRPEngService;->mVectorManager:Lcom/android/server/security/TrpVectorManager;

    invoke-virtual {v4, v2}, Lcom/android/server/security/TrpVectorManager;->updateConfig(Lmeizu/security/TrpConfig;)V

    .line 857
    .end local v2  # "config":Lmeizu/security/TrpConfig;
    :cond_117
    return-void
.end method
