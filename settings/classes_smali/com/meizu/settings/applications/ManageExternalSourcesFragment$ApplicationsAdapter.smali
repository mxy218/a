.class Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageExternalSourcesFragment.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/meizu/settings/applications/ApplicationsState$Callbacks;
.implements Lcom/meizu/settings/applications/AppStateBaseBridge$Callback;
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/SectionIndexer;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/ManageExternalSourcesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
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

.field private mAlphabetIndex:Landroid/widget/AlphabetIndexer;

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

.field private final mExtraInfoBridge:Lcom/meizu/settings/applications/AppStateBaseBridge;

.field private mFilter:Landroid/widget/Filter;

.field private mFirstLoad:Z

.field private mHasReceivedBridgeCallback:Z

.field private mListViewIsIdle:Z

.field private mResumed:Z

.field private final mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

.field private final mState:Lcom/meizu/settings/applications/ApplicationsState;

.field final synthetic this$0:Lcom/meizu/settings/applications/ManageExternalSourcesFragment;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/applications/ManageExternalSourcesFragment;Landroid/content/Context;Lcom/meizu/settings/applications/ApplicationsState;)V
    .registers 4

    .line 83
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->this$0:Lcom/meizu/settings/applications/ManageExternalSourcesFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    .line 65
    new-instance p1, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter$1;

    invoke-direct {p1, p0}, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter$1;-><init>(Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;)V

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    .line 84
    iput-object p2, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 85
    iput-object p3, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    .line 86
    invoke-virtual {p3, p0}, Lcom/meizu/settings/applications/ApplicationsState;->newSession(Lcom/meizu/settings/applications/ApplicationsState$Callbacks;)Lcom/meizu/settings/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    .line 87
    new-instance p1, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;

    iget-object p2, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p3, p0}, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;-><init>(Landroid/content/Context;Lcom/meizu/settings/applications/ApplicationsState;Lcom/meizu/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mExtraInfoBridge:Lcom/meizu/settings/applications/AppStateBaseBridge;

    const/4 p1, 0x1

    .line 88
    iput-boolean p1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mListViewIsIdle:Z

    .line 89
    iput-boolean p1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mFirstLoad:Z

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;)Ljava/util/ArrayList;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$102(Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;Z)V
    .registers 2

    .line 45
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->rebuild(Z)V

    return-void
.end method

