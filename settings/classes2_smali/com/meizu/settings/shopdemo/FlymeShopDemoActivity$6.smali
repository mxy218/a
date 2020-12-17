.class Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$6;
.super Ljava/lang/Object;
.source "FlymeShopDemoActivity.java"

# interfaces
.implements Lcom/meizu/settings/fingerprint/FlymeIFingerPrint$OnDeleteFingerpirntResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->createOnDeleteFingerpirntResult()Lcom/meizu/settings/fingerprint/FlymeIFingerPrint$OnDeleteFingerpirntResult;
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

    .line 305
    iput-object p1, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$6;->this$0:Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteComplete(Z)V
    .registers 3

    if-eqz p1, :cond_7

    .line 309
    iget-object p0, p0, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity$6;->this$0:Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;

    invoke-static {p0}, Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;->access$400(Lcom/meizu/settings/shopdemo/FlymeShopDemoActivity;)V

    .line 311
    :cond_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "delete fingerprint result:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FlymeShopDemoActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
