.class Lcom/meizu/settings/search/SearchFragment$2;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 521
    iput-object p1, p0, Lcom/meizu/settings/search/SearchFragment$2;->this$0:Lcom/meizu/settings/search/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 524
    new-instance p1, Lcom/meizu/settings/search/SavedQueryRemover;

    iget-object v0, p0, Lcom/meizu/settings/search/SearchFragment$2;->this$0:Lcom/meizu/settings/search/SearchFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/meizu/settings/search/SavedQueryRemover;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/meizu/settings/search/SavedQueryRemover;->clearSaveQuery()V

    .line 525
    iget-object p1, p0, Lcom/meizu/settings/search/SearchFragment$2;->this$0:Lcom/meizu/settings/search/SearchFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/meizu/settings/search/SearchFragment;->access$000(Lcom/meizu/settings/search/SearchFragment;Z)V

    .line 526
    iget-object p0, p0, Lcom/meizu/settings/search/SearchFragment$2;->this$0:Lcom/meizu/settings/search/SearchFragment;

    iget-object p0, p0, Lcom/meizu/settings/search/SearchFragment;->mSavedQueryController:Lcom/meizu/settings/search/SavedQueryController;

    invoke-virtual {p0}, Lcom/meizu/settings/search/SavedQueryController;->loadSavedQueries()V

    return-void
.end method
