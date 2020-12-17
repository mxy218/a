.class Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "MzAppsPickActivity.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/meizu/settings/applications/ApplicationsState$Callbacks;
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/SectionIndexer;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/applications/MzAppsPickActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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

.field private mFirstLoad:Z

.field private mHost:Lcom/meizu/settings/applications/MzAppsPickActivity;

.field private mListViewIsIdle:Z

.field private mResumed:Z

.field private final mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

.field private final mState:Lcom/meizu/settings/applications/ApplicationsState;

.field private mWhichSize:I

.field final synthetic this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/applications/MzAppsPickActivity;Lcom/meizu/settings/applications/ApplicationsState;Lcom/meizu/settings/applications/MzAppsPickActivity;)V
    .registers 4

    .line 101
    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 69
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 73
    iput p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mWhichSize:I

    .line 82
    new-instance p1, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter$1;

    invoke-direct {p1, p0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter$1;-><init>(Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;)V

    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    .line 102
    iput-object p2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    .line 103
    invoke-virtual {p2, p0}, Lcom/meizu/settings/applications/ApplicationsState;->newSession(Lcom/meizu/settings/applications/ApplicationsState$Callbacks;)Lcom/meizu/settings/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    .line 104
    iput-object p3, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 105
    iput-object p3, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mHost:Lcom/meizu/settings/applications/MzAppsPickActivity;

    const/4 p1, 0x1

    .line 106
    iput-boolean p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mListViewIsIdle:Z

    .line 107
    iput-boolean p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mFirstLoad:Z

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;)Ljava/util/ArrayList;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;)Ljava/util/ArrayList;
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$102(Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;I)Z
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->isClonedAppEntry(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;I)Z
    .registers 2

    .line 63
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->isOrignalAppEntry(I)Z

    move-result p0

    return p0
.end method

