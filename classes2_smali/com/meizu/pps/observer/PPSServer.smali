.class public Lcom/meizu/pps/observer/PPSServer;
.super Lcom/meizu/common/pps/IPPSNative;
.source "PPSServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/pps/observer/PPSServer$MainHandler;
    }
.end annotation


# static fields
.field private static final GMS_PACKAGES:[Ljava/lang/String;

.field private static final KEY_CN_GMS_CORE:Ljava/lang/String; = "cn_gms_core"

.field private static final MSG_INIT_DELAY:I = 0x0

.field public static final TAG:Ljava/lang/String; = "PPSServer"

.field private static sServer:Lcom/meizu/pps/observer/PPSServer;


# instance fields
.field private mClient:Lcom/meizu/pps/observer/PPSClient;

.field private mContext:Landroid/content/Context;

.field private mFreezeManager:Lcom/meizu/freeze/FreezeManager;

.field private mLooper:Landroid/os/Looper;

.field private mMainHandler:Landroid/os/Handler;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 66
    const-string v0, "com.google.android.gsf"

    const-string v1, "com.android.vending"

    const-string v2, "com.google.android.gms"

    const-string v3, "com.google.android.onetimeinitializer"

    const-string v4, "com.google.android.ext.shared"

    const-string v5, "com.google.android.configupdater"

    const-string v6, "com.google.android.partnersetup"

    const-string v7, "com.google.android.syncadapters.calendar"

    const-string v8, "com.google.android.syncadapters.contacts"

    const-string v9, "com.google.android.printservice.recommendation"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/pps/observer/PPSServer;->GMS_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .registers 7
    .param p1, "ams"  # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"  # Landroid/content/Context;

    .line 90
    invoke-direct {p0}, Lcom/meizu/common/pps/IPPSNative;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/meizu/pps/observer/PPSServer;->mContext:Landroid/content/Context;

    .line 92
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PPSServer"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 94
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/pps/observer/PPSServer;->mLooper:Landroid/os/Looper;

    .line 95
    new-instance v1, Lcom/meizu/pps/observer/PPSClient;

    iget-object v2, p0, Lcom/meizu/pps/observer/PPSServer;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p2, v2}, Lcom/meizu/pps/observer/PPSClient;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/meizu/pps/observer/PPSServer;->mClient:Lcom/meizu/pps/observer/PPSClient;

    .line 96
    new-instance v1, Lcom/meizu/pps/observer/PPSServer$MainHandler;

    iget-object v2, p0, Lcom/meizu/pps/observer/PPSServer;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/meizu/pps/observer/PPSServer$MainHandler;-><init>(Lcom/meizu/pps/observer/PPSServer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/meizu/pps/observer/PPSServer;->mMainHandler:Landroid/os/Handler;

    .line 97
    new-instance v1, Lcom/meizu/pps/observer/PPSUeventManager;

    iget-object v2, p0, Lcom/meizu/pps/observer/PPSServer;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Lcom/meizu/pps/observer/PPSUeventManager;-><init>(Landroid/os/Looper;)V

    .line 100
    .local v1, "uem":Lcom/meizu/pps/observer/PPSUeventManager;
    new-instance v2, Lcom/meizu/freeze/FreezeManager;

    iget-object v3, p0, Lcom/meizu/pps/observer/PPSServer;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, v3}, Lcom/meizu/freeze/FreezeManager;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/meizu/pps/observer/PPSServer;->mFreezeManager:Lcom/meizu/freeze/FreezeManager;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/pps/observer/PPSServer;)V
    .registers 1
    .param p0, "x0"  # Lcom/meizu/pps/observer/PPSServer;

    .line 52
    invoke-direct {p0}, Lcom/meizu/pps/observer/PPSServer;->setApplicationEnabledSetting()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/pps/observer/PPSServer;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"  # Lcom/meizu/pps/observer/PPSServer;

    .line 52
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/pps/observer/PPSServer;)V
    .registers 1
    .param p0, "x0"  # Lcom/meizu/pps/observer/PPSServer;

    .line 52
    invoke-direct {p0}, Lcom/meizu/pps/observer/PPSServer;->initDelayed()V

    return-void
.end method

.method private disableGmsPackages()V
    .registers 6

    .line 105
    invoke-direct {p0}, Lcom/meizu/pps/observer/PPSServer;->setApplicationEnabledSetting()V

    .line 106
    new-instance v0, Lcom/meizu/pps/observer/PPSServer$1;

    iget-object v1, p0, Lcom/meizu/pps/observer/PPSServer;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/meizu/pps/observer/PPSServer$1;-><init>(Lcom/meizu/pps/observer/PPSServer;Landroid/os/Handler;)V

    .line 112
    .local v0, "obs":Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/meizu/pps/observer/PPSServer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "cn_gms_core"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 115
    return-void
