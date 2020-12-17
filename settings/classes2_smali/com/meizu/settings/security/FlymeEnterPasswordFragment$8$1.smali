.class Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8$1;
.super Ljava/lang/Object;
.source "FlymeEnterPasswordFragment.java"

# interfaces
.implements Lcom/meizu/settings/security/FlymeLockPasswordUtils$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;Landroid/content/Intent;)V
    .registers 3

    .line 559
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8$1;->this$1:Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;

    iput-object p2, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .registers 4

    .line 562
    iget-object p2, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8$1;->val$intent:Landroid/content/Intent;

    const-string v0, "hw_auth_token"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 564
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8$1;->this$1:Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;

    iget-object p1, p1, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8$1;->val$intent:Landroid/content/Intent;

    invoke-static {p1, p0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$1600(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;Landroid/content/Intent;)V

    return-void
.end method
