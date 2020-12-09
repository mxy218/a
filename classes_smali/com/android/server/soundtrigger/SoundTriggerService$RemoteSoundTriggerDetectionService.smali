.class Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;
.super Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;
.source "SoundTriggerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteSoundTriggerDetectionService"
.end annotation


# static fields
.field private static final MSG_STOP_ALL_PENDING_OPERATIONS:I = 0x1


# instance fields
.field private final mClient:Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;

.field private mDestroyOnceRunningOpsDone:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRemoteServiceLock"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mIsBound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRemoteServiceLock"
        }
    .end annotation
.end field

.field private mIsDestroyed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRemoteServiceLock"
        }
    .end annotation
.end field

.field private final mNumOps:Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

.field private mNumTotalOpsPerformed:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRemoteServiceLock"
        }
    .end annotation
.end field

.field private final mParams:Landroid/os/Bundle;

.field private final mPendingOps:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRemoteServiceLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/soundtrigger/SoundTriggerService$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private final mPuuid:Landroid/os/ParcelUuid;

.field private final mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

.field private final mRemoteServiceLock:Ljava/lang/Object;

.field private final mRemoteServiceWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mRunningOpIds:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRemoteServiceLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRemoteServiceLock"
        }
    .end annotation
.end field

.field private final mServiceName:Landroid/content/ComponentName;

.field private final mUser:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerService;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerService;Ljava/util/UUID;Landroid/os/Bundle;Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;)V
    .registers 8

    .line 852
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-direct {p0}, Landroid/hardware/soundtrigger/IRecognitionStatusCallback$Stub;-><init>()V

    .line 789
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    .line 810
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPendingOps:Ljava/util/ArrayList;

    .line 813
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    .line 853
    new-instance v0, Landroid/os/ParcelUuid;

    invoke-direct {v0, p2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    .line 854
    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mParams:Landroid/os/Bundle;

    .line 855
    iput-object p4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    .line 856
    iput-object p5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mUser:Landroid/os/UserHandle;

    .line 857
    iput-object p6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    .line 858
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mHandler:Landroid/os/Handler;

    .line 860
    iget-object p2, p1, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    const-string/jumbo p3, "power"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    .line 861
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "RemoteSoundTriggerDetectionService "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    .line 862
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ":"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    .line 863
    invoke-virtual {p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 861
    const/4 p4, 0x1

    invoke-virtual {p2, p4, p3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 865
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$600(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 866
    :try_start_70
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$1000(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/util/ArrayMap;

    move-result-object p3

    iget-object p4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

    .line 867
    if-nez p3, :cond_95

    .line 868
    new-instance p3, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$1;)V

    .line 869
    invoke-static {p1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$1000(Lcom/android/server/soundtrigger/SoundTriggerService;)Landroid/util/ArrayMap;

    move-result-object p4

    iget-object p5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    :cond_95
    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mNumOps:Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

    .line 872
    monitor-exit p2
    :try_end_98
    .catchall {:try_start_70 .. :try_end_98} :catchall_a0

    .line 874
    new-instance p2, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;

    invoke-direct {p2, p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService$1;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;Lcom/android/server/soundtrigger/SoundTriggerService;)V

    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mClient:Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;

    .line 895
    return-void

    .line 872
    :catchall_a0
    move-exception p1

    :try_start_a1
    monitor-exit p2
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a0

    throw p1
.end method

.method static synthetic access$1200(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)Ljava/lang/Object;
    .registers 1

    .line 785
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)Landroid/util/ArraySet;
    .registers 1

    .line 785
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)Ljava/util/ArrayList;
    .registers 1

    .line 785
    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPendingOps:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)Z
    .registers 1

    .line 785
    iget-boolean p0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)V
    .registers 1

    .line 785
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->destroy()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)V
    .registers 1

    .line 785
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->disconnectLocked()V

    return-void
.end method

