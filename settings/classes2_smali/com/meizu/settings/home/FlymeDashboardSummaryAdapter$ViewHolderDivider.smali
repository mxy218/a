.class Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderDivider;
.super Lflyme/support/v7/widget/RecyclerView$ViewHolder;
.source "FlymeDashboardSummaryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderDivider"
.end annotation


# instance fields
.field public divider:Landroid/view/View;

.field final synthetic this$0:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;Landroid/view/View;)V
    .registers 3

    .line 383
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderDivider;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    .line 384
    invoke-direct {p0, p2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a015c

    .line 385
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderDivider;->divider:Landroid/view/View;

    return-void
.end method
