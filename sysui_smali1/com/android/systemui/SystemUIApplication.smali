.class public Lcom/android/systemui/SystemUIApplication;
.super Landroid/app/Application;
.source "SystemUIApplication.java"

# interfaces
.implements Lcom/android/systemui/SysUiServiceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SystemUIApplication$ContextAvailableCallback;
    }
.end annotation


# instance fields
.field private mBootCompleted:Z

.field private final mComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mContextAvailableCallback:Lcom/android/systemui/SystemUIApplication$ContextAvailableCallback;

.field private mServices:[Lcom/android/systemui/SystemUI;

.field private mServicesStarted:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    const-string p0, "SystemUIService"

    const-string v0, "SystemUIApplication constructed."

    .line 75
    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/SystemUIApplication;)Z
    .registers 1

    .line 59
    iget-boolean p0, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/SystemUIApplication;Z)Z
    .registers 2

    .line 59
    iput-boolean p1, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/SystemUIApplication;)Z
    .registers 1

    .line 59
    iget-boolean p0, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/SystemUIApplication;)[Lcom/android/systemui/SystemUI;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    return-object p0
.end method

.method private startServicesIfNeeded([Ljava/lang/String;)V
    .registers 14

    .line 194
    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v0, :cond_5

    return-void

    .line 197
    :cond_5
    array-length v0, p1

    new-array v0, v0, [Lcom/android/systemui/SystemUI;

    iput-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    .line 199
    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_20

    const-string/jumbo v0, "sys.boot_completed"

    .line 202
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 203
    iput-boolean v1, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    .line 210
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting SystemUI services for user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SystemUIService"

    .line 210
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v0, Landroid/util/TimingsTraceLog;

    const-wide/16 v3, 0x1000

    const-string v5, "SystemUIBootTiming"

    invoke-direct {v0, v5, v3, v4}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string v3, "StartServices"

    .line 214
    invoke-virtual {v0, v3}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 215
    array-length v4, p1

    const/4 v5, 0x0

    :goto_53
    if-ge v5, v4, :cond_ed

    .line 217
    aget-object v6, p1, v5

    .line 219
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 223
    :try_start_6d
    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 224
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    .line 225
    instance-of v10, v9, Lcom/android/systemui/SystemUI$Injector;

    if-eqz v10, :cond_7f

    .line 226
    check-cast v9, Lcom/android/systemui/SystemUI$Injector;

    invoke-interface {v9, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 228
    :cond_7f
    iget-object v10, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    check-cast v9, Lcom/android/systemui/SystemUI;

    aput-object v9, v10, v5
    :try_end_85
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6d .. :try_end_85} :catch_e6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6d .. :try_end_85} :catch_df
    .catch Ljava/lang/InstantiationException; {:try_start_6d .. :try_end_85} :catch_d8

    .line 237
    iget-object v9, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v10, v9, v5

    iput-object p0, v10, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 238
    aget-object v10, v9, v5

    iget-object v11, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    iput-object v11, v10, Lcom/android/systemui/SystemUI;->mComponents:Ljava/util/Map;

    .line 240
    aget-object v9, v9, v5

    invoke-virtual {v9}, Lcom/android/systemui/SystemUI;->start()V

    .line 241
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 244
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v7

    const-wide/16 v7, 0x3e8

    cmp-long v7, v9, v7

    if-lez v7, :cond_c9

    .line 246
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Initialization of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " took "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_c9
    iget-boolean v6, p0, Lcom/android/systemui/SystemUIApplication;->mBootCompleted:Z

    if-eqz v6, :cond_d4

    .line 249
    iget-object v6, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lcom/android/systemui/SystemUI;->onBootCompleted()V

    :cond_d4
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_53

    :catch_d8
    move-exception p0

    .line 234
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_df
    move-exception p0

    .line 232
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_e6
    move-exception p0

    .line 230
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 252
    :cond_ed
    const-class p1, Lcom/android/systemui/InitController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/InitController;

    invoke-virtual {p1}, Lcom/android/systemui/InitController;->executePostInitTasks()V

    .line 253
    invoke-virtual {v0}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 254
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 255
    const-class v0, Lcom/android/systemui/shared/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/plugins/PluginManager;

    new-instance v2, Lcom/android/systemui/SystemUIApplication$3;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/SystemUIApplication$3;-><init>(Lcom/android/systemui/SystemUIApplication;Landroid/os/Handler;)V

    const-class p1, Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-interface {v0, v2, p1, v1}, Lcom/android/systemui/shared/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 314
    iput-boolean v1, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    return-void
.end method


# virtual methods
.method public getComponent(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 332
    iget-object p0, p0, Lcom/android/systemui/SystemUIApplication;->mComponents:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getServices()[Lcom/android/systemui/SystemUI;
    .registers 1

    .line 336
    iget-object p0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    .line 319
    iget-boolean v0, p0, Lcom/android/systemui/SystemUIApplication;->mServicesStarted:Z

    if-eqz v0, :cond_1b

    .line 320
    invoke-static {p1}, Lcom/android/systemui/Dependency;->staticOnConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 321
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1b

    .line 323
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mServices:[Lcom/android/systemui/SystemUI;

    aget-object v3, v2, v1

    if-eqz v3, :cond_18

    .line 324
    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public onCreate()V
    .registers 9

    .line 80
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, "SystemUIService"

    const-string v1, "SystemUIApplication created."

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v1, Landroid/util/TimingsTraceLog;

    const-string v2, "SystemUIBootTiming"

    const-wide/16 v3, 0x1000

    invoke-direct {v1, v2, v3, v4}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    const-string v2, "DependencyInjection"

    .line 86
    invoke-virtual {v1, v2}, Landroid/util/TimingsTraceLog;->traceBegin(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/android/systemui/SystemUIApplication;->mContextAvailableCallback:Lcom/android/systemui/SystemUIApplication$ContextAvailableCallback;

    invoke-interface {v2, p0}, Lcom/android/systemui/SystemUIApplication$ContextAvailableCallback;->onContextAvailable(Landroid/content/Context;)V

    .line 88
    invoke-virtual {v1}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 92
    sget-object v1, Lcom/meizu/statsapp/v3/PkgType;->APP:Lcom/meizu/statsapp/v3/PkgType;

    const-string v2, "0C7YB28O626MCIFS0NDG5O4Y"

    invoke-static {p0, v1, v2}, Lcom/meizu/statsapp/v3/USPMultiProcess3;->init(Landroid/app/Application;Lcom/meizu/statsapp/v3/PkgType;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "wellcome_page_version"

    invoke-static {v1, v3, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 95
    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "flyme_version_setting_up"

    invoke-static {v3, v4, v2, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const-string v3, "ro.vendor.meizu.customize.demo"

    const-string v4, "false"

    .line 98
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 101
    :try_start_4c
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.flyme.systemuitools"

    const-string v6, "com.flyme.systemuitools.wellcomepage.WellcomePage"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x1

    if-nez v3, :cond_75

    const/4 v3, 0x4

    if-ne v1, v3, :cond_61

    if-eqz v2, :cond_75

    .line 103
    :cond_61
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v7

    if-eqz v7, :cond_68

    goto :goto_75

    :cond_68
    if-ne v1, v3, :cond_6c

    if-ne v2, v6, :cond_83

    .line 107
    :cond_6c
    invoke-virtual {v5, v4, v6, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const-string v1, "enable app"

    .line 108
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_83

    :cond_75
    :goto_75
    const/4 v1, 0x2

    .line 104
    invoke-virtual {v5, v4, v1, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const-string v1, "disable app"

    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7e
    .catchall {:try_start_4c .. :try_end_7e} :catchall_7f

    goto :goto_83

    :catchall_7f
    move-exception v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    :cond_83
    :goto_83
    sget v0, Lcom/android/systemui/R$style;->Theme_SystemUI:I

    invoke-virtual {p0, v0}, Landroid/app/Application;->setTheme(I)V

    .line 120
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 121
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    .line 122
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 123
    new-instance v1, Lcom/android/systemui/SystemUIApplication$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/SystemUIApplication$1;-><init>(Lcom/android/systemui/SystemUIApplication;)V

    invoke-virtual {p0, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 143
    new-instance v1, Lcom/android/systemui/SystemUIApplication$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/SystemUIApplication$2;-><init>(Lcom/android/systemui/SystemUIApplication;)V

    invoke-virtual {p0, v1, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_df

    .line 156
    :cond_b8
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v0, :cond_dc

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dc

    return-void

    .line 165
    :cond_dc
    invoke-virtual {p0}, Lcom/android/systemui/SystemUIApplication;->startSecondaryUserServicesIfNeeded()V

    :goto_df
    return-void
.end method

.method setContextAvailableCallback(Lcom/android/systemui/SystemUIApplication$ContextAvailableCallback;)V
    .registers 2

    .line 340
    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication;->mContextAvailableCallback:Lcom/android/systemui/SystemUIApplication$ContextAvailableCallback;

    return-void
.end method

.method startSecondaryUserServicesIfNeeded()V
    .registers 3

    .line 189
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$array;->config_systemUIServiceComponentsPerUser:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-direct {p0, v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded([Ljava/lang/String;)V

    return-void
.end method

.method public startServicesIfNeeded()V
    .registers 3

    .line 177
    invoke-virtual {p0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$array;->config_systemUIServiceComponents:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-direct {p0, v0}, Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded([Ljava/lang/String;)V

    return-void
.end method
