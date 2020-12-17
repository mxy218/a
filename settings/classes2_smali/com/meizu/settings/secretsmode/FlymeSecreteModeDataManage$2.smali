.class Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$2;
.super Ljava/lang/Object;
.source "FlymeSecreteModeDataManage.java"

# interfaces
.implements Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;


# direct methods
.method constructor <init>(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClearPrivatesComplete()V
    .registers 4

    const-string v0, "FlymeSecreteModeDataManage"

    const-string v1, "onClearPrivatesComplete"

    .line 72
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;

    invoke-static {v1}, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->access$100(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;)Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->setFlymeSecretsControlCallback(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;)V

    .line 74
    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;

    const v2, 0x7f1212bc

    invoke-static {v1, v2}, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->access$200(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;I)V

    .line 75
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;

    invoke-static {p0}, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->access$300(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p0

    const-string v1, "secrets_mode_enable"

    const-string v2, "all_delete"

    invoke-virtual {p0, v1, v0, v2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onExportPrivatesComplete()V
    .registers 4

    const-string v0, "FlymeSecreteModeDataManage"

    const-string v1, "onExportPrivatesComplete"

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;

    invoke-static {v1}, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->access$100(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;)Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->setFlymeSecretsControlCallback(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;)V

    .line 83
    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;

    const v2, 0x7f1212c9

    invoke-static {v1, v2}, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->access$200(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;I)V

    .line 84
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$2;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;

    invoke-static {p0}, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->access$300(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p0

    const-string v1, "secrets_mode_enable"

    const-string v2, "all_export"

    invoke-virtual {p0, v1, v0, v2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

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
