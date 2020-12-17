.class public abstract Lcom/meizu/settings/search/SearchViewHolder;
.super Lflyme/support/v7/widget/RecyclerView$ViewHolder;
.source "SearchViewHolder.java"


# instance fields
.field private final DYNAMIC_PLACEHOLDER:Ljava/lang/String;

.field public final breadcrumbView:Landroid/widget/TextView;

.field private final mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field protected final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mPlaceholderSummary:Ljava/lang/String;

.field protected final mSearchFeatureProvider:Lcom/meizu/settings/search/SearchFeatureProvider;

.field public final titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    .line 59
    invoke-direct {p0, p1}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const-string v0, "%s"

    .line 45
    iput-object v0, p0, Lcom/meizu/settings/search/SearchViewHolder;->DYNAMIC_PLACEHOLDER:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/search/SearchViewHolder;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 63
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFlymeSearchFeatureProvider()Lcom/meizu/settings/search/SearchFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/SearchViewHolder;->mSearchFeatureProvider:Lcom/meizu/settings/search/SearchFeatureProvider;

    const v0, 0x1020016

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/search/SearchViewHolder;->titleView:Landroid/widget/TextView;

    const v0, 0x7f0a011e

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/search/SearchViewHolder;->breadcrumbView:Landroid/widget/TextView;

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12157f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/search/SearchViewHolder;->mPlaceholderSummary:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/search/SearchViewHolder;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    return-void
.end method

.method private bindBreadcrumbView(Lcom/meizu/settings/search/SearchResult;)V
    .registers 8

    .line 105
    iget-object v0, p0, Lcom/meizu/settings/search/SearchViewHolder;->breadcrumbView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p1, Lcom/meizu/settings/search/SearchResult;->breadcrumbs:Ljava/util/List;

    const/16 v1, 0x8

    if-eqz v0, :cond_73

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_73

    .line 110
    :cond_14
    iget-object v0, p0, Lcom/meizu/settings/search/SearchViewHolder;->breadcrumbView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 112
    iget-object v2, p1, Lcom/meizu/settings/search/SearchResult;->breadcrumbs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_28

    .line 114
    iget-object p0, p0, Lcom/meizu/settings/search/SearchViewHolder;->breadcrumbView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_72

    .line 117
    :cond_28
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 118
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move v1, v4

    :goto_40
    if-ge v1, v2, :cond_61

    .line 121
    iget-object v3, p1, Lcom/meizu/settings/search/SearchResult;->breadcrumbs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 122
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/meizu/settings/search/SearchViewHolder;->setbreadcrumbViewText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 125
    :cond_61
    iget-object v0, p0, Lcom/meizu/settings/search/SearchViewHolder;->breadcrumbView:Landroid/widget/TextView;

    new-instance v1, Landroid/text/SpannableString;

    iget-object p1, p1, Lcom/meizu/settings/search/SearchResult;->title:Ljava/lang/CharSequence;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 127
    iget-object p0, p0, Lcom/meizu/settings/search/SearchViewHolder;->breadcrumbView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_72
    return-void

    .line 107
    :cond_73
    :goto_73
    iget-object p0, p0, Lcom/meizu/settings/search/SearchViewHolder;->breadcrumbView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setbreadcrumbViewText(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 6

    .line 133
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 134
    new-instance p2, Landroid/text/style/ImageSpan;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v1}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 135
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 136
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const/16 v2, 0x11

    .line 135
    invoke-virtual {v0, p2, p1, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 137
    iget-object p0, p0, Lcom/meizu/settings/search/SearchViewHolder;->breadcrumbView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onBind(Lcom/meizu/settings/search/SearchFragment;Lcom/meizu/settings/search/SearchResult;)V
    .registers 6

    .line 76
    iget-object v0, p0, Lcom/meizu/settings/search/SearchViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/meizu/settings/search/SearchResult;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    instance-of v0, p2, Lcom/meizu/settings/search/AppSearchResult;

    if-eqz v0, :cond_29

    .line 88
    move-object v0, p2

    check-cast v0, Lcom/meizu/settings/search/AppSearchResult;

    .line 89
    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 90
    invoke-virtual {v0}, Lcom/meizu/settings/search/AppSearchResult;->getAppUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/meizu/settings/search/SearchViewHolder;->titleView:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/meizu/settings/search/AppSearchResult;->info:Landroid/content/pm/ApplicationInfo;

    .line 95
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 94
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 101
    :cond_29
    invoke-direct {p0, p2}, Lcom/meizu/settings/search/SearchViewHolder;->bindBreadcrumbView(Lcom/meizu/settings/search/SearchResult;)V

    return-void
.end method
