.class Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$7;
.super Ljava/lang/Object;
.source "FlymeShopDemoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->clearPasswordIfNeed()V
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

    .line 342
    iput-object p1, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$7;->this$0:Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 345
    iget-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$7;->this$0:Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;

    invoke-static {v0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->access$500(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "1234"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_35

    .line 346
    iget-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$7;->this$0:Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;

    invoke-static {v0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->access$600(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 347
    iget-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$7;->this$0:Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;

    invoke-static {v0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->access$600(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getIds()[I

    move-result-object v0

    if-eqz v0, :cond_23

    .line 348
    array-length v0, v0

    if-nez v0, :cond_57

    .line 349
    :cond_23
    iget-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$7;->this$0:Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;

    invoke-static {v0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->access$700(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 350
    iget-object p0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$7;->this$0:Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;

    invoke-static {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->access$700(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->clearScreenPassword(Ljava/lang/String;Z)V

    goto :goto_57

    .line 354
    :cond_35
    iget-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$7;->this$0:Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;

    invoke-static {v0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->access$500(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_57

    .line 355
    iget-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$7;->this$0:Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;

    invoke-static {v0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->access$800(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 356
    iget-object v0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$7;->this$0:Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;

    invoke-static {v0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->access$700(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 357
    iget-object p0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$7;->this$0:Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;

    invoke-static {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->access$700(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->clearScreenPassword(Ljava/lang/String;Z)V

    :cond_57
    :goto_57
    return-void
.end method
