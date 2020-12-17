.class public Lcom/flyme/server/pm/FlymeDexOptManager;
.super Ljava/lang/Object;
.source "FlymeDexOptManager.java"

# interfaces
.implements Lcom/flyme/server/pm/FlymeFrontMonitor$FrontPackageListener;


# static fields
.field private static CMD:Z = false

.field public static final DEBUG:Z = true

.field private static IN_USING:Z = false

.field private static final PROP_CMD:Ljava/lang/String; = "persist.sys.dexopt.cmd"

.field private static final PROP_ENABLE:Ljava/lang/String; = "persist.sys.dexopt.enable"

.field public static final TAG:Ljava/lang/String; = "FLYME_LUNCH_OPT"

.field private static mInstance:Lcom/flyme/server/pm/FlymeDexOptManager;


# instance fields
.field private firstLaunchedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flyme/server/pm/FlymeDexOptManager;->IN_USING:Z

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/flyme/server/pm/FlymeDexOptManager;->CMD:Z

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/flyme/server/pm/FlymeDexOptManager;->mInstance:Lcom/flyme/server/pm/FlymeDexOptManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/server/pm/FlymeDexOptManager;->firstLaunchedList:Ljava/util/ArrayList;

    .line 44
    sget-boolean v0, Lcom/flyme/server/pm/FlymeDexOptManager;->IN_USING:Z

    const-string v1, "persist.sys.dexopt.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/flyme/server/pm/FlymeDexOptManager;->IN_USING:Z

    .line 45
    sget-boolean v0, Lcom/flyme/server/pm/FlymeDexOptManager;->IN_USING:Z

    if-eqz v0, :cond_1f

    .line 46
    invoke-static {}, Lcom/flyme/server/pm/FlymeFrontMonitor;->getInstance()Lcom/flyme/server/pm/FlymeFrontMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flyme/server/pm/FlymeFrontMonitor;->registerFrontPackageListener(Lcom/flyme/server/pm/FlymeFrontMonitor$FrontPackageListener;)V

    .line 48
    :cond_1f
    sget-boolean v0, Lcom/flyme/server/pm/FlymeDexOptManager;->CMD:Z

    const-string v1, "persist.sys.dexopt.cmd"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/flyme/server/pm/FlymeDexOptManager;->CMD:Z

    .line 49
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 28
    sget-boolean v0, Lcom/flyme/server/pm/FlymeDexOptManager;->IN_USING:Z

    return v0
.end method

.method static synthetic access$100(Lcom/flyme/server/pm/FlymeDexOptManager;)Lcom/android/server/pm/PackageManagerService;
    .registers 2
    .param p0, "x0"  # Lcom/flyme/server/pm/FlymeDexOptManager;

    .line 28
    iget-object v0, p0, Lcom/flyme/server/pm/FlymeDexOptManager;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/server/pm/FlymeDexOptManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/flyme/server/pm/FlymeDexOptManager;

    .line 28
    iget-object v0, p0, Lcom/flyme/server/pm/FlymeDexOptManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 28
    sget-boolean v0, Lcom/flyme/server/pm/FlymeDexOptManager;->CMD:Z

    return v0
.end method

.method public static getInstance()Lcom/flyme/server/pm/FlymeDexOptManager;
    .registers 1

    .line 52
    sget-object v0, Lcom/flyme/server/pm/FlymeDexOptManager;->mInstance:Lcom/flyme/server/pm/FlymeDexOptManager;

    if-nez v0, :cond_b

    .line 53
    new-instance v0, Lcom/flyme/server/pm/FlymeDexOptManager;

    invoke-direct {v0}, Lcom/flyme/server/pm/FlymeDexOptManager;-><init>()V

    sput-object v0, Lcom/flyme/server/pm/FlymeDexOptManager;->mInstance:Lcom/flyme/server/pm/FlymeDexOptManager;

    .line 55
    :cond_b
    sget-object v0, Lcom/flyme/server/pm/FlymeDexOptManager;->mInstance:Lcom/flyme/server/pm/FlymeDexOptManager;

    return-object v0
.end method

