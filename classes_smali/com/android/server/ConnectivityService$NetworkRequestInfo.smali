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
    .registers 5
    .param p2, "r"  # Landroid/net/NetworkRequest;
    .param p3, "pi"  # Landroid/app/PendingIntent;

    .line 5155
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5156
    iput-object p2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 5157
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-static {p1, v0}, Lcom/android/server/ConnectivityService;->access$6600(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;)V

    .line 5158
    iput-object p3, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 5159
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    .line 5160
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    .line 5161
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    .line 5162
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    .line 5163
    invoke-direct {p0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->enforceRequestCountLimit()V

    .line 5164
    return-void
.end method

.method constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;Landroid/net/NetworkRequest;Landroid/os/IBinder;)V
    .registers 6
    .param p2, "m"  # Landroid/os/Messenger;
    .param p3, "r"  # Landroid/net/NetworkRequest;
    .param p4, "binder"  # Landroid/os/IBinder;

    .line 5166
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    .line 5167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5168
    iput-object p2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->messenger:Landroid/os/Messenger;

    .line 5169
    iput-object p3, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    .line 5170
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-static {p1, v0}, Lcom/android/server/ConnectivityService;->access$6600(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;)V

    .line 5171
    iput-object p4, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    .line 5172
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPid:I

    .line 5173
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iput p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    .line 5174
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mPendingIntent:Landroid/app/PendingIntent;

    .line 5175
    invoke-direct {p0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->enforceRequestCountLimit()V

    .line 5178
    :try_start_22
    iget-object p1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_28} :catch_29

    .line 5181
    goto :goto_2d

    .line 5179
    :catch_29
    move-exception p1

    .line 5180
    .local p1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->binderDied()V

    .line 5182
    .end local p1  # "e":Landroid/os/RemoteException;
    :goto_2d
    return-void
.end method

.method private enforceRequestCountLimit()V
    .registers 5

    .line 5185
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$6700(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v0

    monitor-enter v0

    .line 5186
    :try_start_7
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$6700(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 5187
    .local v1, "networkRequests":I
    const/16 v3, 0x64

    if-ge v1, v3, :cond_27

    .line 5191
    iget-object v2, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$6700(Lcom/android/server/ConnectivityService;)Landroid/util/SparseIntArray;

    move-result-object v2

    iget v3, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mUid:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5192
    .end local v1  # "networkRequests":I
    monitor-exit v0

    .line 5193
    return-void

    .line 5188
    .restart local v1  # "networkRequests":I
    :cond_27
    new-instance v3, Landroid/os/ServiceSpecificException;

    invoke-direct {v3, v2}, Landroid/os/ServiceSpecificException;-><init>(I)V

    .end local p0  # "this":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    throw v3

    .line 5192
    .end local v1  # "networkRequests":I
    .restart local p0  # "this":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
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

    .line 5202
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

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    .line 5204
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->request:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->releaseNetworkRequest(Landroid/net/NetworkRequest;)V

    .line 5205
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 5208
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

    .line 5209
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

    .line 5208
    return-object v0
.end method

.method unlinkDeathRecipient()V
    .registers 3

    .line 5196
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;->mBinder:Landroid/os/IBinder;

    if-eqz v0, :cond_8

    .line 5197
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 5199
    :cond_8
    return-void
.end method
