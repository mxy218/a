.class Lcom/meizu/settings/account/FlymeAddAccountSettings$2;
.super Ljava/lang/Object;
.source "FlymeAddAccountSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/account/FlymeAddAccountSettings;->showLoadingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/account/FlymeAddAccountSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/account/FlymeAddAccountSettings;)V
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/meizu/settings/account/FlymeAddAccountSettings$2;->this$0:Lcom/meizu/settings/account/FlymeAddAccountSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAddAccountSettings$2;->this$0:Lcom/meizu/settings/account/FlymeAddAccountSettings;

    invoke-static {v0}, Lcom/meizu/settings/account/FlymeAddAccountSettings;->access$100(Lcom/meizu/settings/account/FlymeAddAccountSettings;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAddAccountSettings$2;->this$0:Lcom/meizu/settings/account/FlymeAddAccountSettings;

    invoke-static {v0}, Lcom/meizu/settings/account/FlymeAddAccountSettings;->access$100(Lcom/meizu/settings/account/FlymeAddAccountSettings;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAddAccountSettings$2;->this$0:Lcom/meizu/settings/account/FlymeAddAccountSettings;

    invoke-static {v0}, Lcom/meizu/settings/account/FlymeAddAccountSettings;->access$000(Lcom/meizu/settings/account/FlymeAddAccountSettings;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 49
    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAddAccountSettings$2;->this$0:Lcom/meizu/settings/account/FlymeAddAccountSettings;

    invoke-static {v0}, Lcom/meizu/settings/account/FlymeAddAccountSettings;->access$100(Lcom/meizu/settings/account/FlymeAddAccountSettings;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 50
    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAddAccountSettings$2;->this$0:Lcom/meizu/settings/account/FlymeAddAccountSettings;

    invoke-static {p0}, Lcom/meizu/settings/account/FlymeAddAccountSettings;->access$200(Lcom/meizu/settings/account/FlymeAddAccountSettings;)V

    :cond_2e
    return-void
.end method
