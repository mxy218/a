.class Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$9;
.super Ljava/lang/Object;
.source "KeyguardAffordanceHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->startHintAnimationPhase1(ZLjava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V
    .registers 2

    .line 774
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 777
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 778
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$9;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$900(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;FZZ)V

    return-void
.end method
