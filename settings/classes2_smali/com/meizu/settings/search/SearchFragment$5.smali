.class Lcom/meizu/settings/search/SearchFragment$5;
.super Ljava/lang/Object;
.source "SearchFragment.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/settings/search/SearchFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 565
    iput-object p1, p0, Lcom/meizu/settings/search/SearchFragment$5;->this$0:Lcom/meizu/settings/search/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .registers 6

    const/4 p2, -0x1

    .line 568
    invoke-virtual {p1, p2}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    if-eqz p1, :cond_14

    .line 570
    iget-object p1, p0, Lcom/meizu/settings/search/SearchFragment$5;->this$0:Lcom/meizu/settings/search/SearchFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/meizu/settings/utils/MzUtils;->setActionbarDividerVisiable(Landroid/content/Context;Z)V

    goto :goto_1d

    .line 572
    :cond_14
    iget-object p1, p0, Lcom/meizu/settings/search/SearchFragment$5;->this$0:Lcom/meizu/settings/search/SearchFragment;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/meizu/settings/utils/MzUtils;->setActionbarDividerVisiable(Landroid/content/Context;Z)V

    :goto_1d
    if-eqz p5, :cond_24

    .line 575
    iget-object p0, p0, Lcom/meizu/settings/search/SearchFragment$5;->this$0:Lcom/meizu/settings/search/SearchFragment;

    invoke-static {p0}, Lcom/meizu/settings/search/SearchFragment;->access$100(Lcom/meizu/settings/search/SearchFragment;)V

    :cond_24
    return-void
.end method
