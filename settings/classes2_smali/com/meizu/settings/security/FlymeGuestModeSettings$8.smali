.class Lcom/meizu/settings/security/FlymeGuestModeSettings$8;
.super Landroid/os/AsyncTask;
.source "FlymeGuestModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeGuestModeSettings;->createGuest()V
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
        "Landroid/content/pm/UserInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeGuestModeSettings;)V
    .registers 2

    .line 534
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$8;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/content/pm/UserInfo;
    .registers 3

    const-string p1, "FlymeGuestModeSettings"

    const-string v0, "start to create new guest user."

    .line 538
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$8;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$500(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Landroid/os/UserManager;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$8;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    const-string v0, "Guest"

    invoke-virtual {p1, p0, v0}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 534
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/security/FlymeGuestModeSettings$8;->doInBackground([Ljava/lang/Void;)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Landroid/content/pm/UserInfo;)V
    .registers 5

    const-string v0, "FlymeGuestModeSettings"

    if-eqz p1, :cond_40

    .line 545
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create guestUser success, new Guest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$8;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {v1}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$200(Lcom/meizu/settings/security/FlymeGuestModeSettings;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setGuestModeEnalbed(Z)V

    .line 547
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$8;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    new-instance v2, Landroid/os/UserHandle;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v1, v2}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$402(Lcom/meizu/settings/security/FlymeGuestModeSettings;Landroid/os/UserHandle;)Landroid/os/UserHandle;

    .line 548
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$8;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$1400(Lcom/meizu/settings/security/FlymeGuestModeSettings;)V

    .line 549
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeGuestModeSettings$8;->this$0:Lcom/meizu/settings/security/FlymeGuestModeSettings;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeGuestModeSettings;->access$1000(Lcom/meizu/settings/security/FlymeGuestModeSettings;)V

    const-string p0, "create guest user done."

    .line 550
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    :cond_40
    const-string p0, "create guest failed!"

    .line 552
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_45
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 534
    check-cast p1, Landroid/content/pm/UserInfo;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/security/FlymeGuestModeSettings$8;->onPostExecute(Landroid/content/pm/UserInfo;)V

    return-void
.end method
