.class Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;
.super Landroid/view/ViewOutlineProvider;
.source "ExpandableOutlineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 7

    .line 84
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->access$000(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_66

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->access$100(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)F

    move-result p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_66

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    .line 85
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->access$200(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_66

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->access$300(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)Z

    move-result p1

    if-nez p1, :cond_66

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    .line 86
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->access$400(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)Z

    move-result p1

    if-nez p1, :cond_66

    .line 87
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mShouldTranslateContents:Z

    if-eqz v1, :cond_3a

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslation()F

    move-result p1

    float-to-int p1, p1

    goto :goto_3b

    :cond_3a
    move p1, v0

    .line 88
    :goto_3b
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 89
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    iget v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->access$500(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)I

    move-result v2

    add-int/2addr v3, v2

    .line 90
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    add-int/2addr v2, p1

    .line 91
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    iget v0, v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    sub-int/2addr p1, v0

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 92
    invoke-virtual {p2, v1, v3, v2, p1}, Landroid/graphics/Outline;->setRect(IIII)V

    goto :goto_77

    .line 94
    :cond_66
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getClipPath(Z)Landroid/graphics/Path;

    move-result-object p1

    if-eqz p1, :cond_77

    .line 95
    invoke-virtual {p1}, Landroid/graphics/Path;->isConvex()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 98
    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setConvexPath(Landroid/graphics/Path;)V

    .line 101
    :cond_77
    :goto_77
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->access$600(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)F

    move-result p0

    invoke-virtual {p2, p0}, Landroid/graphics/Outline;->setAlpha(F)V

    return-void
.end method