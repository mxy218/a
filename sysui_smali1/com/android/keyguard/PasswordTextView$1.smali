.class Lcom/android/keyguard/PasswordTextView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PasswordTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/PasswordTextView;->showErrorPasswordAnim(Landroid/view/View;)V
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

    .line 1021
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$1;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 1024
    iget-object p1, p0, Lcom/android/keyguard/PasswordTextView$1;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {p1}, Lcom/android/keyguard/PasswordTextView;->access$100(Lcom/android/keyguard/PasswordTextView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1025
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView$1;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-static {p0}, Lcom/android/keyguard/PasswordTextView;->access$1600(Lcom/android/keyguard/PasswordTextView;)Z

    move-result v0

    invoke-static {p0, v0, p1}, Lcom/android/keyguard/PasswordTextView;->access$1700(Lcom/android/keyguard/PasswordTextView;ZI)V

    return-void
.end method
