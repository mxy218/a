.class Lcom/meizu/settings/secretsmode/FlymeSecretAppGuideFragment$1;
.super Landroid/database/ContentObserver;
.source "FlymeSecretAppGuideFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/secretsmode/FlymeSecretAppGuideFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/secretsmode/FlymeSecretAppGuideFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/secretsmode/FlymeSecretAppGuideFragment;Landroid/os/Handler;)V
    .registers 3

    .line 38
    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppGuideFragment$1;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretAppGuideFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    const-string p1, "mz_private_mode_running"

    .line 41
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 43
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppGuideFragment$1;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretAppGuideFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->needFinishSecretsModeActivity()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 45
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretAppGuideFragment$1;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretAppGuideFragment;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_25
    return-void
.end method
