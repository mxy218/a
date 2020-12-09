.class Lcom/android/server/os/BugreportManagerServiceImpl;
.super Landroid/os/IDumpstate$Stub;
.source "BugreportManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;
    }
.end annotation


# static fields
.field private static final BUGREPORT_SERVICE:Ljava/lang/String; = "bugreportd"

.field private static final DEFAULT_BUGREPORT_SERVICE_TIMEOUT_MILLIS:J = 0x7530L

.field private static final TAG:Ljava/lang/String; = "BugreportManagerService"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBugreportWhitelistedPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Landroid/os/IDumpstate$Stub;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    .line 59
    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mContext:Landroid/content/Context;

    .line 60
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    .line 61
    nop

    .line 62
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/SystemConfig;->getBugreportWhitelistedPackages()Landroid/util/ArraySet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportWhitelistedPackages:Landroid/util/ArraySet;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/os/BugreportManagerServiceImpl;)Ljava/lang/Object;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method private ensureIsPrimaryUser()V
    .registers 4

    .line 132
    nop

    .line 134
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_a

    .line 137
    goto :goto_c

    .line 135
    :catch_a
    move-exception v0

    const/4 v0, 0x0

    .line 139
    :goto_c
    iget-object v1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 140
    if-nez v0, :cond_1d

    .line 141
    const-string v2, "No current user. Only primary user is allowed to take bugreports."

    invoke-direct {p0, v2}, Lcom/android/server/os/BugreportManagerServiceImpl;->logAndThrow(Ljava/lang/String;)V

    .line 143
    :cond_1d
    if-nez v1, :cond_24

    .line 144
    const-string v2, "No primary user. Only primary user is allowed to take bugreports."

    invoke-direct {p0, v2}, Lcom/android/server/os/BugreportManagerServiceImpl;->logAndThrow(Ljava/lang/String;)V

    .line 146
    :cond_24
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    if-eq v1, v0, :cond_2f

    .line 147
    const-string v0, "Current user not primary user. Only primary user is allowed to take bugreports."

    invoke-direct {p0, v0}, Lcom/android/server/os/BugreportManagerServiceImpl;->logAndThrow(Ljava/lang/String;)V

    .line 150
    :cond_2f
    return-void
.end method

