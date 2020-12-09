.class final Lcom/android/server/role/FinancialSmsManager;
.super Ljava/lang/Object;
.source "FinancialSmsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/role/FinancialSmsManager$Command;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FinancialSmsManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mQueuedCommands:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/role/FinancialSmsManager$Command;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteService:Landroid/service/sms/IFinancialSmsService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mServiceConnection:Landroid/content/ServiceConnection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/role/FinancialSmsManager;->mLock:Ljava/lang/Object;

    .line 64
    iput-object p1, p0, Lcom/android/server/role/FinancialSmsManager;->mContext:Landroid/content/Context;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/role/FinancialSmsManager;)Ljava/lang/Object;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/android/server/role/FinancialSmsManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/role/FinancialSmsManager;)Landroid/service/sms/IFinancialSmsService;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/android/server/role/FinancialSmsManager;->mRemoteService:Landroid/service/sms/IFinancialSmsService;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/server/role/FinancialSmsManager;Landroid/service/sms/IFinancialSmsService;)Landroid/service/sms/IFinancialSmsService;
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/android/server/role/FinancialSmsManager;->mRemoteService:Landroid/service/sms/IFinancialSmsService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/role/FinancialSmsManager;)Ljava/util/ArrayList;
    .registers 1

    .line 47
    iget-object p0, p0, Lcom/android/server/role/FinancialSmsManager;->mQueuedCommands:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/server/role/FinancialSmsManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/android/server/role/FinancialSmsManager;->mQueuedCommands:Ljava/util/ArrayList;

    return-object p1
.end method

