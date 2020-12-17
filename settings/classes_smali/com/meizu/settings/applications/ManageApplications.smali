.class public Lcom/meizu/settings/applications/ManageApplications;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "ManageApplications.java"

# interfaces
.implements Lcom/meizu/settings/applications/AppClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/meizu/settings/search/Indexable;
.implements Lcom/meizu/settings/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/applications/ManageApplications$CategoryHolder;,
        Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;,
        Lcom/meizu/settings/applications/ManageApplications$TabInfo;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private isResetShowAllApps:Z

.field private isSearchMode:Z

.field private mActionBar:Lflyme/support/v7/app/ActionBar;

.field private mActivityResumed:Z

.field private mApplicationsState:Lcom/meizu/settings/applications/ApplicationsState;

.field private mComputingSizeStr:Ljava/lang/CharSequence;

.field private final mContainerConnection:Landroid/content/ServiceConnection;

.field private volatile mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mContentContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mCurrentPkgUid:I

.field private mDataBeforeSearchEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultListType:I

.field private mFloatView:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mNumTabs:I

.field private mOnBackPressedListener:Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mPinnedHeader:Landroid/view/ViewGroup;

.field private mProfileSpinnerAdapter:Lcom/meizu/settings/widget/UserSpinnerAdapter;

.field mResetDialog:Landroid/app/AlertDialog;

.field private mRootView:Landroid/view/View;

.field private mSearchBaseEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchView:Lcom/meizu/settings/widget/SearchView;

.field private mShowAllApps:Z

.field private mShowBackground:Z

.field private mSortOrder:I

.field private mSpinner:Landroid/widget/Spinner;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/ManageApplications$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 2172
    new-instance v0, Lcom/meizu/settings/applications/ManageApplications$4;

    invoke-direct {v0}, Lcom/meizu/settings/applications/ManageApplications$4;-><init>()V

    sput-object v0, Lcom/meizu/settings/applications/ManageApplications;->SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 167
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x4

    .line 213
    iput v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mSortOrder:I

    const/4 v0, 0x0

    .line 220
    iput-boolean v0, p0, Lcom/meizu/settings/applications/ManageApplications;->isSearchMode:Z

    const/4 v1, 0x1

    .line 221
    iput-boolean v1, p0, Lcom/meizu/settings/applications/ManageApplications;->isResetShowAllApps:Z

    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/settings/applications/ManageApplications;->mSearchBaseEntries:Ljava/util/ArrayList;

    .line 224
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/settings/applications/ManageApplications;->mSearchResult:Ljava/util/ArrayList;

    .line 227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/settings/applications/ManageApplications;->mDataBeforeSearchEntries:Ljava/util/ArrayList;

    .line 617
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 619
    iput-object v1, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    .line 648
    iput-boolean v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mShowBackground:Z

    .line 649
    iput-boolean v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mShowAllApps:Z

    const/4 v0, -0x1

    .line 651
    iput v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mDefaultListType:I

    .line 2149
    new-instance v0, Lcom/meizu/settings/applications/ManageApplications$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/applications/ManageApplications$3;-><init>(Lcom/meizu/settings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    .line 2288
    new-instance v0, Lcom/meizu/settings/applications/ManageApplications$5;

    invoke-direct {v0, p0}, Lcom/meizu/settings/applications/ManageApplications$5;-><init>(Lcom/meizu/settings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mOnBackPressedListener:Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;

    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/settings/applications/ManageApplications;)Z
    .registers 1

    .line 167
    iget-boolean p0, p0, Lcom/meizu/settings/applications/ManageApplications;->isSearchMode:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/meizu/settings/applications/ManageApplications;Z)Z
    .registers 2

    .line 167
    iput-boolean p1, p0, Lcom/meizu/settings/applications/ManageApplications;->isSearchMode:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/meizu/settings/applications/ManageApplications;)Z
    .registers 1

    .line 167
    iget-boolean p0, p0, Lcom/meizu/settings/applications/ManageApplications;->isResetShowAllApps:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/meizu/settings/applications/ManageApplications;)Z
    .registers 1

    .line 167
    iget-boolean p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mShowAllApps:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/meizu/settings/applications/ManageApplications;Z)Z
    .registers 2

    .line 167
    iput-boolean p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mShowAllApps:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/meizu/settings/applications/ManageApplications;)Ljava/util/ArrayList;
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mSearchBaseEntries:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/meizu/settings/applications/ManageApplications;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mSearchBaseEntries:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/meizu/settings/applications/ManageApplications;)Lflyme/support/v7/app/ActionBar;
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mActionBar:Lflyme/support/v7/app/ActionBar;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/meizu/settings/applications/ManageApplications;)V
    .registers 1

    .line 167
    invoke-direct {p0}, Lcom/meizu/settings/applications/ManageApplications;->reportDefaultSettingsUsage()V

    return-void
.end method

