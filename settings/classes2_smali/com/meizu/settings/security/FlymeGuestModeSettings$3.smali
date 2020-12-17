.class Lcom/meizu/settings/security/FlymeGuestModeSettings$3;
.super Landroid/os/AsyncTask;
.source "FlymeGuestModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeGuestModeSettings;->deleteGuestUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeGuestModeSettings;)V
    .registers 2

    .line 326
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$3;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 4

    .line 336
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$3;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$400(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doInBackground, removeUser:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FlymeGuestModeSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$3;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$500(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->removeUser(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 326
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/security/FlymeGuestModeSettings$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 5

    .line 343
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 344
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$3;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$402(Lcom/meizu/settings/security/FlymeGuestModeSettings;Landroid/os/UserHandle;)Landroid/os/UserHandle;

    .line 345
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$3;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$200(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setGuestModeEnalbed(Z)V

    .line 346
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$3;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$1000(Lcom/meizu/settings/security/FlymeGuestModeSettings;)V

    .line 350
    :cond_1b
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$3;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/meizu/settings/security/FlymeGuestModeSettings$3$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings$3$1;-><init>(Lcom/meizu/settings/security/FlymeGuestModeSettings$3;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 326
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/security/FlymeGuestModeSettings$3;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 9

    .line 329
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$3;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const v5, 0x7f121376

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/meizu/settings/utils/MzUtils;->showLoadingDialog(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;IZLandroid/content/DialogInterface$OnCancelListener;)Lcom/meizu/common/app/LoadingDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$902(Lcom/meizu/settings/security/FlymeGuestModeSettings;Lcom/meizu/common/app/LoadingDialog;)Lcom/meizu/common/app/LoadingDialog;

    .line 331
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method
