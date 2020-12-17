.class Lcom/android/keyguard/KeyguardAbsKeyInputView$10;
.super Ljava/lang/Object;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardAbsKeyInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardAbsKeyInputView;)V
    .registers 2

    .line 979
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$10;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 982
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$10;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$1600(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->setFingerprintIconVisibile(Z)V

    return-void
.end method