.method private performDexOpt(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;

    .line 102
    new-instance v0, Lcom/flyme/server/pm/FlymeDexOptManager$1;

    const-string v1, "DexOpt_ThirdOptimization"

    invoke-direct {v0, p0, v1, p1}, Lcom/flyme/server/pm/FlymeDexOptManager$1;-><init>(Lcom/flyme/server/pm/FlymeDexOptManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Lcom/flyme/server/pm/FlymeDexOptManager$1;->start()V

    .line 129
    return-void
.end method

.method private setPropValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "value"  # Ljava/lang/String;

    .line 150
    const-string v0, ""

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "curValue":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setprop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |curValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FLYME_LUNCH_OPT"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 153
    return-void

    .line 157
    :cond_33
    :try_start_33
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_36} :catch_37

    .line 161
    goto :goto_40

    .line 158
    :catch_37
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "failed to set system property"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    .end local v1  # "e":Ljava/lang/Exception;
    :goto_40
    return-void
.end method

.method private triggerDexOpt(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;

    .line 91
    sget-boolean v0, Lcom/flyme/server/pm/FlymeDexOptManager;->IN_USING:Z

    if-nez v0, :cond_5

    return-void

    .line 93
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "triggerDexOpt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ## firstLaunchedList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/flyme/server/pm/FlymeDexOptManager;->firstLaunchedList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FLYME_LUNCH_OPT"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/flyme/server/pm/FlymeDexOptManager;->firstLaunchedList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 95
    :try_start_28
    iget-object v1, p0, Lcom/flyme/server/pm/FlymeDexOptManager;->firstLaunchedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_32

    monitor-exit v0

    return-void

    .line 96
    :cond_32
    iget-object v1, p0, Lcom/flyme/server/pm/FlymeDexOptManager;->firstLaunchedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 97
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_28 .. :try_end_38} :catchall_3c

    .line 98
    invoke-direct {p0, p1}, Lcom/flyme/server/pm/FlymeDexOptManager;->performDexOpt(Ljava/lang/String;)V

    .line 99
    return-void

    .line 97
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method


# virtual methods
.method public addFirstLaunchedPackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;

    .line 71
    sget-boolean v0, Lcom/flyme/server/pm/FlymeDexOptManager;->IN_USING:Z

    if-nez v0, :cond_5

    return-void

    .line 72
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addFirstLaunchedPackage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FLYME_LUNCH_OPT"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    if-nez p1, :cond_1e

    return-void

    .line 74
    :cond_1e
    iget-object v0, p0, Lcom/flyme/server/pm/FlymeDexOptManager;->firstLaunchedList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 75
    :try_start_21
    iget-object v1, p0, Lcom/flyme/server/pm/FlymeDexOptManager;->firstLaunchedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    monitor-exit v0

    .line 77
    return-void

    .line 76
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .registers 9
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "pid"  # I
    .param p4, "lpackageName"  # Ljava/lang/String;
    .param p5, "luid"  # I
    .param p6, "lpid"  # I

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frontPackageChanged  packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " lpackageName ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FLYME_LUNCH_OPT"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const-string v0, "com.android.packageinstaller"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    const-string v0, "com.android.permissioncontroller"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    goto :goto_33

    .line 87
    :cond_2f
    invoke-direct {p0, p4}, Lcom/flyme/server/pm/FlymeDexOptManager;->triggerDexOpt(Ljava/lang/String;)V

    .line 88
    return-void

    .line 85
    :cond_33
    :goto_33
    return-void
.end method

.method public initEnv(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;)V
    .registers 5
    .param p1, "pms"  # Lcom/android/server/pm/PackageManagerService;
    .param p2, "context"  # Landroid/content/Context;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initEnv  pms = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FLYME_LUNCH_OPT"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iput-object p1, p0, Lcom/flyme/server/pm/FlymeDexOptManager;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 63
    iput-object p2, p0, Lcom/flyme/server/pm/FlymeDexOptManager;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method

.method public setEnable(Z)V
    .registers 4
    .param p1, "enable"  # Z

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnable cur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/flyme/server/pm/FlymeDexOptManager;->IN_USING:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", next="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FLYME_LUNCH_OPT"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-boolean v0, Lcom/flyme/server/pm/FlymeDexOptManager;->IN_USING:Z

    if-ne v0, p1, :cond_25

    return-void

    .line 139
    :cond_25
    sput-boolean p1, Lcom/flyme/server/pm/FlymeDexOptManager;->IN_USING:Z

    .line 140
    if-eqz p1, :cond_31

    .line 141
    invoke-static {}, Lcom/flyme/server/pm/FlymeFrontMonitor;->getInstance()Lcom/flyme/server/pm/FlymeFrontMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flyme/server/pm/FlymeFrontMonitor;->registerFrontPackageListener(Lcom/flyme/server/pm/FlymeFrontMonitor$FrontPackageListener;)V

    goto :goto_3d

    .line 143
    :cond_31
    invoke-static {}, Lcom/flyme/server/pm/FlymeFrontMonitor;->getInstance()Lcom/flyme/server/pm/FlymeFrontMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flyme/server/pm/FlymeFrontMonitor;->unregisterFrontPackageListener(Lcom/flyme/server/pm/FlymeFrontMonitor$FrontPackageListener;)V

    .line 144
    iget-object v0, p0, Lcom/flyme/server/pm/FlymeDexOptManager;->firstLaunchedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 146
    :goto_3d
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.dexopt.enable"

    invoke-direct {p0, v1, v0}, Lcom/flyme/server/pm/FlymeDexOptManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method
