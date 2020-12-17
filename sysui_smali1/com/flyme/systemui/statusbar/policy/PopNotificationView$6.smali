.class Lcom/flyme/systemui/statusbar/policy/PopNotificationView$6;
.super Ljava/lang/Object;
.source "PopNotificationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->updateQuickOpenVisibility()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)V
    .registers 2

    .line 608
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$6;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 612
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_2d

    .line 613
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$6;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    .line 614
    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$1300(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Lcom/flyme/systemui/headsup/FlymeHeadsupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/headsup/FlymeHeadsupManager;->isForceQuickReply()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_2d

    .line 619
    :cond_19
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$6;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$1400(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 620
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$6;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$1500(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_57

    .line 615
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$6;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$1400(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$6;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$1500(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 617
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$6;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$1600(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)I

    move-result v1

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$6;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$dimen;->pop_view_button_width:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v1, p0

    invoke-static {v0, v1}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$1602(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;I)I

    :goto_57
    return-void
.end method
