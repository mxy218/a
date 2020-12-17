.class Lcom/flyme/systemui/headsup/FlymeHeadsupManager$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FlymeHeadsupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->setPopViewVisibilityWithAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;)V
    .registers 2

    .line 434
    iput-object p1, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$5;->this$0:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 437
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 438
    iget-object p0, p0, Lcom/flyme/systemui/headsup/FlymeHeadsupManager$5;->this$0:Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    invoke-static {p0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->access$800(Lcom/flyme/systemui/headsup/FlymeHeadsupManager;)Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
