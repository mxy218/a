.class final Lcom/android/server/appop/AppOpsService$NotedCallback;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NotedCallback"
.end annotation


# instance fields
.field final mCallback:Lcom/android/internal/app/IAppOpsNotedCallback;

.field final mCallingPid:I

.field final mCallingUid:I

.field final mWatchingUid:I

.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsNotedCallback;III)V
    .registers 8
    .param p1, "this$0"  # Lcom/android/server/appop/AppOpsService;
    .param p2, "callback"  # Lcom/android/internal/app/IAppOpsNotedCallback;
    .param p3, "watchingUid"  # I
    .param p4, "callingUid"  # I
    .param p5, "callingPid"  # I

    .line 658
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$NotedCallback;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallback:Lcom/android/internal/app/IAppOpsNotedCallback;

    .line 660
    iput p3, p0, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    .line 661
    iput p4, p0, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallingUid:I

    .line 662
    iput p5, p0, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallingPid:I

    .line 664
    :try_start_d
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallback:Lcom/android/internal/app/IAppOpsNotedCallback;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_18

    .line 667
    goto :goto_19

    .line 665
    :catch_18
    move-exception v0

    .line 668
    :goto_19
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 691
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$NotedCallback;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallback:Lcom/android/internal/app/IAppOpsNotedCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/appop/AppOpsService;->stopWatchingNoted(Lcom/android/internal/app/IAppOpsNotedCallback;)V

    .line 692
    return-void
.end method

.method destroy()V
    .registers 3

    .line 686
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallback:Lcom/android/internal/app/IAppOpsNotedCallback;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsNotedCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 687
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 672
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 673
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "NotedCallback{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    const-string v1, " watchinguid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    iget v1, p0, Lcom/android/server/appop/AppOpsService$NotedCallback;->mWatchingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 677
    const-string v1, " from uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    iget v1, p0, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 679
    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    iget v1, p0, Lcom/android/server/appop/AppOpsService$NotedCallback;->mCallingPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 681
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 682
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
