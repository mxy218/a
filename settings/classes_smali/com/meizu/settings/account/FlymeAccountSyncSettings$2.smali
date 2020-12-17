.class Lcom/meizu/settings/account/FlymeAccountSyncSettings$2;
.super Ljava/lang/Object;
.source "FlymeAccountSyncSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/account/FlymeAccountSyncSettings;->updatePreferenceIntents(Landroidx/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/account/FlymeAccountSyncSettings;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/meizu/settings/account/FlymeAccountSyncSettings;Landroid/content/pm/PackageManager;)V
    .registers 3

    .line 93
    iput-object p1, p0, Lcom/meizu/settings/account/FlymeAccountSyncSettings$2;->this$0:Lcom/meizu/settings/account/FlymeAccountSyncSettings;

    iput-object p2, p0, Lcom/meizu/settings/account/FlymeAccountSyncSettings$2;->val$pm:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .registers 4

    .line 96
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 103
    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSyncSettings$2;->this$0:Lcom/meizu/settings/account/FlymeAccountSyncSettings;

    iget-object v1, p0, Lcom/meizu/settings/account/FlymeAccountSyncSettings$2;->val$pm:Landroid/content/pm/PackageManager;

    invoke-static {v0, v1, p1}, Lcom/meizu/settings/account/FlymeAccountSyncSettings;->access$100(Lcom/meizu/settings/account/FlymeAccountSyncSettings;Landroid/content/pm/PackageManager;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 104
    iget-object v0, p0, Lcom/meizu/settings/account/FlymeAccountSyncSettings$2;->this$0:Lcom/meizu/settings/account/FlymeAccountSyncSettings;

    invoke-static {v0}, Lcom/meizu/settings/account/FlymeAccountSyncSettings;->access$000(Lcom/meizu/settings/account/FlymeAccountSyncSettings;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/account/FlymeAccountSyncSettings$2;->this$0:Lcom/meizu/settings/account/FlymeAccountSyncSettings;

    invoke-static {p0}, Lcom/meizu/settings/account/FlymeAccountSyncSettings;->access$200(Lcom/meizu/settings/account/FlymeAccountSyncSettings;)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_34

    .line 106
    :cond_1e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Refusing to launch authenticator intent becauseit exploits Settings permissions: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlymeAccountSyncSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    const/4 p0, 0x1

    return p0
.end method
