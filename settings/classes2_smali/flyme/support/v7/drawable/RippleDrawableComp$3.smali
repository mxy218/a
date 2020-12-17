.class Lflyme/support/v7/drawable/RippleDrawableComp$3;
.super Ljava/lang/Object;
.source "RippleDrawableComp.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflyme/support/v7/drawable/RippleDrawableComp;->ripple()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lflyme/support/v7/drawable/RippleDrawableComp;


# direct methods
.method constructor <init>(Lflyme/support/v7/drawable/RippleDrawableComp;)V
    .registers 2

    .line 316
    iput-object p1, p0, Lflyme/support/v7/drawable/RippleDrawableComp$3;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    .line 320
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 321
    iget-object v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp$3;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    invoke-static {v0, p1}, Lflyme/support/v7/drawable/RippleDrawableComp;->access$102(Lflyme/support/v7/drawable/RippleDrawableComp;I)I

    .line 322
    iget-object v0, p0, Lflyme/support/v7/drawable/RippleDrawableComp$3;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    invoke-static {v0}, Lflyme/support/v7/drawable/RippleDrawableComp;->access$200(Lflyme/support/v7/drawable/RippleDrawableComp;)I

    move-result v0

    if-gt v0, p1, :cond_32

    .line 323
    iget-object p1, p0, Lflyme/support/v7/drawable/RippleDrawableComp$3;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lflyme/support/v7/drawable/RippleDrawableComp;->access$302(Lflyme/support/v7/drawable/RippleDrawableComp;Z)Z

    .line 324
    iget-object p1, p0, Lflyme/support/v7/drawable/RippleDrawableComp$3;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    invoke-static {p1}, Lflyme/support/v7/drawable/RippleDrawableComp;->access$400(Lflyme/support/v7/drawable/RippleDrawableComp;)Z

    move-result p1

    if-nez p1, :cond_32

    iget-object p1, p0, Lflyme/support/v7/drawable/RippleDrawableComp$3;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    invoke-static {p1}, Lflyme/support/v7/drawable/RippleDrawableComp;->access$500(Lflyme/support/v7/drawable/RippleDrawableComp;)Z

    move-result p1

    if-eqz p1, :cond_32

    .line 325
    iget-object p1, p0, Lflyme/support/v7/drawable/RippleDrawableComp$3;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    invoke-virtual {p1}, Lflyme/support/v7/drawable/RippleDrawableComp;->rippleFade()V

    .line 338
    :cond_32
    iget-object p0, p0, Lflyme/support/v7/drawable/RippleDrawableComp$3;->this$0:Lflyme/support/v7/drawable/RippleDrawableComp;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