.method private rebuild(Z)V
    .registers 5

    .line 116
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mExtraInfoBridge:Lcom/meizu/settings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    if-nez v0, :cond_9

    return-void

    .line 120
    :cond_9
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->this$0:Lcom/meizu/settings/applications/ManageExternalSourcesFragment;

    const-string v1, "Rebuilding app list..."

    invoke-static {v0, v1}, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->access$200(Lcom/meizu/settings/applications/ManageExternalSourcesFragment;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->this$0:Lcom/meizu/settings/applications/ManageExternalSourcesFragment;

    invoke-static {v0}, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->access$300(Lcom/meizu/settings/applications/ManageExternalSourcesFragment;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->FILTER_APP_SOURCES_ALL:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    goto :goto_1d

    .line 122
    :cond_1b
    sget-object v0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->FILTER_APP_SOURCES:Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    .line 123
    :goto_1d
    sget-object v1, Lcom/meizu/settings/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 124
    iget-object v2, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    invoke-virtual {v2, v0, v1}, Lcom/meizu/settings/applications/ApplicationsState$Session;->rebuild(Lcom/meizu/settings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 125
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_30

    :cond_2d
    if-nez p1, :cond_30

    return-void

    .line 128
    :cond_30
    iput-object v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 129
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 130
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz p1, :cond_46

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_52

    .line 131
    :cond_46
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->this$0:Lcom/meizu/settings/applications/ManageExternalSourcesFragment;

    invoke-static {p1}, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->access$400(Lcom/meizu/settings/applications/ManageExternalSourcesFragment;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f120eed

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 133
    :cond_52
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->updateFastScrollLetter(Ljava/util/ArrayList;)V

    .line 134
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private requestIconsWhenFirstLoad()V
    .registers 6

    .line 176
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_39

    :cond_b
    const/4 v0, 0x7

    .line 179
    iget-object v1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 180
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 179
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0xe

    .line 181
    iget-object v2, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 182
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 181
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_26
    if-gt v0, v1, :cond_39

    .line 184
    iget-object v2, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 185
    iget-object v3, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/meizu/settings/applications/ApplicationsState;->requestIcon(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_39
    :goto_39
    return-void
.end method

.method private requestIconsWhenListViewIdle()V
    .registers 8

    .line 193
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_77

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_77

    .line 197
    :cond_b
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, 0x7fffffff

    const/high16 v2, -0x80000000

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 198
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/applications/AppViewHolder;

    .line 199
    iget-object v5, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/meizu/settings/applications/AppViewHolder;->entry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-le v1, v5, :cond_34

    move v1, v5

    :cond_34
    if-ge v2, v5, :cond_37

    move v2, v5

    .line 206
    :cond_37
    iget-object v5, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v3, v3, Lcom/meizu/settings/applications/AppViewHolder;->entry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v5, v3, v4}, Lcom/meizu/settings/applications/ApplicationsState;->requestIcon(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;Z)V

    goto :goto_16

    :cond_3f
    add-int/lit8 v0, v1, -0x7

    const/4 v3, 0x0

    .line 208
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v5, v2, 0x7

    .line 210
    iget-object v6, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 212
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    .line 210
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_53
    if-gt v0, v1, :cond_65

    .line 214
    iget-object v5, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 215
    iget-object v6, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-virtual {v6, v5, v3}, Lcom/meizu/settings/applications/ApplicationsState;->requestIcon(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    :cond_65
    :goto_65
    if-gt v2, v4, :cond_77

    .line 218
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 219
    iget-object v1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-virtual {v1, v0, v3}, Lcom/meizu/settings/applications/ApplicationsState;->requestIcon(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    :cond_77
    :goto_77
    return-void
.end method

.method private updateFastScrollLetter(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4e

    .line 157
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "first_letter_column_name"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 160
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 161
    iget-object v3, v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->lableToPinyin:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    const-string v1, ""

    goto :goto_2b

    .line 162
    :cond_29
    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->lableToPinyin:Ljava/lang/String;

    .line 163
    :goto_2b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_36

    .line 164
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_36
    new-array v3, v4, [Ljava/lang/String;

    aput-object v1, v3, v2

    .line 166
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_11

    .line 170
    :cond_3e
    new-instance p1, Landroid/widget/AlphabetIndexer;

    iget-object v1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f120860

    .line 171
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v2, v1}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mAlphabetIndex:Landroid/widget/AlphabetIndexer;

    :cond_4e
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

    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-object p2

    .line 142
    :cond_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 145
    :goto_26
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_49

    .line 146
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 147
    invoke-virtual {v2}, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->getNormalizedLabel()Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-virtual {v3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_43

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_46

    .line 149
    :cond_43
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_49
    return-object v0
.end method

.method public getCount()I
    .registers 1

    .line 290
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

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

    .line 342
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    return-object p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 2

    .line 295
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    .line 300
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-wide p0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->id:J

    return-wide p0
.end method

.method public getPositionForSection(I)I
    .registers 2

    .line 380
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mAlphabetIndex:Landroid/widget/AlphabetIndexer;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result p0

    :goto_a
    return p0
.end method

.method public getSectionForPosition(I)I
    .registers 2

    .line 385
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mAlphabetIndex:Landroid/widget/AlphabetIndexer;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0, p1}, Landroid/widget/AlphabetIndexer;->getSectionForPosition(I)I

    move-result p0

    :goto_a
    return p0
.end method

.method public getSections()[Ljava/lang/Object;
    .registers 1

    .line 375
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mAlphabetIndex:Landroid/widget/AlphabetIndexer;

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
    .registers 8

    .line 305
    iget-object p3, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 306
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    .line 305
    invoke-static {p3, p2}, Lcom/meizu/settings/applications/AppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/meizu/settings/applications/AppViewHolder;

    move-result-object p2

    .line 307
    iget-object p3, p2, Lcom/meizu/settings/applications/AppViewHolder;->rootView:Landroid/view/View;

    .line 309
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 310
    monitor-enter p1

    .line 311
    :try_start_15
    iput-object p1, p2, Lcom/meizu/settings/applications/AppViewHolder;->entry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 312
    iget-object v0, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v0, :cond_22

    .line 313
    iget-object v0, p2, Lcom/meizu/settings/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    :cond_22
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    move-result-object v0

    .line 316
    iget-object v1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getIconFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 317
    iget-object v2, p2, Lcom/meizu/settings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    iget-boolean v2, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mListViewIsIdle:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_45

    invoke-virtual {v0, v1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->isDefaultIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 319
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-virtual {v0, p1, v3}, Lcom/meizu/settings/applications/ApplicationsState;->requestIcon(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;Z)V

    .line 321
    :cond_45
    iget-boolean v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mFirstLoad:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4f

    .line 322
    invoke-direct {p0}, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->requestIconsWhenFirstLoad()V

    .line 323
    iput-boolean v1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mFirstLoad:Z

    .line 325
    :cond_4f
    iget-object v0, p2, Lcom/meizu/settings/applications/AppViewHolder;->appSize:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/meizu/settings/applications/ExternalSourcesDetails;->getPreferenceSummary(Landroid/content/Context;Lcom/meizu/settings/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v3

    const/16 v2, 0x8

    if-eqz v0, :cond_69

    .line 328
    iget-object v0, p2, Lcom/meizu/settings/applications/AppViewHolder;->systemFlag:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6e

    .line 330
    :cond_69
    iget-object v0, p2, Lcom/meizu/settings/applications/AppViewHolder;->systemFlag:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    :goto_6e
    iget-object v0, p2, Lcom/meizu/settings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    iget-object p2, p2, Lcom/meizu/settings/applications/AppViewHolder;->nextIcon:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    monitor-exit p1
    :try_end_79
    .catchall {:try_start_15 .. :try_end_79} :catchall_84

    .line 335
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 336
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p3

    :catchall_84
    move-exception p0

    .line 334
    :try_start_85
    monitor-exit p1
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw p0
.end method

.method public onAllSizesComputed()V
    .registers 1

    return-void
.end method

.method public onExtraInfoUpdated()V
    .registers 2

    const/4 v0, 0x1

    .line 284
    iput-boolean v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    const/4 v0, 0x0

    .line 285
    invoke-direct {p0, v0}, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->rebuild(Z)V

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

    .line 370
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

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

    .line 230
    invoke-direct {p0, v0}, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->rebuild(Z)V

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 236
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 237
    iget-object p1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->updateFastScrollLetter(Ljava/util/ArrayList;)V

    .line 238
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onRequestPackageIconDone(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;)V
    .registers 6

    .line 268
    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 269
    :goto_5
    iget-object v1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_41

    .line 270
    iget-object v1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/applications/AppViewHolder;

    .line 271
    iget-object v2, v1, Lcom/meizu/settings/applications/AppViewHolder;->entry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 272
    iget-object v2, v1, Lcom/meizu/settings/applications/AppViewHolder;->entry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    monitor-enter v2

    .line 273
    :try_start_2a
    iget-object v3, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 274
    invoke-static {v3}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    move-result-object v3

    .line 275
    invoke-virtual {v3, p1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getIconFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 276
    iget-object v1, v1, Lcom/meizu/settings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 277
    monitor-exit v2

    goto :goto_3e

    :catchall_3b
    move-exception p0

    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_2a .. :try_end_3d} :catchall_3b

    throw p0

    :cond_3e
    :goto_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_41
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .registers 2

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    const/4 p1, 0x1

    if-eqz p2, :cond_12

    if-eq p2, p1, :cond_9

    const/4 p1, 0x2

    if-eq p2, p1, :cond_9

    goto :goto_17

    :cond_9
    const/4 p1, 0x0

    .line 350
    iput-boolean p1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mListViewIsIdle:Z

    .line 351
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/ApplicationsState;->emptyRequestIcon()V

    goto :goto_17

    .line 354
    :cond_12
    iput-boolean p1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mListViewIsIdle:Z

    .line 355
    invoke-direct {p0}, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->requestIconsWhenListViewIdle()V

    :goto_17
    return-void
.end method

.method public pause()V
    .registers 2

    .line 103
    iget-boolean v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mResumed:Z

    .line 105
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/meizu/settings/applications/ApplicationsState$Session;->pause()V

    .line 106
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mExtraInfoBridge:Lcom/meizu/settings/applications/AppStateBaseBridge;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/AppStateBaseBridge;->pause()V

    :cond_11
    return-void
.end method

.method public release()V
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/meizu/settings/applications/ApplicationsState$Session;->release()V

    .line 112
    iget-object p0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mExtraInfoBridge:Lcom/meizu/settings/applications/AppStateBaseBridge;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/AppStateBaseBridge;->release()V

    return-void
.end method

.method public resume()V
    .registers 4

    .line 93
    iget-object v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->this$0:Lcom/meizu/settings/applications/ManageExternalSourcesFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resume! mResumed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/settings/applications/ManageExternalSourcesFragment;->access$200(Lcom/meizu/settings/applications/ManageExternalSourcesFragment;Ljava/lang/String;)V

    .line 94
    iget-boolean v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_2c

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mResumed:Z

    .line 96
    iget-object v1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    invoke-virtual {v1}, Lcom/meizu/settings/applications/ApplicationsState$Session;->resume()V

    .line 97
    iget-object v1, p0, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->mExtraInfoBridge:Lcom/meizu/settings/applications/AppStateBaseBridge;

    invoke-virtual {v1}, Lcom/meizu/settings/applications/AppStateBaseBridge;->resume()V

    .line 98
    invoke-direct {p0, v0}, Lcom/meizu/settings/applications/ManageExternalSourcesFragment$ApplicationsAdapter;->rebuild(Z)V

    :cond_2c
    return-void
.end method
