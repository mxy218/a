.class public Lcom/meizu/settings/SettingsPreferenceFragment;
.super Lcom/meizu/settings/InstrumentedPreferenceFragment;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    }
.end annotation


# instance fields
.field private mActionBar:Lflyme/support/v7/app/ActionBar;

.field private mCanScrollOnTop:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCustomActionBarBackground:Landroid/graphics/drawable/Drawable;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDialogFragment:Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mHelpUrl:Ljava/lang/String;

.field private mHideTitle:Z

.field private mHighlightDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsDataSetObserverRegistered:Z

.field private mIsSavingInstanceState:Z

.field private mNeedHightlightAnimation:Z

.field private mOnBackPressedListener:Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;

.field private mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

.field private mPreferenceHighlighted:Z

.field private mPreferenceKey:Ljava/lang/String;

.field private mRootView:Landroid/view/View;

.field private mScrollView:Landroid/view/View;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

.field private mView:Landroid/view/View;

.field private overScrollLayout:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 71
    invoke-direct {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    const/4 v1, 0x1

    .line 92
    iput-boolean v1, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mNeedHightlightAnimation:Z

    .line 95
    iput-boolean v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mIsDataSetObserverRegistered:Z

    .line 96
    new-instance v2, Lcom/meizu/settings/SettingsPreferenceFragment$1;

    invoke-direct {v2, p0}, Lcom/meizu/settings/SettingsPreferenceFragment$1;-><init>(Lcom/meizu/settings/SettingsPreferenceFragment;)V

    iput-object v2, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 109
    iput-boolean v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mIsSavingInstanceState:Z

    .line 113
    iput-boolean v1, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mCanScrollOnTop:Z

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->overScrollLayout:Landroid/view/View;

    .line 118
    iput-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mView:Landroid/view/View;

    .line 122
    new-instance v0, Lcom/meizu/settings/SettingsPreferenceFragment$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/SettingsPreferenceFragment$2;-><init>(Lcom/meizu/settings/SettingsPreferenceFragment;)V

    iput-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mOnBackPressedListener:Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/SettingsPreferenceFragment;)Landroid/view/View;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/SettingsPreferenceFragment;)Landroid/view/View;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->overScrollLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/meizu/settings/SettingsPreferenceFragment;)Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/meizu/settings/SettingsPreferenceFragment;Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;
    .registers 2

    .line 71
    iput-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-object p1
.end method

.method static synthetic access$200(Lcom/meizu/settings/SettingsPreferenceFragment;)Landroid/graphics/drawable/Drawable;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mCustomActionBarBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/SettingsPreferenceFragment;)Lflyme/support/v7/app/ActionBar;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mActionBar:Lflyme/support/v7/app/ActionBar;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/SettingsPreferenceFragment;)Z
    .registers 1

    .line 71
    iget-boolean p0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mHideTitle:Z

    return p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/SettingsPreferenceFragment;)Ljava/lang/String;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/SettingsPreferenceFragment;Ljava/lang/String;)V
    .registers 2

    .line 71
    invoke-direct {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->highlightPreference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/meizu/settings/SettingsPreferenceFragment;)Z
    .registers 1

    .line 71
    iget-boolean p0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mNeedHightlightAnimation:Z

    return p0
.end method

