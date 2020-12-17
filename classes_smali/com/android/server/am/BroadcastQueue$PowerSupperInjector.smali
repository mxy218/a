.class public Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PowerSupperInjector"
.end annotation


# static fields
.field public static final POWER_MODE_STANDARD:I = 0x2

.field public static final POWER_MODE_SUPPER:I = 0x3

.field public static final POWER_MODE_SYSTEM:I = 0x0

.field public static final POWER_MODE_USER_DEFINE:I = 0x1

.field private static appSupperBlackSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static appSupperSystemSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 2427
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperBlackSet:Ljava/util/Set;

    .line 2428
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperSystemSet:Ljava/util/Set;

    .line 2436
    sget-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperBlackSet:Ljava/util/Set;

    const-string v1, "com.meizu.media.music"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2437
    sget-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperBlackSet:Ljava/util/Set;

    const-string v1, "com.meizu.media.video"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2438
    sget-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperSystemSet:Ljava/util/Set;

    const-string v1, "com.android.launcher3"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2439
    sget-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperSystemSet:Ljava/util/Set;

    const-string v1, "com.android.dialer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2440
    sget-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperSystemSet:Ljava/util/Set;

    const-string v1, "com.android.phone"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2441
    sget-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperSystemSet:Ljava/util/Set;

    const-string v1, "com.android.mms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2442
    sget-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperSystemSet:Ljava/util/Set;

    const-string v1, "com.meizu.powersave"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2443
    sget-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperSystemSet:Ljava/util/Set;

    const-string v1, "com.meizu.power"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2444
    sget-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperSystemSet:Ljava/util/Set;

    const-string v1, "com.android.providers.media"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2445
    sget-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperSystemSet:Ljava/util/Set;

    const-string v1, "com.meizu.safe"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2446
    sget-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperSystemSet:Ljava/util/Set;

    const-string v1, "com.android.alarmclock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2447
    sget-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperSystemSet:Ljava/util/Set;

    const-string v1, "com.android.settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2448
    sget-object v0, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperSystemSet:Ljava/util/Set;

    const-string v1, "android"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2449
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 2426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCurrentInputMethod()Ljava/lang/String;
    .registers 6

    .line 2505
    const-string v0, ""

    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 2506
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_9

    .line 2507
    return-object v0

    .line 2508
    :cond_9
    move-object v2, v0

    .line 2509
    .local v2, "pkg":Ljava/lang/String;
    nop

    .line 2510
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "default_input_method"

    .line 2509
    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2511
    .local v3, "currentInputMethodId":Ljava/lang/String;
    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2c

    .line 2512
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2513
    .local v4, "methodId":[Ljava/lang/String;
    if-eqz v4, :cond_2c

    array-length v5, v4

    if-lez v5, :cond_2c

    .line 2514
    const/4 v5, 0x0

    aget-object v0, v4, v5
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_2d

    move-object v2, v0

    .line 2517
    .end local v4  # "methodId":[Ljava/lang/String;
    :cond_2c
    return-object v2

    .line 2518
    .end local v1  # "context":Landroid/content/Context;
    .end local v2  # "pkg":Ljava/lang/String;
    .end local v3  # "currentInputMethodId":Ljava/lang/String;
    :catch_2d
    move-exception v1

    .line 2519
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BroadcastQueue"

    const-string v3, " exception "

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2521
    return-object v0
.end method

.method public static interceptForSupperModePermissionControl(Ljava/lang/String;)Z
    .registers 8
    .param p0, "packageName"  # Ljava/lang/String;

    .line 2453
    const-string v0, "BroadcastQueue"

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 2454
    .local v1, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .line 2457
    .local v2, "powerMode":I
    const/4 v3, 0x0

    :try_start_8
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "mz_current_power_mode"

    const/4 v6, -0x2

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_16

    move v2, v4

    .line 2463
    goto :goto_1f

    .line 2460
    :catch_16
    move-exception v4

    .line 2461
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, " exception "

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 2465
    .end local v4  # "e":Ljava/lang/Exception;
    :goto_1f
    const/4 v4, 0x3

    if-ne v4, v2, :cond_4c

    .line 2466
    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->isPowerSupperPermit(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 2467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "powerMode is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not allowed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    const/4 v0, 0x1

    return v0

    .line 2470
    :cond_4c
    return v3
.end method

.method private static isFlagSystem(Ljava/lang/String;)Z
    .registers 6
    .param p0, "packageName"  # Ljava/lang/String;

    .line 2528
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    .line 2529
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_8

    .line 2530
    return v0

    .line 2532
    :cond_8
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 2534
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_1f

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v4, 0x1

    and-int/2addr v3, v4

    if-nez v3, :cond_1e

    iget v3, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_20

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1f

    .line 2536
    :cond_1e
    return v4

    .line 2538
    :cond_1f
    return v0

    .line 2540
    .end local v1  # "context":Landroid/content/Context;
    .end local v2  # "info":Landroid/content/pm/ApplicationInfo;
    :catch_20
    move-exception v1

    .line 2541
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "BroadcastQueue"

    const-string v3, " exception "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2542
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2543
    return v0
.end method

.method private static isImportantUserApp(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"  # Ljava/lang/String;

    .line 2496
    invoke-static {}, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->getCurrentInputMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2497
    const/4 v0, 0x1

    return v0

    .line 2499
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private static isPowerSupperPermit(Ljava/lang/String;)Z
    .registers 4
    .param p0, "packageName"  # Ljava/lang/String;

    .line 2475
    const/4 v0, 0x0

    if-eqz p0, :cond_2a

    const-string v1, ""

    if-ne p0, v1, :cond_8

    goto :goto_2a

    .line 2477
    :cond_8
    sget-object v1, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperBlackSet:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2478
    return v0

    .line 2481
    :cond_11
    sget-object v1, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->appSupperSystemSet:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    .line 2482
    return v2

    .line 2484
    :cond_1b
    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->isFlagSystem(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 2485
    return v2

    .line 2488
    :cond_22
    invoke-static {p0}, Lcom/android/server/am/BroadcastQueue$PowerSupperInjector;->isImportantUserApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2489
    return v2

    .line 2492
    :cond_29
    return v0

    .line 2476
    :cond_2a
    :goto_2a
    return v0
.end method
