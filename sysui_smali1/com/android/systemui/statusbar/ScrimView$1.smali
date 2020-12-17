.class Lcom/android/systemui/statusbar/ScrimView$1;
.super Ljava/lang/Object;
.source "ScrimView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ScrimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ScrimView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ScrimView;)V
    .registers 2

    .line 228
    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView$1;->this$0:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView$1;->this$0:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/ScrimView;->access$002(Lcom/android/systemui/statusbar/ScrimView;F)F

    .line 233
    iget-object p1, p0, Lcom/android/systemui/statusbar/ScrimView$1;->this$0:Lcom/android/systemui/statusbar/ScrimView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/ScrimView;->access$000(Lcom/android/systemui/statusbar/ScrimView;)F

    move-result v0

    const v1, 0x3ecccccc  # 0.39999998f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000  # 1.0f

    sub-float v0, v1, v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/ScrimView$1;->this$0:Lcom/android/systemui/statusbar/ScrimView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/ScrimView;->access$000(Lcom/android/systemui/statusbar/ScrimView;)F

    move-result p0

    invoke-static {p1, v1, v0, p0}, Lcom/android/systemui/statusbar/ScrimView;->access$100(Lcom/android/systemui/statusbar/ScrimView;FFF)V

    return-void
.end method
