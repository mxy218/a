.class Lcom/android/server/ConnectivityService$NetworkRequestInfo;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkRequestInfo"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field final mPendingIntent:Landroid/app/PendingIntent;

.field mPendingIntentSent:Z

.field final mPid:I

.field final mUid:I

.field final messenger:Landroid/os/Messenger;

.field final request:Landroid/net/NetworkRequest;

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;Landroid/app/PendingIntent;)V
    .registers 4

    .line 5169
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5170
    iput-object p2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 5171
    iget-object p2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-static {p1, p2}, Lcom/android/server/ConnectivityService;->access$6200(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;)V

    .line 5172
    iput-object p3, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 5173
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    .line 5174
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    .line 5175
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    .line 5176
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    .line 5177
    invoke-direct {p0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->enforceRequestCountLimit()V

    .line 5178
    return-void
.end method

.method constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V
    .registers 5

    .line 5180
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    .line 5181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5182
    iput-object p2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    .line 5183
    iput-object p3, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 5184
    iget-object p2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-static {p1, p2}, Lcom/android/server/ConnectivityService;->access$6200(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;)V

    .line 5185
    iput-object p4, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    .line 5186
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    .line 5187
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    .line 5188
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 5189
    invoke-direct {p0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->enforceRequestCountLimit()V

    .line 5192
    :try_start_22
    iget-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_28} :catch_29

    .line 5195
    goto :goto_2d

    .line 5193
    :catch_29
    move-exception p1

    .line 5194
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->binderDied()V

    .line 5196
    :goto_2d
    return-void
.end method

.method constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V
    .registers 3

    .line 5199
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5200
    iget-object p1, p2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 5201
    iget-object p1, p2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    .line 5202
    iget-object p1, p2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    .line 5203
    iget-object p1, p2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 5204
    iget p1, p2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    iput p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    .line 5205
    iget p1, p2, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    iput p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    .line 5206
    invoke-direct {p0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->enforceRequestCountLimit()V

    .line 5208
    iget-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    if-eqz p1, :cond_2d

    .line 5210
    const/4 p2, 0x0

    :try_start_25
    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_28} :catch_29

    .line 5213
    goto :goto_2d

    .line 5211
    :catch_29
    move-exception p1

    .line 5212
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->binderDied()V

    .line 5215
    :cond_2d
    :goto_2d
    return-void
.end method

.method private enforceRequestCountLimit()V
    .registers 5

    .line 5218
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$6300(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v0

    monitor-enter v0

    .line 5219
    :try_start_7
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$6300(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 5220
    const/16 v3, 0x64

    if-ge v1, v3, :cond_27

    .line 5224
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$6300(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5225
    monitor-exit v0

    .line 5226
    return-void

    .line 5221
    :cond_27
    new-instance v1, Landroid/os/ServiceSpecificException;

    invoke-direct {v1, v2}, Landroid/os/ServiceSpecificException;-><init>(I)V

    throw v1

    .line 5225
    :catchall_2d
    move-exception v1

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_2d

    throw v1
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 5235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectivityService NetworkRequestInfo binderDied("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$000(Ljava/lang/String;)V

    .line 5237
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V

    .line 5238
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 5241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uid/pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 5242
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_2b

    const-string v1, ""

    goto :goto_3e

    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " to trigger "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5241
    return-object v0
.end method

.method unlinkDeathRecipient()V
    .registers 3

    .line 5229
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_8

    .line 5230
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 5232
    :cond_8
    return-void
.end method
