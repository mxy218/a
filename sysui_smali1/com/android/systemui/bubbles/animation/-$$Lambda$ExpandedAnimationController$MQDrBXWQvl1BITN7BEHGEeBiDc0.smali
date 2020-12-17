.class public final synthetic Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$MQDrBXWQvl1BITN7BEHGEeBiDc0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$MQDrBXWQvl1BITN7BEHGEeBiDc0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$MQDrBXWQvl1BITN7BEHGEeBiDc0;

    invoke-direct {v0}, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$MQDrBXWQvl1BITN7BEHGEeBiDc0;-><init>()V

    sput-object v0, Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$MQDrBXWQvl1BITN7BEHGEeBiDc0;->INSTANCE:Lcom/android/systemui/bubbles/animation/-$$Lambda$ExpandedAnimationController$MQDrBXWQvl1BITN7BEHGEeBiDc0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final configureAnimationForChildAtIndex(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/android/systemui/bubbles/animation/ExpandedAnimationController;->lambda$onActiveControllerForLayout$5(ILcom/android/systemui/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V

    return-void
.end method
