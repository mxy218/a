.class public Lcom/meizu/settings/applications/MzAppsPickActivity;
.super Lcom/meizu/settings/FlymeSettingsBaseActivity;
.source "MzAppsPickActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;,
        Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;,
        Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

.field private mAppFilter:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

.field private mApplicationsState:Lcom/meizu/settings/applications/ApplicationsState;

.field private mCloneAppPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mClonedAppMaskDrawable:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mEmptyView:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInitAppPkgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mListContainer:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mListViewProxy:Lcom/meizu/common/util/ListViewProxy;

.field private mLoadingContainer:Landroid/view/View;

.field private mModeCallback:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPickedAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowCloneItem:Z

.field private mTwoStateTextView:Lflyme/support/v7/widget/TwoStateTextView;

.field private multiChoiceView:Lflyme/support/v7/widget/MultiChoiceView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Lcom/meizu/settings/FlymeSettingsBaseActivity;-><init>()V

    .line 790
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mInitAppPkgList:Ljava/util/List;

    .line 791
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mPickedAppList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/settings/applications/MzAppsPickActivity;)Ljava/util/List;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mPickedAppList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/widget/ListView;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lflyme/support/v7/widget/TwoStateTextView;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mTwoStateTextView:Lflyme/support/v7/widget/TwoStateTextView;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/meizu/settings/applications/MzAppsPickActivity;Lflyme/support/v7/widget/TwoStateTextView;)Lflyme/support/v7/widget/TwoStateTextView;
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mTwoStateTextView:Lflyme/support/v7/widget/TwoStateTextView;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/meizu/settings/applications/MzAppsPickActivity;Ljava/util/ArrayList;)V
    .registers 2

    .line 48
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->setEmptyView(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/meizu/settings/applications/MzAppsPickActivity;)Ljava/util/List;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mCloneAppPkgList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/meizu/settings/applications/MzAppsPickActivity;)Ljava/lang/CharSequence;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mInvalidSizeStr:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/view/LayoutInflater;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mClonedAppMaskDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mAdapter:Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lcom/meizu/settings/applications/ApplicationsState$AppFilter;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mAppFilter:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lflyme/support/v7/widget/MultiChoiceView;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->multiChoiceView:Lflyme/support/v7/widget/MultiChoiceView;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/meizu/settings/applications/MzAppsPickActivity;Lflyme/support/v7/widget/MultiChoiceView;)Lflyme/support/v7/widget/MultiChoiceView;
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->multiChoiceView:Lflyme/support/v7/widget/MultiChoiceView;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/content/Context;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lcom/meizu/common/util/ListViewProxy;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mListViewProxy:Lcom/meizu/common/util/ListViewProxy;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/meizu/settings/applications/MzAppsPickActivity;)Ljava/util/List;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mInitAppPkgList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/applications/MzAppsPickActivity;)Z
    .registers 1

    .line 48
    iget-boolean p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mShowCloneItem:Z

    return p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/widget/TextView;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mEmptyView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/applications/MzAppsPickActivity;)V
    .registers 1

    .line 48
    invoke-direct {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->updateSelectView()V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mModeCallback:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/view/View;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mListContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/view/View;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mLoadingContainer:Landroid/view/View;

    return-object p0
.end method

.method private initView()V
    .registers 11

    .line 829
    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->setDecorViewBackground(Landroid/app/Activity;)V

    const v0, 0x7f0a03c1

    .line 831
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 832
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x1020004

    .line 834
    invoke-virtual {p0, v2}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mEmptyView:Landroid/widget/TextView;

    const v2, 0x102000a

    .line 835
    invoke-virtual {p0, v2}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mListView:Landroid/widget/ListView;

    .line 836
    iget-object v3, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mListView:Landroid/widget/ListView;

    instance-of v3, v3, Lcom/meizu/settings/widget/FastScrollLetterListview;

    if-eqz v3, :cond_43

    .line 837
    invoke-virtual {p0, v2}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/widget/FastScrollLetterListview;

    .line 839
    invoke-virtual {v2}, Lcom/meizu/settings/widget/FastScrollLetterListview;->getFastScrollLetterHelper()Lcom/meizu/settings/widget/FastScrollLetterHelper;

    move-result-object v3

    const/4 v4, -0x1

    const/4 v5, -0x1

    const v6, 0x7f0701d4

    const v7, 0x7f0701d3

    const/4 v8, -0x1

    const v9, 0x7f070172

    invoke-virtual/range {v3 .. v9}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->setLetterParam(IIIIII)V

    .line 844
    :cond_43
    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-static {p0, v3}, Lcom/meizu/settings/utils/MzUtils;->getListViewDividerPadding(Landroid/content/Context;[I)Landroid/widget/ListView$DividerPadding;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setDividerPadding(Landroid/widget/ListView$DividerPadding;)V

    .line 845
    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mEmptyView:Landroid/widget/TextView;

    if-eqz v2, :cond_56

    .line 846
    iget-object v4, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 848
    :cond_56
    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 849
    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 850
    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 851
    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mAdapter:Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 852
    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mAdapter:Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 853
    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mAdapter:Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 856
    new-instance v2, Lcom/meizu/common/util/ListViewProxy;

    iget-object v5, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mListView:Landroid/widget/ListView;

    invoke-direct {v2, v5}, Lcom/meizu/common/util/ListViewProxy;-><init>(Landroid/widget/AbsListView;)V

    iput-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mListViewProxy:Lcom/meizu/common/util/ListViewProxy;

    .line 857
    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mListViewProxy:Lcom/meizu/common/util/ListViewProxy;

    invoke-virtual {v2}, Lcom/meizu/common/util/ListViewProxy;->setEnabledMultiChoice()Z

    .line 858
    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x5

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 859
    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mListViewProxy:Lcom/meizu/common/util/ListViewProxy;

    invoke-virtual {v2, v4}, Lcom/meizu/common/util/ListViewProxy;->setEnableDragSelection(Z)Z

    .line 860
    new-instance v2, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    invoke-direct {v2, p0, v3}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;-><init>(Lcom/meizu/settings/applications/MzAppsPickActivity;Lcom/meizu/settings/applications/MzAppsPickActivity$1;)V

    iput-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mModeCallback:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    .line 861
    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mInitAppPkgList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->onInitDefaultPickedItem()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 862
    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mInitAppPkgList:Ljava/util/List;

    if-eqz v2, :cond_ad

    .line 863
    iget-object v3, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mPickedAppList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 865
    :cond_ad
    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mModeCallback:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 867
    iput-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mListContainer:Landroid/view/View;

    const v0, 0x7f0a03c9

    .line 868
    invoke-virtual {p0, v0}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mLoadingContainer:Landroid/view/View;

    .line 869
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setEmptyView(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 819
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1a

    :cond_8
    const p1, 0x1020004

    .line 820
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1a

    const/4 v0, 0x0

    .line 822
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 823
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_1a
    return-void
.end method

.method private updateSelectView()V
    .registers 3

    .line 915
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mAdapter:Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    if-eqz v0, :cond_24

    iget-object v1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->multiChoiceView:Lflyme/support/v7/widget/MultiChoiceView;

    if-nez v1, :cond_9

    goto :goto_24

    .line 920
    :cond_9
    invoke-virtual {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_1a

    .line 921
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->multiChoiceView:Lflyme/support/v7/widget/MultiChoiceView;

    invoke-virtual {p0}, Lflyme/support/v7/widget/MultiChoiceView;->getSelectAllView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_24

    .line 923
    :cond_1a
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->multiChoiceView:Lflyme/support/v7/widget/MultiChoiceView;

    invoke-virtual {p0}, Lflyme/support/v7/widget/MultiChoiceView;->getSelectAllView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_24
    :goto_24
    return-void
.end method


# virtual methods
.method protected isCloneItemIncluded()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method protected isItemCanCheckAlone()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onAttachedToWindow()V
    .registers 2

    .line 883
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 884
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 885
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 886
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    :cond_1e
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 802
    invoke-super {p0, p1}, Lcom/meizu/settings/FlymeSettingsBaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 803
    invoke-virtual {p0, p1}, Lcom/meizu/settings/FlymeSettingsBaseActivity;->setHasWhiteNavigationbar(Z)V

    .line 804
    invoke-virtual {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->onInitAppFilter()Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mAppFilter:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    .line 805
    invoke-virtual {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->isCloneItemIncluded()Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mShowCloneItem:Z

    .line 806
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/meizu/settings/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mApplicationsState:Lcom/meizu/settings/applications/ApplicationsState;

    .line 807
    iput-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mContext:Landroid/content/Context;

    .line 808
    new-instance p1, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mApplicationsState:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-direct {p1, p0, v0, p0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;-><init>(Lcom/meizu/settings/applications/MzAppsPickActivity;Lcom/meizu/settings/applications/ApplicationsState;Lcom/meizu/settings/applications/MzAppsPickActivity;)V

    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mAdapter:Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    .line 809
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 810
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const p1, 0x7f120a3b

    .line 811
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mInvalidSizeStr:Ljava/lang/CharSequence;

    const p1, 0x7f0803ca

    .line 812
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mClonedAppMaskDrawable:Landroid/graphics/drawable/Drawable;

    const p1, 0x7f0d00ff

    .line 814
    invoke-virtual {p0, p1}, Lflyme/support/v7/app/AppCompatActivity;->setContentView(I)V

    .line 815
    invoke-direct {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->initView()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 902
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 903
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mAdapter:Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    if-eqz v0, :cond_a

    .line 904
    invoke-virtual {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->release()V

    .line 906
    :cond_a
    invoke-static {}, Lcom/meizu/settings/applications/ApplicationsState;->removeInstance()V

    .line 907
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mApplicationsState:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/meizu/settings/applications/ApplicationsState;->exitBackgroundThread()V

    .line 908
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mApplicationsState:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/meizu/settings/applications/ApplicationsState;->emptyRequestIcon()V

    .line 910
    invoke-static {}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->removeInstance()V

    const/4 v0, 0x0

    .line 911
    iput-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mModeCallback:Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    return-void
.end method

.method protected onInitAppFilter()Lcom/meizu/settings/applications/ApplicationsState$AppFilter;
    .registers 1

    .line 932
    sget-object p0, Lcom/meizu/settings/applications/ApplicationsState;->FILTER_THIRD_PARTY:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    return-object p0
.end method

.method protected onInitDefaultPickedItem()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 928
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public onPause()V
    .registers 1

    .line 894
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 895
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mAdapter:Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    if-eqz p0, :cond_a

    .line 896
    invoke-virtual {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->pause()V

    :cond_a
    return-void
.end method

.method protected onPickedItemCountChanged(IILcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;)V
    .registers 4

    if-eqz p3, :cond_6

    const/4 p0, 0x1

    .line 938
    invoke-interface {p3, p0}, Lcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;->onMzAppsPickConfirm(Z)V

    :cond_6
    return-void
.end method

.method protected onRelatedItemCheckChanged(ZLcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;)V
    .registers 3

    if-eqz p2, :cond_6

    const/4 p0, 0x1

    .line 953
    invoke-interface {p2, p0}, Lcom/meizu/settings/applications/MzAppsPickActivity$MzAppsPickConfirmListener;->onMzAppsPickConfirm(Z)V

    :cond_6
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 874
    invoke-super {p0}, Lflyme/support/v7/app/AppCompatActivity;->onResume()V

    .line 875
    invoke-static {p0}, Lcom/meizu/settings/appclone/AppCloneState;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/appclone/AppCloneState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/settings/appclone/AppCloneState;->getAppCloneEnabledList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mCloneAppPkgList:Ljava/util/List;

    .line 876
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity;->mAdapter:Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;

    if-eqz p0, :cond_14

    .line 877
    invoke-virtual {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->resume()V

    :cond_14
    return-void
.end method
