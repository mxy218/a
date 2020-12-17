.class final Lcom/android/server/am/FlymeActivityManagerService;
.super Lflyme/app/IActivityManagerExt$Stub;
.source "FlymeActivityManagerService.java"


# static fields
.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static sInstance:Lcom/android/server/am/FlymeActivityManagerService;


# instance fields
.field private mServices:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "ams"  # Lcom/android/server/am/ActivityManagerService;

    .line 38
    invoke-direct {p0}, Lflyme/app/IActivityManagerExt$Stub;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/server/am/FlymeActivityManagerService;->mServices:Lcom/android/server/am/ActivityManagerService;

    .line 40
    return-void
.end method

.method static synthetic lambda$main$0(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p0, "ams"  # Lcom/android/server/am/ActivityManagerService;

    .line 44
    new-instance v0, Lcom/android/server/am/FlymeActivityManagerService;

    invoke-direct {v0, p0}, Lcom/android/server/am/FlymeActivityManagerService;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/FlymeActivityManagerService;->sInstance:Lcom/android/server/am/FlymeActivityManagerService;

    return-void
.end method

.method static main(Lcom/android/server/am/ActivityManagerService;)V
    .registers 5
    .param p0, "ams"  # Lcom/android/server/am/ActivityManagerService;

    .line 43
    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/-$$Lambda$FlymeActivityManagerService$L0-0hHRomPUsHAr5MXpjolnoQLs;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$FlymeActivityManagerService$L0-0hHRomPUsHAr5MXpjolnoQLs;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 46
    :try_start_e
    const-string v0, "activity_ext"

    sget-object v1, Lcom/android/server/am/FlymeActivityManagerService;->sInstance:Lcom/android/server/am/FlymeActivityManagerService;

    const/4 v2, 0x0

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 47
    const-string v0, "ActivityManager"

    const-string v1, "addService:activity_ext ok"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_20

    .line 50
    goto :goto_24

    .line 48
    :catchall_20
    move-exception v0

    .line 49
    .local v0, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .end local v0  # "throwable":Ljava/lang/Throwable;
    :goto_24
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/android/server/am/FlymeActivityManagerService;->mServices:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ActivityManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 56
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 58
    :cond_f
    return-void
.end method

.method public sendResultToActivity(Landroid/content/pm/ActivityInfo;Landroid/app/ResultInfo;)V
    .registers 6
    .param p1, "info"  # Landroid/content/pm/ActivityInfo;
    .param p2, "result"  # Landroid/app/ResultInfo;

    .line 62
    if-eqz p1, :cond_5e

    if-nez p2, :cond_5

    goto :goto_5e

    .line 65
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendResultToActivity start. Target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v0, p0, Lcom/android/server/am/FlymeActivityManagerService;->mServices:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "flyme.permission.SEND_ACTIVITY_RESULT"

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_52

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: sendResultToActivity pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void

    .line 71
    :cond_52
    const-class v0, Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/FlymeWindowManagerInternal;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/FlymeWindowManagerInternal;->sendResultToActivity(Landroid/content/pm/ActivityInfo;Landroid/app/ResultInfo;)V

    .line 72
    return-void

    .line 63
    :cond_5e
    :goto_5e
    return-void
.end method
