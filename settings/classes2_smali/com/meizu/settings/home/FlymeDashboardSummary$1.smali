.class Lcom/meizu/settings/home/FlymeDashboardSummary$1;
.super Lflyme/support/v7/widget/RecyclerView$OnScrollListener;
.source "FlymeDashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/home/FlymeDashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;


# direct methods
.method constructor <init>(Lcom/meizu/settings/home/FlymeDashboardSummary;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$1;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-direct {p0}, Lflyme/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lflyme/support/v7/widget/RecyclerView;I)V
    .registers 4

    .line 131
    invoke-super {p0, p1, p2}, Lflyme/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lflyme/support/v7/widget/RecyclerView;I)V

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onScrollStateChanged newState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mPenddingUpdateBadge = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$1;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    .line 133
    invoke-static {v0}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$000(Lcom/meizu/settings/home/FlymeDashboardSummary;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FlymeDashboardSummary"

    .line 132
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$1;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p1, p2}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$102(Lcom/meizu/settings/home/FlymeDashboardSummary;I)I

    .line 135
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$1;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$100(Lcom/meizu/settings/home/FlymeDashboardSummary;)I

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_5f

    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$1;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$000(Lcom/meizu/settings/home/FlymeDashboardSummary;)Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 136
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$1;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$200(Lcom/meizu/settings/home/FlymeDashboardSummary;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5a

    .line 137
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$1;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$200(Lcom/meizu/settings/home/FlymeDashboardSummary;)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$1;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {v0}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$300(Lcom/meizu/settings/home/FlymeDashboardSummary;)Z

    move-result v0

    if-eqz v0, :cond_55

    move v0, p2

    goto :goto_57

    :cond_55
    const/16 v0, 0x8

    :goto_57
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :cond_5a
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$1;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p1, p2}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$002(Lcom/meizu/settings/home/FlymeDashboardSummary;Z)Z

    .line 141
    :cond_5f
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$1;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$400(Lcom/meizu/settings/home/FlymeDashboardSummary;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_6f

    move p1, v0

    goto :goto_70

    :cond_6f
    move p1, p2

    :goto_70
    if-eqz p1, :cond_7c

    .line 143
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$1;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/meizu/settings/utils/MzUtils;->setActionbarDividerVisiable(Landroid/content/Context;Z)V

    goto :goto_85

    .line 145
    :cond_7c
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$1;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/meizu/settings/utils/MzUtils;->setActionbarDividerVisiable(Landroid/content/Context;Z)V

    :goto_85
    return-void
.end method

.method public onScrolled(Lflyme/support/v7/widget/RecyclerView;II)V
    .registers 4

    .line 151
    invoke-super {p0, p1, p2, p3}, Lflyme/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Lflyme/support/v7/widget/RecyclerView;II)V

    .line 152
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$1;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$400(Lcom/meizu/settings/home/FlymeDashboardSummary;)Lflyme/support/v7/widget/MzRecyclerView;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->canScrollVertically(I)Z

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez p1, :cond_14

    move p1, p2

    goto :goto_15

    :cond_14
    move p1, p3

    :goto_15
    if-eqz p1, :cond_21

    .line 154
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$1;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/meizu/settings/utils/MzUtils;->setActionbarDividerVisiable(Landroid/content/Context;Z)V

    goto :goto_2a

    .line 156
    :cond_21
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$1;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/meizu/settings/utils/MzUtils;->setActionbarDividerVisiable(Landroid/content/Context;Z)V

    :goto_2a
    return-void
.end method
