.class Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;
.super Ljava/lang/Object;
.source "NotificationMenuRow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->fadeInMenu(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;

.field final synthetic val$fromLeft:Z

.field final synthetic val$notiThreshold:F

.field final synthetic val$transX:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;FZF)V
    .registers 5

    .line 591
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;

    iput p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;->val$transX:F

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;->val$fromLeft:Z

    iput p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;->val$notiThreshold:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 5

    .line 594
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;->val$transX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 596
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;->val$fromLeft:Z

    if-eqz v1, :cond_12

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;->val$transX:F

    iget v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;->val$notiThreshold:F

    cmpg-float v1, v1, v2

    if-lez v1, :cond_1c

    :cond_12
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;->val$fromLeft:Z

    if-nez v1, :cond_1e

    iget v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;->val$notiThreshold:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    if-eqz v0, :cond_38

    .line 598
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->access$500(Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 599
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$1;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow;->setMenuAlpha(F)V

    :cond_38
    return-void
.end method
