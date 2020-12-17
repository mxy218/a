.class Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderSummaryItem;
.super Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderItem;
.source "FlymeDashboardSummaryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolderSummaryItem"
.end annotation


# instance fields
.field public summary:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;Landroid/view/View;)V
    .registers 3

    .line 406
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderSummaryItem;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    .line 407
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderItem;-><init>(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;Landroid/view/View;)V

    const p1, 0x7f0a06f5

    .line 408
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$ViewHolderSummaryItem;->summary:Landroid/widget/TextView;

    return-void
.end method
