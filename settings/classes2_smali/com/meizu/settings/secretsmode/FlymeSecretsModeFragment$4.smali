.class Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$4;
.super Ljava/lang/Object;
.source "FlymeSecretsModeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 368
    iput-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$4;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    const-string p1, "FlymeSecretsModeFragment"

    const-string p2, "export button"

    .line 371
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object p1, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$4;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->access$902(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;Z)Z

    .line 373
    iget-object p0, p0, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment$4;->this$0:Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;

    invoke-static {p0, p2}, Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;->access$1000(Lcom/meizu/settings/secretsmode/FlymeSecretsModeFragment;I)V

    return-void
.end method
