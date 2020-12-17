.class Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;
.super Ljava/lang/Object;
.source "FlymeEnterPasswordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->verifyAndSaveLockPassword(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;Ljava/lang/String;)V
    .registers 3

    .line 538
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    iput-object p2, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 541
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$902(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;Z)Z

    .line 542
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$1300(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v2

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$1000(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)I

    move-result v3

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$500(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;->val$password:Ljava/lang/String;

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$1100(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    .line 543
    invoke-static {v0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$1200(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Z

    move-result v7

    .line 542
    invoke-virtual/range {v2 .. v7}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->savePassword(IILjava/lang/String;Ljava/lang/String;Z)V

    .line 544
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 545
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;->val$password:Ljava/lang/String;

    const-string v3, "flyme_password"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {v2}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$1000(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v2, v4, :cond_45

    .line 548
    iget-object v1, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {v1}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$1400(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)V

    goto :goto_a8

    .line 549
    :cond_45
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {v2}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$1000(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)I

    move-result v2

    if-nez v2, :cond_a8

    .line 550
    new-instance v2, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;

    iget-object v4, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {v4}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$300(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/meizu/settings/fingerprint/FlymeFingerPrintImpl;-><init>(Landroid/content/Context;)V

    .line 551
    iget-object v4, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {v4}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$800(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 554
    iget-object v4, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {v4}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$1300(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->setScreenLockEnable(Z)V

    .line 556
    :cond_69
    iget-object v4, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {v4}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$1500(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Z

    move-result v4

    if-nez v4, :cond_79

    iget-object v4, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {v4}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$800(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 558
    :cond_79
    iget-object v3, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {v3}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$1300(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;->val$password:Ljava/lang/String;

    invoke-interface {v2}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getEnrollChallenge()J

    move-result-wide v5

    new-instance v7, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8$1;

    invoke-direct {v7, p0, v0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8$1;-><init>(Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;Landroid/content/Intent;)V

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getScreenPasswordVerifiedToken(Ljava/lang/String;JLcom/meizu/settings/security/FlymeLockPasswordUtils$OnVerifyCallback;)V

    move v3, v1

    .line 568
    :cond_8e
    iget-object v4, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {v4}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$1700(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;)Z

    move-result v4

    if-nez v4, :cond_a5

    invoke-interface {v2}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getFingerPrintCount()I

    move-result v4

    if-lez v4, :cond_a5

    .line 569
    invoke-interface {v2, v1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setScreenUnlockWithFingerprintEnable(Z)V

    .line 570
    invoke-interface {v2, v1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setAppUnlockWithFingerprintEnable(Z)V

    .line 571
    invoke-interface {v2, v1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->setDocumentUnlockWithFingerprintEnable(Z)V

    .line 573
    :cond_a5
    invoke-interface {v2}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->release()V

    :cond_a8
    :goto_a8
    if-nez v3, :cond_af

    .line 576
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeEnterPasswordFragment$8;->this$0:Lcom/meizu/settings/security/FlymeEnterPasswordFragment;

    invoke-static {p0, v0}, Lcom/meizu/settings/security/FlymeEnterPasswordFragment;->access$1600(Lcom/meizu/settings/security/FlymeEnterPasswordFragment;Landroid/content/Intent;)V

    :cond_af
    return-void
.end method
