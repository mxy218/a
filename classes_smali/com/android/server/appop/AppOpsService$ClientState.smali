.class final Lcom/android/server/appop/AppOpsService$ClientState;
.super Landroid/os/Binder;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ClientState"
.end annotation


# instance fields
.field final mAppToken:Landroid/os/IBinder;

.field final mPid:I

.field final mStartedOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/appop/AppOpsService$Op;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    .registers 3

    .line 698
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$ClientState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 694
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    .line 699
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    .line 700
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    iput p1, p0, Lcom/android/server/appop/AppOpsService$ClientState;->mPid:I

    .line 702
    instance-of p1, p2, Landroid/os/Binder;

    if-nez p1, :cond_20

    .line 704
    :try_start_18
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1e} :catch_1f

    .line 707
    goto :goto_20

    .line 705
    :catch_1f
    move-exception p1

    .line 709
    :cond_20
    :goto_20
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 9

    .line 721
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientState;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    .line 722
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_b
    if-ltz v1, :cond_2f

    .line 723
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$ClientState;->mStartedOps:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/appop/AppOpsService$Op;

    .line 724
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$ClientState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {v4, v3, v2}, Lcom/android/server/appop/AppOpsService;->finishOperationLocked(Lcom/android/server/appop/AppOpsService$Op;Z)V

    .line 725
    iget v4, v3, Lcom/android/server/appop/AppOpsService$Op;->startNesting:I

    if-gtz v4, :cond_2c

    .line 726
    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$ClientState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget v5, v3, Lcom/android/server/appop/AppOpsService$Op;->op:I

    iget-object v6, v3, Lcom/android/server/appop/AppOpsService$Op;->uidState:Lcom/android/server/appop/AppOpsService$UidState;

    iget v6, v6, Lcom/android/server/appop/AppOpsService$UidState;->uid:I

    iget-object v3, v3, Lcom/android/server/appop/AppOpsService$Op;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v3, v7}, Lcom/android/server/appop/AppOpsService;->access$200(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Z)V

    .line 722
    :cond_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 730
    :cond_2f
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mClients:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    monitor-exit v0

    .line 732
    return-void

    .line 731
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientState{mAppToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientState;->mAppToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/appop/AppOpsService$ClientState;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
