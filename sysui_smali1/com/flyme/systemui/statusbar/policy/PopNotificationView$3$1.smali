.class Lcom/flyme/systemui/statusbar/policy/PopNotificationView$3$1;
.super Ljava/lang/Object;
.source "PopNotificationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/PopNotificationView$3;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/statusbar/policy/PopNotificationView$3;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/PopNotificationView$3;)V
    .registers 2

    .line 267
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$3$1;->this$1:Lcom/flyme/systemui/statusbar/policy/PopNotificationView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 271
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$3$1;->this$1:Lcom/flyme/systemui/statusbar/policy/PopNotificationView$3;

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$3;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$1002(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;Z)Z

    return-void
.end method
