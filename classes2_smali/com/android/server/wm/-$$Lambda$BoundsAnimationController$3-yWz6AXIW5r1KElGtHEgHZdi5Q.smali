.class public final synthetic Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$3-yWz6AXIW5r1KElGtHEgHZdi5Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/BoundsAnimationController;

.field private final synthetic f$1:Landroid/animation/AnimationHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/BoundsAnimationController;Landroid/animation/AnimationHandler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$3-yWz6AXIW5r1KElGtHEgHZdi5Q;->f$0:Lcom/android/server/wm/BoundsAnimationController;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$3-yWz6AXIW5r1KElGtHEgHZdi5Q;->f$1:Landroid/animation/AnimationHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$3-yWz6AXIW5r1KElGtHEgHZdi5Q;->f$0:Lcom/android/server/wm/BoundsAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$3-yWz6AXIW5r1KElGtHEgHZdi5Q;->f$1:Landroid/animation/AnimationHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BoundsAnimationController;->lambda$new$0$BoundsAnimationController(Landroid/animation/AnimationHandler;)V

    return-void
.end method
