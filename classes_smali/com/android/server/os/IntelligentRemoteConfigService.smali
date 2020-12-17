.class public Lcom/android/server/os/IntelligentRemoteConfigService;
.super Landroid/app/job/JobService;
.source "IntelligentRemoteConfigService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/os/IntelligentRemoteConfigService$MyRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_IMEI:Ljava/lang/String; = "864044030041654"

.field public static final MAX_TIME_OUT:I = 0x2710

.field private static final RULE_KEY:Ljava/lang/String; = "perf.CTR#214mz"

.field private static final SGAME_MTR_FORCE_OPEN_SWITCH:Ljava/lang/String; = "http://safe.meizu.com/service/cfg/pf?"

.field private static final SGAME_MTR_FORCE_PROPERTY:Ljava/lang/String; = "persist.sys.mtr_force_open"

.field private static final TAG:Ljava/lang/String; = "IntelligentEngine"

.field private static final hexDigits:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 45
    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "2"

    const-string v3, "3"

    const-string v4, "4"

    const-string v5, "5"

    const-string v6, "6"

    const-string v7, "7"

    const-string v8, "8"

    const-string v9, "9"

    const-string v10, "a"

    const-string v11, "b"

    const-string v12, "c"

    const-string v13, "d"

    const-string v14, "e"

    const-string v15, "f"

    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/os/IntelligentRemoteConfigService;->hexDigits:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .registers 1

    .line 36
    sget-object v0, Lcom/android/server/os/IntelligentRemoteConfigService;->hexDigits:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4
    .param p1, "params"  # Landroid/app/job/JobParameters;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IntelligentEngine, onStartJob "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostInfo(Ljava/lang/String;)V

    .line 63
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/os/IntelligentRemoteConfigService$MyRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/server/os/IntelligentRemoteConfigService$MyRunnable;-><init>(Lcom/android/server/os/IntelligentRemoteConfigService;Landroid/app/job/JobParameters;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 4
    .param p1, "params"  # Landroid/app/job/JobParameters;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Job stop "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/perf/LogUtils;->logBoostStep(Ljava/lang/String;)V

    .line 89
    const/4 v0, 0x0

    return v0
.end method