.end method

.method public static getInstance()Lcom/meizu/pps/observer/PPSServer;
    .registers 1

    .line 80
    sget-object v0, Lcom/meizu/pps/observer/PPSServer;->sServer:Lcom/meizu/pps/observer/PPSServer;

    return-object v0
.end method

.method private initDelayed()V
    .registers 5

    .line 277
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 278
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 280
    :cond_10
    return-void
.end method

.method public static publish(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .registers 4
    .param p0, "ams"  # Lcom/android/server/am/ActivityManagerService;
    .param p1, "context"  # Landroid/content/Context;

    .line 84
    sget-object v0, Lcom/meizu/pps/observer/PPSServer;->sServer:Lcom/meizu/pps/observer/PPSServer;

    if-nez v0, :cond_b

    .line 85
    new-instance v0, Lcom/meizu/pps/observer/PPSServer;

    invoke-direct {v0, p0, p1}, Lcom/meizu/pps/observer/PPSServer;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/pps/observer/PPSServer;->sServer:Lcom/meizu/pps/observer/PPSServer;

    .line 87
    :cond_b
    sget-object v0, Lcom/meizu/pps/observer/PPSServer;->sServer:Lcom/meizu/pps/observer/PPSServer;

    const-string v1, "pps_server"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 88
    return-void
.end method

.method private setApplicationEnabledSetting()V
    .registers 14

    .line 118
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "cn_gms_core"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 119
    .local v0, "gmsCoreStatus":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_13

    move v5, v4

    goto :goto_14

    :cond_13
    move v5, v3

    .line 120
    .local v5, "isEnable":Z
    :goto_14
    const-string v6, "PPSServer"

    if-ne v0, v1, :cond_4a

    .line 121
    new-instance v1, Ljava/io/File;

    const-string v7, "/data/data/com.google.android.gms"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, "mFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 123
    const-string v7, "gms package has exists"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v7, p0, Lcom/meizu/pps/observer/PPSServer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v2, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    const/4 v5, 0x1

    goto :goto_4a

    .line 127
    :cond_3b
    const-string v7, "gms package doesnt exists"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v7, p0, Lcom/meizu/pps/observer/PPSServer;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    const/4 v5, 0x0

    .line 132
    .end local v1  # "mFile":Ljava/io/File;
    :cond_4a
    :goto_4a
    iget-object v1, p0, Lcom/meizu/pps/observer/PPSServer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/pps/observer/PPSServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 133
    sget-object v1, Lcom/meizu/pps/observer/PPSServer;->GMS_PACKAGES:[Ljava/lang/String;

    array-length v2, v1

    move v7, v3

    :goto_56
    if-ge v7, v2, :cond_b2

    aget-object v8, v1, v7

    .line 134
    .local v8, "pkgName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 136
    .local v9, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_5b
    iget-object v10, p0, Lcom/meizu/pps/observer/PPSServer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v8, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10
    :try_end_61
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5b .. :try_end_61} :catch_63

    move-object v9, v10

    .line 139
    goto :goto_67

    .line 137
    :catch_63
    move-exception v10

    .line 138
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 140
    .end local v10  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_67
    if-eqz v9, :cond_af

    .line 141
    if-eqz v5, :cond_8d

    .line 142
    iget-object v10, p0, Lcom/meizu/pps/observer/PPSServer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v8}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v10

    if-eq v4, v10, :cond_af

    .line 143
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "enable package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v10, p0, Lcom/meizu/pps/observer/PPSServer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v8, v4, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_af

    .line 147
    :cond_8d
    iget-object v10, p0, Lcom/meizu/pps/observer/PPSServer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v8}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x2

    if-eq v11, v10, :cond_af

    .line 148
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "disable package "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v10, p0, Lcom/meizu/pps/observer/PPSServer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v8, v11, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 133
    .end local v8  # "pkgName":Ljava/lang/String;
    .end local v9  # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_af
    :goto_af
    add-int/lit8 v7, v7, 0x1

    goto :goto_56

    .line 154
    :cond_b2
    return-void
.end method


