.class Lcom/meizu/settings/security/FlymeEnterPasswordFragment$7;
.super Ljava/lang/Object;
.source "FlymeEnterPasswordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->finishActivity(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;Landroid/content/Intent;)V
    .registers 3

    .line 515
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$7;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    iput-object p2, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$7;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 518
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$7;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$300(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$7;->val$intent:Landroid/content/Intent;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 519
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$7;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$700(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 520
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$7;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$700(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mz_fingerprint_use_payment"

    .line 521
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 522
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$7;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$300(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->startAccountLoginActivity(Landroid/content/Context;)V

    .line 525
    :cond_2f
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$7;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-virtual {v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->finish()V

    .line 526
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$7;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$800(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Z

    move-result v0

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$7;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$300(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Landroid/app/Activity;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/meizu/settings/utils/MzUtils;->doFromSetupwizardAnimation(ZLandroid/app/Activity;)V

    return-void
.end method
