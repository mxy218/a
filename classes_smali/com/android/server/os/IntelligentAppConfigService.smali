.class public Lcom/android/server/os/IntelligentAppConfigService;
.super Landroid/app/job/JobService;
.source "IntelligentAppConfigService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/os/IntelligentAppConfigService$DevicesDownloadInfo;,
        Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;
    }
.end annotation


# static fields
.field private static final DOWNLOAD_FILE_ADDRESS_COMMON_CONFIG:Ljava/lang/String; = "http://safe.res.meizu.com/pack/perf_config.json"

.field private static final DOWNLOAD_FILE_SAVE_NAME:Ljava/lang/String; = "perf_intelligent_app_config.conf"

.field private static final FILESIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "IntelligentEngine"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 4
    .param p1, "params"  # Landroid/app/job/JobParameters;

    .line 63
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

    .line 65
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;

    invoke-direct {v1, p0, p1}, Lcom/android/server/os/IntelligentAppConfigService$MyRunnable;-><init>(Lcom/android/server/os/IntelligentAppConfigService;Landroid/app/job/JobParameters;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 66
    const/4 v0, 0x1

    return v0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 4
    .param p1, "params"  # Landroid/app/job/JobParameters;

    .line 90
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

    .line 91
    const/4 v0, 0x0

    return v0
.end method
