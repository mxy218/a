.class Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$5;
.super Ljava/lang/Object;
.source "FlymeShopDemoActivity.java"

# interfaces
.implements Lcom/meizu/settings/security/FlymeLockPasswordUtils$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->startCreateFingerprintActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;


# direct methods
.method constructor <init>(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;)V
    .registers 2

    .line 240
    iput-object p1, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$5;->this$0:Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .registers 5

    .line 243
    iget-object p2, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$5;->this$0:Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;

    const-string v0, "fingerprintUnlock"

    invoke-static {p2, v0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->access$302(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 245
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$5;->this$0:Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;

    const-class v1, Lcom/meizu/settings/fingerprint/FlymeCreateFPActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    const-string v1, "password_confirmed"

    .line 246
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "hw_auth_token"

    .line 247
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string p1, "extra_from_shopdemo"

    .line 248
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "bind_fingerprint_from"

    const/4 v0, 0x4

    .line 249
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    iget-object p0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$5;->this$0:Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;

    const/16 p1, 0x3e9

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
