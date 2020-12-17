.class Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$3;
.super Ljava/lang/Object;
.source "FlymeSecretsModeFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->handleManageDataDone(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

.field final synthetic val$msgResId:I


# direct methods
.method constructor <init>(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;I)V
    .registers 3

    .line 232
    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$3;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    iput p2, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$3;->val$msgResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLoadingDialog = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$3;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    invoke-static {v1}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->access$500(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeSecretsModeFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$3;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$3;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    invoke-static {v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->access$500(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$3;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    invoke-static {v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->access$500(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 237
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$3;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    invoke-static {v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->access$500(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 238
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$3;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    invoke-static {v0, v1}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->access$502(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;Lcom/meizu/common/app/LoadingDialog;)Lcom/meizu/common/app/LoadingDialog;

    .line 240
    :cond_47
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$3;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    invoke-static {v0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->access$600(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)Landroid/content/Context;

    move-result-object v0

    iget v2, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$3;->val$msgResId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/meizu/settings/utils/MzUtils;->showFlymeToast(Landroid/content/Context;Ljava/lang/String;II)V

    .line 241
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$3;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    invoke-static {v0, v3}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->access$702(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;Z)Z

    .line 242
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$3;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    invoke-static {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->access$800(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)V

    return-void
.end method