# virtual methods
.method public checkFrozen(I)Z
    .registers 3
    .param p1, "uid"  # I

    .line 367
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mFreezeManager:Lcom/meizu/freeze/FreezeManager;

    invoke-virtual {v0, p1}, Lcom/meizu/freeze/FreezeManager;->checkFrozen(I)Z

    move-result v0

    return v0
.end method

.method public checkFrozenByPid(I)Z
    .registers 3
    .param p1, "pid"  # I

    .line 371
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mFreezeManager:Lcom/meizu/freeze/FreezeManager;

    invoke-virtual {v0, p1}, Lcom/meizu/freeze/FreezeManager;->checkFrozenByPid(I)Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2f

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump PPS Info from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 286
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 288
    return-void

    .line 291
    :cond_2f
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_49

    aget-object v0, p3, v1

    const-string v3, "--native"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 292
    invoke-static {}, Lcom/meizu/pps/observer/PPSProcessManager;->getInstance()Lcom/meizu/pps/observer/PPSProcessManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/meizu/pps/observer/PPSProcessManager;->dump(Ljava/io/PrintWriter;)V

    .line 293
    invoke-static {p2}, Lcom/meizu/pps/observer/PPSAppTypeManager;->dump(Ljava/io/PrintWriter;)V

    goto :goto_61

    .line 294
    :cond_49
    array-length v0, p3

    if-lt v0, v2, :cond_5c

    aget-object v0, p3, v1

    const-string v1, "freeze"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 295
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mFreezeManager:Lcom/meizu/freeze/FreezeManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/freeze/FreezeManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_61

    .line 297
    :cond_5c
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mClient:Lcom/meizu/pps/observer/PPSClient;

    invoke-virtual {v0, p1, p3}, Lcom/meizu/pps/observer/PPSClient;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 299
    :goto_61
    return-void
.end method

