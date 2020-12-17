.class Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7$1;
.super Ljava/lang/Object;
.source "FlymeNetworkAccessLicenseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7;->onPostExecute(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7;


# direct methods
.method constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7;)V
    .registers 2

    .line 380
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7$1;->this$1:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 383
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7$1;->this$1:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7;

    iget-object v0, v0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7;->this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;

    invoke-static {v0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->access$100(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 385
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_42

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_42

    .line 389
    :cond_17
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7$1;->this$1:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7;

    iget-object v0, v0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7;->this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;

    invoke-static {v0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->access$1200(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7$1;->this$1:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7;

    iget-object v0, v0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7;->this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;

    invoke-static {v0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->access$1200(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 390
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7$1;->this$1:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7;

    iget-object v0, v0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7;->this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;

    invoke-static {v0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->access$1200(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 391
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7$1;->this$1:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7;

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment$7;->this$0:Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;->access$1202(Lcom/meizu/settings/deviceinfo/FlymeNetworkAccessLicenseFragment;Lcom/meizu/common/app/LoadingDialog;)Lcom/meizu/common/app/LoadingDialog;

    :cond_42
    :goto_42
    return-void
.end method
