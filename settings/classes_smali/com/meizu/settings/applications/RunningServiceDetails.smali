.class public Lcom/meizu/settings/applications/RunningServiceDetails;
.super Landroid/app/Fragment;
.source "RunningServiceDetails.java"

# interfaces
.implements Lcom/meizu/settings/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/applications/RunningServiceDetails$MyAlertDialogFragment;,
        Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;
    }
.end annotation


# instance fields
.field final mActiveDetails:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;",
            ">;"
        }
    .end annotation
.end field

.field mAllDetails:Landroid/view/ViewGroup;

.field mAm:Landroid/app/ActivityManager;

.field mBuilder:Ljava/lang/StringBuilder;

.field mHaveData:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mMergedItem:Lcom/meizu/settings/applications/RunningState$MergedItem;

.field mNumProcesses:I

.field mNumServices:I

.field mProcessName:Ljava/lang/String;

.field mProcessesHeaderTitle:Landroid/widget/TextView;

.field mProcessesHeaderView:Landroid/view/View;

.field mRootView:Landroid/view/View;

.field mServicesHeaderTitle:Landroid/widget/TextView;

.field mServicesHeaderView:Landroid/view/View;

.field mShowBackground:Z

.field mShowDivider:Z

.field mSnippet:Landroid/view/ViewGroup;

.field mSnippetActiveItem:Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;

.field mSnippetViewHolder:Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

.field mState:Lcom/meizu/settings/applications/RunningState;

.field mUid:I

.field mUserId:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 54
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mShowDivider:Z

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/applications/RunningServiceDetails;Landroid/content/ComponentName;)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/RunningServiceDetails;->showConfirmStopDialog(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/applications/RunningServiceDetails;)V
    .registers 1

    .line 54
    invoke-direct {p0}, Lcom/meizu/settings/applications/RunningServiceDetails;->finish()V

    return-void
.end method

.method private finish()V
    .registers 1

    .line 534
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 536
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_9
    return-void
.end method

