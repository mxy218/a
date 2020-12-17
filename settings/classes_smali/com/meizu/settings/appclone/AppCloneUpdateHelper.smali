.class public Lcom/meizu/settings/appclone/AppCloneUpdateHelper;
.super Ljava/lang/Object;
.source "AppCloneUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/appclone/AppCloneUpdateHelper$MyPackageDeleteObserver;,
        Lcom/meizu/settings/appclone/AppCloneUpdateHelper$EnableTask;
    }
.end annotation


# static fields
.field private static sHelper:Lcom/meizu/settings/appclone/AppCloneUpdateHelper;


# instance fields
.field private mAppCloneInit:Lcom/meizu/settings/appclone/AppCloneInit;

.field private mAppCloneVersion:Lcom/meizu/settings/appclone/AppCloneVersion;

.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->mContext:Landroid/content/Context;

    .line 85
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 86
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->mResolver:Landroid/content/ContentResolver;

    .line 87
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/appclone/AppCloneInit;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/appclone/AppCloneInit;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->mAppCloneInit:Lcom/meizu/settings/appclone/AppCloneInit;

    .line 88
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/appclone/AppCloneVersion;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/appclone/AppCloneVersion;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->mAppCloneVersion:Lcom/meizu/settings/appclone/AppCloneVersion;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/appclone/AppCloneUpdateHelper;)Lcom/meizu/settings/appclone/AppCloneInit;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->mAppCloneInit:Lcom/meizu/settings/appclone/AppCloneInit;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/appclone/AppCloneUpdateHelper;)Ljava/util/List;
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->getEnabledCloneApp()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/appclone/AppCloneUpdateHelper;)Landroid/content/pm/PackageManager;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method private getEnabledCloneApp()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "mz_app_clone_enabled_pkgs"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 163
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    const-string v1, ","

    .line 164
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_20
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/settings/appclone/AppCloneUpdateHelper;
    .registers 3

    .line 92
    sget-object v0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->sHelper:Lcom/meizu/settings/appclone/AppCloneUpdateHelper;

    if-nez v0, :cond_17

    .line 93
    const-class v0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;

    monitor-enter v0

    .line 94
    :try_start_7
    sget-object v1, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->sHelper:Lcom/meizu/settings/appclone/AppCloneUpdateHelper;

    if-nez v1, :cond_12

    .line 95
    new-instance v1, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;

    invoke-direct {v1, p0}, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->sHelper:Lcom/meizu/settings/appclone/AppCloneUpdateHelper;

    .line 97
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 99
    :cond_17
    :goto_17
    sget-object p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->sHelper:Lcom/meizu/settings/appclone/AppCloneUpdateHelper;

    return-object p0
.end method

.method private setEnabledCloneApp(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 171
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_35

    .line 172
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_30
    const/4 p1, 0x1

    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 177
    :cond_35
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->mResolver:Landroid/content/ContentResolver;

    const-string p1, "mz_app_clone_enabled_pkgs"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public disableAppClone(Ljava/lang/String;)Z
    .registers 7

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "AppCloneUpdateHelper"

    if-eqz v0, :cond_f

    const-string p0, "disableAppClone pkg null"

    .line 127
    invoke-static {v2, p0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_f
    const-string v0, ":1"

    .line 130
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1c

    .line 132
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 134
    :cond_1c
    invoke-direct {p0}, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->getEnabledCloneApp()Ljava/util/List;

    move-result-object v0

    .line 135
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    const-string p0, "disableAppClone pkg not exist"

    .line 136
    invoke-static {v2, p0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 139
    :cond_2c
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 140
    invoke-direct {p0, v0}, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->setEnabledCloneApp(Ljava/util/List;)Z

    move-result v0

    .line 141
    iget-object v3, p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->mAppCloneVersion:Lcom/meizu/settings/appclone/AppCloneVersion;

    invoke-virtual {v3}, Lcom/meizu/settings/appclone/AppCloneVersion;->getVersion()I

    move-result v3

    if-eqz v0, :cond_7e

    const/4 v4, 0x1

    if-ne v3, v4, :cond_44

    .line 144
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/meizu/settings/appclone/AppCloneUtil;->disabeClonePkg(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7e

    .line 146
    :cond_44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deletePackageAsUser pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :try_start_58
    new-instance v3, Lcom/meizu/settings/appclone/AppCloneUpdateHelper$MyPackageDeleteObserver;

    invoke-direct {v3, p0}, Lcom/meizu/settings/appclone/AppCloneUpdateHelper$MyPackageDeleteObserver;-><init>(Lcom/meizu/settings/appclone/AppCloneUpdateHelper;)V

    .line 149
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x3e7

    invoke-virtual {p0, p1, v3, v1, v4}, Landroid/content/pm/PackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_64} :catch_65

    goto :goto_7e

    .line 152
    :catch_65
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deletePackageAsUser \'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' failed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7e
    :goto_7e
    return v0
.end method

.method public enableAppClone(Ljava/lang/String;)Z
    .registers 6

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AppCloneUpdateHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    const-string p0, "enableAppClone pkg null"

    .line 104
    invoke-static {v1, p0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_f
    const-string v0, ":1"

    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1c

    .line 109
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 111
    :cond_1c
    invoke-direct {p0}, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->getEnabledCloneApp()Ljava/util/List;

    move-result-object v0

    .line 112
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const-string p0, "enableAppClone pkg exist"

    .line 113
    invoke-static {v1, p0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 116
    :cond_2c
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-direct {p0, v0}, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->setEnabledCloneApp(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_48

    const/4 v1, 0x2

    .line 118
    iget-object v3, p0, Lcom/meizu/settings/appclone/AppCloneUpdateHelper;->mAppCloneVersion:Lcom/meizu/settings/appclone/AppCloneVersion;

    .line 119
    invoke-virtual {v3}, Lcom/meizu/settings/appclone/AppCloneVersion;->getVersion()I

    move-result v3

    if-ne v1, v3, :cond_48

    .line 120
    new-instance v1, Lcom/meizu/settings/appclone/AppCloneUpdateHelper$EnableTask;

    invoke-direct {v1, p0, p1}, Lcom/meizu/settings/appclone/AppCloneUpdateHelper$EnableTask;-><init>(Lcom/meizu/settings/appclone/AppCloneUpdateHelper;Ljava/lang/String;)V

    new-array p0, v2, [Ljava/lang/Void;

    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_48
    return v0
.end method
