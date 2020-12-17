.class Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$6;
.super Ljava/lang/Object;
.source "FlymeSecretsModeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->showClosePasswordWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)V
    .registers 2

    .line 387
    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$6;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2

    .line 390
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$6;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    invoke-static {p0}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->access$1100(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)Lcom/meizu/settings/widget/GuideTipsSwitchPreference;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
