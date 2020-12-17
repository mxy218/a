.class Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/meizu/settings/applications/ApplicationsState$Callbacks;
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/SectionIndexer;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationsAdapter"
.end annotation


# instance fields
.field private final mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAlphabetIndexer:Landroid/widget/AlphabetIndexer;

.field private mBaseEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field mCurFilterPrefix:Ljava/lang/CharSequence;

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/widget/Filter;

.field private final mFilterMode:I

.field private mFirstLoad:Z

.field private mLastSortMode:I

.field private mListViewIsIdle:Z

.field private mResumed:Z

.field private final mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

.field private final mState:Lcom/meizu/settings/applications/ApplicationsState;

.field private final mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

.field private mUninstalledSystemAppCounts:I

.field private mWaitingForData:Z

.field private mWhichSize:I


# direct methods
.method public constructor <init>(Lcom/meizu/settings/applications/ApplicationsState;Lcom/meizu/settings/applications/ManageApplications$TabInfo;I)V
    .registers 5

    .line 859
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 809
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 814
    iput v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v0, 0x0

    .line 816
    iput v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 832
    new-instance v0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter$1;-><init>(Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    .line 860
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    .line 861
    invoke-virtual {p1, p0}, Lcom/meizu/settings/applications/ApplicationsState;->newSession(Lcom/meizu/settings/applications/ApplicationsState$Callbacks;)Lcom/meizu/settings/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    .line 862
    iput-object p2, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    .line 863
    iget-object p1, p2, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/meizu/settings/applications/ManageApplications;

    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 864
    iput p3, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    const/4 p1, 0x1

    .line 866
    iput-boolean p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mListViewIsIdle:Z

    .line 867
    iput-boolean p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mFirstLoad:Z

    return-void
.end method

.method static synthetic access$1600(Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .registers 1

    .line 802
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/meizu/settings/applications/ManageApplications$TabInfo;
    .registers 1

    .line 802
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .registers 1

    .line 802
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .line 802
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$3000(Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;)I
    .registers 1

    .line 802
    iget p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    return p0
.end method

.method static synthetic access$3100(Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;I)V
    .registers 3

    .line 802
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->updateFastScrollLetter(Ljava/util/ArrayList;I)V

    return-void
.end method

.method private requestIconsWhenFirsLoad()V
    .registers 7

    .line 1391
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x7

    .line 1395
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1394
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0xe

    .line 1396
    iget-object v2, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 1397
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 1396
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v2, v0

    :goto_1f
    if-gt v2, v1, :cond_32

    .line 1399
    iget-object v3, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 1400
    iget-object v4, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/meizu/settings/applications/ApplicationsState;->requestIcon(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 1402
    :cond_32
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestIconsWhenFirsLoad startIndex = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " endIndex = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method private requestIconsWhenListViewIdle()V
    .registers 8

    .line 1409
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_a8

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_a8

    .line 1411
    :cond_c
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1412
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/applications/AppViewHolder;

    .line 1413
    iget-object v5, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/meizu/settings/applications/AppViewHolder;->entry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_36

    return-void

    :cond_36
    if-le v1, v5, :cond_39

    move v1, v5

    :cond_39
    if-ge v2, v5, :cond_3c

    move v2, v5

    .line 1424
    :cond_3c
    iget-object v5, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v3, v3, Lcom/meizu/settings/applications/AppViewHolder;->entry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v5, v3, v4}, Lcom/meizu/settings/applications/ApplicationsState;->requestIcon(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;Z)V

    goto :goto_17

    :cond_44
    add-int/lit8 v0, v1, -0x7

    const/4 v3, 0x0

    .line 1426
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v5, v2, 0x7

    .line 1428
    iget-object v6, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 1429
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    .line 1428
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1430
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ManageApplications:requestIconsWhenListViewIdle topActiveIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bottomActiveIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " topNoActiveIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " bottomNoActivieIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->printLog(Ljava/lang/String;)V

    :goto_84
    if-gt v0, v1, :cond_96

    .line 1435
    iget-object v5, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 1436
    iget-object v6, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-virtual {v6, v5, v3}, Lcom/meizu/settings/applications/ApplicationsState;->requestIcon(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_84

    :cond_96
    :goto_96
    if-gt v2, v4, :cond_a8

    .line 1439
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 1440
    iget-object v1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-virtual {v1, v0, v3}, Lcom/meizu/settings/applications/ApplicationsState;->requestIcon(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_96

    :cond_a8
    :goto_a8
    return-void
.end method

.method private updateFastScrollLetter(Ljava/util/ArrayList;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_65

    const/4 v0, 0x1

    if-eqz p2, :cond_a

    if-eq p2, v0, :cond_a

    const/4 v1, 0x4

    if-ne p2, v1, :cond_65

    .line 1344
    :cond_a
    new-instance p2, Landroid/database/MatrixCursor;

    const-string v1, "first_letter_column_name"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1348
    iput v1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mUninstalledSystemAppCounts:I

    .line 1349
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 1351
    iget-object v3, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_36

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->mIsUninstalledSystemApp:Z

    if-eqz v3, :cond_36

    .line 1352
    iget v2, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mUninstalledSystemAppCounts:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mUninstalledSystemAppCounts:I

    goto :goto_1c

    .line 1355
    :cond_36
    iget-object v3, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->lableToPinyin:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_41

    const-string v2, ""

    goto :goto_43

    .line 1356
    :cond_41
    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->lableToPinyin:Ljava/lang/String;

    .line 1357
    :goto_43
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4d

    .line 1358
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_4d
    new-array v3, v0, [Ljava/lang/String;

    aput-object v2, v3, v1

    .line 1360
    invoke-virtual {p2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1c

    .line 1364
    :cond_55
    new-instance p1, Landroid/widget/AlphabetIndexer;

    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f120860

    .line 1365
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v1, v0}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mAlphabetIndexer:Landroid/widget/AlphabetIndexer;

    :cond_65
    return-void
.end method


# virtual methods
.method applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4c

    .line 1018
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_4c

    .line 1021
    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1022
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1023
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1025
    :goto_28
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4b

    .line 1026
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 1027
    invoke-virtual {v2}, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->getNormalizedLabel()Ljava/lang/String;

    move-result-object v3

    .line 1028
    invoke-virtual {v3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_45

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_48

    .line 1029
    :cond_45
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_4b
    return-object v0

    :cond_4c
    :goto_4c
    return-object p2
.end method

.method public getAppEntry(I)Lcom/meizu/settings/applications/ApplicationsState$AppEntry;
    .registers 2

    .line 1171
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    return-object p0
.end method

.method public getCount()I
    .registers 1

    .line 1163
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 1

    .line 1313
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    return-object p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 2

    .line 1167
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    .line 1175
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-wide p0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->id:J

    return-wide p0
.end method

.method public getItemViewType(I)I
    .registers 2

    .line 1180
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-boolean p0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->isCategory:Z

    if-eqz p0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method public getPositionForSection(I)I
    .registers 3

    .line 1329
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mAlphabetIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_d

    .line 1330
    :cond_6
    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result p1

    iget p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mUninstalledSystemAppCounts:I

    add-int/2addr p0, p1

    :goto_d
    return p0
.end method

.method public getSectionForPosition(I)I
    .registers 3

    .line 1336
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mAlphabetIndexer:Landroid/widget/AlphabetIndexer;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_d

    :cond_6
    iget p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mUninstalledSystemAppCounts:I

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result p0

    :goto_d
    return p0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 1

    .line 1323
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mAlphabetIndexer:Landroid/widget/AlphabetIndexer;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Landroid/widget/AlphabetIndexer;->getSections()[Ljava/lang/Object;

    move-result-object p0

    :goto_a
    return-object p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    .line 1201
    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_116

    const/4 p3, 0x1

    if-eq v0, p3, :cond_c

    goto/16 :goto_151

    .line 1221
    :cond_c
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v0, p2}, Lcom/meizu/settings/applications/AppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/meizu/settings/applications/AppViewHolder;

    move-result-object p2

    .line 1222
    iget-object v0, p2, Lcom/meizu/settings/applications/AppViewHolder;->rootView:Landroid/view/View;

    .line 1225
    iget-object v2, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 1226
    monitor-enter v2

    .line 1227
    :try_start_20
    iput-object v2, p2, Lcom/meizu/settings/applications/AppViewHolder;->entry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 1228
    iget-object p1, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz p1, :cond_2d

    .line 1229
    iget-object p1, p2, Lcom/meizu/settings/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1239
    :cond_2d
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    move-result-object p1

    .line 1240
    iget-object v3, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getIconFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1241
    iget-object v4, p2, Lcom/meizu/settings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1243
    iget-object v4, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1245
    invoke-static {v5}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 1244
    invoke-virtual {v4, v5, v1}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1246
    iget-object v5, p2, Lcom/meizu/settings/applications/AppViewHolder;->appBadgeIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1248
    iget-boolean v4, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mListViewIsIdle:Z

    if-eqz v4, :cond_66

    invoke-virtual {p1, v3}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->isDefaultIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 1249
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-virtual {p1, v2, p3}, Lcom/meizu/settings/applications/ApplicationsState;->requestIcon(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;Z)V

    .line 1251
    :cond_66
    iget-boolean p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mFirstLoad:Z

    if-eqz p1, :cond_6f

    .line 1252
    invoke-direct {p0}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->requestIconsWhenFirsLoad()V

    .line 1253
    iput-boolean v1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mFirstLoad:Z

    .line 1256
    :cond_6f
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object p1, p1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p2, p1, v3}, Lcom/meizu/settings/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    .line 1269
    iget-object p1, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p1, p3

    const/16 v3, 0x8

    if-eqz p1, :cond_87

    .line 1270
    iget-object p1, p2, Lcom/meizu/settings/applications/AppViewHolder;->systemFlag:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8c

    .line 1272
    :cond_87
    iget-object p1, p2, Lcom/meizu/settings/applications/AppViewHolder;->systemFlag:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1274
    :goto_8c
    iget-object p1, p2, Lcom/meizu/settings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1278
    iget-object p1, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->mIsUninstalledSystemApp:Z

    if-eqz p1, :cond_d7

    const-string p1, "ManageApplications"

    .line 1279
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mIsUninstalledSystemApp "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    iget-object p1, p2, Lcom/meizu/settings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1281
    iget-object p1, p2, Lcom/meizu/settings/applications/AppViewHolder;->nextIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1282
    iget-boolean p1, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->mIsSystemAppInstalling:Z

    if-eqz p1, :cond_cc

    .line 1283
    iget-object p1, p2, Lcom/meizu/settings/applications/AppViewHolder;->appInstalling:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1284
    iget-object p1, p2, Lcom/meizu/settings/applications/AppViewHolder;->installApp:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_e6

    .line 1286
    :cond_cc
    iget-object p1, p2, Lcom/meizu/settings/applications/AppViewHolder;->installApp:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1287
    iget-object p1, p2, Lcom/meizu/settings/applications/AppViewHolder;->appInstalling:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_e6

    .line 1290
    :cond_d7
    iget-object p1, p2, Lcom/meizu/settings/applications/AppViewHolder;->installApp:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1291
    iget-object p1, p2, Lcom/meizu/settings/applications/AppViewHolder;->appInstalling:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1292
    iget-object p1, p2, Lcom/meizu/settings/applications/AppViewHolder;->nextIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1294
    :goto_e6
    iget p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    const/4 v4, 0x2

    if-ne p1, v4, :cond_101

    .line 1295
    iget-object p1, p2, Lcom/meizu/settings/applications/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1296
    iget-object p1, p2, Lcom/meizu/settings/applications/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object p2, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x40000

    and-int/2addr p2, v3

    if-eqz p2, :cond_fc

    goto :goto_fd

    :cond_fc
    move p3, v1

    :goto_fd
    invoke-virtual {p1, p3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_106

    .line 1299
    :cond_101
    iget-object p1, p2, Lcom/meizu/settings/applications/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1301
    :goto_106
    monitor-exit v2
    :try_end_107
    .catchall {:try_start_20 .. :try_end_107} :catchall_113

    .line 1302
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1303
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p2, v0

    goto :goto_151

    :catchall_113
    move-exception p0

    .line 1301
    :try_start_114
    monitor-exit v2
    :try_end_115
    .catchall {:try_start_114 .. :try_end_115} :catchall_113

    throw p0

    .line 1206
    :cond_116
    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    if-eqz p2, :cond_125

    .line 1208
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/applications/ManageApplications$CategoryHolder;

    goto :goto_148

    .line 1210
    :cond_125
    new-instance p2, Lcom/meizu/settings/applications/ManageApplications$CategoryHolder;

    invoke-direct {p2}, Lcom/meizu/settings/applications/ManageApplications$CategoryHolder;-><init>()V

    .line 1211
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0d00a2

    invoke-virtual {p0, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const p3, 0x7f0a015c

    .line 1213
    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p2, Lcom/meizu/settings/applications/ManageApplications$CategoryHolder;->title:Landroid/widget/TextView;

    .line 1214
    invoke-virtual {p0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v6, p2

    move-object p2, p0

    move-object p0, v6

    .line 1216
    :goto_148
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$CategoryHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_151
    return-object p2
.end method

.method public getViewTypeCount()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public installAllSystemApk()V
    .registers 5

    .line 1461
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1463
    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1464
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 1465
    iget-object v3, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_7

    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->mIsUninstalledSystemApp:Z

    if-eqz v3, :cond_7

    iget-boolean v3, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->mIsSystemAppInstalling:Z

    if-nez v3, :cond_7

    .line 1466
    invoke-virtual {p0, v2}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->installSystemApk(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;)V

    const/4 v1, 0x1

    goto :goto_7

    :cond_24
    if-eqz v1, :cond_29

    .line 1471
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_29
    return-void
.end method

.method public installSystemApk(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;)V
    .registers 3

    const/4 v0, 0x1

    .line 1456
    iput-boolean v0, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->mIsSystemAppInstalling:Z

    .line 1457
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/ApplicationsState$Session;->installSystemApkAsync(Landroid/content/pm/ApplicationInfo;)V

    return-void
.end method

.method public isEnabled(I)Z
    .registers 2

    .line 1189
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-boolean p0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->isCategory:Z

    if-eqz p0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method public onAllSizesComputed()V
    .registers 3

    .line 1118
    iget v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_9

    const/4 v0, 0x0

    .line 1119
    invoke-virtual {p0, v0}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    :cond_9
    return-void
.end method

.method public onLauncherInfoChanged()V
    .registers 1

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .registers 1

    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .registers 2

    .line 1318
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPackageIconChanged()V
    .registers 1

    return-void
.end method

.method public onPackageListChanged()V
    .registers 2

    const/4 v0, 0x0

    .line 1083
    invoke-virtual {p0, v0}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 1094
    :goto_2
    iget-object v2, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_54

    .line 1095
    iget-object v2, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/applications/AppViewHolder;

    .line 1096
    iget-object v3, v2, Lcom/meizu/settings/applications/AppViewHolder;->entry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 1097
    iget-object v3, v2, Lcom/meizu/settings/applications/AppViewHolder;->entry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    monitor-enter v3

    .line 1098
    :try_start_27
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object p1, p1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v2, p1, v1}, Lcom/meizu/settings/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    .line 1099
    monitor-exit v3
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_4e

    .line 1100
    iget-object p1, v2, Lcom/meizu/settings/applications/AppViewHolder;->entry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object v1, v1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {v1}, Lcom/meizu/settings/applications/ManageApplications;->access$2100(Lcom/meizu/settings/applications/ManageApplications;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    iget p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v1, 0x5

    if-ne p1, v1, :cond_4d

    .line 1106
    invoke-virtual {p0, v0}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    :cond_4d
    return-void

    :catchall_4e
    move-exception p0

    .line 1099
    :try_start_4f
    monitor-exit v3
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw p0

    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_54
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 1051
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->access$000(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2f

    .line 1052
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->access$000(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1054
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->access$2000(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1057
    :cond_2f
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->access$2000(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1058
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->access$000(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1059
    iput-boolean v1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mWaitingForData:Z

    .line 1060
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 1062
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object p1, p1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p1}, Lcom/meizu/settings/applications/ManageApplications;->access$1000(Lcom/meizu/settings/applications/ManageApplications;)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 1063
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object p1, p1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/meizu/settings/applications/ManageApplications;

    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v2}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/meizu/settings/applications/ManageApplications;->access$1302(Lcom/meizu/settings/applications/ManageApplications;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_86

    .line 1066
    :cond_62
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 1067
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object p1, p1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/meizu/settings/applications/ManageApplications;

    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-static {p1, v0}, Lcom/meizu/settings/applications/ManageApplications;->access$1902(Lcom/meizu/settings/applications/ManageApplications;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1069
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    iget v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->updateFastScrollLetter(Ljava/util/ArrayList;I)V

    .line 1072
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object p1, p1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/meizu/settings/applications/ManageApplications;

    invoke-virtual {p1}, Lcom/meizu/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1073
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1078
    :goto_86
    invoke-virtual {p0, v1}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    return-void
.end method

.method public onRequestPackageIconDone(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;)V
    .registers 9

    .line 1128
    iget-boolean v0, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->isCategory:Z

    if-eqz v0, :cond_5

    return-void

    .line 1131
    :cond_5
    iget-object v0, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1132
    iget-object v1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v2, 0x0

    move v3, v2

    .line 1133
    :goto_f
    iget-object v4, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_84

    .line 1134
    iget-object v4, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/settings/applications/AppViewHolder;

    .line 1135
    iget-object v5, v4, Lcom/meizu/settings/applications/AppViewHolder;->entry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_81

    iget-object v5, v4, Lcom/meizu/settings/applications/AppViewHolder;->entry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v6, v5, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v6, v1, :cond_81

    .line 1137
    monitor-enter v5

    .line 1138
    :try_start_3a
    iget-object v1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 1139
    invoke-static {v1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    move-result-object v1

    .line 1140
    invoke-virtual {v1, v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getIconFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ManageApplicationsonRequestPackageIconDone packageName =  "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " d = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->printLog(Ljava/lang/String;)V

    .line 1144
    iget-object v0, v4, Lcom/meizu/settings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1146
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1148
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 1147
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 1149
    iget-object p1, v4, Lcom/meizu/settings/applications/AppViewHolder;->appBadgeIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1150
    monitor-exit v5

    return-void

    :catchall_7e
    move-exception p0

    monitor-exit v5
    :try_end_80
    .catchall {:try_start_3a .. :try_end_80} :catchall_7e

    throw p0

    :cond_81
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1156
    :cond_84
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ManageApplicationsonRequestPackageIconDone packageName =  "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not find"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .registers 2

    .line 1038
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/meizu/settings/applications/ManageApplications;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    const/4 p2, -0x1

    .line 1446
    invoke-virtual {p1, p2}, Landroid/widget/AbsListView;->canScrollVertically(I)Z

    move-result p1

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    if-eqz p1, :cond_10

    .line 1448
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/meizu/settings/utils/MzUtils;->setActionbarDividerVisiable(Landroid/content/Context;Z)V

    goto :goto_15

    .line 1451
    :cond_10
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/meizu/settings/utils/MzUtils;->setActionbarDividerVisiable(Landroid/content/Context;Z)V

    :goto_15
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    const/4 p1, 0x1

    if-eqz p2, :cond_31

    if-eq p2, p1, :cond_9

    const/4 p1, 0x2

    if-eq p2, p1, :cond_9

    goto :goto_36

    :cond_9
    const/4 p1, 0x0

    .line 1375
    iput-boolean p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mListViewIsIdle:Z

    .line 1376
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-virtual {p1}, Lcom/meizu/settings/applications/ApplicationsState;->emptyRequestIcon()V

    .line 1377
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object p1, p1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p1}, Lcom/meizu/settings/applications/ManageApplications;->access$1000(Lcom/meizu/settings/applications/ManageApplications;)Z

    move-result p1

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object p1, p1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p1}, Lcom/meizu/settings/applications/ManageApplications;->access$900(Lcom/meizu/settings/applications/ManageApplications;)Lcom/meizu/settings/widget/SearchView;

    move-result-object p1

    if-eqz p1, :cond_36

    .line 1378
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p0}, Lcom/meizu/settings/applications/ManageApplications;->access$900(Lcom/meizu/settings/applications/ManageApplications;)Lcom/meizu/settings/widget/SearchView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/settings/widget/SearchView;->hideSoftKeyboard()V

    goto :goto_36

    .line 1382
    :cond_31
    iput-boolean p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mListViewIsIdle:Z

    .line 1383
    invoke-direct {p0}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->requestIconsWhenListViewIdle()V

    :cond_36
    :goto_36
    return-void
.end method

.method public pause()V
    .registers 2

    .line 884
    iget-boolean v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 885
    iput-boolean v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 886
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/ApplicationsState$Session;->pause()V

    :cond_c
    return-void
.end method

.method public rebuild(I)V
    .registers 3

    .line 895
    iget v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    if-ne p1, v0, :cond_5

    return-void

    .line 898
    :cond_5
    iput p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 p1, 0x1

    .line 899
    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    return-void
.end method

.method public rebuild(Z)V
    .registers 12

    .line 906
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    .line 908
    iput v1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_d

    .line 910
    :cond_b
    iput v2, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 912
    :goto_d
    iget v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    const/4 v3, 0x4

    if-eq v0, v2, :cond_2d

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2a

    if-eq v0, v3, :cond_1a

    .line 927
    sget-object v0, Lcom/meizu/settings/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    goto :goto_2f

    .line 920
    :cond_1a
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/meizu/settings/applications/ManageApplications;->access$1200(Lcom/meizu/settings/applications/ManageApplications;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 921
    sget-object v0, Lcom/meizu/settings/applications/ApplicationsState;->FILTER_ALL_ENABLED_DISABLED:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    goto :goto_2f

    .line 923
    :cond_27
    sget-object v0, Lcom/meizu/settings/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    goto :goto_2f

    .line 917
    :cond_2a
    sget-object v0, Lcom/meizu/settings/applications/ApplicationsState;->FILTER_DISABLED:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    goto :goto_2f

    .line 914
    :cond_2d
    sget-object v0, Lcom/meizu/settings/applications/ApplicationsState;->FILTER_THIRD_PARTY:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    .line 930
    :goto_2f
    iget v4, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_37

    .line 945
    sget-object v4, Lcom/meizu/settings/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    goto :goto_46

    .line 932
    :cond_37
    iget v4, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    if-eq v4, v2, :cond_44

    const/4 v5, 0x2

    if-eq v4, v5, :cond_41

    .line 940
    sget-object v4, Lcom/meizu/settings/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_46

    .line 937
    :cond_41
    sget-object v4, Lcom/meizu/settings/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_46

    .line 934
    :cond_44
    sget-object v4, Lcom/meizu/settings/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 948
    :goto_46
    iget-object v5, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    .line 949
    invoke-virtual {v5, v0, v4}, Lcom/meizu/settings/applications/ApplicationsState$Session;->rebuild(Lcom/meizu/settings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 951
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_56

    if-nez p1, :cond_56

    return-void

    :cond_56
    if-eqz v0, :cond_bc

    .line 956
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_bc

    .line 957
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->mIsUninstalledSystemApp:Z

    if-eqz p1, :cond_bc

    const-wide/16 v5, 0x1

    .line 960
    new-instance p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v7, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v8, 0x7f12163e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x2

    invoke-direct {p1, v7, v5, v6, v2}, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;-><init>(Ljava/lang/String;JZ)V

    .line 961
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move p1, v1

    .line 965
    :goto_80
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p1, v5, :cond_98

    .line 966
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 967
    iget-object v6, v5, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->mIsUninstalledSystemApp:Z

    if-eqz v6, :cond_98

    .line 968
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_80

    .line 974
    :cond_98
    new-instance v5, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v6, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f120a29

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v8, v9, v2}, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;-><init>(Ljava/lang/String;JZ)V

    .line 975
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    :goto_a9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p1, v5, :cond_bb

    .line 978
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 979
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_a9

    :cond_bb
    move-object v0, v4

    .line 985
    :cond_bc
    iput-object v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 986
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object p1, p1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/meizu/settings/applications/ManageApplications;

    invoke-static {p1}, Lcom/meizu/settings/applications/ManageApplications;->access$1000(Lcom/meizu/settings/applications/ManageApplications;)Z

    move-result p1

    if-eqz p1, :cond_d8

    .line 987
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object p1, p1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/meizu/settings/applications/ManageApplications;

    iget-object v4, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v5}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/meizu/settings/applications/ManageApplications;->access$1302(Lcom/meizu/settings/applications/ManageApplications;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_100

    .line 990
    :cond_d8
    iget p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    invoke-direct {p0, v0, p1}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->updateFastScrollLetter(Ljava/util/ArrayList;I)V

    .line 992
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    if-eqz p1, :cond_f3

    .line 993
    iget-object v4, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4, p1}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 994
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object p1, p1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/meizu/settings/applications/ManageApplications;

    iget-object v4, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-static {p1, v4}, Lcom/meizu/settings/applications/ManageApplications;->access$1902(Lcom/meizu/settings/applications/ManageApplications;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_f6

    :cond_f3
    const/4 p1, 0x0

    .line 996
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 999
    :goto_f6
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    iget-object p1, p1, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->mOwner:Lcom/meizu/settings/applications/ManageApplications;

    invoke-virtual {p1}, Lcom/meizu/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1000
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_100
    if-nez v0, :cond_117

    .line 1007
    iput-boolean v2, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mWaitingForData:Z

    .line 1008
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    invoke-static {p1}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->access$2000(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1009
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    invoke-static {p0}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->access$000(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12b

    .line 1011
    :cond_117
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    invoke-static {p1}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->access$2000(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1012
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mTab:Lcom/meizu/settings/applications/ManageApplications$TabInfo;

    invoke-static {p0}, Lcom/meizu/settings/applications/ManageApplications$TabInfo;->access$000(Lcom/meizu/settings/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_12b
    return-void
.end method

.method public release()V
    .registers 1

    .line 891
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/ApplicationsState$Session;->release()V

    return-void
.end method

.method public resume(I)V
    .registers 4

    .line 873
    iget-boolean v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    .line 874
    iput-boolean v0, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 875
    iget-object v1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    invoke-virtual {v1}, Lcom/meizu/settings/applications/ApplicationsState$Session;->resume()V

    .line 876
    iput p1, p0, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 877
    invoke-virtual {p0, v0}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_15

    .line 879
    :cond_12
    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    :goto_15
    return-void
.end method