.method private canUseListViewForHighLighting(Ljava/lang/String;)I
    .registers 5

    .line 363
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->hasListView()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_8

    return v1

    .line 367
    :cond_8
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 370
    instance-of v2, v0, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v2, :cond_1b

    .line 371
    invoke-direct {p0, v0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->findListPositionFromKey(Landroid/widget/ListAdapter;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1b
    return v1
.end method

.method private findListPositionFromKey(Landroid/widget/ListAdapter;Ljava/lang/String;)I
    .registers 8

    .line 435
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v2, v0, :cond_29

    .line 437
    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 438
    instance-of v4, v3, Landroid/preference/Preference;

    if-eqz v4, :cond_26

    .line 440
    move-object v4, v3

    check-cast v4, Landroid/preference/Preference;

    .line 441
    invoke-virtual {v4}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_26

    .line 442
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 444
    instance-of p1, v3, Landroid/preference/PreferenceCategory;

    if-eqz p1, :cond_25

    .line 445
    iput-boolean v1, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mNeedHightlightAnimation:Z

    :cond_25
    return v2

    :cond_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_29
    const/4 p0, -0x1

    return p0
.end method

.method private getHighlightDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 347
    iget-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_13

    .line 349
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_13

    const v1, 0x7f0800e0

    .line 351
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    .line 356
    :cond_13
    iget-object p0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mHighlightDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private highlightPreference(Ljava/lang/String;)V
    .registers 9

    .line 378
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getHighlightDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_7

    return-void

    .line 384
    :cond_7
    invoke-direct {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->canUseListViewForHighLighting(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2e

    const/4 p1, 0x1

    .line 386
    iput-boolean p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 388
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 389
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    .line 391
    move-object v0, v5

    check-cast v0, Landroid/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroupAdapter;->setHighlightedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 392
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceGroupAdapter;->setHighlighted(I)V

    .line 394
    new-instance v6, Lcom/meizu/settings/SettingsPreferenceFragment$5;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/meizu/settings/SettingsPreferenceFragment$5;-><init>(Lcom/meizu/settings/SettingsPreferenceFragment;Landroid/widget/ListView;ILandroid/graphics/drawable/Drawable;Landroid/widget/ListAdapter;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v6, v0, v1}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2e
    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    .line 703
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_14

    .line 705
    :cond_d
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_14
    :goto_14
    return-void
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .registers 2

    .line 493
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 495
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 497
    :cond_c
    iget-object p0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 746
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getDialogMetricsCategory(I)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method protected getHelpResource()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected getIntent()Landroid/content/Intent;
    .registers 2

    .line 750
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 753
    :cond_8
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/4 p0, -0x1

    return p0
.end method

.method protected getPackageManager()Landroid/content/pm/PackageManager;
    .registers 1

    .line 511
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method protected getPrefContext()Landroid/content/Context;
    .registers 1

    .line 742
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method protected getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 504
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public hasScrollView(Landroid/view/View;)Z
    .registers 4

    .line 240
    iget-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mScrollView:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const v0, 0x7f0a061d

    .line 243
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 244
    instance-of v0, p1, Landroid/widget/ScrollView;

    if-nez v0, :cond_13

    const/4 p0, 0x0

    return p0

    .line 247
    :cond_13
    iput-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mScrollView:Landroid/view/View;

    return v1
.end method

.method public highlightPreferenceIfNeeded()V
    .registers 5

    .line 335
    iget-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 336
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 337
    iget-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mRootView:Landroid/view/View;

    new-instance v1, Lcom/meizu/settings/SettingsPreferenceFragment$4;

    invoke-direct {v1, p0}, Lcom/meizu/settings/SettingsPreferenceFragment$4;-><init>(Lcom/meizu/settings/SettingsPreferenceFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_22
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 271
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 272
    iget-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    const/4 p1, 0x1

    .line 273
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->setHasOptionsMenu(Z)V

    :cond_f
    return-void
.end method

.method public onBackPressed()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onBindPreferences()V
    .registers 1

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 148
    invoke-super {p0, p1}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_d

    const-string v0, "android:preference_highlighted"

    .line 151
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    .line 155
    :cond_d
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getHelpResource()I

    move-result p1

    if-eqz p1, :cond_1d

    .line 157
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    .line 160
    :cond_1d
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const/4 p1, 0x1

    .line 162
    iget-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mOnBackPressedListener:Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;

    invoke-virtual {p0, p1, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->setOnBackPressedListener(ZLcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;)V

    .line 164
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lflyme/support/v7/app/AppCompatActivity;

    invoke-virtual {p1}, Lflyme/support/v7/app/AppCompatActivity;->getSupportActionBar()Lflyme/support/v7/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mActionBar:Lflyme/support/v7/app/ActionBar;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 5

    .line 473
    iget-object p2, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    if-eqz p2, :cond_25

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_25

    const/16 p2, 0x65

    const v0, 0x7f12096a

    const/4 v1, 0x0

    .line 474
    invoke-interface {p1, v1, p2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 475
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mHelpUrl:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, v0, p0}, Lcom/android/settingslib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/MenuItem;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_25
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    .line 181
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a0567

    .line 182
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mPinnedHeaderFrameLayout:Landroid/view/ViewGroup;

    .line 183
    iput-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mRootView:Landroid/view/View;

    .line 184
    iget-object p0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .registers 3

    .line 169
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onDestroy()V

    .line 171
    iget-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mOnBackPressedListener:Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->setOnBackPressedListener(ZLcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;)V

    return-void
.end method

.method public onDetach()V
    .registers 2

    .line 516
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->isRemoving()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 517
    iget-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_10

    .line 518
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    const/4 v0, 0x0

    .line 519
    iput-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 522
    :cond_10
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDetach()V

    return-void
.end method

.method public onDialogShowing()V
    .registers 1

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4

    .line 758
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 759
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0

    .line 761
    :cond_b
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 762
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/SettingsActivity;->onPreferenceStartFragment(Lcom/meizu/settings/SettingsPreferenceFragment;Landroid/preference/Preference;)Z

    move-result p0

    return p0

    .line 765
    :cond_1c
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 3

    .line 279
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onResume()V

    const/4 v0, 0x0

    .line 280
    iput-boolean v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mIsSavingInstanceState:Z

    .line 282
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2b

    const-string v1, ":settings:fragment_args_key"

    .line 284
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 285
    iget-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 286
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 288
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 292
    :cond_28
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    :cond_2b
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    .line 263
    invoke-super {p0, p1}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 264
    iput-boolean v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mIsSavingInstanceState:Z

    .line 266
    iget-boolean p0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mPreferenceHighlighted:Z

    const-string v0, "android:preference_highlighted"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStop()V
    .registers 1

    .line 308
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    return-void
.end method

.method protected onUnbindPreferences()V
    .registers 1

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 5

    .line 189
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_21

    .line 192
    invoke-virtual {p2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-lez v1, :cond_21

    .line 193
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object p2

    if-eqz p2, :cond_21

    .line 194
    instance-of p2, p2, Landroid/preference/PreferenceCategory;

    if-eqz p2, :cond_21

    .line 195
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/meizu/settings/utils/MzUtils;->setViewAdjustToActionbarAndMenuBar(Landroid/content/Context;Landroid/view/View;)V

    .line 198
    :cond_21
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->hasListView()Z

    move-result p2

    if-eqz p2, :cond_2e

    .line 200
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mView:Landroid/view/View;

    goto :goto_38

    .line 201
    :cond_2e
    invoke-virtual {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->hasScrollView(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 202
    iget-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mScrollView:Landroid/view/View;

    iput-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mView:Landroid/view/View;

    .line 204
    :cond_38
    :goto_38
    iget-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_52

    .line 205
    iget-boolean p2, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mCanScrollOnTop:Z

    if-eqz p2, :cond_44

    .line 206
    invoke-virtual {p1, v0}, Landroid/view/View;->setOverScrollMode(I)V

    goto :goto_48

    :cond_44
    const/4 p2, 0x2

    .line 208
    invoke-virtual {p1, p2}, Landroid/view/View;->setOverScrollMode(I)V

    .line 210
    :goto_48
    iget-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mView:Landroid/view/View;

    new-instance p2, Lcom/meizu/settings/SettingsPreferenceFragment$3;

    invoke-direct {p2, p0}, Lcom/meizu/settings/SettingsPreferenceFragment$3;-><init>(Lcom/meizu/settings/SettingsPreferenceFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_52
    return-void
.end method

.method protected removeDialog(I)V
    .registers 3

    .line 551
    iget-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_f

    .line 552
    iget-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    :cond_f
    const/4 p1, 0x0

    .line 554
    iput-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-void
.end method

.method protected removePreference(Ljava/lang/String;)V
    .registers 2

    .line 456
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 458
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_d
    return-void
.end method

.method protected reportPreferenceChangeUsageStats(Landroid/preference/Preference;Ljava/lang/Object;)V
    .registers 5

    .line 771
    iget-object p0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsPreferenceFragment"

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;Ljava/lang/Object;)V

    return-void
.end method

.method protected reportPreferenceTreeClickUsageStats(Landroid/preference/Preference;)V
    .registers 4

    .line 775
    iget-object p0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsPreferenceFragment"

    invoke-virtual {p0, v1, v0, p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;)V

    return-void
.end method

.method protected setCanScrollOnTop(Z)V
    .registers 2

    .line 139
    iput-boolean p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mCanScrollOnTop:Z

    return-void
.end method

.method protected setCustomActionBarBackgroundResId(I)V
    .registers 3

    .line 143
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mCustomActionBarBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected setHasWhiteNavigationbar(Z)V
    .registers 2

    if-eqz p1, :cond_e

    .line 823
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/meizu/common/util/NavigationBarUtils;->setNavigationBarColor(Landroid/view/Window;I)V

    :cond_e
    return-void
.end method

.method protected setHideTitle(Z)V
    .registers 2

    .line 135
    iput-boolean p1, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mHideTitle:Z

    return-void
.end method

.method protected setOnBackPressedListener(ZLcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;)V
    .registers 4

    .line 783
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_1c

    .line 784
    instance-of v0, p0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_1c

    .line 785
    check-cast p0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getMzSettingsActivity()Lcom/meizu/settings/MzSettingsActivity;

    move-result-object p0

    if-eqz p0, :cond_1c

    if-eqz p1, :cond_18

    .line 788
    invoke-virtual {p0, p2}, Lcom/meizu/settings/MzSettingsActivity;->setOnBackPressedListener(Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;)V

    goto :goto_1c

    :cond_18
    const/4 p1, 0x0

    .line 790
    invoke-virtual {p0, p1}, Lcom/meizu/settings/MzSettingsActivity;->setOnBackPressedListener(Lcom/meizu/settings/MzSettingsActivity$OnBackPressedListener;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method protected showDialog(I)V
    .registers 4

    .line 528
    iget-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    const-string v1, "SettingsPreferenceFragment"

    if-eqz v0, :cond_b

    const-string v0, "Old dialog fragment not null!"

    .line 529
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_b
    iget-boolean v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mIsSavingInstanceState:Z

    if-eqz v0, :cond_15

    const-string p0, "Fragment is removing, skip showing dialog!"

    .line 534
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 539
    :cond_15
    invoke-static {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;->newInstance(Lcom/android/settings/DialogCreatable;I)Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 540
    iget-object v0, p0, Lcom/meizu/settings/SettingsPreferenceFragment;->mDialogFragment:Lcom/meizu/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z
    .registers 13

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    move-object v6, p5

    .line 710
    invoke-virtual/range {v0 .. v6}, Lcom/meizu/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILjava/lang/String;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;ILjava/lang/String;ILandroid/os/Bundle;)Z
    .registers 18

    .line 715
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 716
    instance-of v1, v0, Lcom/android/settings/SettingsActivity;

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    .line 717
    move-object v3, v0

    check-cast v3, Lcom/android/settings/SettingsActivity;

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p6

    move v7, p3

    move-object v8, p4

    move-object v9, p1

    move/from16 v10, p5

    .line 718
    invoke-virtual/range {v3 .. v10}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return v2

    .line 720
    :cond_19
    instance-of v1, v0, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_2c

    .line 721
    move-object v3, v0

    check-cast v3, Landroid/preference/PreferenceActivity;

    move-object v4, p2

    move-object/from16 v5, p6

    move v6, p3

    move-object v7, p4

    move-object v8, p1

    move/from16 v9, p5

    .line 722
    invoke-virtual/range {v3 .. v9}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return v2

    .line 725
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Parent isn\'t SettingsActivity nor PreferenceActivity, thus there\'s no way to launch the given Fragment (name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsPreferenceFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
