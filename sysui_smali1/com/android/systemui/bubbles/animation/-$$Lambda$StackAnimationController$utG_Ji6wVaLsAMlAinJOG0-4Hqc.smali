.class public final synthetic Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$utG_Ji6wVaLsAMlAinJOG0-4Hqc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field private final synthetic f$0:[Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>([Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$utG_Ji6wVaLsAMlAinJOG0-4Hqc;->f$0:[Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .registers 5

    iget-object p0, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$StackAnimationController$utG_Ji6wVaLsAMlAinJOG0-4Hqc;->f$0:[Ljava/lang/Runnable;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/systemui/bubbles/animation/StackAnimationController;->lambda$springFirstBubbleWithStackFollowing$2([Ljava/lang/Runnable;Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    return-void
.end method
