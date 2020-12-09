.class public Lcom/android/server/TestNetworkService$TestNetworkAgent;
.super Landroid/net/NetworkAgent;
.source "TestNetworkService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TestNetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TestNetworkAgent"
.end annotation


# static fields
.field private static final NETWORK_SCORE:I = 0x1


# instance fields
.field private mBinder:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBinderLock"
        }
    .end annotation
.end field

.field private final mBinderLock:Ljava/lang/Object;

.field private final mLp:Landroid/net/LinkProperties;

.field private final mNc:Landroid/net/NetworkCapabilities;

.field private final mNi:Landroid/net/NetworkInfo;

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/TestNetworkService;


# direct methods
.method private constructor <init>(Lcom/android/server/TestNetworkService;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/os/IBinder;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 169
    move-object v9, p0

    move-object v0, p1

    iput-object v0, v9, Lcom/android/server/TestNetworkService$TestNetworkAgent;->this$0:Lcom/android/server/TestNetworkService;

    .line 170
    const-string v4, "TEST_NETWORK"

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V

    .line 159
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v9, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mBinderLock:Ljava/lang/Object;

    .line 172
    move/from16 v0, p7

    iput v0, v9, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mUid:I

    .line 173
    move-object v0, p4

    iput-object v0, v9, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mNi:Landroid/net/NetworkInfo;

    .line 174
    move-object v0, p5

    iput-object v0, v9, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mNc:Landroid/net/NetworkCapabilities;

    .line 175
    move-object/from16 v0, p6

    iput-object v0, v9, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mLp:Landroid/net/LinkProperties;

    .line 177
    iget-object v1, v9, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mBinderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 178
    move-object/from16 v0, p8

    :try_start_2b
    iput-object v0, v9, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mBinder:Landroid/os/IBinder;
    :try_end_2d
    .catchall {:try_start_2b .. :try_end_2d} :catchall_3b

    .line 181
    :try_start_2d
    iget-object v0, v9, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_33} :catch_36
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    .line 185
    nop

    .line 186
    :try_start_34
    monitor-exit v1

    .line 187
    return-void

    .line 182
    :catch_36
    move-exception v0

    .line 183
    invoke-virtual {p0}, Lcom/android/server/TestNetworkService$TestNetworkAgent;->binderDied()V

    .line 184
    throw v0

    .line 186
    :catchall_3b
    move-exception v0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_3b

    throw v0
.end method

.method synthetic constructor <init>(Lcom/android/server/TestNetworkService;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/os/IBinder;Lcom/android/server/TestNetworkService$1;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    invoke-direct/range {p0 .. p8}, Lcom/android/server/TestNetworkService$TestNetworkAgent;-><init>(Lcom/android/server/TestNetworkService;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/TestNetworkService$TestNetworkAgent;)I
    .registers 1

    .line 147
    iget p0, p0, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mUid:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/TestNetworkService$TestNetworkAgent;)V
    .registers 1

    .line 147
    invoke-direct {p0}, Lcom/android/server/TestNetworkService$TestNetworkAgent;->teardown()V

    return-void
.end method

.method private teardown()V
    .registers 5

    .line 204
    iget-object v0, p0, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mNi:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mNi:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 206
    iget-object v0, p0, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mNi:Landroid/net/NetworkInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/TestNetworkService$TestNetworkAgent;->sendNetworkInfo(Landroid/net/NetworkInfo;)V

    .line 210
    iget-object v0, p0, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mBinderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_16
    iget-object v3, p0, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mBinder:Landroid/os/IBinder;

    if-nez v3, :cond_1c

    monitor-exit v0

    return-void

    .line 213
    :cond_1c
    iget-object v3, p0, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mBinder:Landroid/os/IBinder;

    invoke-interface {v3, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 214
    iput-object v2, p0, Lcom/android/server/TestNetworkService$TestNetworkAgent;->mBinder:Landroid/os/IBinder;

    .line 215
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_3b

    .line 219
    iget-object v0, p0, Lcom/android/server/TestNetworkService$TestNetworkAgent;->this$0:Lcom/android/server/TestNetworkService;

    invoke-static {v0}, Lcom/android/server/TestNetworkService;->access$000(Lcom/android/server/TestNetworkService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 220
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/TestNetworkService$TestNetworkAgent;->this$0:Lcom/android/server/TestNetworkService;

    invoke-static {v0}, Lcom/android/server/TestNetworkService;->access$000(Lcom/android/server/TestNetworkService;)Landroid/util/SparseArray;

    move-result-object v0

    iget v2, p0, Lcom/android/server/TestNetworkService$TestNetworkAgent;->netId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 221
    monitor-exit v1

    .line 222
    return-void

    .line 221
    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_38

    throw v0

    .line 215
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method


# virtual methods
.method public binderDied()V
    .registers 1

    .line 195
    invoke-direct {p0}, Lcom/android/server/TestNetworkService$TestNetworkAgent;->teardown()V

    .line 196
    return-void
.end method

.method protected unwanted()V
    .registers 1

    .line 200
    invoke-direct {p0}, Lcom/android/server/TestNetworkService$TestNetworkAgent;->teardown()V

    .line 201
    return-void
.end method
