.class Lcom/flyme/systemui/statusbar/policy/PopNotificationView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PopNotificationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->setUpAnimator()V
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

    .line 194
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$1;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    .line 197
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 198
    invoke-static {}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[foree] onAnimationStart: mInset start"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$1;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 200
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$1;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$100(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 201
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$1;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$300(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$1;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$200(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$1;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$500(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$1;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-static {v0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$400(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$1;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-static {p1}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$700(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PopNotificationView$1;->this$0:Lcom/flyme/systemui/statusbar/policy/PopNotificationView;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/policy/PopNotificationView;->access$600(Lcom/flyme/systemui/statusbar/policy/PopNotificationView;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
