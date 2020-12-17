.class Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderItem;
.super Lflyme/support/v7/widget/RecyclerView$ViewHolder;
.source "FlymeDashboardSummaryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderItem"
.end annotation


# instance fields
.field public badgeIcon:Lcom/meizu/settings/widget/BadgeView;

.field public featureIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;Landroid/view/View;)V
    .registers 3

    .line 395
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderItem;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    .line 396
    invoke-direct {p0, p2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a033c

    .line 397
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderItem;->featureIcon:Landroid/widget/ImageView;

    const p1, 0x7f0a00e5

    .line 398
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/widget/BadgeView;

    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderItem;->badgeIcon:Lcom/meizu/settings/widget/BadgeView;

    const p1, 0x1020016

    .line 399
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderItem;->title:Landroid/widget/TextView;

    return-void
.end method
