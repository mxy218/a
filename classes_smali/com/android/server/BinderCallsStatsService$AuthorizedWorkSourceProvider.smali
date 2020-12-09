.class Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;
.super Ljava/lang/Object;
.source "BinderCallsStatsService.java"

# interfaces
.implements Lcom/android/internal/os/BinderInternal$WorkSourceProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BinderCallsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthorizedWorkSourceProvider"
.end annotation


# instance fields
.field private mAppIdWhitelist:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->mAppIdWhitelist:Landroid/util/ArraySet;

    .line 65
    return-void
.end method

.method private createAppidWhitelist(Landroid/content/Context;)Landroid/util/ArraySet;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 99
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 102
    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 104
    nop

    .line 105
    const/high16 v2, 0xc0000

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 106
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 107
    const/4 v4, 0x0

    :goto_2a
    if-ge v4, v3, :cond_60

    .line 108
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 110
    :try_start_32
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v6

    .line 111
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    .line 112
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_32 .. :try_end_43} :catch_44

    .line 115
    goto :goto_5d

    .line 113
    :catch_44
    move-exception v6

    .line 114
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot find uid for package name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "BinderCallsStatsService"

    invoke-static {v7, v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 107
    :goto_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 117
    :cond_60
    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;)V
    .registers 7

    .line 83
    const-string v0, "AppIds of apps that can set the work source:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->mAppIdWhitelist:Landroid/util/ArraySet;

    .line 85
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\t- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/android/internal/os/AppIdToPackageMap;->mapAppId(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    goto :goto_b

    .line 88
    :cond_34
    return-void
.end method

.method protected getCallingUid()I
    .registers 2

    .line 91
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public resolveWorkSourceUid(I)I
    .registers 5

    .line 68
    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->getCallingUid()I

    move-result v0

    .line 69
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 70
    iget-object v2, p0, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->mAppIdWhitelist:Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 71
    nop

    .line 72
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 73
    :goto_1b
    if-eqz v1, :cond_1e

    goto :goto_1f

    :cond_1e
    move p1, v0

    :goto_1f
    return p1

    .line 75
    :cond_20
    return v0
.end method

.method public systemReady(Landroid/content/Context;)V
    .registers 2

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->createAppidWhitelist(Landroid/content/Context;)Landroid/util/ArraySet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->mAppIdWhitelist:Landroid/util/ArraySet;

    .line 80
    return-void
.end method