.method static synthetic access$1900(Lcom/meizu/settings/applications/ManageApplications;)Ljava/util/ArrayList;
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mDataBeforeSearchEntries:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/meizu/settings/applications/ManageApplications;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mDataBeforeSearchEntries:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/meizu/settings/applications/ManageApplications;)Ljava/lang/String;
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/meizu/settings/applications/ManageApplications;)Z
    .registers 1

    .line 167
    iget-boolean p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mActivityResumed:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/meizu/settings/applications/ManageApplications;)I
    .registers 1

    .line 167
    iget p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mSortOrder:I

    return p0
.end method

.method static synthetic access$2500(Lcom/meizu/settings/applications/ManageApplications;)Lcom/android/internal/app/IMediaContainerService;
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/meizu/settings/applications/ManageApplications;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/meizu/settings/applications/ManageApplications;)Ljava/util/ArrayList;
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mSearchResult:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/meizu/settings/applications/ManageApplications;)V
    .registers 1

    .line 167
    invoke-direct {p0}, Lcom/meizu/settings/applications/ManageApplications;->entriesNotifyDataSetChange()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/applications/ManageApplications;)Ljava/util/ArrayList;
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/meizu/settings/applications/ManageApplications;)Landroid/view/Menu;
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/applications/ManageApplications;)Landroid/view/ViewGroup;
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/applications/ManageApplications;)Landroid/view/View;
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/meizu/settings/applications/ManageApplications;)Landroid/view/View;
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mFloatView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$702(Lcom/meizu/settings/applications/ManageApplications;Landroid/view/View;)Landroid/view/View;
    .registers 2

    .line 167
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mFloatView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$800(Lcom/meizu/settings/applications/ManageApplications;Z)V
    .registers 2

    .line 167
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/ManageApplications;->setAnimator(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/meizu/settings/applications/ManageApplications;)Lcom/meizu/settings/widget/SearchView;
    .registers 1

    .line 167
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mSearchView:Lcom/meizu/settings/widget/SearchView;

    return-object p0
.end method

