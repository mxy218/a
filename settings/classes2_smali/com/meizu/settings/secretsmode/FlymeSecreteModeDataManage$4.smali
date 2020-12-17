.class Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$4;
.super Ljava/lang/Object;
.source "FlymeSecreteModeDataManage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->showClearDataWarningDialog()V
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

    .line 165
    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$4;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10

    .line 169
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$4;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const v4, 0x7f1212be

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/meizu/settings/utils/MzUtils;->showLoadingDialog(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IZLandroid/content/DialogInterface$OnCancelListener;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->access$402(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;Lcom/meizu/common/app/LoadingDialog;)Lcom/meizu/common/app/LoadingDialog;

    const-string p1, "FlymeSecreteModeDataManage"

    const-string p2, "clearSecrets"

    .line 171
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$4;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;

    invoke-static {p1}, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->access$100(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;)Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$4;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;

    invoke-static {p2}, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->access$600(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;)Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->setFlymeSecretsControlCallback(Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper$FlymeSecretsControlCallback;)V

    .line 173
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$4;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;

    invoke-static {p0}, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->access$100(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;)Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsControlHelper;->clearSecrets()V

    return-void
.end method
