.class final Lcom/android/server/appop/AppOpsService$ActiveCallback;
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
    name = "ActiveCallback"
.end annotation


# instance fields
.field final mCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

.field final mCallingPid:I

.field final mCallingUid:I

.field final mWatchingUid:I

.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;Lcom/android/internal/app/IAppOpsActiveCallback;III)V
    .registers 6

    .line 610
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$ActiveCallback;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

    .line 612
    iput p3, p0, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    .line 613
    iput p4, p0, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallingUid:I

    .line 614
    iput p5, p0, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallingPid:I

    .line 616
    :try_start_d
    iget-object p1, p0, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

    invoke-interface {p1}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_17} :catch_18

    .line 619
    goto :goto_19

    .line 617
    :catch_18
    move-exception p1

    .line 620
    :goto_19
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 643
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ActiveCallback;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/appop/AppOpsService;->stopWatchingActive(Lcom/android/internal/app/IAppOpsActiveCallback;)V

    .line 644
    return-void
.end method

.method destroy()V
    .registers 3

    .line 638
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

    invoke-interface {v0}, Lcom/android/internal/app/IAppOpsActiveCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 639
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 625
    const-string v1, "ActiveCallback{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    const-string v1, " watchinguid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    iget v1, p0, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mWatchingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 629
    const-string v1, " from uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    iget v1, p0, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 631
    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    iget v1, p0, Lcom/android/server/appop/AppOpsService$ActiveCallback;->mCallingPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 633
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 634
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
