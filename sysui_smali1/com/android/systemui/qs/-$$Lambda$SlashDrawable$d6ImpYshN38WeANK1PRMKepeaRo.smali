.class public final synthetic Lcom/android/systemui/qs/-$$Lambda$SlashDrawable$d6ImpYshN38WeANK1PRMKepeaRo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/SlashDrawable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/SlashDrawable;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/-$$Lambda$SlashDrawable$d6ImpYshN38WeANK1PRMKepeaRo;->f$0:Lcom/android/systemui/qs/SlashDrawable;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/qs/-$$Lambda$SlashDrawable$d6ImpYshN38WeANK1PRMKepeaRo;->f$0:Lcom/android/systemui/qs/SlashDrawable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SlashDrawable;->lambda$setSlashed$0$SlashDrawable(Landroid/animation/ValueAnimator;)V

    return-void
.end method