.method public static createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/meizu/settings/widget/UserSpinnerAdapter;
    .registers 8

    .line 2201
    invoke-static {p1}, Lcom/meizu/settings/appclone/AppCloneInit;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/appclone/AppCloneInit;

    move-result-object v0

    .line 2202
    invoke-virtual {p0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/settings/appclone/AppCloneInit;->removeAppCloneHandle(Ljava/util/List;)Ljava/util/List;

    .line 2204
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_14

    const/4 p0, 0x0

    return-object p0

    .line 2208
    :cond_14
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-direct {v0, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 2210
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 2211
    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 2213
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2214
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    :goto_31
    if-ge v2, v3, :cond_44

    .line 2216
    new-instance v4, Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    invoke-direct {v4, v5, p0, p1}, Lcom/meizu/settings/widget/UserSpinnerAdapter$UserDetails;-><init>(Landroid/os/UserHandle;Landroid/os/UserManager;Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 2218
    :cond_44
    new-instance p0, Lcom/meizu/settings/widget/UserSpinnerAdapter;

    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/widget/UserSpinnerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method private entriesNotifyDataSetChange()V
    .registers 4

    .line 2315
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_1c

    .line 2316
    invoke-static {v0}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->access$1800(Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object v2, v2, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    .line 2317
    invoke-static {v2}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->access$3000(Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;)I

    move-result v2

    .line 2316
    invoke-static {v0, v1, v2}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->access$3100(Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;I)V

    .line 2318
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_1c
    return-void
.end method

.method private reportDefaultSettingsUsage()V
    .registers 3

    .line 2166
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p0

    const-string v0, "defaults_app_settings"

    const-string v1, "Manage_Applications"

    invoke-virtual {p0, v0, v1, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private reportShowAllAppsConfig()V
    .registers 3

    .line 1726
    iget-boolean v0, p0, Lcom/meizu/settings/applications/ManageApplications;->isSearchMode:Z

    if-eqz v0, :cond_b

    .line 1727
    iget-boolean v0, p0, Lcom/meizu/settings/applications/ManageApplications;->isResetShowAllApps:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 1728
    iput-boolean v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mShowAllApps:Z

    .line 1731
    :cond_b
    iget-boolean v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mShowAllApps:Z

    if-eqz v0, :cond_12

    const-string v0, "application_showsysapp"

    goto :goto_14

    :cond_12
    const-string v0, "application_hidesysapp"

    .line 1732
    :goto_14
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p0

    const-string v1, "ManageApplications"

    invoke-virtual {p0, v0, v1, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setAnimator(Z)V
    .registers 13

    if-eqz p1, :cond_1b

    .line 2324
    iget-object v1, p0, Lcom/meizu/settings/applications/ManageApplications;->mFloatView:Landroid/view/View;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    const/16 v4, 0xc8

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/meizu/settings/applications/ManageApplications;->setObjectAnimator(Landroid/view/View;FFIZ)V

    .line 2325
    iget-object v6, p0, Lcom/meizu/settings/applications/ManageApplications;->mSearchView:Lcom/meizu/settings/widget/SearchView;

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000  # 1.0f

    const/16 v9, 0xc8

    move-object v5, p0

    move v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/meizu/settings/applications/ManageApplications;->setObjectAnimator(Landroid/view/View;FFIZ)V

    goto :goto_33

    .line 2327
    :cond_1b
    iget-object v1, p0, Lcom/meizu/settings/applications/ManageApplications;->mFloatView:Landroid/view/View;

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    const/16 v4, 0x64

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/meizu/settings/applications/ManageApplications;->setObjectAnimator(Landroid/view/View;FFIZ)V

    .line 2328
    iget-object v6, p0, Lcom/meizu/settings/applications/ManageApplications;->mSearchView:Lcom/meizu/settings/widget/SearchView;

    const/high16 v7, 0x3f800000  # 1.0f

    const/4 v8, 0x0

    const/16 v9, 0x64

    move-object v5, p0

    move v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/meizu/settings/applications/ManageApplications;->setObjectAnimator(Landroid/view/View;FFIZ)V

    :goto_33
    return-void
.end method

.method private setObjectAnimator(Landroid/view/View;FFIZ)V
    .registers 8

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    const-string p2, "alpha"

    .line 2332
    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    int-to-long p2, p4

    .line 2333
    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2334
    new-instance p2, Lcom/meizu/settings/applications/ManageApplications$6;

    invoke-direct {p2, p0, p5}, Lcom/meizu/settings/applications/ManageApplications$6;-><init>(Lcom/meizu/settings/applications/ManageApplications;Z)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2361
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private startApplicationDetailsActivity()V
    .registers 9

    .line 1799
    iget v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurrentPkgUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    move v2, v1

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    .line 1801
    :goto_c
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1802
    iget-object v4, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    const-string/jumbo v5, "package"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "android.intent.extra.USER_ID"

    .line 1803
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1805
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, ":settings:show_fragment_args"

    .line 1806
    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1807
    iget-object v6, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const v5, 0x7f1201b3

    const-string v6, ":settings:show_fragment_title_resid"

    .line 1808
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, ":settings:show_fragment_as_subsetting"

    .line 1809
    invoke-virtual {v4, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v2, :cond_4c

    .line 1811
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v4, v1, v3, v2}, Landroid/preference/PreferenceFragment;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_4f

    .line 1813
    :cond_4c
    invoke-virtual {p0, v4, v1}, Landroid/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_4f
    return-void
.end method

.method private updateNumTabs()V
    .registers 1

    return-void
.end method


# virtual methods
.method buildResetDialog()V
    .registers 4

    .line 1957
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_31

    .line 1958
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121192

    .line 1959
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f121191

    .line 1960
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f121190

    .line 1961
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f120442

    const/4 v2, 0x0

    .line 1962
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1963
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1964
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    :cond_31
    return-void
.end method

.method public buildSearchView(Lflyme/support/v7/app/ActionBar;)Lcom/meizu/settings/widget/SearchView;
    .registers 5

    .line 2237
    new-instance v0, Lcom/meizu/settings/widget/SearchView;

    invoke-virtual {p1}, Lflyme/support/v7/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/meizu/settings/widget/SearchView;-><init>(Landroid/content/Context;)V

    .line 2238
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2240
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2241
    invoke-virtual {v0}, Lcom/meizu/settings/widget/SearchView;->requestEditTextFocus()V

    .line 2242
    invoke-virtual {v0, p0}, Lcom/meizu/settings/widget/SearchView;->setOnQueryTextListener(Lcom/meizu/settings/widget/SearchView$OnQueryTextListener;)V

    const/4 p1, 0x0

    .line 2243
    invoke-virtual {v0, p1}, Lcom/meizu/settings/widget/SearchView;->setShowVoiceIcon(Z)V

    const p1, 0x7f121295

    .line 2244
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/meizu/settings/widget/SearchView;->setSearchEditHint(Ljava/lang/CharSequence;)V

    .line 2245
    iget-boolean p1, p0, Lcom/meizu/settings/applications/ManageApplications;->isSearchMode:Z

    if-eqz p1, :cond_35

    const/4 p1, 0x1

    .line 2246
    iput-boolean p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mShowAllApps:Z

    .line 2247
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    :cond_35
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    const/4 p2, 0x1

    if-ne p1, p2, :cond_12

    .line 1753
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz p1, :cond_12

    .line 1754
    iget-object p2, p0, Lcom/meizu/settings/applications/ManageApplications;->mApplicationsState:Lcom/meizu/settings/applications/ApplicationsState;

    iget p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurrentPkgUid:I

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-virtual {p2, p1, p0}, Lcom/meizu/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    :cond_12
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 11

    .line 1978
    iget-object p2, p0, Lcom/meizu/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne p2, p1, :cond_50

    .line 1979
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo p1, "package"

    .line 1981
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 1980
    invoke-static {p1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v4

    const-string p1, "notification"

    .line 1983
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 1982
    invoke-static {p1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 1984
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v6

    .line 1985
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string p2, "appops"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, Landroid/app/AppOpsManager;

    .line 1987
    new-instance v7, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v7, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1988
    new-instance p1, Lcom/meizu/settings/applications/ManageApplications$2;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/meizu/settings/applications/ManageApplications$2;-><init>(Lcom/meizu/settings/applications/ManageApplications;Landroid/content/pm/PackageManager;Landroid/app/INotificationManager;Landroid/content/pm/IPackageManager;Landroid/app/AppOpsManager;Landroid/net/NetworkPolicyManager;Landroid/os/Handler;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 2046
    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_50
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 16

    .line 1492
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 1494
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->setHasOptionsMenu(Z)V

    .line 1496
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/applications/ManageApplications;->mContext:Landroid/content/Context;

    .line 1497
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/meizu/settings/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/applications/ManageApplications;->mApplicationsState:Lcom/meizu/settings/applications/ApplicationsState;

    .line 1499
    iget-object v1, p0, Lcom/meizu/settings/applications/ManageApplications;->mContext:Landroid/content/Context;

    check-cast v1, Lflyme/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lflyme/support/v7/app/ActionBar;->setStackedTabsCanBeEmbedded(Z)V

    .line 1501
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1502
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1507
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 1508
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "classname"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_45

    :cond_44
    const/4 v4, 0x0

    :goto_45
    if-nez v4, :cond_4f

    .line 1510
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 1512
    :cond_4f
    const-class v1, Lcom/android/settings/Settings$RunningServicesActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x5

    const/4 v6, 0x6

    if-nez v1, :cond_8e

    const-string v1, ".RunningServices"

    .line 1513
    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_66

    goto :goto_8e

    .line 1515
    :cond_66
    const-class v1, Lcom/android/settings/Settings$StorageUseActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8a

    const-string v1, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    .line 1516
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8a

    const-string v1, ".StorageUse"

    .line 1517
    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_83

    goto :goto_8a

    :cond_83
    const-string v1, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    .line 1520
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_8c

    .line 1518
    :cond_8a
    :goto_8a
    iput v5, p0, Lcom/meizu/settings/applications/ManageApplications;->mSortOrder:I

    :goto_8c
    move v1, v6

    goto :goto_8f

    :cond_8e
    :goto_8e
    move v1, v0

    :goto_8f
    if-eqz p1, :cond_af

    .line 1526
    iget v4, p0, Lcom/meizu/settings/applications/ManageApplications;->mSortOrder:I

    const-string/jumbo v7, "sortOrder"

    invoke-virtual {p1, v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/meizu/settings/applications/ManageApplications;->mSortOrder:I

    const/4 v4, -0x1

    const-string v7, "defaultListType"

    .line 1527
    invoke-virtual {p1, v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-eq v7, v4, :cond_a6

    move v1, v7

    :cond_a6
    const-string/jumbo v4, "showBackground"

    .line 1529
    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/meizu/settings/applications/ManageApplications;->mShowBackground:Z

    .line 1532
    :cond_af
    iput v1, p0, Lcom/meizu/settings/applications/ManageApplications;->mDefaultListType:I

    .line 1534
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.android.defcontainer"

    const-string v7, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v2, v4, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 1536
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v4, p0, Lcom/meizu/settings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v4, v0}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1538
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120a3b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 1539
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120519

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/settings/applications/ManageApplications;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 1541
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "currentListType"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

    .line 1543
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f9

    move v1, v5

    :cond_f9
    if-ne v1, v6, :cond_118

    .line 1550
    new-instance v1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object v9, p0, Lcom/meizu/settings/applications/ManageApplications;->mApplicationsState:Lcom/meizu/settings/applications/ApplicationsState;

    .line 1551
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f120866

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x6

    move-object v7, v1

    move-object v8, p0

    move-object v12, p0

    move-object v13, p1

    invoke-direct/range {v7 .. v13}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/meizu/settings/applications/ManageApplications;Lcom/meizu/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/meizu/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 1553
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15d

    :cond_118
    const v2, 0x7f120868

    if-ne v1, v5, :cond_141

    .line 1556
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_15d

    .line 1557
    new-instance v1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object v5, p0, Lcom/meizu/settings/applications/ManageApplications;->mApplicationsState:Lcom/meizu/settings/applications/ApplicationsState;

    .line 1558
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    move-object v3, v1

    move-object v4, p0

    move-object v8, p0

    move-object v9, p1

    invoke-direct/range {v3 .. v9}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/meizu/settings/applications/ManageApplications;Lcom/meizu/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/meizu/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 1560
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15d

    :cond_141
    const/4 v3, 0x7

    if-ne v1, v3, :cond_15d

    .line 1563
    new-instance v1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object v6, p0, Lcom/meizu/settings/applications/ManageApplications;->mApplicationsState:Lcom/meizu/settings/applications/ApplicationsState;

    .line 1564
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x7

    move-object v4, v1

    move-object v5, p0

    move-object v9, p0

    move-object v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;-><init>(Lcom/meizu/settings/applications/ManageApplications;Lcom/meizu/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/meizu/settings/applications/AppClickListener;Landroid/os/Bundle;)V

    .line 1566
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1584
    :cond_15d
    :goto_15d
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mNumTabs:I

    .line 1586
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 1587
    iget-object v1, p0, Lcom/meizu/settings/applications/ManageApplications;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/meizu/settings/applications/ManageApplications;->createUserSpinnerAdapter(Landroid/os/UserManager;Landroid/content/Context;)Lcom/meizu/settings/widget/UserSpinnerAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mProfileSpinnerAdapter:Lcom/meizu/settings/widget/UserSpinnerAdapter;

    .line 1588
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lflyme/support/v7/app/AppCompatActivity;

    invoke-virtual {p1}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mActionBar:Lflyme/support/v7/app/ActionBar;

    .line 1589
    invoke-virtual {p0}, Lcom/meizu/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1590
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1591
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mOnBackPressedListener:Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;

    invoke-virtual {p0, v0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->setOnBackPressedListener(ZLcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 6

    .line 1820
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 1845
    iget-boolean p2, p0, Lcom/meizu/settings/applications/ManageApplications;->mShowAllApps:Z

    if-eqz p2, :cond_a

    const p2, 0x7f1209c9

    goto :goto_d

    :cond_a
    const p2, 0x7f1213df

    :goto_d
    const/4 v0, 0x0

    const/16 v1, 0xb

    const/4 v2, 0x6

    invoke-interface {p1, v0, v1, v2, p2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p2

    .line 1846
    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const p2, 0x7f12129c

    .line 1847
    invoke-virtual {p0, p2}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1848
    invoke-interface {p1, v0, v0, v0, p2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    const p2, 0x7f0806d7

    .line 1849
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object p1

    new-instance p2, Lcom/meizu/settings/applications/ManageApplications$1;

    invoke-direct {p2, p0}, Lcom/meizu/settings/applications/ManageApplications$1;-><init>(Lcom/meizu/settings/applications/ManageApplications;)V

    .line 1850
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object p1

    const/4 p2, 0x1

    .line 1859
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1860
    invoke-virtual {p0}, Lcom/meizu/settings/applications/ManageApplications;->updateOptionsMenu()V

    return-void
.end method

.method public onCreateSearchView()V
    .registers 4

    .line 2227
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mActionBar:Lflyme/support/v7/app/ActionBar;

    invoke-virtual {p0, v0}, Lcom/meizu/settings/applications/ManageApplications;->buildSearchView(Lflyme/support/v7/app/ActionBar;)Lcom/meizu/settings/widget/SearchView;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mSearchView:Lcom/meizu/settings/widget/SearchView;

    .line 2228
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mActionBar:Lflyme/support/v7/app/ActionBar;

    iget-object v1, p0, Lcom/meizu/settings/applications/ManageApplications;->mSearchView:Lcom/meizu/settings/widget/SearchView;

    invoke-virtual {v0, v1}, Lflyme/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 2229
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mActionBar:Lflyme/support/v7/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lflyme/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 2230
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mActionBar:Lflyme/support/v7/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lflyme/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 2231
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mSearchView:Lcom/meizu/settings/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 2232
    invoke-direct {p0, v1}, Lcom/meizu/settings/applications/ManageApplications;->setAnimator(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    .line 1597
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 1599
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const v2, 0x7f0d012a

    invoke-virtual {v0, v2, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1601
    iput-object p2, p0, Lcom/meizu/settings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    .line 1602
    iput-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 1603
    iget-object v2, p0, Lcom/meizu/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v3, 0x7f0a0567

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/meizu/settings/applications/ManageApplications;->mPinnedHeader:Landroid/view/ViewGroup;

    .line 1604
    iget-object v2, p0, Lcom/meizu/settings/applications/ManageApplications;->mProfileSpinnerAdapter:Lcom/meizu/settings/widget/UserSpinnerAdapter;

    if-eqz v2, :cond_40

    const v2, 0x7f0d0319

    const/4 v3, 0x0

    .line 1605
    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mSpinner:Landroid/widget/Spinner;

    .line 1606
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mSpinner:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/meizu/settings/applications/ManageApplications;->mProfileSpinnerAdapter:Lcom/meizu/settings/widget/UserSpinnerAdapter;

    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1607
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1608
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mPinnedHeader:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/meizu/settings/applications/ManageApplications;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_40
    const p1, 0x7f0a051f

    .line 1610
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 1611
    new-instance p1, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;

    invoke-direct {p1, p0}, Lcom/meizu/settings/applications/ManageApplications$MyPagerAdapter;-><init>(Lcom/meizu/settings/applications/ManageApplications;)V

    .line 1612
    iget-object v2, p0, Lcom/meizu/settings/applications/ManageApplications;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 1613
    iget-object v2, p0, Lcom/meizu/settings/applications/ManageApplications;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, p1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 1624
    instance-of p1, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz p1, :cond_67

    .line 1625
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_67
    if-eqz p3, :cond_75

    const-string/jumbo p1, "resetDialog"

    .line 1628
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_75

    .line 1629
    invoke-virtual {p0}, Lcom/meizu/settings/applications/ManageApplications;->buildResetDialog()V

    :cond_75
    if-nez p3, :cond_a4

    .line 1634
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 p2, -0x1

    const-string p3, "currentListType"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, p2, :cond_89

    goto :goto_8b

    .line 1637
    :cond_89
    iget p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mDefaultListType:I

    .line 1638
    :goto_8b
    iget p2, p0, Lcom/meizu/settings/applications/ManageApplications;->mNumTabs:I

    if-ge v1, p2, :cond_a4

    .line 1639
    iget-object p2, p0, Lcom/meizu/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    .line 1640
    iget p2, p2, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mListType:I

    if-ne p2, p1, :cond_a1

    .line 1641
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_a4

    :cond_a1
    add-int/lit8 v1, v1, 0x1

    goto :goto_8b

    :cond_a4
    :goto_a4
    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    .line 1875
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/applications/ManageApplications;->mContainerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1877
    invoke-static {}, Lcom/meizu/settings/applications/ApplicationsState;->removeInstance()V

    .line 1878
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mApplicationsState:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/meizu/settings/applications/ApplicationsState;->exitBackgroundThread()V

    .line 1879
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mApplicationsState:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/meizu/settings/applications/ApplicationsState;->emptyRequestIcon()V

    .line 1880
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/RunningState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/settings/applications/RunningState;->emptyRequestIcon()V

    .line 1882
    invoke-static {}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->removeInstance()V

    .line 1884
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyOptionsMenu()V
    .registers 2

    const/4 v0, 0x0

    .line 1870
    iput-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    return-void
.end method

.method public onDestroyView()V
    .registers 4

    .line 1737
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    const/4 v0, 0x0

    move v1, v0

    .line 1741
    :goto_5
    iget-object v2, p0, Lcom/meizu/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_26

    .line 1742
    iget-object v2, p0, Lcom/meizu/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v2}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->detachView()V

    .line 1743
    iget-object v2, p0, Lcom/meizu/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v2}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->release()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1745
    :cond_26
    iget-object v1, p0, Lcom/meizu/settings/applications/ManageApplications;->mSearchView:Lcom/meizu/settings/widget/SearchView;

    if-eqz v1, :cond_2d

    .line 1746
    invoke-virtual {v1}, Lcom/meizu/settings/widget/SearchView;->onViewDestroy()V

    .line 1748
    :cond_2d
    iput-boolean v0, p0, Lcom/meizu/settings/applications/ManageApplications;->isSearchMode:Z

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    .line 1970
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-ne v0, p1, :cond_7

    const/4 p1, 0x0

    .line 1971
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    :cond_7
    return-void
.end method

.method public onItemClick(Lcom/meizu/settings/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/settings/applications/ManageApplications$TabInfo;",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 2091
    iget-object p2, p1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz p2, :cond_38

    invoke-virtual {p2}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result p2

    if-le p2, p4, :cond_38

    .line 2092
    iget-object p2, p1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p2, p4}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    move-result-object p2

    .line 2094
    iget-boolean p3, p2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->isCategory:Z

    if-eqz p3, :cond_15

    return-void

    .line 2096
    :cond_15
    iget-object p3, p2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean p4, p3, Landroid/content/pm/ApplicationInfo;->mIsUninstalledSystemApp:Z

    if-eqz p4, :cond_2b

    .line 2097
    iget-boolean p0, p2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->mIsSystemAppInstalling:Z

    if-eqz p0, :cond_20

    return-void

    .line 2100
    :cond_20
    iget-object p0, p1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p0, p2}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->installSystemApk(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;)V

    .line 2101
    iget-object p0, p1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_38

    .line 2103
    :cond_2b
    iget-object p1, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 2104
    iget-object p1, p2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurrentPkgUid:I

    .line 2105
    invoke-direct {p0}, Lcom/meizu/settings/applications/ManageApplications;->startApplicationDetailsActivity()V

    :cond_38
    :goto_38
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1760
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mProfileSpinnerAdapter:Lcom/meizu/settings/widget/UserSpinnerAdapter;

    invoke-virtual {p1, p3}, Lcom/meizu/settings/widget/UserSpinnerAdapter;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 1761
    iget-object p2, p0, Lcom/meizu/settings/applications/ManageApplications;->mApplicationsState:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/meizu/settings/applications/ApplicationsState;->setCurrentProfile(I)V

    .line 1762
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz p0, :cond_19

    const/4 p1, 0x1

    .line 1763
    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    :cond_19
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    .line 2052
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_80

    const/4 v2, 0x5

    if-ne v0, v2, :cond_d

    goto/16 :goto_80

    :cond_d
    const/4 v2, 0x6

    const/4 v3, 0x0

    if-ne v0, v2, :cond_29

    .line 2059
    iput-boolean v3, p0, Lcom/meizu/settings/applications/ManageApplications;->mShowBackground:Z

    .line 2060
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    if-eqz p1, :cond_8f

    invoke-static {p1}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->access$2400(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)Lcom/meizu/settings/applications/RunningProcessesView;

    move-result-object p1

    if-eqz p1, :cond_8f

    .line 2061
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    invoke-static {p0}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->access$2400(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)Lcom/meizu/settings/applications/RunningProcessesView;

    move-result-object p0

    iget-object p0, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mAdapter:Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {p0, v3}, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_8f

    :cond_29
    const/4 v2, 0x7

    if-ne v0, v2, :cond_44

    .line 2064
    iput-boolean v1, p0, Lcom/meizu/settings/applications/ManageApplications;->mShowBackground:Z

    .line 2065
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    if-eqz p1, :cond_8f

    invoke-static {p1}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->access$2400(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)Lcom/meizu/settings/applications/RunningProcessesView;

    move-result-object p1

    if-eqz p1, :cond_8f

    .line 2066
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    invoke-static {p0}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->access$2400(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)Lcom/meizu/settings/applications/RunningProcessesView;

    move-result-object p0

    iget-object p0, p0, Lcom/meizu/settings/applications/RunningProcessesView;->mAdapter:Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {p0, v1}, Lcom/meizu/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    goto :goto_8f

    :cond_44
    const/16 v2, 0x8

    if-ne v0, v2, :cond_4c

    .line 2069
    invoke-virtual {p0}, Lcom/meizu/settings/applications/ManageApplications;->buildResetDialog()V

    goto :goto_8f

    :cond_4c
    const/16 v2, 0xa

    if-ne v0, v2, :cond_58

    .line 2073
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->installAllSystemApk()V

    goto :goto_8f

    :cond_58
    const/16 v2, 0xb

    if-ne v0, v2, :cond_8f

    .line 2077
    iget-boolean v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mShowAllApps:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mShowAllApps:Z

    .line 2078
    iget-boolean v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mShowAllApps:Z

    if-eqz v0, :cond_69

    const v0, 0x7f1209c9

    goto :goto_6c

    :cond_69
    const v0, 0x7f1213df

    :goto_6c
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2079
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object p1, p1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p1, v1}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 2080
    iget-boolean p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mShowAllApps:Z

    if-eqz p1, :cond_7d

    .line 2081
    iput-boolean v3, p0, Lcom/meizu/settings/applications/ManageApplications;->isResetShowAllApps:Z

    goto :goto_8f

    .line 2083
    :cond_7d
    iput-boolean v1, p0, Lcom/meizu/settings/applications/ManageApplications;->isResetShowAllApps:Z

    goto :goto_8f

    .line 2054
    :cond_80
    :goto_80
    iput v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mSortOrder:I

    .line 2055
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    if-eqz p1, :cond_8f

    iget-object p1, p1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz p1, :cond_8f

    .line 2056
    iget p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, p0}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    :cond_8f
    :goto_8f
    return v1
.end method

.method public onPause()V
    .registers 3

    .line 1705
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    const/4 v0, 0x0

    .line 1706
    iput-boolean v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mActivityResumed:Z

    .line 1707
    :goto_6
    iget-object v1, p0, Lcom/meizu/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 1708
    iget-object v1, p0, Lcom/meizu/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->pause()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1c
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2

    .line 1865
    invoke-virtual {p0}, Lcom/meizu/settings/applications/ManageApplications;->updateOptionsMenu()V

    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 8

    .line 2260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onQueryTextChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ManageApplications"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_39

    .line 2262
    invoke-direct {p0, v2}, Lcom/meizu/settings/applications/ManageApplications;->setAnimator(Z)V

    .line 2263
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object p1, p1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mDataBeforeSearchEntries:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->access$1802(Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2264
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    invoke-static {p1}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->access$2600(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)Lcom/meizu/settings/widget/FastScrollLetterListview;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/settings/widget/FastScrollLetterListview;->getFastScrollLetterHelper()Lcom/meizu/settings/widget/FastScrollLetterHelper;

    move-result-object p1

    invoke-virtual {p1, v2, v1}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->setFastScrollLetterEnable(ZZ)V

    goto :goto_ab

    .line 2266
    :cond_39
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mSearchResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2267
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mFloatView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2268
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mSearchBaseEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_ab

    const-string v0, " "

    .line 2269
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    const-string v3, ""

    .line 2270
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 2272
    :cond_57
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mSearchBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5d
    :goto_5d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 2273
    iget-object v4, v3, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 2274
    iget-object v4, p0, Lcom/meizu/settings/applications/ManageApplications;->mSearchResult:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5d

    .line 2277
    :cond_7f
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mSearchResult:Ljava/util/ArrayList;

    if-eqz p1, :cond_89

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_95

    .line 2278
    :cond_89
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    invoke-static {p1}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->access$2700(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f12129f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 2280
    :cond_95
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object p1, p1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mSearchResult:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->access$1802(Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2281
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    invoke-static {p1}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->access$2600(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)Lcom/meizu/settings/widget/FastScrollLetterListview;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meizu/settings/widget/FastScrollLetterListview;->getFastScrollLetterHelper()Lcom/meizu/settings/widget/FastScrollLetterHelper;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->setFastScrollLetterEnable(ZZ)V

    .line 2284
    :cond_ab
    :goto_ab
    invoke-direct {p0}, Lcom/meizu/settings/applications/ManageApplications;->entriesNotifyDataSetChange()V

    return v1
.end method

.method public onResume()V
    .registers 3

    .line 1679
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 1680
    iget-boolean v0, p0, Lcom/meizu/settings/applications/ManageApplications;->isSearchMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    .line 1681
    iput-boolean v1, p0, Lcom/meizu/settings/applications/ManageApplications;->mShowAllApps:Z

    .line 1682
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p0, v1}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_20

    .line 1684
    :cond_12
    iput-boolean v1, p0, Lcom/meizu/settings/applications/ManageApplications;->mActivityResumed:Z

    .line 1685
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/meizu/settings/applications/ManageApplications;->updateCurrentTab(I)V

    .line 1686
    invoke-direct {p0}, Lcom/meizu/settings/applications/ManageApplications;->updateNumTabs()V

    :goto_20
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    .line 1692
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1693
    iget v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mSortOrder:I

    const-string/jumbo v1, "sortOrder"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1694
    iget v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mDefaultListType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    const-string v1, "defaultListType"

    .line 1695
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1697
    :cond_15
    iget-boolean v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mShowBackground:Z

    const-string/jumbo v1, "showBackground"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1698
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_28

    const/4 p0, 0x1

    const-string/jumbo v0, "resetDialog"

    .line 1699
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_28
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 1671
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 1673
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p0

    const-string v0, "Manage_Applications"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .registers 3

    .line 1714
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    .line 1715
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_d

    .line 1716
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 1717
    iput-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mResetDialog:Landroid/app/AlertDialog;

    .line 1720
    :cond_d
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    const-string v1, "Manage_Applications"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    .line 1722
    invoke-direct {p0}, Lcom/meizu/settings/applications/ManageApplications;->reportShowAllAppsConfig()V

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 4

    .line 1890
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onTrimMemory(I)V

    .line 1891
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onTrimMemory level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ManageApplications"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x28

    if-lt p1, v0, :cond_27

    .line 1893
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->emptyCache()V

    :cond_27
    return-void
.end method

.method public updateCurrentTab(I)V
    .registers 5

    .line 2111
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    .line 2112
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    .line 2115
    iget-boolean p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mActivityResumed:Z

    if-eqz p1, :cond_21

    .line 2116
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/meizu/settings/applications/ManageApplications;->mContentContainer:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/meizu/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v0, v1, v2}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    .line 2117
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->resume(I)V

    goto :goto_26

    .line 2119
    :cond_21
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    invoke-virtual {p1}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->pause()V

    :goto_26
    const/4 p1, 0x0

    move v0, p1

    .line 2121
    :goto_28
    iget-object v1, p0, Lcom/meizu/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_42

    .line 2122
    iget-object v1, p0, Lcom/meizu/settings/applications/ManageApplications;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    .line 2123
    iget-object v2, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    if-eq v1, v2, :cond_3f

    .line 2124
    invoke-virtual {v1}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->pause()V

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 2131
    :cond_42
    invoke-virtual {p0}, Lcom/meizu/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 2132
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 2134
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2137
    :cond_4e
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mProfileSpinnerAdapter:Lcom/meizu/settings/widget/UserSpinnerAdapter;

    if-eqz v0, :cond_66

    .line 2138
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget v0, v0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mListType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5f

    .line 2139
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mPinnedHeader:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_66

    .line 2141
    :cond_5f
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications;->mPinnedHeader:Landroid/view/ViewGroup;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_66
    :goto_66
    return-void
.end method

.method updateOptionsMenu()V
    .registers 6

    .line 1898
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v0, :cond_5

    return-void

    .line 1939
    :cond_5
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mSearchView:Lcom/meizu/settings/widget/SearchView;

    if-eqz v0, :cond_12

    iget-boolean v1, p0, Lcom/meizu/settings/applications/ManageApplications;->isSearchMode:Z

    if-nez v1, :cond_12

    const/16 v1, 0x8

    .line 1940
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1943
    :cond_12
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mCurTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    const/16 v1, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_36

    iget v0, v0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mListType:I

    const/4 v4, 0x6

    if-ne v0, v4, :cond_36

    iget-boolean v0, p0, Lcom/meizu/settings/applications/ManageApplications;->isSearchMode:Z

    if-nez v0, :cond_36

    .line 1945
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1946
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_48

    .line 1948
    :cond_36
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1949
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1951
    :goto_48
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications;->mActionBar:Lflyme/support/v7/app/ActionBar;

    if-eqz v0, :cond_53

    iget-boolean p0, p0, Lcom/meizu/settings/applications/ManageApplications;->isSearchMode:Z

    if-nez p0, :cond_53

    .line 1952
    invoke-virtual {v0, v2}, Lflyme/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    :cond_53
    return-void
.end method
