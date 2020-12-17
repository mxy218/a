.class Lcom/meizu/settings/security/FlymeGuestModeSettings$3$1;
.super Ljava/lang/Object;
.source "FlymeGuestModeSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeGuestModeSettings$3;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/security/FlymeGuestModeSettings$3;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeGuestModeSettings$3;)V
    .registers 2

    .line 350
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$3$1;->this$1:Lcom/meizu/settings/security/FlymeGuestModeSettings$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 353
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$3$1;->this$1:Lcom/meizu/settings/security/FlymeGuestModeSettings$3;

    iget-object v0, v0, Lcom/meizu/settings/security/FlymeGuestModeSettings$3;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 355
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_42

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_42

    .line 359
    :cond_17
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$3$1;->this$1:Lcom/meizu/settings/security/FlymeGuestModeSettings$3;

    iget-object v0, v0, Lcom/meizu/settings/security/FlymeGuestModeSettings$3;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$900(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$3$1;->this$1:Lcom/meizu/settings/security/FlymeGuestModeSettings$3;

    iget-object v0, v0, Lcom/meizu/settings/security/FlymeGuestModeSettings$3;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$900(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 360
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$3$1;->this$1:Lcom/meizu/settings/security/FlymeGuestModeSettings$3;

    iget-object v0, v0, Lcom/meizu/settings/security/FlymeGuestModeSettings$3;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$900(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 361
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$3$1;->this$1:Lcom/meizu/settings/security/FlymeGuestModeSettings$3;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$3;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$902(Lcom/meizu/settings/security/FlymeGuestModeSettings;Lcom/meizu/common/app/LoadingDialog;)Lcom/meizu/common/app/LoadingDialog;

    :cond_42
    :goto_42
    return-void
.end method
