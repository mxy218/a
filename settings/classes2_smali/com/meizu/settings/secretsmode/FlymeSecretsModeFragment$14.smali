.class Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$14;
.super Ljava/lang/Object;
.source "FlymeSecretsModeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->showEnrollFingerprintDialog()V
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

    .line 604
    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$14;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 14

    .line 608
    iget-object v0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$14;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    const p1, 0x7f1212aa

    .line 612
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$14;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    const p2, 0x7f1212ad

    .line 613
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$14;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    const p2, 0x7f1212ae

    .line 614
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$14;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    const p2, 0x7f120883

    .line 615
    invoke-virtual {p1, p2}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$14;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    const p1, 0x7f12175a

    .line 616
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v1, 0x3e9

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 608
    invoke-static/range {v0 .. v10}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->startFPManagementFragment(Landroid/app/Fragment;IIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
