.class public Lcom/android/server/os/SchedulingPolicyService;
.super Landroid/os/ISchedulingPolicyService$Stub;
.source "SchedulingPolicyService.java"


# static fields
.field private static final MEDIA_PROCESS_NAMES:[Ljava/lang/String;

.field private static final PRIORITY_MAX:I = 0x3

.field private static final PRIORITY_MIN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SchedulingPolicyService"


# instance fields
.field private mBoostedPid:I

.field private mClient:Landroid/os/IBinder;

.field private final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    const-string v0, "media.swcodec"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/os/SchedulingPolicyService;->MEDIA_PROCESS_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 56
    invoke-direct {p0}, Landroid/os/ISchedulingPolicyService$Stub;-><init>()V

    .line 45
    new-instance v0, Lcom/android/server/os/SchedulingPolicyService$1;

    invoke-direct {v0, p0}, Lcom/android/server/os/SchedulingPolicyService$1;-><init>(Lcom/android/server/os/SchedulingPolicyService;)V

    iput-object v0, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 67
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->get()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/server/os/-$$Lambda$SchedulingPolicyService$ao2OiSvvlyzmJ0li0c0nhHy-IDk;

    invoke-direct {v1, p0}, Lcom/android/server/os/-$$Lambda$SchedulingPolicyService$ao2OiSvvlyzmJ0li0c0nhHy-IDk;-><init>(Lcom/android/server/os/SchedulingPolicyService;)V

    const-string v2, "SchedulingPolicyService.<init>"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 79
    return-void
.end method

.method private disableCpusetBoost(I)I
    .registers 10

    .line 180
    const-string v0, " back to group default"

    const-string v1, "SchedulingPolicyService"

    iget v2, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 183
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 184
    iget-object v4, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    const/4 v5, 0x0

    if-eqz v4, :cond_1c

    .line 186
    const/4 v6, 0x0

    :try_start_f
    iget-object v7, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v4, v7, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_19
    .catchall {:try_start_f .. :try_end_14} :catchall_15

    goto :goto_1a

    .line 189
    :catchall_15
    move-exception p1

    iput-object v6, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    throw p1

    .line 187
    :catch_19
    move-exception v4

    .line 189
    :goto_1a
    iput-object v6, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    .line 195
    :cond_1c
    if-ne v2, p1, :cond_51

    .line 197
    :try_start_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-static {p1, v3}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_38} :catch_39

    .line 201
    goto :goto_51

    .line 199
    :catch_39
    move-exception v2

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t move pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_51
    :goto_51
    return v5
.end method

.method private enableCpusetBoost(ILandroid/os/IBinder;)I
    .registers 9

    .line 141
    const-string v0, "SchedulingPolicyService"

    iget v1, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    const/4 v2, 0x0

    if-ne v1, p1, :cond_8

    .line 142
    return v2

    .line 148
    :cond_8
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 149
    iget-object v3, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    if-eqz v3, :cond_1d

    .line 151
    const/4 v4, 0x0

    :try_start_10
    iget-object v5, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v3, v5, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_1a
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_1b

    .line 154
    :catchall_16
    move-exception p1

    iput-object v4, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    throw p1

    .line 152
    :catch_1a
    move-exception v3

    .line 154
    :goto_1b
    iput-object v4, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;

    .line 159
    :cond_1d
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p2, v3, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to group "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {p1, v4}, Landroid/os/Process;->setProcessGroup(II)V

    .line 164
    iput p1, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 165
    iput-object p2, p0, Lcom/android/server/os/SchedulingPolicyService;->mClient:Landroid/os/IBinder;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_46} :catch_47

    .line 167
    return v2

    .line 168
    :catch_47
    move-exception p1

    .line 169
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed enableCpusetBoost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :try_start_5c
    iget-object p1, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {p2, p1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_61} :catch_62

    goto :goto_63

    .line 173
    :catch_62
    move-exception p1

    :goto_63
    nop

    .line 176
    return v1
.end method

.method private isPermitted()Z
    .registers 4

    .line 209
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_c

    .line 210
    return v2

    .line 213
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x411

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x417

    if-eq v0, v1, :cond_1e

    .line 219
    const/4 v0, 0x0

    return v0

    .line 217
    :cond_1e
    return v2
