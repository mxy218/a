.class Lcom/meizu/settings/search/SearchResultsAdapter$2;
.super Landroid/os/Handler;
.source "SearchResultsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/search/SearchResultsAdapter;->getHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/search/SearchResultsAdapter;


# direct methods
.method constructor <init>(Lcom/meizu/settings/search/SearchResultsAdapter;Landroid/os/Looper;)V
    .registers 3

    .line 456
    iput-object p1, p0, Lcom/meizu/settings/search/SearchResultsAdapter$2;->this$0:Lcom/meizu/settings/search/SearchResultsAdapter;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 459
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4c

    .line 460
    iget-object p1, p0, Lcom/meizu/settings/search/SearchResultsAdapter$2;->this$0:Lcom/meizu/settings/search/SearchResultsAdapter;

    invoke-static {p1}, Lcom/meizu/settings/search/SearchResultsAdapter;->access$100(Lcom/meizu/settings/search/SearchResultsAdapter;)Lcom/meizu/settings/search/SearchFeatureProvider;

    move-result-object p1

    iget-object v1, p0, Lcom/meizu/settings/search/SearchResultsAdapter$2;->this$0:Lcom/meizu/settings/search/SearchResultsAdapter;

    invoke-static {v1}, Lcom/meizu/settings/search/SearchResultsAdapter;->access$000(Lcom/meizu/settings/search/SearchResultsAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/meizu/settings/search/SearchFeatureProvider;->cancelPendingSearchQuery(Landroid/content/Context;)V

    .line 461
    iget-object p1, p0, Lcom/meizu/settings/search/SearchResultsAdapter$2;->this$0:Lcom/meizu/settings/search/SearchResultsAdapter;

    invoke-static {p1}, Lcom/meizu/settings/search/SearchResultsAdapter;->access$200(Lcom/meizu/settings/search/SearchResultsAdapter;)I

    move-result p1

    if-ne p1, v0, :cond_30

    .line 462
    iget-object p1, p0, Lcom/meizu/settings/search/SearchResultsAdapter$2;->this$0:Lcom/meizu/settings/search/SearchResultsAdapter;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/meizu/settings/search/SearchResultsAdapter;->access$202(Lcom/meizu/settings/search/SearchResultsAdapter;I)I

    .line 463
    iget-object p1, p0, Lcom/meizu/settings/search/SearchResultsAdapter$2;->this$0:Lcom/meizu/settings/search/SearchResultsAdapter;

    invoke-static {p1}, Lcom/meizu/settings/search/SearchResultsAdapter;->access$300(Lcom/meizu/settings/search/SearchResultsAdapter;)Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 464
    iget-object p0, p0, Lcom/meizu/settings/search/SearchResultsAdapter$2;->this$0:Lcom/meizu/settings/search/SearchResultsAdapter;

    invoke-static {p0}, Lcom/meizu/settings/search/SearchResultsAdapter;->access$400(Lcom/meizu/settings/search/SearchResultsAdapter;)V

    goto :goto_4c

    .line 467
    :cond_30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ranking scores timed out in invalid state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/meizu/settings/search/SearchResultsAdapter$2;->this$0:Lcom/meizu/settings/search/SearchResultsAdapter;

    .line 468
    invoke-static {p0}, Lcom/meizu/settings/search/SearchResultsAdapter;->access$200(Lcom/meizu/settings/search/SearchResultsAdapter;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SearchResultsAdapter"

    .line 467
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    :goto_4c
    return-void
.end method
