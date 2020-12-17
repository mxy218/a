.class Lcom/meizu/settings/security/FlymeGuestModeSettings$1;
.super Ljava/lang/Object;
.source "FlymeGuestModeSettings.java"

# interfaces
.implements Lcom/meizu/settings/widget/ProgressDialogPreference$OnProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeGuestModeSettings;->initClearGuestDataPreference()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeGuestModeSettings;)V
    .registers 2

    .line 229
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$1;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doInbackground()Z
    .registers 3

    .line 245
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$1;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$500(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Landroid/os/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$1;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {v1}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$400(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->markGuestForDeletion(I)Z

    move-result v0

    if-nez v0, :cond_1f

    const-string p0, "FlymeGuestModeSettings"

    const-string v0, "markGuestForDeletion failed!"

    .line 247
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 251
    :cond_1f
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$1;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$400(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 252
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$1;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {v1}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$600(Lcom/meizu/settings/security/FlymeGuestModeSettings;)V

    .line 253
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$1;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$500(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->removeUser(I)Z

    move-result p0

    return p0
.end method

.method public finishExecute(Z)V
    .registers 3

    if-nez p1, :cond_7

    .line 259
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$1;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$700(Lcom/meizu/settings/security/FlymeGuestModeSettings;)V

    .line 261
    :cond_7
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$1;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$100(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Z

    move-result p1

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$1;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$000(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 262
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$1;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$102(Lcom/meizu/settings/security/FlymeGuestModeSettings;Z)Z

    .line 263
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$1;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$000(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 264
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$1;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$200(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setGuestModeEnalbed(Z)V

    :cond_30
    return-void
.end method

.method public onPreExecute()V
    .registers 3

    .line 233
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$1;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$000(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 234
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$1;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$102(Lcom/meizu/settings/security/FlymeGuestModeSettings;Z)Z

    .line 235
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$1;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$000(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Lcom/meizu/common/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 236
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$1;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$200(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setGuestModeEnalbed(Z)V

    .line 240
    :cond_25
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$1;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$500(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Landroid/os/UserManager;

    move-result-object v1

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$1;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$400(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$302(Lcom/meizu/settings/security/FlymeGuestModeSettings;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
