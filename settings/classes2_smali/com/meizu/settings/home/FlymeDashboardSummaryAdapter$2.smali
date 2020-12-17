.class Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$2;
.super Ljava/lang/Object;
.source "FlymeDashboardSummaryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->onBindViewHolder(Lflyme/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;I)V
    .registers 3

    .line 156
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$2;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    iput p2, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 159
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$2;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    invoke-static {p1}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->access$000(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;)Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 160
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$2;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    invoke-static {p1}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->access$000(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;)Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$2;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    invoke-static {v0}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;->access$100(Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;)Ljava/util/List;

    move-result-object v0

    iget p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$2;->val$position:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/drawer/Tile;

    invoke-interface {p1, p0}, Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter$OnItemClickListener;->onItemClick(Lcom/android/settingslib/drawer/Tile;)V

    :cond_1f
    return-void
.end method