.method private connectAndRun(Lcom/android/server/role/FinancialSmsManager$Command;)V
    .registers 9

    .line 117
    iget-object v0, p0, Lcom/android/server/role/FinancialSmsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    iget-object v1, p0, Lcom/android/server/role/FinancialSmsManager;->mRemoteService:Landroid/service/sms/IFinancialSmsService;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_70

    if-eqz v1, :cond_26

    .line 120
    :try_start_7
    iget-object v1, p0, Lcom/android/server/role/FinancialSmsManager;->mRemoteService:Landroid/service/sms/IFinancialSmsService;

    invoke-interface {p1, v1}, Lcom/android/server/role/FinancialSmsManager$Command;->run(Landroid/service/sms/IFinancialSmsService;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_d
    .catchall {:try_start_7 .. :try_end_c} :catchall_70

    .line 123
    goto :goto_24

    .line 121
    :catch_d
    move-exception p1

    .line 122
    :try_start_e
    const-string v1, "FinancialSmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception calling service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_24
    monitor-exit v0

    return-void

    .line 126
    :cond_26
    iget-object v1, p0, Lcom/android/server/role/FinancialSmsManager;->mQueuedCommands:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-nez v1, :cond_32

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/role/FinancialSmsManager;->mQueuedCommands:Ljava/util/ArrayList;

    .line 129
    :cond_32
    iget-object v1, p0, Lcom/android/server/role/FinancialSmsManager;->mQueuedCommands:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object p1, p0, Lcom/android/server/role/FinancialSmsManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz p1, :cond_3d

    monitor-exit v0

    return-void

    .line 136
    :cond_3d
    new-instance p1, Lcom/android/server/role/FinancialSmsManager$1;

    invoke-direct {p1, p0}, Lcom/android/server/role/FinancialSmsManager$1;-><init>(Lcom/android/server/role/FinancialSmsManager;)V

    iput-object p1, p0, Lcom/android/server/role/FinancialSmsManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 179
    invoke-direct {p0}, Lcom/android/server/role/FinancialSmsManager;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object p1

    .line 180
    if-eqz p1, :cond_6e

    .line 181
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 182
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 183
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_56
    .catchall {:try_start_e .. :try_end_56} :catchall_70

    .line 185
    :try_start_56
    iget-object p1, p0, Lcom/android/server/role/FinancialSmsManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/role/FinancialSmsManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 186
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 185
    invoke-virtual {p1, v1, v5, v2, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_65
    .catchall {:try_start_56 .. :try_end_65} :catchall_69

    .line 188
    :try_start_65
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 189
    goto :goto_6e

    .line 188
    :catchall_69
    move-exception p1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 191
    :cond_6e
    :goto_6e
    monitor-exit v0

    .line 192
    return-void

    .line 191
    :catchall_70
    move-exception p1

    monitor-exit v0
    :try_end_72
    .catchall {:try_start_65 .. :try_end_72} :catchall_70

    throw p1
.end method

.method private getServiceComponentName()Landroid/content/ComponentName;
    .registers 6

    .line 89
    invoke-virtual {p0}, Lcom/android/server/role/FinancialSmsManager;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 90
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 92
    :cond_8
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v3, "android.permission.BIND_FINANCIAL_SMS_SERVICE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not require permission "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FinancialSmsManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-object v1

    .line 99
    :cond_39
    return-object v2
.end method

.method static synthetic lambda$getSmsMessages$0(Landroid/os/RemoteCallback;Landroid/os/Bundle;Landroid/service/sms/IFinancialSmsService;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-interface {p2, p0, p1}, Landroid/service/sms/IFinancialSmsService;->getSmsMessages(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    .line 199
    invoke-direct {p0}, Lcom/android/server/role/FinancialSmsManager;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 200
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "User ID: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 201
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Queued commands: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/android/server/role/FinancialSmsManager;->mQueuedCommands:Ljava/util/ArrayList;

    const-string v2, "N/A"

    if-nez v1, :cond_25

    .line 203
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2c

    .line 205
    :cond_25
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 207
    :goto_2c
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "Implementation: "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 208
    if-nez v0, :cond_3a

    .line 209
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    return-void

    .line 212
    :cond_3a
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 6

    .line 69
    iget-object v0, p0, Lcom/android/server/role/FinancialSmsManager;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getServicesSystemSharedLibraryPackageName()Ljava/lang/String;

    move-result-object v0

    .line 71
    const/4 v1, 0x0

    const-string v2, "FinancialSmsManager"

    if-nez v0, :cond_16

    .line 72
    const-string/jumbo v0, "no external services package!"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-object v1

    .line 76
    :cond_16
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.service.sms.action.FINANCIAL_SERVICE_INTENT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    iget-object v0, p0, Lcom/android/server/role/FinancialSmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_35

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v3, :cond_32

    goto :goto_35

    .line 84
    :cond_32
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0

    .line 81
    :cond_35
    :goto_35
    const-string v0, "No valid components found."

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-object v1
.end method

.method getSmsMessages(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V
    .registers 4

    .line 195
    new-instance v0, Lcom/android/server/role/-$$Lambda$FinancialSmsManager$UHY1FCAaWVBjCaZaVTnVZ0IItrI;

    invoke-direct {v0, p1, p2}, Lcom/android/server/role/-$$Lambda$FinancialSmsManager$UHY1FCAaWVBjCaZaVTnVZ0IItrI;-><init>(Landroid/os/RemoteCallback;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/android/server/role/FinancialSmsManager;->connectAndRun(Lcom/android/server/role/FinancialSmsManager$Command;)V

    .line 196
    return-void
.end method

.method reset()V
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/android/server/role/FinancialSmsManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_3
    iget-object v1, p0, Lcom/android/server/role/FinancialSmsManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_12

    .line 105
    iget-object v1, p0, Lcom/android/server/role/FinancialSmsManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/role/FinancialSmsManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 106
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/role/FinancialSmsManager;->mServiceConnection:Landroid/content/ServiceConnection;

    goto :goto_1a

    .line 108
    :cond_12
    const-string v1, "FinancialSmsManager"

    const-string/jumbo v2, "reset(): service is not bound. Do nothing."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_1a
    monitor-exit v0

    .line 111
    return-void

    .line 110
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method
