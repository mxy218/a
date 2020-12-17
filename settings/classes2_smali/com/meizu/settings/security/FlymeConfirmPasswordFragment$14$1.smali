.class Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14$1;
.super Ljava/lang/Object;
.source "FlymeConfirmPasswordFragment.java"

# interfaces
.implements Lcom/meizu/settings/security/FlymeLockPasswordUtils$OnVerifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->onChecked(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;


# direct methods
.method constructor <init>(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;)V
    .registers 2

    .line 1211
    iput-object p1, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14$1;->this$1:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVerified([BI)V
    .registers 3

    .line 1214
    iget-object p2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14$1;->this$1:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;

    iget-object p2, p2, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    invoke-static {p2}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1800(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;)Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/meizu/settings/fingerprint/FlymeIFingerPrint;->releaseFingerprintLockout([B)V

    .line 1215
    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14$1;->this$1:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;

    iget-object p2, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->this$0:Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;

    iget-object p0, p0, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment$14;->val$password:Ljava/lang/String;

    invoke-static {p2, p0, p1}, Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;->access$1900(Lcom/meizu/settings/security/FlymeConfirmPasswordFragment;Ljava/lang/String;[B)V

    return-void
.end method
