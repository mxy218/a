.class public Lcom/android/server/devicepolicy/DeviceAdminServiceController;
.super Ljava/lang/Object;
.source "DeviceAdminServiceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "DevicePolicyManager"


# instance fields
.field private final mConnections:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

.field final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

.field final mLock:Ljava/lang/Object;

.field private final mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Lcom/android/server/devicepolicy/DevicePolicyConstants;)V
    .registers 4

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mLock:Ljava/lang/Object;

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    .line 92
    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mService:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 93
    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 94
    iget-object p1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mContext:Landroid/content/Context;

    .line 95
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mHandler:Landroid/os/Handler;

    .line 96
    iput-object p2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/devicepolicy/DeviceAdminServiceController;)Landroid/os/Handler;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/devicepolicy/DeviceAdminServiceController;)Lcom/android/server/devicepolicy/DevicePolicyConstants;
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConstants:Lcom/android/server/devicepolicy/DevicePolicyConstants;

    return-object p0
.end method

.method static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 2

    .line 58
    return-void
.end method

.method private disconnectServiceOnUserLocked(ILjava/lang/String;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;

    .line 175
    if-eqz v0, :cond_24

    .line 176
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 177
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 176
    const-string p2, "Stopping service for u%d if already running for %s."

    invoke-static {p2, v1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;->unbind()V

    .line 179
    iget-object p2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 181
    :cond_24
    return-void
.end method

.method private findService(Ljava/lang/String;I)Landroid/content/pm/ServiceInfo;
    .registers 10

    .line 105
    const-class v4, Landroid/app/admin/DeviceAdminService;

    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    .line 111
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    const-string v2, "android.app.action.DEVICE_ADMIN_SERVICE"

    const-string v3, "android.permission.BIND_DEVICE_ADMIN"

    move-object v0, p1

    move v1, p2

    invoke-static/range {v0 .. v6}, Lcom/android/server/appbinding/AppBindingUtils;->findService(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Landroid/content/pm/IPackageManager;Ljava/lang/StringBuilder;)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 8

    .line 184
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_3
    iget-object v1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 186
    monitor-exit v0

    return-void

    .line 188
    :cond_d
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 189
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Owner Services:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    const/4 v1, 0x0

    :goto_19
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_56

    .line 191
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 192
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "User: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 194
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 190
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 197
    :cond_56
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 198
    monitor-exit v0

    .line 199
    return-void

    .line 198
    :catchall_5b
    move-exception p1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw p1
.end method

.method public startServiceForOwner(Ljava/lang/String;ILjava/lang/String;)V
    .registers 14

    .line 121
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 123
    :try_start_6
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_80

    .line 124
    :try_start_9
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->findService(Ljava/lang/String;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 125
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v3, :cond_2b

    .line 126
    const-string v3, "Owner package %s on u%d has no service."

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v5

    .line 127
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v4

    .line 126
    invoke-static {v3, v6}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    invoke-direct {p0, p2, p3}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->disconnectServiceOnUserLocked(ILjava/lang/String;)V

    .line 129
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_7d

    .line 154
    iget-object p1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 129
    return-void

    .line 132
    :cond_2b
    :try_start_2b
    iget-object v7, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    .line 133
    invoke-virtual {v7, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/PersistentConnection;

    .line 134
    if-eqz v7, :cond_47

    .line 138
    const-string v7, "Disconnecting from existing service connection."

    new-array v8, v6, [Ljava/lang/Object;

    aput-object p1, v8, v5

    .line 139
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    .line 138
    invoke-static {v7, v8}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    invoke-direct {p0, p2, p3}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->disconnectServiceOnUserLocked(ILjava/lang/String;)V

    .line 143
    :cond_47
    const-string v7, "Owner package %s on u%d has service %s for %s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v5

    .line 144
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v4

    .line 145
    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v6

    const/4 p1, 0x3

    aput-object p3, v8, p1

    .line 143
    invoke-static {v7, v8}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    new-instance p1, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;

    .line 149
    invoke-virtual {v3}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p3

    invoke-direct {p1, p0, p2, p3}, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;-><init>(Lcom/android/server/devicepolicy/DeviceAdminServiceController;ILandroid/content/ComponentName;)V

    .line 150
    iget-object p3, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 151
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;->bind()V

    .line 152
    monitor-exit v2
    :try_end_76
    .catchall {:try_start_2b .. :try_end_76} :catchall_7d

    .line 154
    iget-object p1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 155
    nop

    .line 156
    return-void

    .line 152
    :catchall_7d
    move-exception p1

    :try_start_7e
    monitor-exit v2
    :try_end_7f
    .catchall {:try_start_7e .. :try_end_7f} :catchall_7d

    :try_start_7f
    throw p1
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_80

    .line 154
    :catchall_80
    move-exception p1

    iget-object p2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p2, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    throw p1
.end method

.method public stopServiceForOwner(ILjava/lang/String;)V
    .registers 6

    .line 162
    iget-object v0, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 164
    :try_start_6
    iget-object v2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_17

    .line 165
    :try_start_9
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->disconnectServiceOnUserLocked(ILjava/lang/String;)V

    .line 166
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_14

    .line 168
    iget-object p1, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 169
    nop

    .line 170
    return-void

    .line 166
    :catchall_14
    move-exception p1

    :try_start_15
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    :try_start_16
    throw p1
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    .line 168
    :catchall_17
    move-exception p1

    iget-object p2, p0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p2, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    throw p1
.end method
