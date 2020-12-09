.class Lcom/android/server/pm/UserManagerService$LocalService;
.super Landroid/os/UserManagerInternal;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 2

    .line 4119
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Landroid/os/UserManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$1;)V
    .registers 3

    .line 4119
    invoke-direct {p0, p1}, Lcom/android/server/pm/UserManagerService$LocalService;-><init>(Lcom/android/server/pm/UserManagerService;)V

    return-void
.end method


# virtual methods
.method public addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V
    .registers 4

    .line 4161
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$800(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 4162
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$800(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4163
    monitor-exit v0

    .line 4164
    return-void

    .line 4163
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public createUserEvenWhenDisallowed(Ljava/lang/String;I[Ljava/lang/String;)Landroid/content/pm/UserInfo;
    .registers 10

    .line 4263
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    const/16 v3, -0x2710

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/UserManagerService;->access$2700(Lcom/android/server/pm/UserManagerService;Ljava/lang/String;IIZ[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 4266
    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p2

    if-nez p2, :cond_2f

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result p2

    if-nez p2, :cond_2f

    .line 4267
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    iget p3, p1, Landroid/content/pm/UserInfo;->id:I

    const/4 v0, 0x1

    const-string/jumbo v1, "no_sms"

    invoke-virtual {p2, v1, v0, p3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 4268
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    iget p3, p1, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v1, "no_outgoing_calls"

    invoke-virtual {p2, v1, v0, p3}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    .line 4270
    :cond_2f
    return-object p1
.end method

.method public exists(I)Z
    .registers 3

    .line 4338
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/UserManagerService;->access$3000(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public getBaseUserRestrictions(I)Landroid/os/Bundle;
    .registers 4

    .line 4129
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$900(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4130
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$1600(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    monitor-exit v0

    return-object p1

    .line 4131
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public getProfileParentId(I)I
    .registers 4

    .line 4382
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$300(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4383
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$3100(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 4384
    if-nez v1, :cond_11

    .line 4385
    monitor-exit v0

    return p1

    .line 4387
    :cond_11
    iget p1, v1, Landroid/content/pm/UserInfo;->id:I

    monitor-exit v0

    return p1

    .line 4388
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public getUserIds()[I
    .registers 2

    .line 4301
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getUserRestriction(ILjava/lang/String;)Z
    .registers 4

    .line 4156
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserRestrictions(I)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isProfileAccessible(IILjava/lang/String;Z)Z
    .registers 11

    .line 4344
    const/4 v0, 0x1

    if-ne p2, p1, :cond_4

    .line 4345
    return v0

    .line 4347
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$300(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4348
    :try_start_b
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2, p1}, Lcom/android/server/pm/UserManagerService;->access$2600(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 4349
    if-eqz v2, :cond_19

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 4350
    :cond_19
    if-nez p4, :cond_7d

    .line 4357
    :cond_1b
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3, p2}, Lcom/android/server/pm/UserManagerService;->access$2600(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 4358
    const/4 v4, 0x0

    if-eqz v3, :cond_58

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_2b

    goto :goto_58

    .line 4368
    :cond_2b
    iget p1, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v5, -0x2710

    if-eq p1, v5, :cond_3a

    iget p1, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v2, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq p1, v2, :cond_38

    goto :goto_3a

    .line 4376
    :cond_38
    monitor-exit v1

    .line 4377
    return v0

    .line 4370
    :cond_3a
    :goto_3a
    if-nez p4, :cond_3e

    .line 4374
    monitor-exit v1

    return v4

    .line 4371
    :cond_3e
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for unrelated profile "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4361
    :cond_58
    :goto_58
    if-eqz p4, :cond_7b

    .line 4362
    const-string p4, "UserManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for disabled profile "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4365
    :cond_7b
    monitor-exit v1

    return v4

    .line 4351
    :cond_7d
    new-instance p4, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " for another profile "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 4376
    :catchall_9f
    move-exception p1

    monitor-exit v1
    :try_end_a1
    .catchall {:try_start_b .. :try_end_a1} :catchall_9f

    throw p1
.end method

.method public isSettingRestrictedForUser(Ljava/lang/String;ILjava/lang/String;I)Z
    .registers 6

    .line 4394
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$100(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/UserRestrictionsUtils;->isSettingRestrictedForUser(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public isUserInitialized(I)Z
    .registers 3

    .line 4333
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public isUserRunning(I)Z
    .registers 5

    .line 4280
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$2900(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    monitor-enter v0

    .line 4281
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$2900(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    if-ltz p1, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    monitor-exit v0

    return p1

    .line 4282
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public isUserUnlocked(I)Z
    .registers 5

    .line 4321
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$2900(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    monitor-enter v0

    .line 4322
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$2900(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 4323
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_26

    .line 4325
    const/4 v0, 0x4

    if-eq v1, v0, :cond_21

    const/4 v0, 0x5

    if-ne v1, v0, :cond_1a

    goto :goto_21

    .line 4328
    :cond_1a
    const/4 p1, 0x3

    if-ne v1, p1, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    return p1

    .line 4326
    :cond_21
    :goto_21
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result p1

    return p1

    .line 4323
    :catchall_26
    move-exception p1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public isUserUnlockingOrUnlocked(I)Z
    .registers 5

    .line 4307
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$2900(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    monitor-enter v0

    .line 4308
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$2900(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 4309
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_2a

    .line 4311
    const/4 v0, 0x4

    if-eq v1, v0, :cond_25

    const/4 v0, 0x5

    if-ne v1, v0, :cond_1a

    goto :goto_25

    .line 4314
    :cond_1a
    const/4 p1, 0x2

    if-eq v1, p1, :cond_23

    const/4 p1, 0x3

    if-ne v1, p1, :cond_21

    goto :goto_23

    :cond_21
    const/4 p1, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p1, 0x1

    :goto_24
    return p1

    .line 4312
    :cond_25
    :goto_25
    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result p1

    return p1

    .line 4309
    :catchall_2a
    move-exception p1

    :try_start_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public onEphemeralUserStop(I)V
    .registers 4

    .line 4246
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$300(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4247
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$2600(Lcom/android/server/pm/UserManagerService;I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 4248
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 4251
    iget v1, p1, Landroid/content/pm/UserInfo;->flags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p1, Landroid/content/pm/UserInfo;->flags:I

    .line 4252
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 4254
    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/content/pm/UserInfo;->guestToRemove:Z

    .line 4257
    :cond_24
    monitor-exit v0

    .line 4258
    return-void

    .line 4257
    :catchall_26
    move-exception p1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public removeAllUsers()V
    .registers 6

    .line 4215
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_c

    .line 4217
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$2400(Lcom/android/server/pm/UserManagerService;)V

    goto :goto_3d

    .line 4220
    :cond_c
    new-instance v0, Lcom/android/server/pm/UserManagerService$LocalService$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/UserManagerService$LocalService$1;-><init>(Lcom/android/server/pm/UserManagerService$LocalService;)V

    .line 4232
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 4233
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 4234
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->access$100(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 4235
    invoke-static {v4}, Lcom/android/server/pm/UserManagerService;->access$2500(Lcom/android/server/pm/UserManagerService;)Landroid/os/Handler;

    move-result-object v4

    .line 4234
    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 4238
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 4239
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$100(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 4240
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->switchUser(I)Z

    .line 4242
    :goto_3d
    return-void
.end method

.method public removeUserEvenWhenDisallowed(I)Z
    .registers 3

    .line 4275
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/UserManagerService;->access$2800(Lcom/android/server/pm/UserManagerService;I)Z

    move-result p1

    return p1
.end method

.method public removeUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V
    .registers 4

    .line 4168
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$800(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 4169
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$800(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4170
    monitor-exit v0

    .line 4171
    return-void

    .line 4170
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public removeUserState(I)V
    .registers 4

    .line 4294
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$2900(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    monitor-enter v0

    .line 4295
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$2900(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4296
    monitor-exit v0

    .line 4297
    return-void

    .line 4296
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public setBaseUserRestrictionsByDpmsForMigration(ILandroid/os/Bundle;)V
    .registers 6

    .line 4137
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$900(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4138
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iget-object p2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 4139
    invoke-static {p2}, Lcom/android/server/pm/UserManagerService;->access$1600(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object p2

    .line 4138
    invoke-static {v1, p1, v2, p2}, Lcom/android/server/pm/UserManagerService;->access$1700(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/util/SparseArray;)Z

    move-result p2

    if-eqz p2, :cond_1f

    .line 4140
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->access$1800(Lcom/android/server/pm/UserManagerService;I)V

    .line 4142
    :cond_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_50

    .line 4144
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->access$1300(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object p2

    .line 4145
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$1200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4146
    if-eqz p2, :cond_35

    .line 4147
    :try_start_2f
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p1, p2}, Lcom/android/server/pm/UserManagerService;->access$1400(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V

    goto :goto_4b

    .line 4149
    :cond_35
    const-string p2, "UserManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserInfo not found for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4151
    :goto_4b
    monitor-exit v1

    .line 4152
    return-void

    .line 4151
    :catchall_4d
    move-exception p1

    monitor-exit v1
    :try_end_4f
    .catchall {:try_start_2f .. :try_end_4f} :catchall_4d

    throw p1

    .line 4142
    :catchall_50
    move-exception p1

    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw p1
.end method

.method public setDeviceManaged(Z)V
    .registers 4

    .line 4175
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$300(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4176
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$1902(Lcom/android/server/pm/UserManagerService;Z)Z

    .line 4177
    monitor-exit v0

    .line 4178
    return-void

    .line 4177
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public setDevicePolicyUserRestrictions(ILandroid/os/Bundle;ZI)V
    .registers 6

    .line 4123
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/UserManagerService;->access$1500(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;ZI)V

    .line 4125
    return-void
.end method

.method public setForceEphemeralUsers(Z)V
    .registers 4

    .line 4208
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$300(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4209
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/UserManagerService;->access$2302(Lcom/android/server/pm/UserManagerService;Z)Z

    .line 4210
    monitor-exit v0

    .line 4211
    return-void

    .line 4210
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public setUserIcon(ILandroid/graphics/Bitmap;)V
    .registers 9

    .line 4189
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4191
    :try_start_4
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->access$1200(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_50

    .line 4192
    :try_start_b
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v3, p1}, Lcom/android/server/pm/UserManagerService;->access$1300(Lcom/android/server/pm/UserManagerService;I)Lcom/android/server/pm/UserManagerService$UserData;

    move-result-object v3

    .line 4193
    if-eqz v3, :cond_31

    iget-object v4, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    iget-boolean v4, v4, Landroid/content/pm/UserInfo;->partial:Z

    if-eqz v4, :cond_1a

    goto :goto_31

    .line 4197
    :cond_1a
    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    iget-object v5, v3, Lcom/android/server/pm/UserManagerService$UserData;->info:Landroid/content/pm/UserInfo;

    invoke-static {v4, v5, p2}, Lcom/android/server/pm/UserManagerService;->access$2100(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;Landroid/graphics/Bitmap;)V

    .line 4198
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p2, v3}, Lcom/android/server/pm/UserManagerService;->access$1400(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$UserData;)V

    .line 4199
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_4d

    .line 4200
    :try_start_27
    iget-object p2, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {p2, p1}, Lcom/android/server/pm/UserManagerService;->access$2200(Lcom/android/server/pm/UserManagerService;I)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_50

    .line 4202
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4203
    nop

    .line 4204
    return-void

    .line 4194
    :cond_31
    :goto_31
    :try_start_31
    const-string p2, "UserManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUserIcon: unknown user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4195
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_31 .. :try_end_49} :catchall_4d

    .line 4202
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4195
    return-void

    .line 4199
    :catchall_4d
    move-exception p1

    :try_start_4e
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    :try_start_4f
    throw p1
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_50

    .line 4202
    :catchall_50
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method

.method public setUserManaged(IZ)V
    .registers 5

    .line 4182
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$300(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4183
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$2000(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 4184
    monitor-exit v0

    .line 4185
    return-void

    .line 4184
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public setUserState(II)V
    .registers 5

    .line 4287
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$2900(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v0

    monitor-enter v0

    .line 4288
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$LocalService;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$2900(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4289
    monitor-exit v0

    .line 4290
    return-void

    .line 4289
    :catchall_12
    move-exception p1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    throw p1
.end method
