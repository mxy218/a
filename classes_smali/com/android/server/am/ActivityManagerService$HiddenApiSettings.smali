.class Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;
.super Landroid/database/ContentObserver;
.source "ActivityManagerService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HiddenApiSettings"
.end annotation


# static fields
.field public static final HIDDEN_API_ACCESS_LOG_SAMPLING_RATE:Ljava/lang/String; = "hidden_api_access_log_sampling_rate"

.field public static final HIDDEN_API_ACCESS_STATSLOG_SAMPLING_RATE:Ljava/lang/String; = "hidden_api_access_statslog_sampling_rate"


# instance fields
.field private mBlacklistDisabled:Z

.field private final mContext:Landroid/content/Context;

.field private mExemptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExemptionsStr:Ljava/lang/String;

.field private mLogSampleRate:I

.field private mPolicy:I

.field private mStatslogSampleRate:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .registers 3

    .line 2322
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2263
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptions:Ljava/util/List;

    .line 2264
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mLogSampleRate:I

    .line 2265
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mStatslogSampleRate:I

    .line 2266
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mPolicy:I

    .line 2323
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    .line 2324
    return-void
.end method

.method private getValidEnforcementPolicy(Ljava/lang/String;)I
    .registers 4

    .line 2365
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 2367
    invoke-static {p1}, Landroid/content/pm/ApplicationInfo;->isValidHiddenApiEnforcementPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2368
    return p1

    .line 2370
    :cond_12
    return v1
.end method

.method private initializeSampleRates()V
    .registers 5

    .line 2314
    const/4 v0, 0x0

    const-string v1, "app_compat"

    const-string v2, "hidden_api_access_log_sampling_rate"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 2316
    const-string v3, "hidden_api_access_statslog_sampling_rate"

    invoke-static {v1, v3, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 2318
    invoke-direct {p0, v2, v0}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->setSampleRates(II)V

    .line 2319
    return-void
.end method

.method private setSampleRates(II)V
    .registers 5

    .line 2295
    const/high16 v0, 0x10000

    if-ltz p1, :cond_13

    if-gt p1, v0, :cond_13

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mLogSampleRate:I

    if-eq p1, v1, :cond_13

    .line 2297
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mLogSampleRate:I

    .line 2298
    sget-object p1, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mLogSampleRate:I

    invoke-virtual {p1, v1}, Landroid/os/ZygoteProcess;->setHiddenApiAccessLogSampleRate(I)V

    .line 2301
    :cond_13
    if-ltz p2, :cond_24

    if-gt p2, v0, :cond_24

    iget p1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mStatslogSampleRate:I

    if-eq p2, p1, :cond_24

    .line 2303
    iput p2, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mStatslogSampleRate:I

    .line 2304
    sget-object p1, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    iget p2, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mStatslogSampleRate:I

    invoke-virtual {p1, p2}, Landroid/os/ZygoteProcess;->setHiddenApiAccessStatslogSampleRate(I)V

    .line 2307
    :cond_24
    return-void
.end method

.method private update()V
    .registers 3

    .line 2342
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hidden_api_blacklist_exemptions"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2344
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptionsStr:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 2345
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptionsStr:Ljava/lang/String;

    .line 2346
    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 2347
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mBlacklistDisabled:Z

    .line 2348
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptions:Ljava/util/List;

    goto :goto_42

    .line 2350
    :cond_28
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mBlacklistDisabled:Z

    .line 2351
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 2352
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_40

    .line 2353
    :cond_36
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_40
    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptions:Ljava/util/List;

    .line 2355
    :goto_42
    sget-object v0, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptions:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/os/ZygoteProcess;->setApiBlacklistExemptions(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 2356
    const-string v0, "ActivityManager"

    const-string v1, "Failed to set API blacklist exemptions!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mExemptions:Ljava/util/List;

    .line 2361
    :cond_59
    const-string v0, "hidden_api_policy"

    invoke-direct {p0, v0}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->getValidEnforcementPolicy(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mPolicy:I

    .line 2362
    return-void
.end method


# virtual methods
.method getPolicy()I
    .registers 2

    .line 2379
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mPolicy:I

    return v0
.end method

.method isDisabled()Z
    .registers 2

    .line 2375
    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mBlacklistDisabled:Z

    return v0
.end method

.method public onChange(Z)V
    .registers 2

    .line 2383
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->update()V

    .line 2384
    return-void
.end method

.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 5

    .line 2287
    iget v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mLogSampleRate:I

    const-string v1, "hidden_api_access_log_sampling_rate"

    invoke-virtual {p1, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2289
    iget v1, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mStatslogSampleRate:I

    const-string v2, "hidden_api_access_statslog_sampling_rate"

    invoke-virtual {p1, v2, v1}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 2291
    invoke-direct {p0, v0, p1}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->setSampleRates(II)V

    .line 2292
    return-void
.end method

.method public registerObserver()V
    .registers 4

    .line 2327
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2328
    const-string v1, "hidden_api_blacklist_exemptions"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2327
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2331
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2332
    const-string v1, "hidden_api_policy"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2331
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2335
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->initializeSampleRates()V

    .line 2336
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->mContext:Landroid/content/Context;

    .line 2337
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 2336
    const-string v1, "app_compat"

    invoke-static {v1, v0, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 2338
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->update()V

    .line 2339
    return-void
.end method
