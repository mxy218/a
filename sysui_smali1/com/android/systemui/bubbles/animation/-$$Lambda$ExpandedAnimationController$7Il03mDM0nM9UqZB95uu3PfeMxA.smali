.class public final synthetic Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$7Il03mDM0nM9UqZB95uu3PfeMxA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$7Il03mDM0nM9UqZB95uu3PfeMxA;->f$0:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    iput-boolean p2, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$7Il03mDM0nM9UqZB95uu3PfeMxA;->f$1:Z

    return-void
.end method


# virtual methods
.method public final configureAnimationForChildAtIndex(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$7Il03mDM0nM9UqZB95uu3PfeMxA;->f$0:Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;

    iget-boolean p0, p0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$7Il03mDM0nM9UqZB95uu3PfeMxA;->f$1:Z

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->lambda$startOrUpdatePathAnimation$2$ExpandedAnimationController(ZILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V

    return-void
.end method