.end method


# virtual methods
.method public synthetic lambda$new$0$SchedulingPolicyService()V
    .registers 5

    .line 68
    iget-object v0, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    monitor-enter v0

    .line 70
    :try_start_3
    iget v1, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1e

    .line 71
    sget-object v1, Lcom/android/server/os/SchedulingPolicyService;->MEDIA_PROCESS_NAMES:[Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    .line 72
    if-eqz v1, :cond_1e

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1e

    .line 73
    const/4 v2, 0x0

    aget v3, v1, v2

    iput v3, p0, Lcom/android/server/os/SchedulingPolicyService;->mBoostedPid:I

    .line 74
    aget v1, v1, v2

    invoke-direct {p0, v1}, Lcom/android/server/os/SchedulingPolicyService;->disableCpusetBoost(I)I

    .line 77
    :cond_1e
    monitor-exit v0

    .line 78
    return-void

    .line 77
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method public requestCpusetBoost(ZLandroid/os/IBinder;)I
    .registers 7

    .line 120
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_14

    .line 121
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3f5

    if-eq v0, v1, :cond_14

    .line 122
    return v2

    .line 125
    :cond_14
    sget-object v0, Lcom/android/server/os/SchedulingPolicyService;->MEDIA_PROCESS_NAMES:[Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v0

    .line 126
    if-eqz v0, :cond_3a

    array-length v1, v0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_21

    goto :goto_3a

    .line 131
    :cond_21
    iget-object v1, p0, Lcom/android/server/os/SchedulingPolicyService;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    monitor-enter v1

    .line 132
    const/4 v2, 0x0

    if-eqz p1, :cond_2f

    .line 133
    :try_start_27
    aget p1, v0, v2

    invoke-direct {p0, p1, p2}, Lcom/android/server/os/SchedulingPolicyService;->enableCpusetBoost(ILandroid/os/IBinder;)I

    move-result p1

    monitor-exit v1

    return p1

    .line 135
    :cond_2f
    aget p1, v0, v2

    invoke-direct {p0, p1}, Lcom/android/server/os/SchedulingPolicyService;->disableCpusetBoost(I)I

    move-result p1

    monitor-exit v1

    return p1

    .line 137
    :catchall_37
    move-exception p1

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_27 .. :try_end_39} :catchall_37

    throw p1

    .line 127
    :cond_3a
    :goto_3a
    const-string p1, "SchedulingPolicyService"

    const-string/jumbo p2, "requestCpusetBoost: can\'t find media.codec process"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return v2
.end method

.method public requestPriority(IIIZ)I
    .registers 8

    .line 92
    invoke-direct {p0}, Lcom/android/server/os/SchedulingPolicyService;->isPermitted()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_5c

    const/4 v0, 0x1

    if-lt p3, v0, :cond_5c

    const/4 v0, 0x3

    if-gt p3, v0, :cond_5c

    .line 93
    invoke-static {p2}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v0

    if-eq v0, p1, :cond_14

    goto :goto_5c

    .line 96
    :cond_14
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    const/16 v0, 0x3ea

    const-string v2, "SchedulingPolicyService"

    if-eq p1, v0, :cond_3d

    .line 99
    if-nez p4, :cond_22

    .line 100
    const/4 p1, 0x4

    goto :goto_23

    :cond_22
    const/4 p1, 0x6

    .line 99
    :goto_23
    :try_start_23
    invoke-static {p2, p1}, Landroid/os/Process;->setThreadGroup(II)V
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_26} :catch_27

    .line 104
    goto :goto_3d

    .line 101
    :catch_27
    move-exception p1

    .line 102
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed setThreadGroup: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return v1

    .line 108
    :cond_3d
    :goto_3d
    const p1, 0x40000001  # 2.0000002f

    :try_start_40
    invoke-static {p2, p1, p3}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_40 .. :try_end_43} :catch_46

    .line 113
    nop

    .line 114
    const/4 p1, 0x0

    return p1

    .line 110
    :catch_46
    move-exception p1

    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed setThreadScheduler: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return v1

    .line 94
    :cond_5c
    :goto_5c
    return v1
.end method
