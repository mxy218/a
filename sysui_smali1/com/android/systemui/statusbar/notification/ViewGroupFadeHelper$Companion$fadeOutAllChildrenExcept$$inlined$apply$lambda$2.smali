.class public final Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper$Companion$fadeOutAllChildrenExcept$$inlined$apply$lambda$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewGroupFadeHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper$Companion;->fadeOutAllChildrenExcept(Landroid/view/ViewGroup;Landroid/view/View;JLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016¨\u0006\u0006¸\u0006\u0000"
    }
    d2 = {
        "com/android/systemui/statusbar/notification/ViewGroupFadeHelper$Companion$fadeOutAllChildrenExcept$animator$1$2",
        "Landroid/animation/AnimatorListenerAdapter;",
        "onAnimationEnd",
        "",
        "animation",
        "Landroid/animation/Animator;",
        "name"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xd
    }
.end annotation


# instance fields
.field final synthetic $duration$inlined:J

.field final synthetic $endRunnable$inlined:Ljava/lang/Runnable;

.field final synthetic $root$inlined:Landroid/view/ViewGroup;

.field final synthetic $viewsToFadeOut$inlined:Ljava/util/Set;


# direct methods
.method constructor <init>(JLandroid/view/ViewGroup;Ljava/util/Set;Ljava/lang/Runnable;)V
    .registers 6

    iput-wide p1, p0, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper$Companion$fadeOutAllChildrenExcept$$inlined$apply$lambda$2;->$duration$inlined:J

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper$Companion$fadeOutAllChildrenExcept$$inlined$apply$lambda$2;->$root$inlined:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper$Companion$fadeOutAllChildrenExcept$$inlined$apply$lambda$2;->$viewsToFadeOut$inlined:Ljava/util/Set;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper$Companion$fadeOutAllChildrenExcept$$inlined$apply$lambda$2;->$endRunnable$inlined:Ljava/lang/Runnable;

    .line 76
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 78
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper$Companion$fadeOutAllChildrenExcept$$inlined$apply$lambda$2;->$endRunnable$inlined:Ljava/lang/Runnable;

    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_7
    return-void
.end method