.method private bind()V
    .registers 11

    .line 989
    const-string v0, ": Could not bind to "

    const-string v1, " does not require "

    const-string v2, " not found"

    const-string v3, "android.permission.BIND_SOUND_TRIGGER_DETECTION_SERVICE"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 991
    :try_start_c
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 992
    iget-object v7, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 994
    iget-object v7, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v7, v7, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const v8, 0x10000084

    iget-object v9, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mUser:Landroid/os/UserHandle;

    .line 996
    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    .line 994
    invoke-virtual {v7, v6, v8, v9}, Landroid/content/pm/PackageManager;->resolveServiceAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v7
    :try_end_2b
    .catchall {:try_start_c .. :try_end_2b} :catchall_124

    .line 998
    const-string v8, "SoundTriggerService"

    const-string v9, ": "

    if-nez v7, :cond_76

    .line 999
    :try_start_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V
    :try_end_72
    .catchall {:try_start_31 .. :try_end_72} :catchall_124

    .line 1032
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1004
    return-void

    .line 1007
    :cond_76
    :try_start_76
    iget-object v2, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 1008
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_cb

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V
    :try_end_c7
    .catchall {:try_start_76 .. :try_end_c7} :catchall_124

    .line 1032
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1016
    return-void

    .line 1019
    :cond_cb
    :try_start_cb
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v1, v1, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    const v2, 0x4000001

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v6, p0, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mIsBound:Z

    .line 1022
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mIsBound:Z

    if-eqz v1, :cond_e4

    .line 1023
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_11f

    .line 1025
    :cond_e4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V
    :try_end_11f
    .catchall {:try_start_cb .. :try_end_11f} :catchall_124

    .line 1032
    :goto_11f
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1033
    nop

    .line 1034
    return-void

    .line 1032
    :catchall_124
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private createAudioRecordForEvent(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)Landroid/media/AudioRecord;
    .registers 8

    .line 1157
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 1158
    const/16 v1, 0x7cf

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    .line 1159
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 1162
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->getCaptureFormat()Landroid/media/AudioFormat;

    move-result-object v1

    .line 1163
    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 1164
    invoke-virtual {v1}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 1165
    invoke-virtual {v1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 1166
    invoke-virtual {v1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 1167
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    .line 1170
    invoke-virtual {v1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v2

    if-nez v2, :cond_3d

    .line 1171
    const v2, 0x2ee00

    goto :goto_41

    .line 1172
    :cond_3d
    invoke-virtual {v1}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v2

    .line 1173
    :goto_41
    invoke-virtual {v1}, Landroid/media/AudioFormat;->getChannelCount()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4b

    .line 1174
    const/16 v3, 0xc

    goto :goto_4d

    .line 1175
    :cond_4b
    const/16 v3, 0x10

    .line 1176
    :goto_4d
    invoke-virtual {v1}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v4

    .line 1169
    invoke-static {v2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v2

    .line 1178
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    const-string v5, "createAudioRecordForEvent"

    invoke-direct {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1180
    new-instance v3, Landroid/media/AudioRecord;

    .line 1181
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->getCaptureSession()I

    move-result p1

    invoke-direct {v3, v0, v1, v2, p1}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V

    .line 1180
    return-object v3
.end method

.method private destroy()V
    .registers 5

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": destroy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundTriggerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": destroy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 940
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 941
    :try_start_3a
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->disconnectLocked()V

    .line 943
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mIsDestroyed:Z

    .line 944
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_61

    .line 947
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    if-nez v0, :cond_60

    .line 948
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 949
    :try_start_4c
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$900(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    monitor-exit v0

    goto :goto_60

    :catchall_5d
    move-exception v1

    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_4c .. :try_end_5f} :catchall_5d

    throw v1

    .line 952
    :cond_60
    :goto_60
    return-void

    .line 944
    :catchall_61
    move-exception v1

    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v1
.end method

.method private disconnectLocked()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRemoteServiceLock"
        }
    .end annotation

    .line 907
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    if-eqz v0, :cond_45

    .line 909
    :try_start_4
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-interface {v0, v1}, Landroid/media/soundtrigger/ISoundTriggerDetectionService;->removeClient(Landroid/os/ParcelUuid;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_a

    .line 916
    goto :goto_42

    .line 910
    :catch_a
    move-exception v0

    .line 911
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Cannot remove client"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SoundTriggerService"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 913
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Cannot remove client"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 918
    :goto_42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    .line 921
    :cond_45
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mIsBound:Z

    if-eqz v0, :cond_64

    .line 922
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v0, v0, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 923
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mIsBound:Z

    .line 925
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 926
    :try_start_5a
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 927
    monitor-exit v0

    goto :goto_64

    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_5a .. :try_end_63} :catchall_61

    throw v1

    .line 929
    :cond_64
    :goto_64
    return-void
.end method

.method public static synthetic lambda$wfDlqQ7aPvu9qZCZ24jJu4tfUMY(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->stopAllPendingOperations()V

    return-void
.end method

.method private runOrAddOperation(Lcom/android/server/soundtrigger/SoundTriggerService$Operation;)V
    .registers 9

    .line 1043
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1044
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mIsDestroyed:Z

    if-nez v1, :cond_126

    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    if-eqz v1, :cond_d

    goto/16 :goto_126

    .line 1055
    :cond_d
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    if-nez v1, :cond_1f

    .line 1056
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPendingOps:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    iget-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mIsBound:Z

    if-nez p1, :cond_124

    .line 1059
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->bind()V

    goto/16 :goto_124

    .line 1062
    :cond_1f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 1063
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mNumOps:Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->clearOldOps(J)V

    .line 1066
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v3, v3, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "max_sound_trigger_detection_service_ops_per_day"

    const v5, 0x7fffffff

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 1071
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mNumOps:Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

    invoke-virtual {v3}, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->getOpsAdded()I

    .line 1093
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mNumOps:Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$NumOps;->addOp(J)V

    .line 1096
    iget v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mNumTotalOpsPerformed:I

    .line 1098
    :cond_44
    iget v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mNumTotalOpsPerformed:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mNumTotalOpsPerformed:I

    .line 1099
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_162

    if-nez v2, :cond_44

    .line 1103
    :try_start_56
    const-string v2, "SoundTriggerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": runOp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v2

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": runOp "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1108
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    invoke-virtual {p1, v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;->run(ILandroid/media/soundtrigger/ISoundTriggerDetectionService;)V

    .line 1109
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_a1} :catch_a2
    .catchall {:try_start_56 .. :try_end_a1} :catchall_162

    .line 1116
    goto :goto_e0

    .line 1110
    :catch_a2
    move-exception p1

    .line 1111
    :try_start_a3
    const-string v2, "SoundTriggerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": Could not run operation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1113
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": Could not run operation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1120
    :goto_e0
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPendingOps:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_fc

    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_fc

    .line 1121
    iget-boolean p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    if-eqz p1, :cond_f8

    .line 1122
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->destroy()V

    goto :goto_124

    .line 1124
    :cond_f8
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->disconnectLocked()V

    goto :goto_124

    .line 1127
    :cond_fc
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1128
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$wfDlqQ7aPvu9qZCZ24jJu4tfUMY;->INSTANCE:Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$wfDlqQ7aPvu9qZCZ24jJu4tfUMY;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1130
    invoke-virtual {v1, v3}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    iget-object v2, v2, Lcom/android/server/soundtrigger/SoundTriggerService;->mContext:Landroid/content/Context;

    .line 1131
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sound_trigger_detection_service_op_timeout"

    const-wide v4, 0x7fffffffffffffffL

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1128
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1136
    :cond_124
    :goto_124
    monitor-exit v0

    .line 1137
    return-void

    .line 1045
    :cond_126
    :goto_126
    const-string v1, "SoundTriggerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Dropped operation as already destroyed or marked for destruction"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":Dropped operation as already destroyed or marked for destruction"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1051
    invoke-virtual {p1}, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;->drop()V

    .line 1052
    monitor-exit v0

    return-void

    .line 1136
    :catchall_162
    move-exception p1

    monitor-exit v0
    :try_end_164
    .catchall {:try_start_a3 .. :try_end_164} :catchall_162

    throw p1
.end method

.method private stopAllPendingOperations()V
    .registers 8

    .line 958
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 959
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mIsDestroyed:Z

    if-eqz v1, :cond_9

    .line 960
    monitor-exit v0

    return-void

    .line 963
    :cond_9
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    if-eqz v1, :cond_7c

    .line 964
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_81

    .line 965
    const/4 v2, 0x0

    :goto_14
    if-ge v2, v1, :cond_77

    .line 967
    :try_start_16
    iget-object v3, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/media/soundtrigger/ISoundTriggerDetectionService;->onStopOperation(Landroid/os/ParcelUuid;I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_29} :catch_2a
    .catchall {:try_start_16 .. :try_end_29} :catchall_81

    .line 975
    goto :goto_74

    .line 968
    :catch_2a
    move-exception v3

    .line 969
    :try_start_2b
    const-string v4, "SoundTriggerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": Could not stop operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    .line 970
    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 969
    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 972
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v3

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": Could not stop operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    .line 973
    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 972
    invoke-virtual {v3, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 965
    :goto_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 978
    :cond_77
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRunningOpIds:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 981
    :cond_7c
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->disconnectLocked()V

    .line 982
    monitor-exit v0

    .line 983
    return-void

    .line 982
    :catchall_81
    move-exception v1

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_2b .. :try_end_83} :catchall_81

    throw v1
.end method


# virtual methods
.method public synthetic lambda$onError$3$SoundTriggerService$RemoteSoundTriggerDetectionService()V
    .registers 4

    .line 1229
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1230
    :try_start_7
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$900(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_1b

    .line 1232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    .line 1233
    return-void

    .line 1231
    :catchall_1b
    move-exception v1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public synthetic lambda$onError$4$SoundTriggerService$RemoteSoundTriggerDetectionService(IILandroid/media/soundtrigger/ISoundTriggerDetectionService;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1235
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-interface {p3, v0, p2, p1}, Landroid/media/soundtrigger/ISoundTriggerDetectionService;->onError(Landroid/os/ParcelUuid;II)V

    return-void
.end method

.method public synthetic lambda$onGenericSoundTriggerDetected$0$SoundTriggerService$RemoteSoundTriggerDetectionService()V
    .registers 4

    .line 1194
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRecognitionConfig:Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;

    iget-boolean v0, v0, Landroid/hardware/soundtrigger/SoundTrigger$RecognitionConfig;->allowMultipleTriggers:Z

    if-nez v0, :cond_24

    .line 1196
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$800(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1197
    :try_start_d
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->this$0:Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$900(Lcom/android/server/soundtrigger/SoundTriggerService;)Ljava/util/TreeMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_21

    .line 1199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    goto :goto_24

    .line 1198
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1

    .line 1201
    :cond_24
    :goto_24
    return-void
.end method

.method public synthetic lambda$onGenericSoundTriggerDetected$1$SoundTriggerService$RemoteSoundTriggerDetectionService(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;ILandroid/media/soundtrigger/ISoundTriggerDetectionService;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1203
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-interface {p3, v0, p2, p1}, Landroid/media/soundtrigger/ISoundTriggerDetectionService;->onGenericRecognitionEvent(Landroid/os/ParcelUuid;ILandroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    return-void
.end method

.method public synthetic lambda$onGenericSoundTriggerDetected$2$SoundTriggerService$RemoteSoundTriggerDetectionService(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .registers 3

    .line 1206
    invoke-virtual {p1}, Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;->isCaptureAvailable()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1207
    invoke-direct {p0, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->createAudioRecordForEvent(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)Landroid/media/AudioRecord;

    move-result-object p1

    .line 1211
    invoke-virtual {p1}, Landroid/media/AudioRecord;->startRecording()V

    .line 1212
    invoke-virtual {p1}, Landroid/media/AudioRecord;->release()V

    .line 1214
    :cond_10
    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 5

    .line 1295
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": onBindingDied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SoundTriggerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p1

    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": onBindingDied"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1300
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1301
    :try_start_3a
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->destroy()V

    .line 1302
    monitor-exit p1

    .line 1303
    return-void

    .line 1302
    :catchall_3f
    move-exception v0

    monitor-exit p1
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public onError(I)V
    .registers 7

    .line 1219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": onError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SoundTriggerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1224
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;

    new-instance v1, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$t5mBYXswwLAAdm47WS10stLjYng;

    invoke-direct {v1, p0}, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$t5mBYXswwLAAdm47WS10stLjYng;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)V

    new-instance v2, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$crQZgbDmIG6q92Mrkm49T2yqrs0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$crQZgbDmIG6q92Mrkm49T2yqrs0;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;I)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;-><init>(Ljava/lang/Runnable;Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;Ljava/lang/Runnable;Lcom/android/server/soundtrigger/SoundTriggerService$1;)V

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->runOrAddOperation(Lcom/android/server/soundtrigger/SoundTriggerService$Operation;)V

    .line 1238
    return-void
.end method

.method public onGenericSoundTriggerDetected(Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V
    .registers 7

    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Generic sound trigger event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SoundTriggerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v2, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1191
    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;

    new-instance v1, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$yqLMvkOmrO13yWrggtSaVrLgsWo;

    invoke-direct {v1, p0}, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$yqLMvkOmrO13yWrggtSaVrLgsWo;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;)V

    new-instance v2, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$F-iA254xzDfAHrQW86c2oSqXfwI;

    invoke-direct {v2, p0, p1}, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$F-iA254xzDfAHrQW86c2oSqXfwI;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    new-instance v3, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$pFqiq_C9KJsoa_HQOdj7lmMixsI;

    invoke-direct {v3, p0, p1}, Lcom/android/server/soundtrigger/-$$Lambda$SoundTriggerService$RemoteSoundTriggerDetectionService$pFqiq_C9KJsoa_HQOdj7lmMixsI;-><init>(Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;Landroid/hardware/soundtrigger/SoundTrigger$GenericRecognitionEvent;)V

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;-><init>(Ljava/lang/Runnable;Lcom/android/server/soundtrigger/SoundTriggerService$Operation$ExecuteOp;Ljava/lang/Runnable;Lcom/android/server/soundtrigger/SoundTriggerService$1;)V

    invoke-direct {p0, v0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->runOrAddOperation(Lcom/android/server/soundtrigger/SoundTriggerService$Operation;)V

    .line 1215
    return-void
.end method

.method public onKeyphraseDetected(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;)V
    .registers 9

    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": IGNORED onKeyphraseDetected("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SoundTriggerService"

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v4, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1147
    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .registers 5

    .line 1307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for model "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned a null binding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundTriggerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v1, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for model "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " returned a null binding"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1312
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1313
    :try_start_4a
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->disconnectLocked()V

    .line 1314
    monitor-exit p1

    .line 1315
    return-void

    .line 1314
    :catchall_4f
    move-exception v0

    monitor-exit p1
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_4f

    throw v0
.end method

.method public onRecognitionPaused()V
    .registers 7

    .line 1242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": IGNORED onRecognitionPaused"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SoundTriggerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1247
    return-void
.end method

.method public onRecognitionResumed()V
    .registers 7

    .line 1251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": IGNORED onRecognitionResumed"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "SoundTriggerService"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object v0

    new-instance v3, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1256
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 1260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": onServiceConnected("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SoundTriggerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p1

    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": onServiceConnected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1265
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1266
    :try_start_4a
    invoke-static {p2}, Landroid/media/soundtrigger/ISoundTriggerDetectionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;
    :try_end_50
    .catchall {:try_start_4a .. :try_end_50} :catchall_93

    .line 1269
    :try_start_50
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mParams:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mClient:Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;

    invoke-interface {p2, v0, v1, v2}, Landroid/media/soundtrigger/ISoundTriggerDetectionService;->setClient(Landroid/os/ParcelUuid;Landroid/os/Bundle;Landroid/media/soundtrigger/ISoundTriggerDetectionServiceClient;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_5b} :catch_73
    .catchall {:try_start_50 .. :try_end_5b} :catchall_93

    .line 1273
    nop

    .line 1275
    :goto_5c
    :try_start_5c
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPendingOps:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_71

    .line 1276
    iget-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPendingOps:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/soundtrigger/SoundTriggerService$Operation;

    invoke-direct {p0, p2}, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->runOrAddOperation(Lcom/android/server/soundtrigger/SoundTriggerService$Operation;)V

    goto :goto_5c

    .line 1278
    :cond_71
    monitor-exit p1

    .line 1279
    return-void

    .line 1270
    :catch_73
    move-exception p2

    .line 1271
    const-string v0, "SoundTriggerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Could not init "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1272
    monitor-exit p1

    return-void

    .line 1278
    :catchall_93
    move-exception p2

    monitor-exit p1
    :try_end_95
    .catchall {:try_start_5c .. :try_end_95} :catchall_93

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 1283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": onServiceDisconnected"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SoundTriggerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    invoke-static {}, Lcom/android/server/soundtrigger/SoundTriggerService;->access$200()Lcom/android/server/soundtrigger/SoundTriggerLogger;

    move-result-object p1

    new-instance v0, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mPuuid:Landroid/os/ParcelUuid;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": onServiceDisconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/soundtrigger/SoundTriggerLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/android/server/soundtrigger/SoundTriggerLogger;->log(Lcom/android/server/soundtrigger/SoundTriggerLogger$Event;)V

    .line 1288
    iget-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mRemoteServiceLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1289
    const/4 v0, 0x0

    :try_start_3b
    iput-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mService:Landroid/media/soundtrigger/ISoundTriggerDetectionService;

    .line 1290
    monitor-exit p1

    .line 1291
    return-void

    .line 1290
    :catchall_3f
    move-exception v0

    monitor-exit p1
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_3f

    throw v0
.end method

.method public pingBinder()Z
    .registers 2

    .line 899
    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mIsDestroyed:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/soundtrigger/SoundTriggerService$RemoteSoundTriggerDetectionService;->mDestroyOnceRunningOpsDone:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
