.class Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$2;
.super Lcom/meizu/privacy/aidl/IPrivacyResultCallback$Stub;
.source "FlymeSecretsControlHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;


# direct methods
.method constructor <init>(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-direct {p0}, Lcom/meizu/privacy/aidl/IPrivacyResultCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onClearPrivatesComplete()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-static {v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$300(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 134
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-static {v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$300(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;->onClearPrivatesComplete()V

    .line 136
    :cond_11
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-static {v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$400(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 137
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    const-string v0, "onClearPrivatesComplete"

    invoke-static {p0, v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$200(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;Ljava/lang/String;)V

    return-void
.end method

.method public onExportPrivatesComplete()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-static {v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$300(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 143
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-static {v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$300(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;->onExportPrivatesComplete()V

    .line 145
    :cond_11
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-static {v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$400(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 146
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    const-string v0, "onExportPrivatesComplete"

    invoke-static {p0, v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$200(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;Ljava/lang/String;)V

    return-void
.end method

.method public onMarkPrivateComplete(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/privacy/aidl/UpdatePrivateResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-static {v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$300(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 106
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-static {v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$300(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;->onMarkPrivateComplete(Ljava/util/List;)V

    .line 108
    :cond_11
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-static {p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$400(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 109
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    const-string p1, "onMarkPrivateComplete"

    invoke-static {p0, p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$200(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;Ljava/lang/String;)V

    return-void
.end method

.method public onMarkUnPrivateComplete(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/privacy/aidl/UpdatePrivateResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-static {v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$300(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 116
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-static {v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$300(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;->onMarkUnPrivateComplete(Ljava/util/List;)V

    .line 118
    :cond_11
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-static {p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$400(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 119
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    const-string p1, "onMarkUnPrivateComplete"

    invoke-static {p0, p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$200(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;Ljava/lang/String;)V

    return-void
.end method

.method public onQueryPrivateComplete(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/privacy/aidl/PrivateItem;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-static {v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$300(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 125
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-static {v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$300(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;->onQueryPrivateComplete(Ljava/util/List;)V

    .line 127
    :cond_11
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-static {p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$400(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 128
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    const-string p1, "onQueryPrivateComplete"

    invoke-static {p0, p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$200(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;Ljava/lang/String;)V

    return-void
.end method
