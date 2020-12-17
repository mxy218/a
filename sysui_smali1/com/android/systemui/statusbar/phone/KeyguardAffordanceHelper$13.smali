.class Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$13;
.super Ljava/lang/Object;
.source "KeyguardAffordanceHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mzFling(FZZ)V
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

    .line 864
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$13;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 867
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$13;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$602(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;F)F

    .line 868
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$13;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    move-result-object p1

    if-eqz p1, :cond_38

    .line 869
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$13;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$13;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$13;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .line 870
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$200(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Landroid/view/View;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$13;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$800(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object p0

    const/4 v2, 0x0

    if-ne v1, p0, :cond_34

    const/4 p0, 0x1

    goto :goto_35

    :cond_34
    move p0, v2

    .line 869
    :goto_35
    invoke-interface {p1, v0, v2, v2, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;->onTranslationChanged(FZZZ)V

    :cond_38
    return-void
.end method
