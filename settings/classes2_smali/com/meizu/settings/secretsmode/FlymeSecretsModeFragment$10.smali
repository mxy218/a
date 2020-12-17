.class Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$10;
.super Ljava/lang/Object;
.source "FlymeSecretsModeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->showEnableKeyguardLock()V
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

    .line 570
    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$10;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 574
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$10;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    invoke-static {p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->access$200(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setScreenLockEnableAndDisableSecretsModeIfNeed(Z)V

    .line 575
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$10;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    const/4 p1, 0x4

    invoke-static {p0, p1}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->access$1300(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;I)V

    return-void
.end method
