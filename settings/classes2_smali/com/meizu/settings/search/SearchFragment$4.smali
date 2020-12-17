.class Lcom/meizu/settings/search/SearchFragment$4;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Lcom/meizu/settings/search/SavedQueryController$OnLoadFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/search/SearchFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/search/SearchFragment;


# direct methods
.method constructor <init>(Lcom/meizu/settings/search/SearchFragment;)V
    .registers 2

    .line 545
    iput-object p1, p0, Lcom/meizu/settings/search/SearchFragment$4;->this$0:Lcom/meizu/settings/search/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFinished(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meizu/settings/search/SearchResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_19

    .line 548
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_9

    goto :goto_19

    .line 551
    :cond_9
    iget-object p1, p0, Lcom/meizu/settings/search/SearchFragment$4;->this$0:Lcom/meizu/settings/search/SearchFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/meizu/settings/search/SearchFragment;->access$000(Lcom/meizu/settings/search/SearchFragment;Z)V

    .line 552
    iget-object p0, p0, Lcom/meizu/settings/search/SearchFragment$4;->this$0:Lcom/meizu/settings/search/SearchFragment;

    iget-object p0, p0, Lcom/meizu/settings/search/SearchFragment;->mNoResultsView:Landroid/widget/LinearLayout;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1f

    .line 549
    :cond_19
    :goto_19
    iget-object p0, p0, Lcom/meizu/settings/search/SearchFragment$4;->this$0:Lcom/meizu/settings/search/SearchFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/settings/search/SearchFragment;->access$000(Lcom/meizu/settings/search/SearchFragment;Z)V

    :goto_1f
    return-void
.end method
