.class Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$1;
.super Ljava/lang/Object;
.source "FlymeSecretsControlHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 75
    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$1;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FlymePrivateControlHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :try_start_16
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$1;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-static {p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$100(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_20} :catch_21

    goto :goto_36

    :catch_21
    move-exception p1

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "linkToDeath e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_36
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$1;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-static {p2}, Lcom/meizu/privacy/aidl/IPrivacyController$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/privacy/aidl/IPrivacyController;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$002(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;Lcom/meizu/privacy/aidl/IPrivacyController;)Lcom/meizu/privacy/aidl/IPrivacyController;

    .line 96
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$1;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    const-string p1, "onServiceConnected"

    invoke-static {p0, p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$200(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FlymePrivateControlHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$1;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-static {p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$000(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)Lcom/meizu/privacy/aidl/IPrivacyController;

    move-result-object p1

    if-nez p1, :cond_1f

    return-void

    .line 83
    :cond_1f
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$1;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-static {p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$000(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)Lcom/meizu/privacy/aidl/IPrivacyController;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$1;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    invoke-static {v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$100(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 84
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$1;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->access$002(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;Lcom/meizu/privacy/aidl/IPrivacyController;)Lcom/meizu/privacy/aidl/IPrivacyController;

    return-void
.end method
