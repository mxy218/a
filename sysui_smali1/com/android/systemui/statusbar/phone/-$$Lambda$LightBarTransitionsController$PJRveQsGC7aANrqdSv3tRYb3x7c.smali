.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$LightBarTransitionsController$PJRveQsGC7aANrqdSv3tRYb3x7c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$LightBarTransitionsController$PJRveQsGC7aANrqdSv3tRYb3x7c;->f$0:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$LightBarTransitionsController$PJRveQsGC7aANrqdSv3tRYb3x7c;->f$0:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->lambda$animateIconTint$0$LightBarTransitionsController(Landroid/animation/ValueAnimator;)V

    return-void
.end method
