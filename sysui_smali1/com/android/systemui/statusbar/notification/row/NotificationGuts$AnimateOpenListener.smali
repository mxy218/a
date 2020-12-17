.class Lcom/android/systemui/statusbar/notification/row/NotificationGuts$AnimateOpenListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationGuts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationGuts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimateOpenListener"
.end annotation


# instance fields
.field final mOnAnimationEnd:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Ljava/lang/Runnable;)V
    .registers 3

    .line 418
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$AnimateOpenListener;->this$0:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 419
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$AnimateOpenListener;->mOnAnimationEnd:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Ljava/lang/Runnable;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$1;)V
    .registers 4

    .line 415
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$AnimateOpenListener;-><init>(Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    .line 424
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 425
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$AnimateOpenListener;->mOnAnimationEnd:Ljava/lang/Runnable;

    if-eqz p0, :cond_a

    .line 426
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_a
    return-void
.end method
