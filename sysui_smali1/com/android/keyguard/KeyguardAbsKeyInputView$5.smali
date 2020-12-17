.class Lcom/android/keyguard/KeyguardAbsKeyInputView$5;
.super Ljava/lang/Object;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardAbsKeyInputView;->initFlymeView()V
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

    .line 522
    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 525
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$200(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 526
    iget-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$700(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 527
    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView$5;->this$0:Lcom/android/keyguard/KeyguardAbsKeyInputView;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputView;->access$700(Lcom/android/keyguard/KeyguardAbsKeyInputView;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
