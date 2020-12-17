.class public Lcom/meizu/settings/applications/ManageApplications$TabInfo;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/applications/ManageApplications$TabInfo$ListDividerPadding;
    }
.end annotation


# instance fields
.field private mAppStorage:J

.field public mApplications:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

.field public final mApplicationsState:Lcom/meizu/settings/applications/ApplicationsState;

.field public final mClickListener:Lcom/meizu/settings/applications/AppClickListener;

.field public final mComputingSizeStr:Ljava/lang/CharSequence;

.field private mContainerService:Lcom/android/internal/app/IMediaContainerService;

.field private mDefaultAppSettingsList:Lcom/meizu/settings/applications/DefaultAppSettingsList;

.field final mDefaultOpenFileSettingsAvail:Ljava/lang/Runnable;

.field private mDefaultOpenFileSettingsList:Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;

.field final mDefaultSettingsAvail:Ljava/lang/Runnable;

.field private mEmptyView:Landroid/widget/TextView;

.field public final mFilter:I

.field private mFlv:Lcom/meizu/settings/widget/FastScrollLetterListview;

.field private mFreeStorage:J

.field public mInflater:Landroid/view/LayoutInflater;

.field public final mInvalidSizeStr:Ljava/lang/CharSequence;

.field public final mLabel:Ljava/lang/CharSequence;

.field private mListContainer:Landroid/view/View;

.field public final mListType:I

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field public final mOwner:Lcom/meizu/settings/applications/ManageApplications;

.field public mRootView:Landroid/view/View;

.field final mRunningProcessesAvail:Ljava/lang/Runnable;

.field private mRunningProcessesView:Lcom/meizu/settings/applications/RunningProcessesView;

.field private final mSavedInstanceState:Landroid/os/Bundle;

.field private mTotalStorage:J


# direct methods
.method public constructor <init>(Lcom/meizu/settings/applications/ManageApplications;Lcom/meizu/settings/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/meizu/settings/applications/AppClickListener;Landroid/os/Bundle;)V
    .registers 9

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance v0, Lcom/meizu/settings/applications/ManageApplications$TabInfo$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/applications/ManageApplications$TabInfo$1;-><init>(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)V

    iput-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mDefaultSettingsAvail:Ljava/lang/Runnable;

    .line 275
    new-instance v0, Lcom/meizu/settings/applications/ManageApplications$TabInfo$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/applications/ManageApplications$TabInfo$2;-><init>(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)V

    iput-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mDefaultOpenFileSettingsAvail:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    .line 285
    iput-wide v0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mFreeStorage:J

    iput-wide v0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mAppStorage:J

    iput-wide v0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mTotalStorage:J

    .line 288
    new-instance v0, Lcom/meizu/settings/applications/ManageApplications$TabInfo$3;

    invoke-direct {v0, p0}, Lcom/meizu/settings/applications/ManageApplications$TabInfo$3;-><init>(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)V

    iput-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mRunningProcessesAvail:Ljava/lang/Runnable;

    .line 297
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/meizu/settings/applications/ManageApplications;

    .line 298
    iput-object p2, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/meizu/settings/applications/ApplicationsState;

    .line 299
    iput-object p3, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mLabel:Ljava/lang/CharSequence;

    .line 300
    iput p4, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mListType:I

    if-eqz p4, :cond_47

    const/4 p2, 0x2

    if-eq p4, p2, :cond_44

    const/4 p2, 0x3

    const/4 p3, 0x4

    if-eq p4, p3, :cond_41

    const/4 v0, 0x6

    if-eq p4, v0, :cond_3e

    const/4 p3, 0x7

    if-eq p4, p3, :cond_3b

    const/4 p2, 0x0

    .line 307
    iput p2, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_4a

    .line 306
    :cond_3b
    iput p2, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_4a

    .line 305
    :cond_3e
    iput p3, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_4a

    .line 304
    :cond_41
    iput p2, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_4a

    .line 303
    :cond_44
    iput p2, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mFilter:I

    goto :goto_4a

    :cond_47
    const/4 p2, 0x1

    .line 302
    iput p2, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mFilter:I

    .line 309
    :goto_4a
    iput-object p5, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mClickListener:Lcom/meizu/settings/applications/AppClickListener;

    .line 310
    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const p3, 0x7f120a3b

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 311
    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const p2, 0x7f120519

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 312
    iput-object p6, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mSavedInstanceState:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)Lcom/meizu/settings/applications/DefaultAppSettingsList;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mDefaultAppSettingsList:Lcom/meizu/settings/applications/DefaultAppSettingsList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mDefaultOpenFileSettingsList:Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)Lcom/meizu/settings/applications/RunningProcessesView;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/meizu/settings/applications/RunningProcessesView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)Lcom/meizu/settings/widget/FastScrollLetterListview;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mFlv:Lcom/meizu/settings/widget/FastScrollLetterListview;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)Landroid/widget/TextView;
    .registers 1

    .line 231
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mEmptyView:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method applyCurrentStorage()V
    .registers 1

    .line 566
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-nez p0, :cond_4

    :cond_4
    return-void