.method private showConfirmStopDialog(Landroid/content/ComponentName;)V
    .registers 3

    const/4 v0, 0x1

    .line 603
    invoke-static {v0, p1}, Lcom/meizu/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->newConfirmStop(ILandroid/content/ComponentName;)Lcom/meizu/settings/applications/RunningServiceDetails$MyAlertDialogFragment;

    move-result-object p1

    const/4 v0, 0x0

    .line 605
    invoke-virtual {p1, p0, v0}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 606
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "confirmstop"

    invoke-virtual {p1, p0, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method activeDetailForService(Landroid/content/ComponentName;)Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;
    .registers 5

    const/4 v0, 0x0

    .line 592
    :goto_1
    iget-object v1, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_25

    .line 593
    iget-object v1, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;

    .line 594
    iget-object v2, v1, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/meizu/settings/applications/RunningState$ServiceItem;

    if-eqz v2, :cond_22

    iget-object v2, v2, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v2, :cond_22

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    .line 595
    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    return-object v1

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method addDetailViews()V
    .registers 6

    .line 467
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_1c

    .line 468
    iget-object v2, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v3, v3, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 470
    :cond_1c
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 472
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mServicesHeaderView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_2d

    .line 473
    iget-object v3, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 474
    iput-object v2, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mServicesHeaderView:Landroid/view/View;

    .line 477
    :cond_2d
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mProcessesHeaderView:Landroid/view/View;

    if-eqz v0, :cond_38

    .line 478
    iget-object v3, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 479
    iput-object v2, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mProcessesHeaderView:Landroid/view/View;

    :cond_38
    const/4 v0, 0x0

    .line 482
    iput v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mNumProcesses:I

    iput v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mNumServices:I

    .line 484
    iput-boolean v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mShowDivider:Z

    .line 486
    iget-object v2, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/meizu/settings/applications/RunningState$MergedItem;

    if-eqz v2, :cond_85

    .line 487
    iget-object v3, v2, Lcom/meizu/settings/applications/RunningState$MergedItem;->mUser:Lcom/meizu/settings/applications/RunningState$UserState;

    if-eqz v3, :cond_82

    .line 489
    iget-boolean v3, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v3, :cond_5a

    .line 490
    new-instance v3, Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/meizu/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 491
    iget-object v2, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mState:Lcom/meizu/settings/applications/RunningState;

    iget-object v2, v2, Lcom/meizu/settings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    invoke-static {v3, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_5c

    .line 493
    :cond_5a
    iget-object v3, v2, Lcom/meizu/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    :goto_5c
    move v2, v0

    .line 495
    :goto_5d
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_6f

    .line 496
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v4, v1, v0}, Lcom/meizu/settings/applications/RunningServiceDetails;->addDetailsViews(Lcom/meizu/settings/applications/RunningState$MergedItem;ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5d

    :cond_6f
    move v2, v0

    .line 498
    :goto_70
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_85

    .line 499
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0, v4, v0, v1}, Lcom/meizu/settings/applications/RunningServiceDetails;->addDetailsViews(Lcom/meizu/settings/applications/RunningState$MergedItem;ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_70

    .line 502
    :cond_82
    invoke-virtual {p0, v2, v1, v1}, Lcom/meizu/settings/applications/RunningServiceDetails;->addDetailsViews(Lcom/meizu/settings/applications/RunningState$MergedItem;ZZ)V

    :cond_85
    return-void
.end method

.method addDetailsViews(Lcom/meizu/settings/applications/RunningState$MergedItem;ZZ)V
    .registers 7

    if-eqz p1, :cond_5e

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1d

    move p2, v0

    .line 438
    :goto_7
    iget-object v2, p1, Lcom/meizu/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_1d

    .line 439
    iget-object v2, p1, Lcom/meizu/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/applications/RunningState$ServiceItem;

    invoke-virtual {p0, v2, p1, v1, v1}, Lcom/meizu/settings/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/meizu/settings/applications/RunningState$ServiceItem;Lcom/meizu/settings/applications/RunningState$MergedItem;ZZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_1d
    if-eqz p3, :cond_5e

    .line 444
    iget-object p2, p1, Lcom/meizu/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_36

    const/4 p2, 0x0

    .line 448
    iget p3, p1, Lcom/meizu/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eq p3, v2, :cond_31

    goto :goto_32

    :cond_31
    move v1, v0

    :goto_32
    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/meizu/settings/applications/RunningServiceDetails;->addServiceDetailsView(Lcom/meizu/settings/applications/RunningState$ServiceItem;Lcom/meizu/settings/applications/RunningState$MergedItem;ZZ)V

    goto :goto_5e

    :cond_36
    const/4 p2, -0x1

    .line 452
    :goto_37
    iget-object p3, p1, Lcom/meizu/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-ge p2, p3, :cond_5e

    if-gez p2, :cond_44

    .line 453
    iget-object p3, p1, Lcom/meizu/settings/applications/RunningState$MergedItem;->mProcess:Lcom/meizu/settings/applications/RunningState$ProcessItem;

    goto :goto_4c

    .line 454
    :cond_44
    iget-object p3, p1, Lcom/meizu/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/meizu/settings/applications/RunningState$ProcessItem;

    :goto_4c
    if-eqz p3, :cond_53

    .line 455
    iget v2, p3, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mPid:I

    if-gtz v2, :cond_53

    goto :goto_5b

    :cond_53
    if-gez p2, :cond_57

    move v2, v1

    goto :goto_58

    :cond_57
    move v2, v0

    .line 459
    :goto_58
    invoke-virtual {p0, p3, v2}, Lcom/meizu/settings/applications/RunningServiceDetails;->addProcessDetailsView(Lcom/meizu/settings/applications/RunningState$ProcessItem;Z)V

    :goto_5b
    add-int/lit8 p2, p2, 0x1

    goto :goto_37

    :cond_5e
    :goto_5e
    return-void
.end method

.method addProcessDetailsView(Lcom/meizu/settings/applications/RunningState$ProcessItem;Z)V
    .registers 10

    .line 371
    invoke-virtual {p0}, Lcom/meizu/settings/applications/RunningServiceDetails;->addProcessesHeader()V

    .line 373
    new-instance v0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v0, p0}, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/meizu/settings/applications/RunningServiceDetails;)V

    .line 374
    iget-object v1, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    const v4, 0x7f0d02df

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 376
    iget-object v2, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 377
    iput-object v1, v0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 378
    new-instance v2, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v2, v1}, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v2, v0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

    .line 379
    iget-object v2, v0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v4, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mState:Lcom/meizu/settings/applications/RunningState;

    iget-object v5, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, p1, v5}, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/meizu/settings/applications/RunningState;Lcom/meizu/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v2

    iput-object v2, v0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;

    .line 381
    iget-object v2, v0, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v2, v2, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const v2, 0x7f0a019a

    .line 383
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 384
    iget v2, p1, Lcom/meizu/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-eq v2, v5, :cond_4d

    .line 387
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_bb

    :cond_4d
    if-eqz p2, :cond_56

    const p1, 0x7f120bc9

    .line 389
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_bb

    :cond_56
    const/4 p2, 0x0

    .line 393
    iget-object p1, p1, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 394
    iget-object v2, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 397
    iget v4, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_87

    const/4 v6, 0x2

    if-eq v4, v6, :cond_65

    move v4, v3

    goto :goto_a8

    :cond_65
    const v4, 0x7f1210bd

    if-eqz v2, :cond_a8

    .line 414
    :try_start_6a
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object p1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p1

    .line 416
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v6, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v2, v6, p1}, Lcom/meizu/settings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_a8

    :cond_87
    const v4, 0x7f1210bc

    if-eqz v2, :cond_a8

    .line 402
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object p1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    .line 404
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v6, p1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v2, v6, p1}, Lcom/meizu/settings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object p2
    :try_end_a8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6a .. :try_end_a8} :catch_a8

    :catch_a8
    :cond_a8
    :goto_a8
    if-eqz v4, :cond_bb

    if-eqz p2, :cond_bb

    .line 424
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-virtual {p1, v4, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    :cond_bb
    :goto_bb
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/meizu/settings/utils/MzUtils;->formatStringPunctuation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 429
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addProcessesHeader()V
    .registers 5

    .line 252
    iget v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mNumProcesses:I

    if-nez v0, :cond_2e

    .line 253
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d02f5

    iget-object v2, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mProcessesHeaderView:Landroid/view/View;

    .line 255
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mProcessesHeaderView:Landroid/view/View;

    const v1, 0x7f0a0753

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mProcessesHeaderTitle:Landroid/widget/TextView;

    .line 256
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mProcessesHeaderTitle:Landroid/widget/TextView;

    const v1, 0x7f12120a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 257
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mProcessesHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 259
    :cond_2e
    iget v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mNumProcesses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mNumProcesses:I

    return-void
.end method

.method addServiceDetailsView(Lcom/meizu/settings/applications/RunningState$ServiceItem;Lcom/meizu/settings/applications/RunningState$MergedItem;ZZ)V
    .registers 12

    if-eqz p3, :cond_6

    .line 265
    invoke-virtual {p0}, Lcom/meizu/settings/applications/RunningServiceDetails;->addServicesHeader()V

    goto :goto_11

    .line 266
    :cond_6
    iget v0, p2, Lcom/meizu/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_11

    .line 271
    invoke-virtual {p0}, Lcom/meizu/settings/applications/RunningServiceDetails;->addProcessesHeader()V

    :cond_11
    :goto_11
    if-eqz p1, :cond_15

    move-object v0, p1

    goto :goto_16

    :cond_15
    move-object v0, p2

    .line 276
    :goto_16
    new-instance v1, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v1, p0}, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/meizu/settings/applications/RunningServiceDetails;)V

    .line 277
    iget-object v2, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d02e0

    iget-object v4, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 279
    iget-object v3, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 280
    iput-object v2, v1, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 281
    iput-object p1, v1, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/meizu/settings/applications/RunningState$ServiceItem;

    .line 282
    new-instance v3, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v3, v2}, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v3, v1, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

    .line 283
    iget-object v3, v1, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v4, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mState:Lcom/meizu/settings/applications/RunningState;

    iget-object v6, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v0, v6}, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/meizu/settings/applications/RunningState;Lcom/meizu/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iput-object v0, v1, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;

    .line 285
    iget-object v0, v1, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mViewHolder:Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p4, :cond_58

    const p4, 0x7f0a064e

    .line 288
    invoke-virtual {v2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_58
    if-eqz p1, :cond_6a

    .line 291
    iget-object p4, p1, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v0, p4, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v0, :cond_6a

    .line 292
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    iget-object p4, p4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0, p4}, Landroid/app/ActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object p4

    iput-object p4, v1, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    :cond_6a
    const p4, 0x7f0a019a

    .line 296
    invoke-virtual {v2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    const v0, 0x7f0a03b2

    .line 297
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    const v0, 0x7f0a05e4

    .line 298
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    .line 301
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v4, 0x3e8

    if-eq v0, v4, :cond_b5

    .line 302
    iget v4, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mUid:I

    if-eq v0, v4, :cond_b5

    .line 303
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Settings uid = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " has no right to  stop service"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "RunningServicesDetails"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, v1, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_b5
    const/4 v0, 0x1

    if-eqz p3, :cond_cf

    .line 308
    iget p3, p2, Lcom/meizu/settings/applications/RunningState$BaseItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eq p3, v4, :cond_cf

    .line 312
    invoke-virtual {p4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const p1, 0x7f0a01b2

    .line 313
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1a2

    :cond_cf
    if-eqz p1, :cond_f3

    .line 315
    iget-object p3, p1, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget p3, p3, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz p3, :cond_f3

    .line 316
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object p3, p1, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p3, p3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget v4, v4, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    iget-object v6, p1, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, p3, v4, v6}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_141

    .line 320
    :cond_f3
    iget-boolean p2, p2, Lcom/meizu/settings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz p2, :cond_fe

    const p2, 0x7f120233

    .line 321
    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_141

    .line 322
    :cond_fe
    iget-object p2, v1, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz p2, :cond_12d

    .line 324
    :try_start_102
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iget-object p3, p1, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object p3, p3, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p2

    .line 326
    iget-object p3, p1, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget p3, p3, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 327
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const v4, 0x7f121357

    new-array v6, v0, [Ljava/lang/Object;

    aput-object p2, v6, v5

    invoke-virtual {p3, v4, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_12c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_102 .. :try_end_12c} :catch_141

    goto :goto_141

    .line 332
    :cond_12d
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p1, :cond_137

    const p3, 0x7f12135f

    goto :goto_13a

    :cond_137
    const p3, 0x7f120968

    :goto_13a
    invoke-virtual {p2, p3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    :catch_141
    :goto_141
    iget-object p2, v1, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object p2, v1, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mStopButton:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p3

    iget-object v4, v1, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_154

    const v4, 0x7f121356

    goto :goto_157

    :cond_154
    const v4, 0x7f12135e

    :goto_157
    invoke-virtual {p3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object p2, v1, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object p2, v1, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    const p3, 0x1040621

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(I)V

    .line 344
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo p3, "send_action_app_error"

    invoke-static {p2, p3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_19d

    if-eqz p1, :cond_19d

    .line 348
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iget-object p3, p1, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p3, p3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/meizu/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 347
    invoke-static {p2, p3, p1}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, v1, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    .line 350
    iget-object p1, v1, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    iget-object p2, v1, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    if-eqz p2, :cond_199

    move v5, v0

    :cond_199
    invoke-virtual {p1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1a2

    .line 352
    :cond_19d
    iget-object p1, v1, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 356
    :goto_1a2
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    iget-boolean p1, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mShowDivider:Z

    if-nez p1, :cond_1b7

    .line 359
    iput-boolean v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mShowDivider:Z

    const p1, 0x7f0a0229

    .line 360
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 361
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 365
    :cond_1b7
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/meizu/settings/utils/MzUtils;->formatStringPunctuation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 366
    invoke-virtual {p4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method addServicesHeader()V
    .registers 5

    .line 241
    iget v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mNumServices:I

    if-nez v0, :cond_2e

    .line 242
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d02f5

    iget-object v2, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mServicesHeaderView:Landroid/view/View;

    .line 244
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mServicesHeaderView:Landroid/view/View;

    const v1, 0x7f0a0753

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mServicesHeaderTitle:Landroid/widget/TextView;

    .line 245
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mServicesHeaderTitle:Landroid/widget/TextView;

    const v1, 0x7f12120b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 246
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mServicesHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 248
    :cond_2e
    iget v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mNumServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mNumServices:I

    return-void
.end method

.method ensureData()V
    .registers 3

    .line 655
    iget-boolean v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mHaveData:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 656
    iput-boolean v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mHaveData:Z

    .line 657
    iget-object v1, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mState:Lcom/meizu/settings/applications/RunningState;

    invoke-virtual {v1, p0}, Lcom/meizu/settings/applications/RunningState;->resume(Lcom/meizu/settings/applications/RunningState$OnRefreshUiListener;)V

    .line 662
    iget-object v1, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mState:Lcom/meizu/settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/meizu/settings/applications/RunningState;->waitForData()V

    .line 666
    invoke-virtual {p0, v0}, Lcom/meizu/settings/applications/RunningServiceDetails;->refreshUi(Z)V

    :cond_14
    return-void
.end method

.method findMergedItem()Z
    .registers 7

    .line 214
    iget-boolean v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mShowBackground:Z

    if-eqz v0, :cond_b

    .line 215
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mState:Lcom/meizu/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/meizu/settings/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_11

    :cond_b
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mState:Lcom/meizu/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/meizu/settings/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v0

    :goto_11
    const/4 v1, 0x0

    if-eqz v0, :cond_49

    move v2, v1

    .line 217
    :goto_15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_49

    .line 218
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/applications/RunningState$MergedItem;

    .line 219
    iget v4, v3, Lcom/meizu/settings/applications/RunningState$BaseItem;->mUserId:I

    iget v5, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mUserId:I

    if-eq v4, v5, :cond_28

    goto :goto_46

    .line 222
    :cond_28
    iget v4, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mUid:I

    if-ltz v4, :cond_35

    iget-object v5, v3, Lcom/meizu/settings/applications/RunningState$MergedItem;->mProcess:Lcom/meizu/settings/applications/RunningState$ProcessItem;

    if-eqz v5, :cond_35

    iget v5, v5, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mUid:I

    if-eq v5, v4, :cond_35

    goto :goto_46

    .line 225
    :cond_35
    iget-object v4, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    if-eqz v4, :cond_4a

    iget-object v5, v3, Lcom/meizu/settings/applications/RunningState$MergedItem;->mProcess:Lcom/meizu/settings/applications/RunningState$ProcessItem;

    if-eqz v5, :cond_46

    iget-object v5, v5, Lcom/meizu/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    .line 226
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_46

    goto :goto_4a

    :cond_46
    :goto_46
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_49
    const/4 v3, 0x0

    .line 233
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/meizu/settings/applications/RunningState$MergedItem;

    if-eq v0, v3, :cond_52

    .line 234
    iput-object v3, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/meizu/settings/applications/RunningState$MergedItem;

    const/4 p0, 0x1

    return p0

    :cond_52
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 542
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 544
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "uid"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mUid:I

    .line 545
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    const-string/jumbo v1, "user_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mUserId:I

    .line 546
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v1, "process"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    .line 547
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "background"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mShowBackground:Z

    .line 549
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    .line 550
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 554
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/RunningState;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mState:Lcom/meizu/settings/applications/RunningState;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0d02dd

    const/4 v0, 0x0

    .line 561
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 566
    iput-object p1, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mRootView:Landroid/view/View;

    const p2, 0x7f0a0089

    .line 567
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mAllDetails:Landroid/view/ViewGroup;

    const p2, 0x7f0a069b

    .line 568
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    .line 569
    new-instance p2, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

    iget-object p3, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mSnippet:Landroid/view/ViewGroup;

    invoke-direct {p2, p3}, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

    .line 573
    invoke-virtual {p0}, Lcom/meizu/settings/applications/RunningServiceDetails;->ensureData()V

    return-object p1
.end method

.method public onPause()V
    .registers 2

    .line 580
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    const/4 v0, 0x0

    .line 581
    iput-boolean v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mHaveData:Z

    .line 582
    iget-object p0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mState:Lcom/meizu/settings/applications/RunningState;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/RunningState;->pause()V

    return-void
.end method

.method public onRefreshIcon(Ljava/lang/String;)V
    .registers 2

    .line 704
    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/RunningServiceDetails;->updateIcon(Ljava/lang/String;)V

    return-void
.end method

.method public onRefreshUi(I)V
    .registers 4

    .line 686
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v1, 0x2

    if-eq p1, v1, :cond_10

    goto :goto_22

    .line 696
    :cond_10
    invoke-virtual {p0, v0}, Lcom/meizu/settings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 697
    invoke-virtual {p0}, Lcom/meizu/settings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_22

    :cond_17
    const/4 p1, 0x0

    .line 692
    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/RunningServiceDetails;->refreshUi(Z)V

    .line 693
    invoke-virtual {p0}, Lcom/meizu/settings/applications/RunningServiceDetails;->updateTimes()V

    goto :goto_22

    .line 689
    :cond_1f
    invoke-virtual {p0}, Lcom/meizu/settings/applications/RunningServiceDetails;->updateTimes()V

    :goto_22
    return-void
.end method

.method public onResume()V
    .registers 1

    .line 587
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 588
    invoke-virtual {p0}, Lcom/meizu/settings/applications/RunningServiceDetails;->ensureData()V

    return-void
.end method

.method refreshUi(Z)V
    .registers 5

    .line 508
    invoke-virtual {p0}, Lcom/meizu/settings/applications/RunningServiceDetails;->findMergedItem()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p1, 0x1

    :cond_7
    if-eqz p1, :cond_56

    .line 512
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/meizu/settings/applications/RunningState$MergedItem;

    if-eqz p1, :cond_2d

    .line 513
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v1, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mState:Lcom/meizu/settings/applications/RunningState;

    iget-object v2, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, p1, v2}, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/meizu/settings/applications/RunningState;Lcom/meizu/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;

    .line 516
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mSnippetViewHolder:Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

    iget-object p1, p1, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/meizu/settings/applications/RunningState$MergedItem;

    .line 517
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mState:Lcom/meizu/settings/applications/RunningState;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/settings/applications/RunningState$MergedItem;->loadIcon(Landroid/content/Context;Lcom/meizu/settings/applications/RunningState;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 516
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4f

    .line 519
    :cond_2d
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;

    if-eqz p1, :cond_53

    .line 521
    iget-object p1, p1, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

    iget-object p1, p1, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;

    iget-object p1, p1, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

    iget-object p1, p1, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object p1, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;

    iget-object p1, p1, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;

    iget-object p1, p1, Lcom/meizu/settings/applications/RunningProcessesView$ViewHolder;->description:Landroid/widget/TextView;

    const v0, 0x7f120f05

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 529
    :goto_4f
    invoke-virtual {p0}, Lcom/meizu/settings/applications/RunningServiceDetails;->addDetailViews()V

    goto :goto_56

    .line 526
    :cond_53
    invoke-direct {p0}, Lcom/meizu/settings/applications/RunningServiceDetails;->finish()V

    :cond_56
    :goto_56
    return-void
.end method

.method updateIcon(Ljava/lang/String;)V
    .registers 3

    .line 680
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " updateIcon pkg = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RunningServicesDetails"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method updateTimes()V
    .registers 5

    .line 671
    iget-object v0, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mSnippetActiveItem:Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_d

    .line 672
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    :cond_d
    const/4 v0, 0x0

    .line 674
    :goto_e
    iget-object v1, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2c

    .line 675
    iget-object v1, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mActiveDetails:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;

    iget-object v1, v1, Lcom/meizu/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/settings/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/meizu/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_2c
    return-void
.end method
