.class public Lcom/meizu/settings/appclone/AppCloneInit;
.super Ljava/lang/Object;
.source "AppCloneInit.java"


# static fields
.field private static sInstance:Lcom/meizu/settings/appclone/AppCloneInit;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneInit;->mContext:Landroid/content/Context;

    .line 29
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneInit;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneInit;->mUserManager:Landroid/os/UserManager;

    .line 30
    iget-object p1, p0, Lcom/meizu/settings/appclone/AppCloneInit;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/appclone/AppCloneInit;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/meizu/settings/appclone/AppCloneInit;
    .registers 3

    .line 34
    sget-object v0, Lcom/meizu/settings/appclone/AppCloneInit;->sInstance:Lcom/meizu/settings/appclone/AppCloneInit;

    if-nez v0, :cond_17

    .line 35
    const-class v0, Lcom/meizu/settings/appclone/AppCloneInit;

    monitor-enter v0

    .line 36
    :try_start_7
    sget-object v1, Lcom/meizu/settings/appclone/AppCloneInit;->sInstance:Lcom/meizu/settings/appclone/AppCloneInit;

    if-nez v1, :cond_12

    .line 37
    new-instance v1, Lcom/meizu/settings/appclone/AppCloneInit;

    invoke-direct {v1, p0}, Lcom/meizu/settings/appclone/AppCloneInit;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/meizu/settings/appclone/AppCloneInit;->sInstance:Lcom/meizu/settings/appclone/AppCloneInit;

    .line 39
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 41
    :cond_17
    :goto_17
    sget-object p0, Lcom/meizu/settings/appclone/AppCloneInit;->sInstance:Lcom/meizu/settings/appclone/AppCloneInit;

    return-object p0
.end method

.method private startAppCloneUser(I)Z
    .registers 9

    const-string v0, "AppCloneInit"

    .line 100
    iget-object v1, p0, Lcom/meizu/settings/appclone/AppCloneInit;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "user_setup_complete"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_11

    move v1, v4

    goto :goto_12

    :cond_11
    move v1, v3

    .line 103
    :goto_12
    :try_start_12
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, p1, v3}, Landroid/app/IActivityManager;->isUserRunning(II)Z

    move-result v5
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1a} :catch_1b

    goto :goto_22

    :catch_1b
    const-string/jumbo v5, "startAppCloneUser isUserRunning RemoteException"

    .line 105
    invoke-static {v0, v5}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v3

    :goto_22
    if-eqz v5, :cond_27

    if-eqz v1, :cond_27

    return v4

    .line 113
    :cond_27
    :try_start_27
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    .line 114
    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->startUserInBackground(I)Z

    move-result v1
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2f} :catch_4e

    .line 119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startAppCloneUser startUserInBackground startUserSuccess = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_47

    return v3

    .line 124
    :cond_47
    iget-object p0, p0, Lcom/meizu/settings/appclone/AppCloneInit;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v2, v4, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0

    :catch_4e
    const-string/jumbo p0, "startAppCloneUser startUserInBackground RemoteException"

    .line 116
    invoke-static {v0, p0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method


# virtual methods
.method public declared-synchronized enableAppCloneUser(Z)Z
    .registers 9

    monitor-enter p0

    .line 47
    :try_start_1
    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneInit;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    const-string p1, "AppCloneInit"

    const-string v0, "can not enable app clone user if we are not admin"

    .line 49
    invoke-static {p1, v0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_bb

    .line 50
    monitor-exit p0

    return v1

    .line 54
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/meizu/settings/appclone/AppCloneInit;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserHandle()I

    move-result v0

    .line 55
    iget-object v2, p0, Lcom/meizu/settings/appclone/AppCloneInit;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_2a

    const-string p1, "AppCloneInit"

    const-string v0, "getProfiles null"

    .line 57
    invoke-static {p1, v0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_bb

    .line 58
    monitor-exit p0

    return v1

    :cond_2a
    const/4 v3, 0x0

    .line 61
    :try_start_2b
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    const/16 v5, 0x3e7

    .line 62
    iget v6, v4, Landroid/content/pm/UserInfo;->id:I

    if-ne v5, v6, :cond_2f

    const-string v5, "FlymeParallelSpace"

    iget-object v6, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const-string v2, "AppCloneInit"

    .line 64
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find  appCloneUser = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catchall {:try_start_2b .. :try_end_61} :catchall_bb

    move-object v3, v4

    :cond_62
    const/4 v2, 0x1

    if-eqz v3, :cond_71

    if-eqz p1, :cond_69

    .line 73
    monitor-exit p0

    return v2

    .line 75
    :cond_69
    :try_start_69
    iget p1, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1}, Lcom/meizu/settings/appclone/AppCloneInit;->startAppCloneUser(I)Z

    move-result p1
    :try_end_6f
    .catchall {:try_start_69 .. :try_end_6f} :catchall_bb

    monitor-exit p0

    return p1

    .line 80
    :cond_71
    :try_start_71
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v3

    const-string v4, "AppCloneInit"

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expand maxSupportUser =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v3, p0, Lcom/meizu/settings/appclone/AppCloneInit;->mUserManager:Landroid/os/UserManager;

    const-string v4, "FlymeParallelSpace"

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5, v0}, Landroid/os/UserManager;->createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v0

    const-string v3, "AppCloneInit"

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createProfileForUser appCloneUser = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ab
    .catchall {:try_start_71 .. :try_end_ab} :catchall_bb

    if-nez v0, :cond_af

    .line 87
    monitor-exit p0

    return v1

    :cond_af
    if-eqz p1, :cond_b3

    .line 91
    monitor-exit p0

    return v2

    .line 93
    :cond_b3
    :try_start_b3
    iget p1, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1}, Lcom/meizu/settings/appclone/AppCloneInit;->startAppCloneUser(I)Z

    move-result p1
    :try_end_b9
    .catchall {:try_start_b3 .. :try_end_b9} :catchall_bb

    monitor-exit p0

    return p1

    :catchall_bb
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeAppCloneHandle(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    const-string p0, "AppCloneInit"

    if-nez p1, :cond_b

    const-string/jumbo v0, "removeAppCloneHandle null"

    .line 130
    invoke-static {p0, v0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 133
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_11
    if-ltz v0, :cond_3d

    .line 134
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 135
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/16 v3, 0x3e7

    if-ne v2, v3, :cond_3a

    .line 136
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeAppCloneHandle = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    :cond_3a
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_3d
    :goto_3d
    return-object p1
.end method

.method public removeAppCloneUserInfo(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    const-string p0, "AppCloneInit"

    if-nez p1, :cond_b

    const-string/jumbo v0, "removeAppCloneUserInfo null"

    .line 146
    invoke-static {p0, v0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logW(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 149
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_11
    if-ltz v0, :cond_3b

    .line 150
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 151
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    const/16 v3, 0x3e7

    if-ne v2, v3, :cond_38

    .line 152
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeAppCloneUserInfo = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/meizu/settings/appclone/AppCloneUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b

    :cond_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_3b
    :goto_3b
    return-object p1
.end method
