.class Lcom/android/keyguard/KeyguardSimPinView$3$1;
.super Ljava/lang/Object;
.source "KeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPinView$3;->onSimCheckResponse(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

.field final synthetic val$attemptsRemaining:I

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView$3;II)V
    .registers 4

    .line 341
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iput p2, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$attemptsRemaining:I

    iput p3, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 344
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$attemptsRemaining:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->access$002(Lcom/android/keyguard/KeyguardSimPinView;I)I

    .line 345
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$200(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 346
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$200(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 348
    :cond_1e
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2a

    move v1, v3

    goto :goto_2b

    :cond_2a
    move v1, v2

    :goto_2b
    invoke-virtual {v0, v3, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 350
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:I

    if-nez v0, :cond_68

    .line 351
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    .line 352
    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPinView;->access$300(Lcom/android/keyguard/KeyguardSimPinView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 353
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->access$002(Lcom/android/keyguard/KeyguardSimPinView;I)I

    .line 354
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0, v3}, Lcom/android/keyguard/KeyguardSimPinView;->access$402(Lcom/android/keyguard/KeyguardSimPinView;Z)Z

    .line 355
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_c8

    .line 356
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_c8

    .line 359
    :cond_68
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardSimPinView;->access$402(Lcom/android/keyguard/KeyguardSimPinView;Z)Z

    .line 360
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:I

    if-ne v0, v3, :cond_92

    .line 361
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$attemptsRemaining:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_84

    .line 363
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v1, v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$500(Lcom/android/keyguard/KeyguardSimPinView;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_a5

    .line 366
    :cond_84
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v3, v1, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    .line 367
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardSimPinView;->access$600(Lcom/android/keyguard/KeyguardSimPinView;IZ)Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-interface {v3, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_a5

    .line 372
    :cond_92
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$string;->kg_password_pin_failed:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 375
    :goto_a5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "verifyPasswordAndUnlock  CheckSimPin.onSimCheckResponse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " attemptsRemaining="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$attemptsRemaining:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSimPinView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_c8
    :goto_c8
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 380
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$702(Lcom/android/keyguard/KeyguardSimPinView;Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;)Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    return-void
.end method
