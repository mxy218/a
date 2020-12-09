.class public Lcom/android/server/backup/TransportManager;
.super Ljava/lang/Object;
.source "TransportManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/TransportManager$TransportDescription;
    }
.end annotation


# static fields
.field public static final SERVICE_ACTION_TRANSPORT_HOST:Ljava/lang/String; = "android.backup.TRANSPORT_HOST"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BackupTransportManager"


# instance fields
.field private volatile mCurrentTransportName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTransportLock"
        }
    .end annotation
.end field

.field private mOnTransportRegisteredListener:Lcom/android/server/backup/transport/OnTransportRegisteredListener;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mRegisteredTransportsDescriptionMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTransportLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/backup/TransportManager$TransportDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransportClientManager:Lcom/android/server/backup/transport/TransportClientManager;

.field private final mTransportLock:Ljava/lang/Object;

.field private final mTransportServiceIntent:Landroid/content/Intent;

.field private final mTransportStats:Lcom/android/server/backup/transport/TransportStats;

.field private final mTransportWhitelist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method constructor <init>(ILandroid/content/Context;Ljava/util/Set;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.backup.TRANSPORT_HOST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportServiceIntent:Landroid/content/Intent;

    .line 69
    sget-object v0, Lcom/android/server/backup/-$$Lambda$TransportManager$Z9ckpFUW2V4jkdHnyXIEiLuAoBc;->INSTANCE:Lcom/android/server/backup/-$$Lambda$TransportManager$Z9ckpFUW2V4jkdHnyXIEiLuAoBc;

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mOnTransportRegisteredListener:Lcom/android/server/backup/transport/OnTransportRegisteredListener;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    .line 81
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 91
    iput p1, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    .line 92
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 93
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/backup/TransportManager;->mTransportWhitelist:Ljava/util/Set;

    .line 94
    iput-object p4, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 95
    new-instance p1, Lcom/android/server/backup/transport/TransportStats;

    invoke-direct {p1}, Lcom/android/server/backup/transport/TransportStats;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/TransportManager;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    .line 96
    new-instance p1, Lcom/android/server/backup/transport/TransportClientManager;

    iget p3, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    iget-object p4, p0, Lcom/android/server/backup/TransportManager;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    invoke-direct {p1, p3, p2, p4}, Lcom/android/server/backup/transport/TransportClientManager;-><init>(ILandroid/content/Context;Lcom/android/server/backup/transport/TransportStats;)V

    iput-object p1, p0, Lcom/android/server/backup/TransportManager;->mTransportClientManager:Lcom/android/server/backup/transport/TransportClientManager;

    .line 97
    return-void
.end method

.method constructor <init>(ILandroid/content/Context;Ljava/util/Set;Ljava/lang/String;Lcom/android/server/backup/transport/TransportClientManager;)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/transport/TransportClientManager;",
            ")V"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.backup.TRANSPORT_HOST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportServiceIntent:Landroid/content/Intent;

    .line 69
    sget-object v0, Lcom/android/server/backup/-$$Lambda$TransportManager$Z9ckpFUW2V4jkdHnyXIEiLuAoBc;->INSTANCE:Lcom/android/server/backup/-$$Lambda$TransportManager$Z9ckpFUW2V4jkdHnyXIEiLuAoBc;

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mOnTransportRegisteredListener:Lcom/android/server/backup/transport/OnTransportRegisteredListener;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    .line 81
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 106
    iput p1, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    .line 107
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 108
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/android/server/backup/TransportManager;->mTransportWhitelist:Ljava/util/Set;

    .line 109
    iput-object p4, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 110
    new-instance p1, Lcom/android/server/backup/transport/TransportStats;

    invoke-direct {p1}, Lcom/android/server/backup/transport/TransportStats;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/TransportManager;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    .line 111
    iput-object p5, p0, Lcom/android/server/backup/TransportManager;->mTransportClientManager:Lcom/android/server/backup/transport/TransportClientManager;

    .line 112
    return-void
.end method

.method private checkCanUseTransport()V
    .registers 3

    .line 688
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    .line 689
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 688
    const-string v1, "Can\'t call transport with transport lock held"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 690
    return-void
.end method

.method private static fromPackageFilter(Ljava/lang/String;)Ljava/util/function/Predicate;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/function/Predicate<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 701
    new-instance v0, Lcom/android/server/backup/-$$Lambda$TransportManager$_dxJobf45tWiMkaNlKY-z26kB2Q;

    invoke-direct {v0, p0}, Lcom/android/server/backup/-$$Lambda$TransportManager$_dxJobf45tWiMkaNlKY-z26kB2Q;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private getRegisteredTransportComponentLocked(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTransportLock"
        }
    .end annotation

    .line 381
    nop

    .line 382
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportEntryLocked(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object p1

    .line 383
    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_f

    :cond_9
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    :goto_f
    return-object p1
.end method

.method private getRegisteredTransportComponentOrThrowLocked(Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTransportLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 350
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportComponentLocked(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 351
    if-eqz v0, :cond_7

    .line 354
    return-object v0

    .line 352
    :cond_7
    new-instance v0, Lcom/android/server/backup/transport/TransportNotRegisteredException;

    invoke-direct {v0, p1}, Lcom/android/server/backup/transport/TransportNotRegisteredException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getRegisteredTransportDescriptionLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTransportLock"
        }
    .end annotation

    .line 389
    nop

    .line 390
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportEntryLocked(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object p1

    .line 391
    if-nez p1, :cond_9

    const/4 p1, 0x0

    goto :goto_f

    :cond_9
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/backup/TransportManager$TransportDescription;

    :goto_f
    return-object p1
.end method

.method private getRegisteredTransportDescriptionOrThrowLocked(Landroid/content/ComponentName;)Lcom/android/server/backup/TransportManager$TransportDescription;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTransportLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 361
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 362
    if-eqz v0, :cond_b

    .line 365
    return-object v0

    .line 363
    :cond_b
    new-instance v0, Lcom/android/server/backup/transport/TransportNotRegisteredException;

    invoke-direct {v0, p1}, Lcom/android/server/backup/transport/TransportNotRegisteredException;-><init>(Landroid/content/ComponentName;)V

    throw v0
.end method

.method private getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTransportLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 371
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object v0

    .line 372
    if-eqz v0, :cond_7

    .line 375
    return-object v0

    .line 373
    :cond_7
    new-instance v0, Lcom/android/server/backup/transport/TransportNotRegisteredException;

    invoke-direct {v0, p1}, Lcom/android/server/backup/transport/TransportNotRegisteredException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getRegisteredTransportEntryLocked(Ljava/lang/String;)Ljava/util/Map$Entry;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTransportLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map$Entry<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/backup/TransportManager$TransportDescription;",
            ">;"
        }
    .end annotation

    .line 399
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 400
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 401
    invoke-static {v2}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$000(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 402
    return-object v1

    .line 404
    :cond_27
    goto :goto_a

    .line 405
    :cond_28
    const/4 p1, 0x0

    return-object p1
.end method

.method private isTransportTrusted(Landroid/content/ComponentName;)Z
    .registers 7

    .line 595
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportWhitelist:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "BackupTransportManager"

    const/4 v2, 0x0

    if-nez v0, :cond_29

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BackupTransport "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not whitelisted."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 596
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    return v2

    .line 602
    :cond_29
    :try_start_29
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 603
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 604
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_5b

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transport package "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not privileged"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_29 .. :try_end_5a} :catch_5e

    .line 607
    return v2

    .line 612
    :cond_5b
    nop

    .line 613
    const/4 p1, 0x1

    return p1

    .line 609
    :catch_5e
    move-exception p1

    .line 610
    const-string v0, "Package not found."

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 611
    return v2
.end method

.method static synthetic lambda$fromPackageFilter$3(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .registers 2

    .line 701
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$new$0(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 69
    return-void
.end method

.method static synthetic lambda$onPackageAdded$1(Landroid/content/ComponentName;)Z
    .registers 1

    .line 121
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$registerTransports$2(Landroid/content/ComponentName;)Z
    .registers 1

    .line 558
    const/4 p0, 0x1

    return p0
.end method

.method private registerTransport(Landroid/content/ComponentName;)I
    .registers 11

    .line 627
    const-string v0, "Transport "

    const-string v1, "BackupTransportManager"

    invoke-direct {p0}, Lcom/android/server/backup/TransportManager;->checkCanUseTransport()V

    .line 629
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->isTransportTrusted(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 630
    const/4 p1, -0x2

    return p1

    .line 633
    :cond_f
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    .line 634
    const-string v3, "TransportManager.registerTransport()"

    .line 636
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 637
    const/4 v5, 0x1

    const-string v6, "android.app.backup.extra.TRANSPORT_REGISTRATION"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 639
    iget-object v5, p0, Lcom/android/server/backup/TransportManager;->mTransportClientManager:Lcom/android/server/backup/transport/TransportClientManager;

    .line 640
    invoke-virtual {v5, p1, v4, v3}, Lcom/android/server/backup/transport/TransportClientManager;->getTransportClient(Landroid/content/ComponentName;Landroid/os/Bundle;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object v4

    .line 644
    const/4 v5, -0x1

    :try_start_27
    invoke-virtual {v4, v3}, Lcom/android/server/backup/transport/TransportClient;->connectOrThrow(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v6
    :try_end_2b
    .catch Lcom/android/server/backup/transport/TransportNotAvailableException; {:try_start_27 .. :try_end_2b} :catch_74

    .line 649
    nop

    .line 653
    :try_start_2c
    invoke-interface {v6}, Lcom/android/internal/backup/IBackupTransport;->name()Ljava/lang/String;

    move-result-object v7

    .line 654
    invoke-interface {v6}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v8

    .line 655
    invoke-direct {p0, p1, v6}, Lcom/android/server/backup/TransportManager;->registerTransport(Landroid/content/ComponentName;Lcom/android/internal/backup/IBackupTransport;)V

    .line 657
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " registered"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object p1, p0, Lcom/android/server/backup/TransportManager;->mOnTransportRegisteredListener:Lcom/android/server/backup/transport/OnTransportRegisteredListener;

    invoke-interface {p1, v7, v8}, Lcom/android/server/backup/transport/OnTransportRegisteredListener;->onTransportRegistered(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_53} :catch_55

    .line 659
    const/4 v5, 0x0

    .line 663
    goto :goto_6e

    .line 660
    :catch_55
    move-exception p1

    .line 661
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " died while registering"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    nop

    .line 665
    :goto_6e
    iget-object p1, p0, Lcom/android/server/backup/TransportManager;->mTransportClientManager:Lcom/android/server/backup/transport/TransportClientManager;

    invoke-virtual {p1, v4, v3}, Lcom/android/server/backup/transport/TransportClientManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 666
    return v5

    .line 645
    :catch_74
    move-exception p1

    .line 646
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t connect to transport "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for registration"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object p1, p0, Lcom/android/server/backup/TransportManager;->mTransportClientManager:Lcom/android/server/backup/transport/TransportClientManager;

    invoke-virtual {p1, v4, v3}, Lcom/android/server/backup/transport/TransportClientManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 648
    return v5
.end method

.method private registerTransport(Landroid/content/ComponentName;Lcom/android/internal/backup/IBackupTransport;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 672
    invoke-direct {p0}, Lcom/android/server/backup/TransportManager;->checkCanUseTransport()V

    .line 674
    new-instance v8, Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 676
    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->name()Ljava/lang/String;

    move-result-object v1

    .line 677
    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v2

    .line 678
    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->configurationIntent()Landroid/content/Intent;

    move-result-object v3

    .line 679
    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->currentDestinationString()Ljava/lang/String;

    move-result-object v4

    .line 680
    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->dataManagementIntent()Landroid/content/Intent;

    move-result-object v5

    .line 681
    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->dataManagementIntentLabel()Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/backup/TransportManager$TransportDescription;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;Lcom/android/server/backup/TransportManager$1;)V

    .line 682
    iget-object p2, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter p2

    .line 683
    :try_start_25
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {v0, p1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    monitor-exit p2

    .line 685
    return-void

    .line 684
    :catchall_2c
    move-exception p1

    monitor-exit p2
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method private registerTransportsForIntent(Landroid/content/Intent;Ljava/util/function/Predicate;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 579
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    .line 580
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    .line 581
    if-nez p1, :cond_c

    .line 582
    return-void

    .line 584
    :cond_c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_10
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 585
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 586
    invoke-interface {p2, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 587
    invoke-direct {p0, v0}, Lcom/android/server/backup/TransportManager;->isTransportTrusted(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 588
    invoke-direct {p0, v0}, Lcom/android/server/backup/TransportManager;->registerTransport(Landroid/content/ComponentName;)I

    .line 590
    :cond_31
    goto :goto_10

    .line 591
    :cond_32
    return-void
.end method

.method private registerTransportsFromPackage(Ljava/lang/String;Ljava/util/function/Predicate;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/backup/TransportManager;->mUserId:I

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_8} :catch_20

    .line 569
    nop

    .line 571
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mTransportServiceIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 572
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 573
    invoke-static {p1}, Lcom/android/server/backup/TransportManager;->fromPackageFilter(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Predicate;->and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    .line 571
    invoke-direct {p0, v0, p1}, Lcom/android/server/backup/TransportManager;->registerTransportsForIntent(Landroid/content/Intent;Ljava/util/function/Predicate;)V

    .line 574
    return-void

    .line 566
    :catch_20
    move-exception p2

    .line 567
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trying to register transports from package not found "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BackupTransportManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    return-void
.end method


# virtual methods
.method public disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V
    .registers 4

    .line 498
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportClientManager:Lcom/android/server/backup/transport/TransportClientManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/backup/transport/TransportClientManager;->disposeOfTransportClient(Lcom/android/server/backup/transport/TransportClient;Ljava/lang/String;)V

    .line 499
    return-void
.end method

.method public dumpTransportClients(Ljava/io/PrintWriter;)V
    .registers 3

    .line 693
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportClientManager:Lcom/android/server/backup/transport/TransportClientManager;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/transport/TransportClientManager;->dump(Ljava/io/PrintWriter;)V

    .line 694
    return-void
.end method

.method public dumpTransportStats(Ljava/io/PrintWriter;)V
    .registers 3

    .line 697
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportStats:Lcom/android/server/backup/transport/TransportStats;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/transport/TransportStats;->dump(Ljava/io/PrintWriter;)V

    .line 698
    return-void
.end method

.method public forEachRegisteredTransport(Ljava/util/function/Consumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 315
    invoke-static {v2}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$000(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 316
    goto :goto_d

    .line 317
    :cond_21
    monitor-exit v0

    .line 318
    return-void

    .line 317
    :catchall_23
    move-exception p1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p1
.end method

.method public getCurrentTransportClient(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;
    .registers 4

    .line 461
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 464
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 465
    :try_start_7
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/backup/TransportManager;->getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 466
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p1

    .line 462
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No transport selected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCurrentTransportClientOrThrow(Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 484
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 485
    :try_start_7
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/backup/TransportManager;->getTransportClientOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 486
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p1

    .line 482
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No transport selected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getCurrentTransportComponent()Landroid/content/ComponentName;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 196
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    if-nez v1, :cond_a

    .line 198
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 200
    :cond_a
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportComponentOrThrowLocked(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 201
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getCurrentTransportName()Ljava/lang/String;
    .registers 2

    .line 184
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    return-object v0
.end method

.method getRegisteredTransportComponents()[Landroid/content/ComponentName;
    .registers 4

    .line 152
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 154
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 155
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ComponentName;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ComponentName;

    monitor-exit v0

    .line 153
    return-object v1

    .line 156
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method getRegisteredTransportNames()[Ljava/lang/String;
    .registers 6

    .line 165
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 167
    const/4 v2, 0x0

    .line 168
    iget-object v3, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 169
    invoke-static {v4}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$000(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    .line 170
    add-int/lit8 v2, v2, 0x1

    .line 171
    goto :goto_16

    .line 172
    :cond_2b
    monitor-exit v0

    return-object v1

    .line 173
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method public getTransportClient(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;
    .registers 4

    .line 421
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->getTransportClientOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object p1
    :try_end_4
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    .line 422
    :catch_5
    move-exception p2

    .line 423
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Transport "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not registered"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BackupTransportManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const/4 p1, 0x0

    return-object p1
.end method

.method public getTransportClientOrThrow(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 441
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportComponentLocked(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 442
    if-eqz v1, :cond_11

    .line 445
    iget-object p1, p0, Lcom/android/server/backup/TransportManager;->mTransportClientManager:Lcom/android/server/backup/transport/TransportClientManager;

    invoke-virtual {p1, v1, p2}, Lcom/android/server/backup/transport/TransportClientManager;->getTransportClient(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/server/backup/transport/TransportClient;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 443
    :cond_11
    new-instance p2, Lcom/android/server/backup/transport/TransportNotRegisteredException;

    invoke-direct {p2, p1}, Lcom/android/server/backup/transport/TransportNotRegisteredException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 446
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public getTransportConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object p1

    .line 250
    invoke-static {p1}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$200(Lcom/android/server/backup/TransportManager$TransportDescription;)Landroid/content/Intent;

    move-result-object p1

    monitor-exit v0

    .line 249
    return-object p1

    .line 251
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public getTransportCurrentDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 262
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object p1

    .line 263
    invoke-static {p1}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$300(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    .line 262
    return-object p1

    .line 264
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public getTransportDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object p1

    .line 277
    invoke-static {p1}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$400(Lcom/android/server/backup/TransportManager$TransportDescription;)Landroid/content/Intent;

    move-result-object p1

    monitor-exit v0

    .line 276
    return-object p1

    .line 278
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public getTransportDataManagementLabel(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 290
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object p1

    .line 291
    invoke-static {p1}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$500(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/CharSequence;

    move-result-object p1

    monitor-exit v0

    .line 290
    return-object p1

    .line 292
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public getTransportDirName(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Landroid/content/ComponentName;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object p1

    .line 225
    invoke-static {p1}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$100(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    .line 224
    return-object p1

    .line 226
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public getTransportDirName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 236
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Ljava/lang/String;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$100(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 237
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/backup/transport/TransportNotRegisteredException;
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportDescriptionOrThrowLocked(Landroid/content/ComponentName;)Lcom/android/server/backup/TransportManager$TransportDescription;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$000(Lcom/android/server/backup/TransportManager$TransportDescription;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 213
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method getTransportWhitelist()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportWhitelist:Ljava/util/Set;

    return-object v0
.end method

.method public isTransportRegistered(Ljava/lang/String;)Z
    .registers 3

    .line 297
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 298
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->getRegisteredTransportEntryLocked(Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object p1

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    monitor-exit v0

    return p1

    .line 299
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p1
.end method

.method onPackageAdded(Ljava/lang/String;)V
    .registers 3

    .line 121
    sget-object v0, Lcom/android/server/backup/-$$Lambda$TransportManager$4ND1hZMerK5gHU67okq6DZjKDQw;->INSTANCE:Lcom/android/server/backup/-$$Lambda$TransportManager$4ND1hZMerK5gHU67okq6DZjKDQw;

    invoke-direct {p0, p1, v0}, Lcom/android/server/backup/TransportManager;->registerTransportsFromPackage(Ljava/lang/String;Ljava/util/function/Predicate;)V

    .line 122
    return-void
.end method

.method varargs onPackageChanged(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8

    .line 134
    new-instance v0, Landroid/util/ArraySet;

    array-length v1, p2

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 135
    array-length v1, p2

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_17

    aget-object v3, p2, v2

    .line 136
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, p1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 138
    :cond_17
    iget-object p2, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter p2

    .line 139
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/server/backup/-$$Lambda$-xfpm33S8Jqv3KpU_-llxhj8ZPI;

    invoke-direct {v2, v0}, Lcom/android/server/backup/-$$Lambda$-xfpm33S8Jqv3KpU_-llxhj8ZPI;-><init>(Ljava/util/Set;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 140
    monitor-exit p2
    :try_end_29
    .catchall {:try_start_1a .. :try_end_29} :catchall_32

    .line 141
    new-instance p2, Lcom/android/server/backup/-$$Lambda$-xfpm33S8Jqv3KpU_-llxhj8ZPI;

    invoke-direct {p2, v0}, Lcom/android/server/backup/-$$Lambda$-xfpm33S8Jqv3KpU_-llxhj8ZPI;-><init>(Ljava/util/Set;)V

    invoke-direct {p0, p1, p2}, Lcom/android/server/backup/TransportManager;->registerTransportsFromPackage(Ljava/lang/String;Ljava/util/function/Predicate;)V

    .line 142
    return-void

    .line 140
    :catchall_32
    move-exception p1

    :try_start_33
    monitor-exit p2
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p1
.end method

.method onPackageRemoved(Ljava/lang/String;)V
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/backup/TransportManager;->fromPackageFilter(Ljava/lang/String;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 127
    monitor-exit v0

    .line 128
    return-void

    .line 127
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public registerAndSelectTransport(Landroid/content/ComponentName;)I
    .registers 5

    .line 531
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/backup/TransportManager;->selectTransport(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_4 .. :try_end_b} :catch_f
    .catchall {:try_start_4 .. :try_end_b} :catchall_d

    .line 534
    :try_start_b
    monitor-exit v0

    return v1

    .line 538
    :catchall_d
    move-exception p1

    goto :goto_33

    .line 535
    :catch_f
    move-exception v2

    .line 538
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_d

    .line 541
    invoke-direct {p0, p1}, Lcom/android/server/backup/TransportManager;->registerTransport(Landroid/content/ComponentName;)I

    move-result v0

    .line 542
    if-eqz v0, :cond_18

    .line 543
    return v0

    .line 545
    :cond_18
    iget-object v2, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v2

    .line 547
    :try_start_1b
    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->getTransportName(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/backup/TransportManager;->selectTransport(Ljava/lang/String;)Ljava/lang/String;
    :try_end_22
    .catch Lcom/android/server/backup/transport/TransportNotRegisteredException; {:try_start_1b .. :try_end_22} :catch_26
    .catchall {:try_start_1b .. :try_end_22} :catchall_24

    .line 548
    :try_start_22
    monitor-exit v2

    return v1

    .line 553
    :catchall_24
    move-exception p1

    goto :goto_31

    .line 549
    :catch_26
    move-exception p1

    .line 550
    const-string p1, "BackupTransportManager"

    const-string v0, "Transport got unregistered"

    invoke-static {p1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 p1, -0x1

    monitor-exit v2

    return p1

    .line 553
    :goto_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_24

    throw p1

    .line 538
    :goto_33
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_d

    throw p1
.end method

.method public registerTransports()V
    .registers 3

    .line 558
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportServiceIntent:Landroid/content/Intent;

    sget-object v1, Lcom/android/server/backup/-$$Lambda$TransportManager$Qbutmzd17ICwZdy0UzRrO-3_VK0;->INSTANCE:Lcom/android/server/backup/-$$Lambda$TransportManager$Qbutmzd17ICwZdy0UzRrO-3_VK0;

    invoke-direct {p0, v0, v1}, Lcom/android/server/backup/TransportManager;->registerTransportsForIntent(Landroid/content/Intent;Ljava/util/function/Predicate;)V

    .line 559
    return-void
.end method

.method selectTransport(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 514
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 515
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 516
    iput-object p1, p0, Lcom/android/server/backup/TransportManager;->mCurrentTransportName:Ljava/lang/String;

    .line 517
    monitor-exit v0

    return-object v1

    .line 518
    :catchall_9
    move-exception p1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p1
.end method

.method public setOnTransportRegisteredListener(Lcom/android/server/backup/transport/OnTransportRegisteredListener;)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/android/server/backup/TransportManager;->mOnTransportRegisteredListener:Lcom/android/server/backup/transport/OnTransportRegisteredListener;

    .line 117
    return-void
.end method

.method public updateTransportAttributes(Landroid/content/ComponentName;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/CharSequence;)V
    .registers 9

    .line 331
    iget-object v0, p0, Lcom/android/server/backup/TransportManager;->mTransportLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_3
    iget-object v1, p0, Lcom/android/server/backup/TransportManager;->mRegisteredTransportsDescriptionMap:Ljava/util/Map;

    .line 333
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/backup/TransportManager$TransportDescription;

    .line 334
    if-nez p1, :cond_2a

    .line 335
    const-string p1, "BackupTransportManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Transport "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " not registered tried to change description"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    monitor-exit v0

    return-void

    .line 338
    :cond_2a
    invoke-static {p1, p2}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$002(Lcom/android/server/backup/TransportManager$TransportDescription;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    invoke-static {p1, p3}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$202(Lcom/android/server/backup/TransportManager$TransportDescription;Landroid/content/Intent;)Landroid/content/Intent;

    .line 340
    invoke-static {p1, p4}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$302(Lcom/android/server/backup/TransportManager$TransportDescription;Ljava/lang/String;)Ljava/lang/String;

    .line 341
    invoke-static {p1, p5}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$402(Lcom/android/server/backup/TransportManager$TransportDescription;Landroid/content/Intent;)Landroid/content/Intent;

    .line 342
    invoke-static {p1, p6}, Lcom/android/server/backup/TransportManager$TransportDescription;->access$502(Lcom/android/server/backup/TransportManager$TransportDescription;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 343
    const-string p1, "BackupTransportManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Transport "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " updated its attributes"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    monitor-exit v0

    .line 345
    return-void

    .line 344
    :catchall_56
    move-exception p1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_56

    throw p1
.end method
