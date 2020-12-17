.class Lcom/meizu/settings/utils/FlymeAccountHelper$2;
.super Lcom/meizu/account/validate/IMzAccountBusinessResponse$Stub;
.source "FlymeAccountHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/utils/FlymeAccountHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;


# direct methods
.method constructor <init>(Lcom/meizu/settings/utils/FlymeAccountHelper;)V
    .registers 2

    .line 124
    iput-object p1, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$2;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-direct {p0}, Lcom/meizu/account/validate/IMzAccountBusinessResponse$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public handleAccountNotLogin(Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAccountNotLogin bundle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeAccountHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$2;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-static {v0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$200(Lcom/meizu/settings/utils/FlymeAccountHelper;)Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 138
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$2;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-static {p0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$200(Lcom/meizu/settings/utils/FlymeAccountHelper;)Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;->handleAccountNotLogin(Landroid/os/Bundle;)V

    :cond_27
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError errorMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeAccountHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$2;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-static {v0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$200(Lcom/meizu/settings/utils/FlymeAccountHelper;)Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 146
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$2;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-static {p0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$200(Lcom/meizu/settings/utils/FlymeAccountHelper;)Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;->onError(Ljava/lang/String;)V

    :cond_27
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess  bundle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeAccountHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$2;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-static {v0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$200(Lcom/meizu/settings/utils/FlymeAccountHelper;)Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 130
    iget-object p0, p0, Lcom/meizu/settings/utils/FlymeAccountHelper$2;->this$0:Lcom/meizu/settings/utils/FlymeAccountHelper;

    invoke-static {p0}, Lcom/meizu/settings/utils/FlymeAccountHelper;->access$200(Lcom/meizu/settings/utils/FlymeAccountHelper;)Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/meizu/settings/utils/FlymeAccountHelper$BusinessStateChangeListenner;->onSuccess(Landroid/os/Bundle;)V

    :cond_27
    return-void
.end method