.method private addCloneApp(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_b

    const-string p0, "MzAppsPickActivity"

    const-string p1, "addCloneApp base app list null"

    .line 250
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 253
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    move v2, v1

    .line 256
    :goto_12
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_38

    .line 257
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 258
    iget-object v4, v3, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 259
    iget-object v5, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mHost:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v5}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1400(Lcom/meizu/settings/applications/MzAppsPickActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    add-int v4, v1, v2

    .line 261
    invoke-virtual {v0, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    :cond_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_38
    return-object v0
.end method

.method private isClonedAppEntry(I)Z
    .registers 5

    .line 312
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mHost:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$300(Lcom/meizu/settings/applications/MzAppsPickActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    add-int/lit8 v0, p1, -0x1

    .line 315
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 316
    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 317
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    if-eq v0, p1, :cond_31

    .line 318
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p1, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 319
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    const/4 v1, 0x1

    :cond_31
    return v1
.end method

.method private isOrignalAppEntry(I)Z
    .registers 6

    .line 324
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mHost:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$300(Lcom/meizu/settings/applications/MzAppsPickActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    add-int/lit8 v0, p1, 0x1

    .line 327
    invoke-virtual {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 328
    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 329
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    if-eq v0, p1, :cond_37

    .line 330
    iget-object p0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p1, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 331
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_37

    move v1, v3

    :cond_37
    return v1
.end method

.method private rebuild(Z)V
    .registers 5

    const-string v0, "MzAppsPickActivity"

    const-string v1, "Rebuilding app list..."

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mHost:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$200(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lcom/meizu/settings/applications/ApplicationsState$AppFilter;

    move-result-object v0

    .line 137
    sget-object v1, Lcom/meizu/settings/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 138
    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    invoke-virtual {v2, v0, v1}, Lcom/meizu/settings/applications/ApplicationsState$Session;->rebuild(Lcom/meizu/settings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1a

    if-nez p1, :cond_1a

    return-void

    .line 144
    :cond_1a
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mHost:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$300(Lcom/meizu/settings/applications/MzAppsPickActivity;)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 145
    invoke-direct {p0, v0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->addCloneApp(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    goto :goto_2b

    .line 147
    :cond_29
    iput-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 149
    :goto_2b
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    if-eqz p1, :cond_38

    .line 150
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p1}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    goto :goto_3b

    :cond_38
    const/4 p1, 0x0

    .line 152
    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 155
    :goto_3b
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz p1, :cond_45

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_51

    .line 156
    :cond_45
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$400(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f120eed

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 159
    :cond_51
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->updateFastScrollLetter(Ljava/util/ArrayList;)V

    .line 160
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 161
    invoke-direct {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->updateSelectedState()V

    .line 162
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mHost:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$500(Lcom/meizu/settings/applications/MzAppsPickActivity;)V

    .line 163
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$600(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    move-result-object p1

    if-eqz p1, :cond_72

    .line 164
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$600(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;->access$700(Lcom/meizu/settings/applications/MzAppsPickActivity$ModeCallback;)V

    .line 166
    :cond_72
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_8c

    .line 167
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$800(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 168
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$900(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9e

    .line 170
    :cond_8c
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$800(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$900(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_9e
    return-void
.end method

.method private requestIconsWhenFirsLoad()V
    .registers 6

    .line 457
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x7

    .line 461
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 460
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0xe

    .line 462
    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 463
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 462
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_1e
    if-gt v0, v1, :cond_31

    .line 465
    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 466
    iget-object v3, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/meizu/settings/applications/ApplicationsState;->requestIcon(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_31
    return-void
.end method

.method private requestIconsWhenListViewIdle()V
    .registers 8

    .line 474
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_77

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_77

    .line 477
    :cond_b
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

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

    .line 478
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/applications/AppViewHolder;

    .line 479
    iget-object v5, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    iget-object v6, v3, Lcom/meizu/settings/applications/AppViewHolder;->entry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-le v1, v5, :cond_34

    move v1, v5

    :cond_34
    if-ge v2, v5, :cond_37

    move v2, v5

    .line 486
    :cond_37
    iget-object v5, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    iget-object v3, v3, Lcom/meizu/settings/applications/AppViewHolder;->entry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v5, v3, v4}, Lcom/meizu/settings/applications/ApplicationsState;->requestIcon(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;Z)V

    goto :goto_16

    :cond_3f
    add-int/lit8 v0, v1, -0x7

    const/4 v3, 0x0

    .line 488
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v5, v2, 0x7

    .line 490
    iget-object v6, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 492
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    .line 490
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_53
    if-gt v0, v1, :cond_65

    .line 494
    iget-object v5, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 495
    iget-object v6, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-virtual {v6, v5, v3}, Lcom/meizu/settings/applications/ApplicationsState;->requestIcon(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    :cond_65
    :goto_65
    if-gt v2, v4, :cond_77

    .line 498
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 499
    iget-object v1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mState:Lcom/meizu/settings/applications/ApplicationsState;

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

    .line 421
    new-instance v0, Landroid/database/MatrixCursor;

    const-string v1, "first_letter_column_name"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 424
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

    .line 425
    iget-object v3, v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->lableToPinyin:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    const-string v1, ""

    goto :goto_2b

    .line 426
    :cond_29
    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->lableToPinyin:Ljava/lang/String;

    .line 427
    :goto_2b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_36

    .line 428
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_36
    new-array v3, v4, [Ljava/lang/String;

    aput-object v1, v3, v2

    .line 430
    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_11

    .line 434
    :cond_3e
    new-instance p1, Landroid/widget/AlphabetIndexer;

    iget-object v1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f120860

    .line 435
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v2, v1}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mAlphabetIndexer:Landroid/widget/AlphabetIndexer;

    :cond_4e
    return-void
.end method

.method private updateSelectedState()V
    .registers 4

    .line 176
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mHost:Lcom/meizu/settings/applications/MzAppsPickActivity;

    .line 177
    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1000(Lcom/meizu/settings/applications/MzAppsPickActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_5b

    :cond_11
    const/4 v0, 0x0

    .line 180
    :goto_12
    iget-object v1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_5b

    .line 181
    iget-object v1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 182
    invoke-direct {p0, v0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->isClonedAppEntry(I)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":1"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_42

    :cond_3e
    iget-object v1, v1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 184
    :goto_42
    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mHost:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v2}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1000(Lcom/meizu/settings/applications/MzAppsPickActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 185
    iget-object v1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mHost:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1100(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_5b
    :goto_5b
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

    .line 192
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_4c

    .line 195
    :cond_9
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 198
    :goto_28
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4b

    .line 199
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 200
    invoke-virtual {v2}, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->getNormalizedLabel()Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-virtual {v3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_45

    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_48

    .line 202
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

    .line 344
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    return-object p0
.end method

.method public getCount()I
    .registers 1

    .line 336
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

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

    .line 395
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    return-object p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 2

    .line 340
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .registers 2

    .line 348
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-wide p0, p0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->id:J

    return-wide p0
.end method

.method public getPositionForSection(I)I
    .registers 2

    .line 410
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mAlphabetIndexer:Landroid/widget/AlphabetIndexer;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    .line 411
    :cond_6
    invoke-virtual {p0, p1}, Landroid/widget/AlphabetIndexer;->getPositionForSection(I)I

    move-result p0

    :goto_a
    return p0
.end method

.method public getSectionForPosition(I)I
    .registers 2

    .line 416
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mAlphabetIndexer:Landroid/widget/AlphabetIndexer;

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

    .line 405
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mAlphabetIndexer:Landroid/widget/AlphabetIndexer;

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

    .line 355
    iget-object p3, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mHost:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p3}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1600(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/view/LayoutInflater;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/meizu/settings/applications/AppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/meizu/settings/applications/AppViewHolder;

    move-result-object p2

    .line 356
    iget-object p3, p2, Lcom/meizu/settings/applications/AppViewHolder;->rootView:Landroid/view/View;

    .line 359
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 360
    monitor-enter v0

    .line 361
    :try_start_15
    iput-object v0, p2, Lcom/meizu/settings/applications/AppViewHolder;->entry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    .line 362
    iget-object v1, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v1, :cond_22

    .line 363
    iget-object v1, p2, Lcom/meizu/settings/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    :cond_22
    iget-object v1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 366
    invoke-static {v1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    move-result-object v1

    .line 367
    iget-object v2, v0, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getIconFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 368
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->isClonedAppEntry(I)Z

    move-result p1

    .line 369
    iget-object v3, p2, Lcom/meizu/settings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_4f

    .line 370
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mHost:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$300(Lcom/meizu/settings/applications/MzAppsPickActivity;)Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 371
    iget-object p1, p2, Lcom/meizu/settings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mHost:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v3}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1700(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_55

    .line 373
    :cond_4f
    iget-object p1, p2, Lcom/meizu/settings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 375
    :goto_55
    iget-boolean p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mListViewIsIdle:Z

    if-eqz p1, :cond_65

    invoke-virtual {v1, v2}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->isDefaultIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 376
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/meizu/settings/applications/ApplicationsState;->requestIcon(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;Z)V

    .line 378
    :cond_65
    iget-boolean p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mFirstLoad:Z

    if-eqz p1, :cond_6f

    .line 379
    invoke-direct {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->requestIconsWhenFirsLoad()V

    const/4 p1, 0x0

    .line 380
    iput-boolean p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mFirstLoad:Z

    .line 382
    :cond_6f
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mHost:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1500(Lcom/meizu/settings/applications/MzAppsPickActivity;)Ljava/lang/CharSequence;

    move-result-object p1

    iget v1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p2, p1, v1}, Lcom/meizu/settings/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    .line 383
    iget-object p1, p2, Lcom/meizu/settings/applications/AppViewHolder;->systemFlag:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    iget-object p1, p2, Lcom/meizu/settings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    iget-object p1, p2, Lcom/meizu/settings/applications/AppViewHolder;->nextIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 386
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mHost:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1100(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/widget/ListView;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/meizu/common/util/ListViewProxy;->setItemForChecked(Landroid/widget/AbsListView;Landroid/view/View;)Z

    .line 387
    monitor-exit v0
    :try_end_95
    .catchall {:try_start_15 .. :try_end_95} :catchall_a0

    .line 388
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 389
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p3

    :catchall_a0
    move-exception p0

    .line 387
    :try_start_a1
    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_a1 .. :try_end_a2} :catchall_a0

    throw p0
.end method

.method public onAllSizesComputed()V
    .registers 1

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

    .line 400
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

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

    .line 270
    invoke-direct {p0, v0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->rebuild(Z)V

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    .line 281
    :goto_1
    iget-object v1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_39

    .line 282
    iget-object v1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/applications/AppViewHolder;

    .line 283
    iget-object v2, v1, Lcom/meizu/settings/applications/AppViewHolder;->entry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 284
    iget-object v2, v1, Lcom/meizu/settings/applications/AppViewHolder;->entry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    monitor-enter v2

    .line 285
    :try_start_26
    iget-object v3, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mHost:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v3}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1500(Lcom/meizu/settings/applications/MzAppsPickActivity;)Ljava/lang/CharSequence;

    move-result-object v3

    iget v4, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v1, v3, v4}, Lcom/meizu/settings/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    .line 286
    monitor-exit v2

    goto :goto_36

    :catchall_33
    move-exception p0

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_26 .. :try_end_35} :catchall_33

    throw p0

    :cond_36
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_39
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

    .line 223
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$900(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2f

    .line 224
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$900(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 226
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$800(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 229
    :cond_2f
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$800(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$900(Lcom/meizu/settings/applications/MzAppsPickActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mHost:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {v0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$300(Lcom/meizu/settings/applications/MzAppsPickActivity;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 233
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->addCloneApp(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    goto :goto_55

    .line 235
    :cond_53
    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 237
    :goto_55
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 238
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->updateFastScrollLetter(Ljava/util/ArrayList;)V

    .line 239
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 240
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1200(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lflyme/support/v7/widget/TwoStateTextView;

    move-result-object p1

    if-eqz p1, :cond_7e

    .line 241
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1200(Lcom/meizu/settings/applications/MzAppsPickActivity;)Lflyme/support/v7/widget/TwoStateTextView;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lflyme/support/v7/widget/TwoStateTextView;->setTotalCount(I)V

    .line 243
    :cond_7e
    invoke-direct {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->updateSelectedState()V

    .line 244
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mHost:Lcom/meizu/settings/applications/MzAppsPickActivity;

    invoke-static {p1}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$500(Lcom/meizu/settings/applications/MzAppsPickActivity;)V

    .line 245
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->this$0:Lcom/meizu/settings/applications/MzAppsPickActivity;

    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Lcom/meizu/settings/applications/MzAppsPickActivity;->access$1300(Lcom/meizu/settings/applications/MzAppsPickActivity;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onRequestPackageIconDone(Lcom/meizu/settings/applications/ApplicationsState$AppEntry;)V
    .registers 6

    .line 297
    iget-object p1, p1, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 298
    :goto_5
    iget-object v1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_41

    .line 299
    iget-object v1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/applications/AppViewHolder;

    .line 300
    iget-object v2, v1, Lcom/meizu/settings/applications/AppViewHolder;->entry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/meizu/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 301
    iget-object v2, v1, Lcom/meizu/settings/applications/AppViewHolder;->entry:Lcom/meizu/settings/applications/ApplicationsState$AppEntry;

    monitor-enter v2

    .line 302
    :try_start_2a
    iget-object v3, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 303
    invoke-static {v3}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;

    move-result-object v3

    .line 304
    invoke-virtual {v3, p1}, Lcom/meizu/settings/applications/AppIconMemoryOptimizeHelper;->getIconFromCache(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 305
    iget-object v1, v1, Lcom/meizu/settings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 306
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

    .line 444
    iput-boolean p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mListViewIsIdle:Z

    .line 445
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mState:Lcom/meizu/settings/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/ApplicationsState;->emptyRequestIcon()V

    goto :goto_17

    .line 448
    :cond_12
    iput-boolean p1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mListViewIsIdle:Z

    .line 449
    invoke-direct {p0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->requestIconsWhenListViewIdle()V

    :goto_17
    return-void
.end method

.method public pause()V
    .registers 2

    .line 122
    iget-boolean v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mResumed:Z

    .line 124
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/ApplicationsState$Session;->pause()V

    :cond_c
    return-void
.end method

.method public release()V
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    invoke-virtual {p0}, Lcom/meizu/settings/applications/ApplicationsState$Session;->release()V

    return-void
.end method

.method public resume()V
    .registers 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resume!  mResumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mResumed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MzAppsPickActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-boolean v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_27

    const/4 v0, 0x1

    .line 115
    iput-boolean v0, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mResumed:Z

    .line 116
    iget-object v1, p0, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->mSession:Lcom/meizu/settings/applications/ApplicationsState$Session;

    invoke-virtual {v1}, Lcom/meizu/settings/applications/ApplicationsState$Session;->resume()V

    .line 117
    invoke-direct {p0, v0}, Lcom/meizu/settings/applications/MzAppsPickActivity$ApplicationsAdapter;->rebuild(Z)V

    :cond_27
    return-void
.end method
