.class Lcom/android/keyguard/PasswordTextView$5;
.super Ljava/lang/Object;
.source "PasswordTextView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 1109
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextView$5;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 1112
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextView$5;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/keyguard/PasswordTextView;->access$1402(Lcom/android/keyguard/PasswordTextView;F)F

    .line 1113
    iget-object p0, p0, Lcom/android/keyguard/PasswordTextView$5;->this$0:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
