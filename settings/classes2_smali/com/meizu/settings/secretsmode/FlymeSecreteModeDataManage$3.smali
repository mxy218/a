.class Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$3;
.super Ljava/lang/Object;
.source "FlymeSecreteModeDataManage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->handleManageDataDone(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;

.field final synthetic val$msgResId:I


# direct methods
.method constructor <init>(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;I)V
    .registers 3

    .line 133
    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$3;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;

    iput p2, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$3;->val$msgResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$3;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;

    invoke-static {v0}, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->access$400(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$3;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;

    invoke-static {v0}, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->access$400(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 137
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$3;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;

    invoke-static {v0}, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->access$400(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 138
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$3;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;

    invoke-static {v0, v1}, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->access$402(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;Lcom/meizu/common/app/LoadingDialog;)Lcom/meizu/common/app/LoadingDialog;

    .line 140
    :cond_23
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$3;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;

    invoke-static {v0}, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;->access$500(Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage;)Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecreteModeDataManage$3;->val$msgResId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2}, Lcom/meizu/settings/utils/MzUtils;->showFlymeToast(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method
