.class Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationFilterPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->createOutAnimatorSet()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)V
    .registers 2

    .line 312
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$2;->this$0:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 315
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 316
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel$2;->this$0:Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;->access$100(Lcom/flyme/systemui/statusbar/notification/NotificationFilterPanel;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
