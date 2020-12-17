.class Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$2;
.super Ljava/lang/Object;
.source "FlymeSecretsModeFragment.java"

# interfaces
.implements Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClearPrivatesComplete()V
    .registers 6

    const-string v0, "FlymeSecretsModeFragment"

    const-string v1, "onClearPrivatesComplete"

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    invoke-static {v1}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->access$100(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->setFlymeSecretsControlCallback(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;)V

    .line 137
    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    invoke-static {v1}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->access$200(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setSecretsModeEnabled(Z)V

    .line 138
    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    invoke-static {v1}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->access$300(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "secrets_mode_enable"

    invoke-virtual {v1, v4, v0, v3}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    invoke-static {v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->access$200(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->clearPassword(IZ)V

    .line 142
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    const v0, 0x7f1212bc

    invoke-static {p0, v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->access$400(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;I)V

    return-void
.end method

.method public onExportPrivatesComplete()V
    .registers 5

    const-string v0, "FlymeSecretsModeFragment"

    const-string v1, "onExportPrivatesComplete"

    .line 147
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    invoke-static {v1}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->access$100(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->setFlymeSecretsControlCallback(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;)V

    .line 150
    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    invoke-static {v1}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->access$200(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setSecretsModeEnabled(Z)V

    .line 151
    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    invoke-static {v1}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->access$300(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "secrets_mode_enable"

    invoke-virtual {v1, v3, v0, v2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    const v0, 0x7f1212c9

    invoke-static {p0, v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->access$400(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;I)V

    return-void
.end method

.method public onMarkPrivateComplete(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/privacy/aidl/UpdatePrivateResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onMarkUnPrivateComplete(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/privacy/aidl/UpdatePrivateResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onQueryPrivateComplete(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/privacy/aidl/PrivateItem;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
