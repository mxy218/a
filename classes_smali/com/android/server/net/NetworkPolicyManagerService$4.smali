.class Lcom/android/server/net/NetworkPolicyManagerService$4;
.super Landroid/app/IUidObserver$Stub;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    .line 921
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 2

    .line 932
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3

    .line 938
    return-void
.end method

.method public onUidGone(IZ)V
    .registers 5

    .line 928
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p2, p2, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandler:Landroid/os/Handler;

    const/16 v0, 0x65

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 929
    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 3

    .line 935
    return-void
.end method

.method public onUidStateChanged(IIJ)V
    .registers 6

    .line 923
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandler:Landroid/os/Handler;

    .line 924
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 923
    const/16 p4, 0x64

    invoke-virtual {v0, p4, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 924
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 925
    return-void
.end method