.method private isDumpstateBinderServiceRunningLocked()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 187
    const-string v0, "dumpstate"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDumpstate$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstate;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private logAndThrow(Ljava/lang/String;)V
    .registers 3

    .line 243
    const-string v0, "BugreportManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private reportError(Landroid/os/IDumpstateListener;I)V
    .registers 4

    .line 235
    :try_start_0
    invoke-interface {p1, p2}, Landroid/os/IDumpstateListener;->onError(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    .line 239
    goto :goto_20

    .line 236
    :catch_4
    move-exception p1

    .line 238
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onError() transaction threw RemoteException: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BugreportManagerService"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_20
    return-void
.end method

.method private startAndGetDumpstateBinderServiceLocked()Landroid/os/IDumpstate;
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 205
    const-string v0, "ctl.start"

    const-string v1, "bugreportd"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    nop

    .line 208
    nop

    .line 209
    nop

    .line 210
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    move v3, v0

    move-object v4, v1

    move v1, v3

    .line 211
    :goto_11
    const-string/jumbo v5, "ms)"

    const-string v6, "BugreportManagerService"

    if-nez v1, :cond_53

    .line 213
    const-string v4, "dumpstate"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IDumpstate$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstate;

    move-result-object v4

    .line 214
    if-eqz v4, :cond_2a

    .line 215
    const-string v0, "Got bugreport service handle."

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    goto :goto_53

    .line 218
    :cond_2a
    int-to-long v7, v2

    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Waiting to get dumpstate service handle ("

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    add-int/2addr v3, v2

    .line 222
    mul-int/lit8 v2, v2, 0x2

    .line 223
    int-to-long v5, v3

    const-wide/16 v7, 0x7530

    cmp-long v1, v5, v7

    if-lez v1, :cond_51

    const/4 v1, 0x1

    goto :goto_11

    :cond_51
    move v1, v0

    goto :goto_11

    .line 225
    :cond_53
    :goto_53
    if-eqz v1, :cond_6c

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timed out waiting to get dumpstate service handle ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_6c
    return-object v4
.end method

.method private startBugreportLocked(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;ILandroid/os/IDumpstateListener;)V
    .registers 14
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 156
    invoke-direct {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->isDumpstateBinderServiceRunningLocked()Z

    move-result v0

    const-string v1, "BugreportManagerService"

    if-eqz v0, :cond_12

    .line 157
    const-string p1, "\'dumpstate\' is already running. Cannot start a new bugreport while another one is currently in progress."

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 p1, 0x5

    invoke-direct {p0, p6, p1}, Lcom/android/server/os/BugreportManagerServiceImpl;->reportError(Landroid/os/IDumpstateListener;I)V

    .line 161
    return-void

    .line 164
    :cond_12
    invoke-direct {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->startAndGetDumpstateBinderServiceLocked()Landroid/os/IDumpstate;

    move-result-object v0

    .line 165
    if-nez v0, :cond_22

    .line 166
    const-string p1, "Unable to get bugreport service"

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 p1, 0x2

    invoke-direct {p0, p6, p1}, Lcom/android/server/os/BugreportManagerServiceImpl;->reportError(Landroid/os/IDumpstateListener;I)V

    .line 168
    return-void

    .line 172
    :cond_22
    new-instance v6, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;

    invoke-direct {v6, p0, p6, v0}, Lcom/android/server/os/BugreportManagerServiceImpl$DumpstateListener;-><init>(Lcom/android/server/os/BugreportManagerServiceImpl;Landroid/os/IDumpstateListener;Landroid/os/IDumpstate;)V

    .line 174
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    :try_start_2c
    invoke-interface/range {v0 .. v6}, Landroid/os/IDumpstate;->startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;ILandroid/os/IDumpstateListener;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2f} :catch_30

    .line 182
    goto :goto_34

    .line 176
    :catch_30
    move-exception p1

    .line 181
    invoke-virtual {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->cancelBugreport()V

    .line 183
    :goto_34
    return-void
.end method

.method private validateBugreportMode(I)V
    .registers 5

    .line 115
    if-eqz p1, :cond_3d

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3d

    const/4 v0, 0x5

    if-ne p1, v0, :cond_12

    goto :goto_3d

    .line 121
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown bugreport mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BugreportManagerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_3d
    :goto_3d
    return-void
.end method


# virtual methods
.method public cancelBugreport()V
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string/jumbo v2, "startBugreport"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_d
    const-string v1, "ctl.stop"

    const-string v2, "bugreportd"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    monitor-exit v0

    .line 112
    return-void

    .line 111
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_16

    throw v1
.end method

.method public setListener(Ljava/lang/String;Landroid/os/IDumpstateListener;Z)Landroid/os/IDumpstateToken;
    .registers 4

    .line 69
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo p2, "setListener is not allowed on this service"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;ILandroid/os/IDumpstateListener;)V
    .registers 16

    .line 77
    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.DUMP"

    const-string/jumbo v1, "startBugreport"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-direct {p0, p5}, Lcom/android/server/os/BugreportManagerServiceImpl;->validateBugreportMode(I)V

    .line 82
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 84
    :try_start_1a
    invoke-direct {p0}, Lcom/android/server/os/BugreportManagerServiceImpl;->ensureIsPrimaryUser()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_5a

    .line 86
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    nop

    .line 89
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 90
    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p1, v3, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mBugreportWhitelistedPackages:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 96
    iget-object p1, p0, Lcom/android/server/os/BugreportManagerServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 97
    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    :try_start_3b
    invoke-direct/range {v2 .. v8}, Lcom/android/server/os/BugreportManagerServiceImpl;->startBugreportLocked(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;ILandroid/os/IDumpstateListener;)V

    .line 99
    monitor-exit p1

    .line 100
    return-void

    .line 99
    :catchall_40
    move-exception p2

    monitor-exit p1
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_40

    throw p2

    .line 93
    :cond_43
    new-instance p1, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not whitelisted to use Bugreport API"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :catchall_5a
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
