.class Lcom/android/server/net/NetworkPolicyManagerService$19;
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
    .param p1, "this$0"  # Lcom/android/server/net/NetworkPolicyManagerService;

    .line 5284
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 8
    .param p1, "msg"  # Landroid/os/Message;

    .line 5287
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    const/4 v2, 0x1

    if-eq v0, v1, :cond_15

    const/16 v1, 0x65

    if-eq v0, v1, :cond_d

    .line 5302
    const/4 v0, 0x0

    return v0

    .line 5297
    :cond_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5298
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->handleUidGone(I)V

    .line 5299
    return v2

    .line 5289
    .end local v0  # "uid":I
    :cond_15
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 5290
    .restart local v0  # "uid":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 5291
    .local v1, "procState":I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 5293
    .local v3, "procStateSeq":J
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v5, v0, v1, v3, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->handleUidChanged(IIJ)V

    .line 5294
    return v2
.end method
