.class public Lcom/android/server/textservices/TextServicesManagerService;
.super Lcom/android/internal/textservice/ITextServicesManager$Stub;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/textservices/TextServicesManagerService$ISpellCheckerServiceCallbackBinder;,
        Lcom/android/server/textservices/TextServicesManagerService$InternalDeathRecipients;,
        Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;,
        Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;,
        Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;,
        Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;,
        Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;,
        Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mMonitor:Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;

.field private final mSpellCheckerOwnerUserIdMap:Lcom/android/server/textservices/LazyIntToIntMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mUserData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 79
    const-class v0, Lcom/android/server/textservices/TextServicesManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 334
    invoke-direct {p0}, Lcom/android/internal/textservice/ITextServicesManager$Stub;-><init>()V

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    .line 335
    iput-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    .line 336
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    .line 337
    new-instance v0, Lcom/android/server/textservices/LazyIntToIntMap;

    new-instance v1, Lcom/android/server/textservices/-$$Lambda$TextServicesManagerService$otJ1a5fe5mYJvLrIEr3o1Ia1kSo;

    invoke-direct {v1, p0}, Lcom/android/server/textservices/-$$Lambda$TextServicesManagerService$otJ1a5fe5mYJvLrIEr3o1Ia1kSo;-><init>(Lcom/android/server/textservices/TextServicesManagerService;)V

    invoke-direct {v0, v1}, Lcom/android/server/textservices/LazyIntToIntMap;-><init>(Ljava/util/function/IntUnaryOperator;)V

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mSpellCheckerOwnerUserIdMap:Lcom/android/server/textservices/LazyIntToIntMap;

    .line 351
    new-instance v0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;-><init>(Lcom/android/server/textservices/TextServicesManagerService;Lcom/android/server/textservices/TextServicesManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mMonitor:Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;

    .line 352
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mMonitor:Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 353
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 78
    sget-object v0, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/textservices/TextServicesManagerService;)Ljava/lang/Object;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/textservices/TextServicesManagerService;)Landroid/util/SparseArray;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/textservices/TextServicesManagerService;Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;
    .registers 3

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/server/textservices/TextServicesManagerService;->findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/server/textservices/TextServicesManagerService;Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V
    .registers 3

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/server/textservices/TextServicesManagerService;->setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/textservices/TextServicesManagerService;)Landroid/content/Context;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/textservices/TextServicesManagerService;I)Landroid/view/textservice/SpellCheckerInfo;
    .registers 2

    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getCurrentSpellCheckerForUser(I)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p0

    return-object p0
.end method

.method private bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z
    .registers 7

    .line 426
    if-eqz p1, :cond_10

    if-nez p2, :cond_5

    goto :goto_10

    .line 431
    :cond_5
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p4

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    return p1

    .line 427
    :cond_10
    :goto_10
    sget-object p3, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--- bind failed: service = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", conn = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", userId ="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 p1, 0x0

    return p1
.end method