.end method

.method public build(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .registers 11

    .line 323
    iget-object p2, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-eqz p2, :cond_5

    return-object p2

    .line 326
    :cond_5
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    .line 334
    iget p2, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mListType:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_10

    const p2, 0x7f0d0100

    goto :goto_27

    :cond_10
    const/4 v0, 0x5

    if-ne p2, v0, :cond_17

    const p2, 0x7f0d012e

    goto :goto_27

    :cond_17
    const/4 v0, 0x7

    if-ne p2, v0, :cond_1e

    const p2, 0x7f0d012d

    goto :goto_27

    :cond_1e
    if-nez p2, :cond_24

    const p2, 0x7f0d0128

    goto :goto_27

    :cond_24
    const p2, 0x7f0d00ff

    :goto_27
    const/4 v0, 0x0

    .line 345
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    .line 347
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const p2, 0x7f0a03c9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    .line 348
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const p2, 0x7f0a03c1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    .line 350
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    if-eqz p1, :cond_c7

    const p2, 0x1020004

    .line 352
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mEmptyView:Landroid/widget/TextView;

    .line 353
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const p2, 0x102000a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 355
    instance-of v0, p1, Lcom/meizu/settings/widget/FastScrollLetterListview;

    if-eqz v0, :cond_87

    .line 356
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/meizu/settings/widget/FastScrollLetterListview;

    iput-object p2, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mFlv:Lcom/meizu/settings/widget/FastScrollLetterListview;

    .line 357
    iget-object p2, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mFlv:Lcom/meizu/settings/widget/FastScrollLetterListview;

    invoke-virtual {p2}, Lcom/meizu/settings/widget/FastScrollLetterListview;->getFastScrollLetterHelper()Lcom/meizu/settings/widget/FastScrollLetterHelper;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    const v3, 0x7f0701d4

    const v4, 0x7f0701d3

    const/4 v5, -0x1

    const v6, 0x7f070172

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/settings/widget/FastScrollLetterHelper;->setLetterParam(IIIIII)V

    .line 362
    :cond_87
    new-instance p2, Lcom/meizu/settings/applications/ManageApplications$TabInfo$ListDividerPadding;

    invoke-direct {p2, p0}, Lcom/meizu/settings/applications/ManageApplications$TabInfo$ListDividerPadding;-><init>(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerPadding(Landroid/widget/ListView$DividerPadding;)V

    .line 364
    iget-object p2, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mEmptyView:Landroid/widget/TextView;

    if-eqz p2, :cond_96

    .line 365
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 367
    :cond_96
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 368
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 369
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 370
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 371
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    .line 372
    new-instance p1, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    iget-object p2, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplicationsState:Lcom/meizu/settings/applications/ApplicationsState;

    iget p3, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mFilter:I

    invoke-direct {p1, p2, p0, p3}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/meizu/settings/applications/ApplicationsState;Lcom/meizu/settings/applications/ManageApplications$TabInfo;I)V

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    .line 373
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 374
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 376
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object p2, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 390
    invoke-virtual {p0}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->applyCurrentStorage()V

    .line 392
    :cond_c7
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const p2, 0x7f0a05fe

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/applications/RunningProcessesView;

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/meizu/settings/applications/RunningProcessesView;

    .line 394
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/meizu/settings/applications/RunningProcessesView;

    if-eqz p1, :cond_dd

    .line 395
    iget-object p2, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Lcom/meizu/settings/applications/RunningProcessesView;->doCreate(Landroid/os/Bundle;)V

    .line 398
    :cond_dd
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const p2, 0x7f0a01f3

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/applications/DefaultAppSettingsList;

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mDefaultAppSettingsList:Lcom/meizu/settings/applications/DefaultAppSettingsList;

    .line 400
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mDefaultAppSettingsList:Lcom/meizu/settings/applications/DefaultAppSettingsList;

    if-eqz p1, :cond_f3

    .line 401
    iget-object p2, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/meizu/settings/applications/DefaultAppSettingsList;->doCreate(Landroid/view/View;)V

    .line 404
    :cond_f3
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const p2, 0x7f0a01f2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mDefaultOpenFileSettingsList:Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;

    .line 406
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mDefaultOpenFileSettingsList:Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;

    if-eqz p1, :cond_109

    .line 407
    iget-object p2, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {p1, p2}, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;->doCreate(Landroid/view/View;)V

    .line 409
    :cond_109
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public detachView()V
    .registers 2

    .line 440
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_11

    .line 441
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    .line 443
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_11
    return-void
.end method

.method handleRunningProcessesAvail()V
    .registers 4

    .line 609
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/meizu/settings/applications/ManageApplications;

    .line 610
    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x10a0001

    .line 609
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 611
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/meizu/settings/applications/RunningProcessesView;

    iget-object v1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/meizu/settings/applications/ManageApplications;

    .line 612
    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x10a0000

    .line 611
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 613
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/meizu/settings/applications/RunningProcessesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 614
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 605
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mClickListener:Lcom/meizu/settings/applications/AppClickListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/meizu/settings/applications/AppClickListener;->onItemClick(Lcom/meizu/settings/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public pause()V
    .registers 2

    .line 483
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_7

    .line 484
    invoke-virtual {v0}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 486
    :cond_7
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/meizu/settings/applications/RunningProcessesView;

    if-eqz v0, :cond_e

    .line 487
    invoke-virtual {v0}, Lcom/meizu/settings/applications/RunningProcessesView;->doPause()V

    .line 490
    :cond_e
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mDefaultAppSettingsList:Lcom/meizu/settings/applications/DefaultAppSettingsList;

    if-eqz v0, :cond_15

    .line 491
    invoke-virtual {v0}, Lcom/meizu/settings/applications/DefaultAppSettingsList;->doPause()V

    .line 494
    :cond_15
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mDefaultOpenFileSettingsList:Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;

    if-eqz p0, :cond_1c

    .line 495
    invoke-virtual {p0}, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;->doPause()V

    :cond_1c
    return-void
.end method

.method public release()V
    .registers 1

    .line 500
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz p0, :cond_7

    .line 501
    invoke-virtual {p0}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->release()V

    :cond_7
    return-void
.end method

.method public resume(I)V
    .registers 6

    .line 449
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mApplications:Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_7

    .line 450
    invoke-virtual {v0, p1}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->resume(I)V

    .line 452
    :cond_7
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/meizu/settings/applications/RunningProcessesView;

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_27

    .line 453
    iget-object v2, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/meizu/settings/applications/ManageApplications;

    iget-object v3, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mRunningProcessesAvail:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v3}, Lcom/meizu/settings/applications/RunningProcessesView;->doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 455
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mRunningProcessesView:Lcom/meizu/settings/applications/RunningProcessesView;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 456
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_27

    .line 458
    :cond_22
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 462
    :cond_27
    :goto_27
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mDefaultAppSettingsList:Lcom/meizu/settings/applications/DefaultAppSettingsList;

    if-eqz p1, :cond_43

    .line 463
    iget-object v2, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mDefaultSettingsAvail:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Lcom/meizu/settings/applications/DefaultAppSettingsList;->doResume(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 465
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mDefaultAppSettingsList:Lcom/meizu/settings/applications/DefaultAppSettingsList;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 466
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_43

    .line 468
    :cond_3e
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 472
    :cond_43
    :goto_43
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mDefaultOpenFileSettingsList:Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;

    if-eqz p1, :cond_5f

    .line 473
    iget-object v2, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mDefaultOpenFileSettingsAvail:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;->doResume(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 475
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mDefaultOpenFileSettingsList:Lcom/meizu/settings/applications/DefaultOpenFileSettingsList;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 476
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5f

    .line 478
    :cond_5a
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_5f
    :goto_5f
    return-void
.end method

.method public setContainerService(Lcom/android/internal/app/IMediaContainerService;)V
    .registers 2

    .line 316
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mContainerService:Lcom/android/internal/app/IMediaContainerService;

    return-void
.end method
