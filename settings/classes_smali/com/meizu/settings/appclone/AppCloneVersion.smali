.class public Lcom/meizu/settings/appclone/AppCloneVersion;
.super Ljava/lang/Object;
.source "AppCloneVersion.java"


# static fields
.field private static sInstance:Lcom/meizu/settings/appclone/AppCloneVersion;


# instance fields
.field private mAppCloneInit:Lcom/meizu/settings/appclone/AppCloneInit;

.field private mContext:Landroid/content/Context;

.field private mCurrentVersion:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 32
    iput v0, p0, Lcom/meizu/settings/appclone/AppCloneVersion;->mCurrentVersion:I

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneVersion;->mContext:Landroid/content/Context;

    .line 38
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneVersion;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneVersion;->mResolver:Landroid/content/ContentResolver;

    .line 39
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneVersion;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneVersion;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 40
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneVersion;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/appclone/AppCloneInit;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/appclone/AppCloneInit;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneVersion;->mAppCloneInit:Lcom/meizu/settings/appclone/AppCloneInit;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/settings/appclone/AppCloneVersion;
    .registers 3

    .line 44
    sget-object v0, Lcom/meizu/settings/appclone/AppCloneVersion;->sInstance:Lcom/meizu/settings/appclone/AppCloneVersion;

    if-nez v0, :cond_17

    .line 45
    const-class v0, Lcom/meizu/settings/appclone/AppCloneVersion;

    monitor-enter v0

    .line 46
    :try_start_7
    sget-object v1, Lcom/meizu/settings/appclone/AppCloneVersion;->sInstance:Lcom/meizu/settings/appclone/AppCloneVersion;

    if-nez v1, :cond_12

    .line 47
    new-instance v1, Lcom/meizu/settings/appclone/AppCloneVersion;

    invoke-direct {v1, p0}, Lcom/meizu/settings/appclone/AppCloneVersion;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/settings/appclone/AppCloneVersion;->sInstance:Lcom/meizu/settings/appclone/AppCloneVersion;

    .line 49
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 51
    :cond_17
    :goto_17
    sget-object p0, Lcom/meizu/settings/appclone/AppCloneVersion;->sInstance:Lcom/meizu/settings/appclone/AppCloneVersion;

    return-object p0
.end method

.method private upgradeInternal(I)V
    .registers 11

    const-string v0, "AppCloneVersion"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_13a

    .line 77
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneVersion;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "mz_app_clone_enabled_pkgs"

    invoke-static {p1, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "upgradeInternal enabledAppCloneStr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_139

    .line 82
    iget-object v1, p0, Lcom/meizu/settings/appclone/AppCloneVersion;->mAppCloneInit:Lcom/meizu/settings/appclone/AppCloneInit;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/settings/appclone/AppCloneInit;->enableAppCloneUser(Z)Z

    move-result v1

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "upgradeInternal enableAppCloneUser = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, ","

    .line 84
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 85
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_52
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_139

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 88
    :try_start_5e
    iget-object v4, p0, Lcom/meizu/settings/appclone/AppCloneVersion;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v5, 0x2000

    invoke-virtual {v4, v3, v5, v2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4
    :try_end_66
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5e .. :try_end_66} :catch_131

    const-string/jumbo v5, "pkg = "

    if-eqz v4, :cond_118

    .line 94
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_71

    goto/16 :goto_118

    .line 101
    :cond_71
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 102
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " pkg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " dataDir = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v6, Ljava/io/File;

    const-string v8, "/Flyme_Clone/1"

    invoke-direct {v6, v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    .line 108
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " appCloneDirV1Str = "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x3e7

    .line 114
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 112
    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 116
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " appCloneDirV2Str = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copyDataCrossUser success = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :try_start_f5
    iget-object v4, p0, Lcom/meizu/settings/appclone/AppCloneVersion;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3, v7}, Landroid/content/pm/PackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    move-result v3

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "installExistingPackageAsUser ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f5 .. :try_end_10f} :catch_111

    goto/16 :goto_52

    :catch_111
    const-string v3, "installExistingPackageAsUser NameNotFoundException"

    .line 127
    invoke-static {v0, v3}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_52

    .line 96
    :cond_118
    :goto_118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " packageInfo is null,skip"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_52

    :catch_131
    const-string/jumbo v3, "pkg NameNotFoundException"

    .line 91
    invoke-static {v0, v3}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_52

    :cond_139
    const/4 p1, 0x2

    .line 134
    :cond_13a
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneVersion;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "app_clone_version"

    invoke-static {p0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "upgradeInternal upgrade to version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " success = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getVersion()I
    .registers 1

    .line 55
    iget p0, p0, Lcom/meizu/settings/appclone/AppCloneVersion;->mCurrentVersion:I

    return p0
.end method

.method public isUpgradeInProgress()Z
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneVersion;->mResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    const-string v2, "app_clone_version"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 142
    iget p0, p0, Lcom/meizu/settings/appclone/AppCloneVersion;->mCurrentVersion:I

    if-eq v0, p0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public upgradeIfNeeded()V
    .registers 5

    const-string v0, "AppCloneVersion"

    const-string/jumbo v1, "upgradeIfNeeded start..."

    .line 60
    invoke-static {v0, v1}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_15

    const-string/jumbo p0, "upgradeIfNeeded no need  to upgrade"

    .line 62
    invoke-static {v0, p0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 66
    :cond_15
    iget-object v1, p0, Lcom/meizu/settings/appclone/AppCloneVersion;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    const-string v3, "app_clone_version"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 67
    iget v2, p0, Lcom/meizu/settings/appclone/AppCloneVersion;->mCurrentVersion:I

    if-ne v1, v2, :cond_29

    const-string/jumbo p0, "upgradeIfNeeded newest version"

    .line 68
    invoke-static {v0, p0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 71
    :cond_29
    invoke-direct {p0, v1}, Lcom/meizu/settings/appclone/AppCloneVersion;->upgradeInternal(I)V

    return-void
.end method