.method private findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;
    .registers 14

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 446
    invoke-static {p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1700(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_29

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textservice/SpellCheckerInfo;

    .line 447
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v2, v3

    if-eqz v2, :cond_28

    .line 448
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_28
    goto :goto_d

    .line 452
    :cond_29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 453
    if-nez p2, :cond_39

    .line 454
    sget-object p1, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "no available spell checker services found"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/4 p1, 0x0

    return-object p1

    .line 457
    :cond_39
    const/4 v1, 0x0

    if-eqz p1, :cond_53

    .line 458
    move v3, v1

    :goto_3d
    if-ge v3, p2, :cond_53

    .line 459
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/textservice/SpellCheckerInfo;

    .line 460
    invoke-virtual {v4}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 464
    return-object v4

    .line 458
    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 472
    :cond_53
    iget-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 473
    nop

    .line 474
    invoke-static {p1}, Lcom/android/server/textservices/LocaleUtils;->getSuitableLocalesForSpellChecker(Ljava/util/Locale;)Ljava/util/ArrayList;

    move-result-object p1

    .line 479
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 480
    move v4, v1

    :goto_69
    if-ge v4, v3, :cond_9e

    .line 481
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Locale;

    .line 482
    move v6, v1

    :goto_72
    if-ge v6, p2, :cond_9b

    .line 484
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/textservice/SpellCheckerInfo;

    .line 485
    invoke-virtual {v7}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v8

    .line 486
    move v9, v1

    :goto_7f
    if-ge v9, v8, :cond_98

    .line 487
    invoke-virtual {v7, v9}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v10

    .line 488
    nop

    .line 489
    invoke-virtual {v10}, Landroid/view/textservice/SpellCheckerSubtype;->getLocale()Ljava/lang/String;

    move-result-object v10

    .line 488
    invoke-static {v10}, Lcom/android/internal/inputmethod/SubtypeLocaleUtils;->constructLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v10

    .line 490
    invoke-virtual {v5, v10}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_95

    .line 494
    return-object v7

    .line 486
    :cond_95
    add-int/lit8 v9, v9, 0x1

    goto :goto_7f

    .line 483
    :cond_98
    add-int/lit8 v6, v6, 0x1

    goto :goto_72

    .line 480
    :cond_9b
    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    .line 500
    :cond_9e
    if-le p2, v2, :cond_a8

    .line 501
    sget-object p1, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "more than one spell checker service found, picking first"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_a8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/textservice/SpellCheckerInfo;

    return-object p1
.end method

.method private getCurrentSpellCheckerForUser(I)Landroid/view/textservice/SpellCheckerInfo;
    .registers 4

    .line 508
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 509
    :try_start_3
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mSpellCheckerOwnerUserIdMap:Lcom/android/server/textservices/LazyIntToIntMap;

    invoke-virtual {v1, p1}, Lcom/android/server/textservices/LazyIntToIntMap;->get(I)I

    move-result p1

    .line 510
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 511
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    monitor-exit v0

    return-object p1

    .line 512
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method private getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 793
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mSpellCheckerOwnerUserIdMap:Lcom/android/server/textservices/LazyIntToIntMap;

    invoke-virtual {v0, p1}, Lcom/android/server/textservices/LazyIntToIntMap;->get(I)I

    move-result v0

    .line 794
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 795
    sget-boolean v2, Landroid/view/inputmethod/InputMethodSystemProperty;->PER_PROFILE_IME_ENABLED:Z

    if-nez v2, :cond_2c

    .line 796
    if-eq v0, p1, :cond_2c

    .line 798
    const/4 p1, 0x0

    if-nez v1, :cond_18

    .line 799
    return-object p1

    .line 801
    :cond_18
    invoke-virtual {v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 802
    if-nez v0, :cond_1f

    .line 803
    return-object p1

    .line 805
    :cond_1f
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 806
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2c

    .line 809
    return-object p1

    .line 813
    :cond_2c
    return-object v1
.end method

.method private initializeInternalStateLocked(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 359
    sget-boolean v0, Landroid/view/inputmethod/InputMethodSystemProperty;->PER_PROFILE_IME_ENABLED:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mSpellCheckerOwnerUserIdMap:Lcom/android/server/textservices/LazyIntToIntMap;

    .line 360
    invoke-virtual {v0, p1}, Lcom/android/server/textservices/LazyIntToIntMap;->get(I)I

    move-result v0

    if-eq p1, v0, :cond_d

    .line 361
    return-void

    .line 364
    :cond_d
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 365
    if-nez v0, :cond_23

    .line 366
    new-instance v0, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;-><init>(ILandroid/content/Context;)V

    .line 367
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 370
    :cond_23
    invoke-static {v0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1100(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    .line 371
    invoke-virtual {v0}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p1

    .line 372
    if-nez p1, :cond_34

    .line 373
    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/textservices/TextServicesManagerService;->findAvailSystemSpellCheckerLocked(Ljava/lang/String;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p1

    .line 377
    invoke-direct {p0, p1, v0}, Lcom/android/server/textservices/TextServicesManagerService;->setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    .line 379
    :cond_34
    return-void
.end method

.method private setCurrentSpellCheckerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V
    .registers 5

    .line 733
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    .line 737
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 739
    :try_start_9
    invoke-virtual {p2, p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->setCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_11

    .line 741
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 742
    nop

    .line 743
    return-void

    .line 741
    :catchall_11
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method private startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;
    .registers 7

    .line 657
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 658
    new-instance v1, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;

    .line 659
    invoke-static {p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1600(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;-><init>(Lcom/android/server/textservices/TextServicesManagerService;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 660
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.textservice.SpellCheckerService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 665
    nop

    .line 666
    invoke-static {p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1900(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)I

    move-result p1

    .line 665
    const v3, 0x800001

    invoke-direct {p0, v2, v1, v3, p1}, Lcom/android/server/textservices/TextServicesManagerService;->bindCurrentSpellCheckerService(Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z

    move-result p1

    if-nez p1, :cond_32

    .line 667
    sget-object p1, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string p2, "Failed to get a spell checker service."

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const/4 p1, 0x0

    return-object p1

    .line 670
    :cond_32
    new-instance p1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-direct {p1, p0, v1}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;-><init>(Lcom/android/server/textservices/TextServicesManagerService;Lcom/android/server/textservices/TextServicesManagerService$InternalServiceConnection;)V

    .line 672
    invoke-static {p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1600(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    return-object p1
.end method

.method private unbindServiceLocked(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V
    .registers 4

    .line 435
    invoke-static {p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1600(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object p1

    .line 436
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 437
    invoke-virtual {v1}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->removeAllLocked()V

    .line 438
    goto :goto_c

    .line 439
    :cond_1c
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 440
    return-void
.end method

.method private verifyUser(I)V
    .registers 6

    .line 724
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 725
    if-eq p1, v0, :cond_26

    .line 726
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cross-user interaction requires INTERACT_ACROSS_USERS_FULL. userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " callingUserId="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :cond_26
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 747
    iget-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 749
    :cond_b
    array-length p1, p3

    const/4 v0, 0x0

    if-eqz p1, :cond_80

    array-length p1, p3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1e

    aget-object p1, p3, v0

    const-string v2, "-a"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_80

    .line 761
    :cond_1e
    array-length p1, p3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_7a

    aget-object p1, p3, v0

    const-string v0, "--user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    goto :goto_7a

    .line 765
    :cond_2d
    aget-object p1, p3, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 766
    iget-object p3, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p3

    .line 767
    if-nez p3, :cond_41

    .line 768
    const-string p1, "Non-existent user."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 769
    return-void

    .line 771
    :cond_41
    iget-object p3, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 772
    if-nez p3, :cond_51

    .line 773
    const-string p1, "User needs to unlock first."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 774
    return-void

    .line 776
    :cond_51
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 777
    :try_start_54
    const-string v1, "Current Text Services Manager state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  User "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 779
    invoke-static {p3, p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$2000(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;Ljava/io/PrintWriter;)V

    .line 780
    monitor-exit v0

    goto :goto_a5

    :catchall_77
    move-exception p1

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_54 .. :try_end_79} :catchall_77

    throw p1

    .line 762
    :cond_7a
    :goto_7a
    const-string p1, "Invalid arguments to text services."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 763
    return-void

    .line 751
    :cond_80
    :goto_80
    iget-object p1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 752
    :try_start_83
    const-string p3, "Current Text Services Manager state:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 753
    const-string p3, "  Users:"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 754
    iget-object p3, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 755
    nop

    :goto_94
    if-ge v0, p3, :cond_a4

    .line 756
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 757
    invoke-static {v1, p2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$2000(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;Ljava/io/PrintWriter;)V

    .line 755
    add-int/lit8 v0, v0, 0x1

    goto :goto_94

    .line 759
    :cond_a4
    monitor-exit p1

    .line 783
    :goto_a5
    return-void

    .line 759
    :catchall_a6
    move-exception p2

    monitor-exit p1
    :try_end_a8
    .catchall {:try_start_83 .. :try_end_a8} :catchall_a6

    throw p2
.end method

.method public finishSpellCheckerService(ILcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .registers 7

    .line 702
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 704
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 705
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object p1

    .line 706
    if-nez p1, :cond_e

    monitor-exit v0

    return-void

    .line 708
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 709
    nop

    .line 710
    invoke-static {p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1600(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object p1

    .line 711
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 712
    if-nez v2, :cond_2f

    goto :goto_20

    .line 714
    :cond_2f
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    goto :goto_20

    .line 716
    :cond_33
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 717
    const/4 v2, 0x0

    :goto_38
    if-ge v2, p1, :cond_46

    .line 718
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    invoke-virtual {v3, p2}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->removeListener(Lcom/android/internal/textservice/ISpellCheckerSessionListener;)V

    .line 717
    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    .line 720
    :cond_46
    monitor-exit v0

    .line 721
    return-void

    .line 720
    :catchall_48
    move-exception p1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_6 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method public getCurrentSpellChecker(ILjava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .registers 3

    .line 519
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 520
    iget-object p2, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 521
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object p1

    .line 522
    if-nez p1, :cond_f

    const/4 p1, 0x0

    monitor-exit p2

    return-object p1

    .line 524
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p1

    monitor-exit p2

    return-object p1

    .line 525
    :catchall_15
    move-exception p1

    monitor-exit p2
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public getCurrentSpellCheckerSubtype(IZ)Landroid/view/textservice/SpellCheckerSubtype;
    .registers 8

    .line 533
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 539
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 540
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object p1

    .line 541
    const/4 v1, 0x0

    if-nez p1, :cond_f

    monitor-exit v0

    return-object v1

    .line 543
    :cond_f
    nop

    .line 544
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getSelectedSpellCheckerSubtype(I)I

    move-result v3

    .line 548
    invoke-virtual {p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p1

    .line 549
    iget-object v4, p0, Lcom/android/server/textservices/TextServicesManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 550
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_7e

    .line 551
    if-eqz p1, :cond_7d

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_7d

    .line 557
    :cond_2f
    if-nez v3, :cond_34

    if-nez p2, :cond_34

    .line 559
    return-object v1

    .line 562
    :cond_34
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result p2

    .line 563
    if-eqz v3, :cond_4c

    .line 565
    nop

    :goto_3b
    if-ge v2, p2, :cond_4b

    .line 566
    invoke-virtual {p1, v2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSubtype;->hashCode()I

    move-result v4

    if-ne v4, v3, :cond_48

    .line 568
    return-object v0

    .line 565
    :cond_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 571
    :cond_4b
    return-object v1

    .line 576
    :cond_4c
    if-nez v4, :cond_4f

    .line 577
    return-object v1

    .line 579
    :cond_4f
    nop

    .line 580
    nop

    :goto_51
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result p2

    if-ge v2, p2, :cond_7c

    .line 581
    invoke-virtual {p1, v2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object p2

    .line 582
    invoke-virtual {p2}, Landroid/view/textservice/SpellCheckerSubtype;->getLocaleObject()Ljava/util/Locale;

    move-result-object v0

    .line 583
    invoke-static {v0, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 585
    return-object p2

    .line 587
    :cond_66
    if-nez v1, :cond_79

    if-eqz v0, :cond_79

    .line 588
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 590
    move-object v1, p2

    .line 580
    :cond_79
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 593
    :cond_7c
    return-object v1

    .line 555
    :cond_7d
    :goto_7d
    return-object v1

    .line 550
    :catchall_7e
    move-exception p1

    :try_start_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw p1
.end method

.method public getEnabledSpellCheckers(I)[Landroid/view/textservice/SpellCheckerInfo;
    .registers 4

    .line 678
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 680
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 681
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object p1

    .line 682
    if-nez p1, :cond_f

    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 684
    :cond_f
    invoke-static {p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1700(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/ArrayList;

    move-result-object p1

    .line 692
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/view/textservice/SpellCheckerInfo;

    monitor-exit v0

    return-object p1

    .line 693
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public getSpellCheckerService(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V
    .registers 15

    .line 600
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 601
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_63

    if-eqz p4, :cond_63

    if-nez p5, :cond_e

    goto :goto_63

    .line 606
    :cond_e
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 607
    :try_start_11
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object p1

    .line 608
    if-nez p1, :cond_19

    monitor-exit v0

    return-void

    .line 610
    :cond_19
    invoke-static {p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1800(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v1

    .line 611
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 612
    monitor-exit v0

    return-void

    .line 614
    :cond_25
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textservice/SpellCheckerInfo;

    .line 615
    nop

    .line 616
    invoke-static {p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->access$1600(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Ljava/util/HashMap;

    move-result-object v2

    .line 617
    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    .line 618
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 619
    if-nez p2, :cond_51

    .line 620
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_40
    .catchall {:try_start_11 .. :try_end_40} :catchall_60

    .line 622
    :try_start_40
    invoke-direct {p0, v1, p1}, Lcom/android/server/textservices/TextServicesManagerService;->startSpellCheckerServiceInnerLocked(Landroid/view/textservice/SpellCheckerInfo;Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;

    move-result-object p2
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_4c

    .line 624
    :try_start_44
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 625
    nop

    .line 626
    if-nez p2, :cond_51

    .line 628
    monitor-exit v0

    return-void

    .line 624
    :catchall_4c
    move-exception p1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 634
    :cond_51
    new-instance p1, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;-><init>(ILjava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;)V

    invoke-virtual {p2, p1}, Lcom/android/server/textservices/TextServicesManagerService$SpellCheckerBindGroup;->getISpellCheckerSessionOrQueueLocked(Lcom/android/server/textservices/TextServicesManagerService$SessionRequest;)V

    .line 636
    monitor-exit v0

    .line 637
    return-void

    .line 636
    :catchall_60
    move-exception p1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_44 .. :try_end_62} :catchall_60

    throw p1

    .line 602
    :cond_63
    :goto_63
    sget-object p1, Lcom/android/server/textservices/TextServicesManagerService;->TAG:Ljava/lang/String;

    const-string p2, "getSpellCheckerService: Invalid input."

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    return-void
.end method

.method public isSpellCheckerEnabled(I)Z
    .registers 3

    .line 641
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->verifyUser(I)V

    .line 643
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 644
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->getDataFromCallingUserIdLocked(I)Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    move-result-object p1

    .line 645
    if-nez p1, :cond_f

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 647
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;->isSpellCheckerEnabled()Z

    move-result p1

    monitor-exit v0

    return p1

    .line 648
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_6 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public synthetic lambda$new$0$TextServicesManagerService(I)I
    .registers 5

    .line 338
    sget-boolean v0, Landroid/view/inputmethod/InputMethodSystemProperty;->PER_PROFILE_IME_ENABLED:Z

    if-nez v0, :cond_1b

    .line 339
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 341
    :try_start_8
    iget-object v2, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 342
    if-eqz v2, :cond_12

    iget p1, v2, Landroid/content/pm/UserInfo;->id:I
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    .line 344
    :cond_12
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 342
    return p1

    .line 344
    :catchall_16
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 347
    :cond_1b
    return p1
.end method

.method onStopUser(I)V
    .registers 4

    .line 314
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 316
    :try_start_3
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mSpellCheckerOwnerUserIdMap:Lcom/android/server/textservices/LazyIntToIntMap;

    invoke-virtual {v1, p1}, Lcom/android/server/textservices/LazyIntToIntMap;->delete(I)V

    .line 319
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;

    .line 320
    if-nez v1, :cond_14

    monitor-exit v0

    return-void

    .line 322
    :cond_14
    invoke-direct {p0, v1}, Lcom/android/server/textservices/TextServicesManagerService;->unbindServiceLocked(Lcom/android/server/textservices/TextServicesManagerService$TextServicesData;)V

    .line 323
    iget-object v1, p0, Lcom/android/server/textservices/TextServicesManagerService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 324
    monitor-exit v0

    .line 325
    return-void

    .line 324
    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method onUnlockUser(I)V
    .registers 3

    .line 328
    iget-object v0, p0, Lcom/android/server/textservices/TextServicesManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/textservices/TextServicesManagerService;->initializeInternalStateLocked(I)V

    .line 331
    monitor-exit v0

    .line 332
    return-void

    .line 331
    :catchall_8
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p1
.end method
