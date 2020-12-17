.class Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;
.super Ljava/lang/Object;
.source "FlymeConfirmPasswordFragment.java"

# interfaces
.implements Lcom/meizu/settings/security/FlymeLockPasswordUtils$LockPasswordCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->verifyThePassword(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

.field final synthetic val$password:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Ljava/lang/String;)V
    .registers 3

    .line 1201
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    iput-object p2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->val$password:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .registers 8

    .line 1204
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$402(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Z)Z

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "throttleTimeoutMs:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", matched:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", confirm from:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {v2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1300(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ConfirmPasswordMeizu"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7c

    .line 1207
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1300(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_73

    .line 1208
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1700(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Z

    move-result p1

    if-nez p1, :cond_57

    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1200(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Z

    move-result p1

    if-eqz p1, :cond_4e

    goto :goto_57

    .line 1219
    :cond_4e
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->val$password:Ljava/lang/String;

    invoke-static {p1, p0, p2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1900(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Ljava/lang/String;[B)V

    goto/16 :goto_13a

    .line 1210
    :cond_57
    :goto_57
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$2000(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object p1

    iget-object p2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->val$password:Ljava/lang/String;

    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1800(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object v0

    invoke-interface {v0}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->getEnrollChallenge()J

    move-result-wide v0

    new-instance v2, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14$1;

    invoke-direct {v2, p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14$1;-><init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;)V

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getScreenPasswordVerifiedToken(Ljava/lang/String;JLcom/meizu/settings/security/FlymeLockPasswordUtils$OnVerifyCallback;)V

    goto/16 :goto_13a

    .line 1222
    :cond_73
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->val$password:Ljava/lang/String;

    invoke-static {p1, p0, p2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1900(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Ljava/lang/String;[B)V

    goto/16 :goto_13a

    :cond_7c
    const/4 p1, 0x1

    if-lez p2, :cond_a5

    .line 1226
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {v0, p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$2102(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;I)I

    .line 1227
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$600(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {v2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$600(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x40

    div-int/lit16 p2, p2, 0x3e8

    .line 1228
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 1227
    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1229
    iget-object p2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p2, p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$2202(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Z)Z

    goto :goto_aa

    .line 1231
    :cond_a5
    iget-object p2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p2, v1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$2202(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Z)Z

    .line 1233
    :goto_aa
    iget-object p2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$2308(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)I

    .line 1234
    iget-object p2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$2400(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)V

    .line 1235
    iget-object p2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p2, p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$2502(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Z)Z

    .line 1236
    iget-object p2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$2000(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->getFindPhoneLeftTimes(Z)I

    move-result p2

    const/4 v0, 0x3

    if-ge p2, v0, :cond_117

    .line 1237
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {v0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$2000(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/security/FlymeLockPasswordUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/settings/security/FlymeLockPasswordUtils;->isFindPhoneOpened()Z

    move-result v0

    if-eqz v0, :cond_117

    .line 1238
    iget-object v0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    const v2, 0xa10007e

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1239
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {v2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1100(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Landroid/app/Activity;

    move-result-object v2

    new-array v3, p1, [Ljava/lang/Object;

    if-gez p2, :cond_e7

    move v4, v1

    goto :goto_e8

    :cond_e7
    move v4, p2

    .line 1240
    :goto_e8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1239
    invoke-static {v2, v3}, Lcom/meizu/settings/utils/MzUtils;->showSlideNotice(Landroid/content/Context;Ljava/lang/String;)V

    .line 1241
    iget-object v2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {v2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$2600(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/widget/SystemLockView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/meizu/settings/widget/SystemLockView;->clearCell(Z)V

    .line 1242
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$2600(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/widget/SystemLockView;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    if-gez p2, :cond_109

    move p2, v1

    :cond_109
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/meizu/settings/widget/SystemLockView;->setTip(Ljava/lang/String;)V

    goto :goto_13a

    .line 1244
    :cond_117
    iget-object p2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$2600(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/widget/SystemLockView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/meizu/settings/widget/SystemLockView;->clearCell(Z)V

    .line 1245
    iget-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$2600(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/widget/SystemLockView;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p0}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1100(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f120558

    .line 1246
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1245
    invoke-virtual {p1, p0}, Lcom/meizu/settings/widget/SystemLockView;->setTipAnimShake(Ljava/lang/String;)V

    :goto_13a
    return-void
.end method