.method public fastFreeze([II)V
    .registers 12
    .param p1, "pids"  # [I
    .param p2, "intervalTime"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "PPSServer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v3, p0, Lcom/meizu/pps/observer/PPSServer;->mFreezeManager:Lcom/meizu/freeze/FreezeManager;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/meizu/freeze/FreezeManager;->scheduleFastFreeze([IILjava/lang/String;J)V

    .line 323
    return-void
.end method

.method public fastFreezeExt([IILjava/lang/String;J)V
    .registers 15
    .param p1, "pids"  # [I
    .param p2, "intervalTime"  # I
    .param p3, "pkgName"  # Ljava/lang/String;
    .param p4, "nowTime"  # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "PPSServer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object v3, p0, Lcom/meizu/pps/observer/PPSServer;->mFreezeManager:Lcom/meizu/freeze/FreezeManager;

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/meizu/freeze/FreezeManager;->scheduleFastFreeze([IILjava/lang/String;J)V

    .line 329
    return-void
.end method

.method public forceFreeze(I[ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "uid"  # I
    .param p2, "pids"  # [I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "reason"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "PPSServer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mFreezeManager:Lcom/meizu/freeze/FreezeManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/meizu/freeze/FreezeManager;->scheduleForceFreeze(I[ILjava/lang/String;Ljava/lang/String;)V

    .line 341
    return-void
.end method

.method public forceStopFreeze(ILjava/lang/String;)V
    .registers 6
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 350
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "PPSServer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mFreezeManager:Lcom/meizu/freeze/FreezeManager;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/freeze/FreezeManager;->scheduleForceStopFreeze(ILjava/lang/String;)V

    .line 352
    return-void
.end method

.method public forceUnfreeze(I[ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "uid"  # I
    .param p2, "pids"  # [I
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "reason"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "PPSServer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mFreezeManager:Lcom/meizu/freeze/FreezeManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/meizu/freeze/FreezeManager;->scheduleForceUnfreeze(I[ILjava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getNativePss()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "PPSServer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-static {}, Lcom/meizu/pps/observer/PPSProcessManager;->getInstance()Lcom/meizu/pps/observer/PPSProcessManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/pps/observer/PPSProcessManager;->getNativePss()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPowerSavedPackagesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    invoke-static {}, Lcom/android/server/lm/LmsExecutor;->getInstance()Lcom/android/server/lm/LmsExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/lm/LmsExecutor;->getPowerSavedPackagesList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPss([I)[I
    .registers 3
    .param p1, "pids"  # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    invoke-static {}, Lcom/meizu/pps/observer/PPSProcessManager;->getInstance()Lcom/meizu/pps/observer/PPSProcessManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/pps/observer/PPSProcessManager;->getPss([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getPssExt([I)[I
    .registers 3
    .param p1, "pids"  # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 376
    invoke-static {}, Lcom/meizu/pps/observer/PPSProcessManager;->getInstance()Lcom/meizu/pps/observer/PPSProcessManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meizu/pps/observer/PPSProcessManager;->getPssExt([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getWorkingList(I)Ljava/util/List;
    .registers 3
    .param p1, "type"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mClient:Lcom/meizu/pps/observer/PPSClient;

    invoke-virtual {v0}, Lcom/meizu/pps/observer/PPSClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 249
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mClient:Lcom/meizu/pps/observer/PPSClient;

    invoke-virtual {v0, p1}, Lcom/meizu/pps/observer/PPSClient;->getWorkingList(I)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 251
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public isConnected()Z
    .registers 2

    .line 227
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mClient:Lcom/meizu/pps/observer/PPSClient;

    invoke-virtual {v0}, Lcom/meizu/pps/observer/PPSClient;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isSensorFastest(I)Z
    .registers 3
    .param p1, "uid"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mClient:Lcom/meizu/pps/observer/PPSClient;

    invoke-virtual {v0}, Lcom/meizu/pps/observer/PPSClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 257
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mClient:Lcom/meizu/pps/observer/PPSClient;

    invoke-virtual {v0, p1}, Lcom/meizu/pps/observer/PPSClient;->isSensorFastest(I)Z

    move-result v0

    return v0

    .line 259
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public killProcess(II)V
    .registers 4
    .param p1, "uid"  # I
    .param p2, "pid"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    invoke-static {}, Lcom/meizu/pps/observer/PPSProcessManager;->getInstance()Lcom/meizu/pps/observer/PPSProcessManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/meizu/pps/observer/PPSProcessManager;->killProcess(II)V

    .line 203
    return-void
.end method

.method public onKeyguardState(Z)V
    .registers 3
    .param p1, "lock"  # Z

    .line 269
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mClient:Lcom/meizu/pps/observer/PPSClient;

    invoke-virtual {v0}, Lcom/meizu/pps/observer/PPSClient;->bindServiceIfNeeded()V

    .line 270
    if-nez p1, :cond_a

    .line 271
    invoke-direct {p0}, Lcom/meizu/pps/observer/PPSServer;->initDelayed()V

    .line 274
    :cond_a
    return-void
.end method

.method public removeUpdatesForPowerSave(Ljava/lang/String;)V
    .registers 3
    .param p1, "pkgName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/pps/observer/PPSServer;->removeUpdatesForPowerSaveAsUser(Ljava/lang/String;I)V

    .line 169
    return-void
.end method

.method public removeUpdatesForPowerSaveAsUser(Ljava/lang/String;I)V
    .registers 4
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    invoke-static {}, Lcom/android/server/lm/LmsExecutor;->getInstance()Lcom/android/server/lm/LmsExecutor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/lm/LmsExecutor;->removeUpdatesForPowerSave(Ljava/lang/String;I)V

    .line 219
    return-void
.end method

.method public restoreUpdatesForPowerSave(Ljava/lang/String;)V
    .registers 3
    .param p1, "pkgName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/meizu/pps/observer/PPSServer;->restoreUpdatesForPowerSaveAsUser(Ljava/lang/String;I)V

    .line 174
    return-void
.end method

.method public restoreUpdatesForPowerSaveAsUser(Ljava/lang/String;I)V
    .registers 4
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    invoke-static {}, Lcom/android/server/lm/LmsExecutor;->getInstance()Lcom/android/server/lm/LmsExecutor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/lm/LmsExecutor;->restoreUpdatesForPowerSave(Ljava/lang/String;I)V

    .line 224
    return-void
.end method

.method public scheduleDataCollectEvent(ILcom/meizu/common/pps/event/Args;)V
    .registers 4
    .param p1, "event"  # I
    .param p2, "args"  # Lcom/meizu/common/pps/event/Args;

    .line 243
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mClient:Lcom/meizu/pps/observer/PPSClient;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/pps/observer/PPSClient;->scheduleDataCollectEvent(ILcom/meizu/common/pps/event/Args;)V

    .line 244
    return-void
.end method

.method public scheduleForceUnFreeze(I)V
    .registers 3
    .param p1, "uid"  # I

    .line 355
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mFreezeManager:Lcom/meizu/freeze/FreezeManager;

    invoke-virtual {v0, p1}, Lcom/meizu/freeze/FreezeManager;->scheduleForceUnfreeze(I)V

    .line 356
    return-void
.end method

.method public scheduleForceUnFreeze(I[I)V
    .registers 4
    .param p1, "uid"  # I
    .param p2, "pids"  # [I

    .line 359
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mFreezeManager:Lcom/meizu/freeze/FreezeManager;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/freeze/FreezeManager;->scheduleForceUnfreeze(I[I)V

    .line 360
    return-void
.end method

.method public scheduleForceUnFreeze(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 363
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mFreezeManager:Lcom/meizu/freeze/FreezeManager;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/freeze/FreezeManager;->scheduleForceUnfreeze(Ljava/lang/String;I)V

    .line 364
    return-void
.end method

.method public scheduleProcessEvent(ILcom/meizu/common/pps/event/Args;)V
    .registers 4
    .param p1, "event"  # I
    .param p2, "args"  # Lcom/meizu/common/pps/event/Args;

    .line 231
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mClient:Lcom/meizu/pps/observer/PPSClient;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/pps/observer/PPSClient;->scheduleProcessEvent(ILcom/meizu/common/pps/event/Args;)V

    .line 232
    return-void
.end method

.method public scheduleSystemEvent(ILcom/meizu/common/pps/event/Args;)V
    .registers 4
    .param p1, "event"  # I
    .param p2, "args"  # Lcom/meizu/common/pps/event/Args;

    .line 235
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mClient:Lcom/meizu/pps/observer/PPSClient;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/pps/observer/PPSClient;->scheduleSystemEvent(ILcom/meizu/common/pps/event/Args;)V

    .line 236
    return-void
.end method

.method public scheduleTrimMemory(II)V
    .registers 5
    .param p1, "pid"  # I
    .param p2, "level"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    invoke-static {}, Lcom/android/server/am/AmsExecutor;->getInstance()Lcom/android/server/am/AmsExecutor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/am/AmsExecutor;->scheduleTrimMemory(IIZ)Z

    .line 163
    return-void
.end method

.method public scheduleUEvent(ILcom/meizu/common/pps/event/Args;)V
    .registers 4
    .param p1, "event"  # I
    .param p2, "args"  # Lcom/meizu/common/pps/event/Args;

    .line 239
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mClient:Lcom/meizu/pps/observer/PPSClient;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/pps/observer/PPSClient;->scheduleUEvent(ILcom/meizu/common/pps/event/Args;)V

    .line 240
    return-void
.end method

.method public setAppList(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "type"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    .local p2, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1, p2}, Lcom/meizu/pps/observer/PPSAppTypeManager;->updateList(ILjava/util/ArrayList;)V

    .line 198
    return-void
.end method

.method public setScreenWakeLockDisabledForPackageName(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "disable"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    invoke-static {}, Lcom/android/server/power/PowerExecutor;->getInstance()Lcom/android/server/power/PowerExecutor;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/power/PowerExecutor;->setScreenWakeLockDisabledForPackageName(Ljava/lang/String;IZ)V

    .line 188
    return-void
.end method

.method public setWakeLockDisabledForUid(IZ)V
    .registers 4
    .param p1, "uid"  # I
    .param p2, "disable"  # Z

    .line 177
    invoke-static {}, Lcom/android/server/power/PowerExecutor;->getInstance()Lcom/android/server/power/PowerExecutor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerExecutor;->setWakeLockDisabledForUid(IZ)V

    .line 178
    return-void
.end method

.method public setWakelockList(ILjava/util/List;)V
    .registers 4
    .param p1, "type"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    .local p2, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/server/power/PowerExecutor;->getInstance()Lcom/android/server/power/PowerExecutor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/power/PowerExecutor;->setWakelockList(ILjava/util/List;)V

    .line 193
    return-void
.end method

.method public stopPackage(Ljava/lang/String;II)V
    .registers 5
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "clonedId"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    invoke-static {}, Lcom/meizu/pps/observer/PPSProcessManager;->getInstance()Lcom/meizu/pps/observer/PPSProcessManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/meizu/pps/observer/PPSProcessManager;->stopPackage(Ljava/lang/String;II)V

    .line 208
    return-void
.end method

.method public systemReady()V
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/meizu/pps/observer/PPSServer;->mClient:Lcom/meizu/pps/observer/PPSClient;

    invoke-virtual {v0}, Lcom/meizu/pps/observer/PPSClient;->systemReady()V

    .line 264
    invoke-direct {p0}, Lcom/meizu/pps/observer/PPSServer;->initDelayed()V

    .line 265
    invoke-direct {p0}, Lcom/meizu/pps/observer/PPSServer;->disableGmsPackages()V

    .line 266
    return-void
.end method
