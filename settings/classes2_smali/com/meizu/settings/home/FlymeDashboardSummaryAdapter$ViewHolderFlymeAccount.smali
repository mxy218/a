.class Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderFlymeAccount;
.super Lflyme/support/v7/widget/RecyclerView$ViewHolder;
.source "FlymeDashboardSummaryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderFlymeAccount"
.end annotation


# instance fields
.field public accountIcon:Landroid/widget/ImageView;

.field public summary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;Landroid/view/View;)V
    .registers 3

    .line 371
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderFlymeAccount;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    .line 372
    invoke-direct {p0, p2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0034

    .line 373
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderFlymeAccount;->accountIcon:Landroid/widget/ImageView;

    const p1, 0x1020016

    .line 374
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderFlymeAccount;->title:Landroid/widget/TextView;

    const p1, 0x7f0a06fc

    .line 375
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderFlymeAccount;->summary:Landroid/widget/TextView;

    return-void
.end method
