.class Lcom/android/server/net/NetworkPolicyManagerService$18;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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

    .line 4717
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 7

    .line 4720
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    const/4 v2, 0x1

    if-eq v0, v1, :cond_15

    const/16 v1, 0x65

    if-eq v0, v1, :cond_d

    .line 4735
    const/4 p1, 0x0

    return p1

    .line 4730
    :cond_d
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 4731
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->handleUidGone(I)V

    .line 4732
    return v2

    .line 4722
    :cond_15
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 4723
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 4724
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 4726
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$18;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->handleUidChanged(IIJ)V

    .line 4727
    return v2
.end method
