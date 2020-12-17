.class Lcom/android/keyguard/KeyguardSimPukView$2;
.super Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPukView;->showDefaultMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 224
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;-><init>(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(II)V
    .registers 5

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSimCheckResponse  dummy One result"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " attemptsRemaining="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardSimPukView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p2, :cond_31

    .line 229
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {p1, p2}, Lcom/android/keyguard/KeyguardSimPukView;->access$102(Lcom/android/keyguard/KeyguardSimPukView;I)I

    .line 230
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukView$2;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    const/4 v0, 0x1

    .line 231
    invoke-static {p0, p2, v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$1200(Lcom/android/keyguard/KeyguardSimPukView;IZ)Ljava/lang/String;

    move-result-object p0

    .line 230
    invoke-interface {p1, p0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    :cond_31
    return-void
.end method
