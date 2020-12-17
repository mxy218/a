.class Lcom/android/keyguard/PasswordTextView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PasswordTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PasswordTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/PasswordTextView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PasswordTextView;)V
    .registers 2

    .line 1117
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$6;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 1120
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView$6;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {p1}, Lcom/android/keyguard/PasswordTextView;->access$2000(Lcom/android/keyguard/PasswordTextView;)Landroid/animation/Animator;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 1123
    :cond_9
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView$6;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {p0}, Lcom/android/keyguard/PasswordTextView;->access$2100(Lcom/android/keyguard/PasswordTextView;)V

    return-void
.end method
