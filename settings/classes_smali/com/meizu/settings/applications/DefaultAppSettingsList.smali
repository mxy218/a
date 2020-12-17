.class public Lcom/meizu/settings/applications/DefaultAppSettingsList;
.super Landroid/widget/FrameLayout;
.source "DefaultAppSettingsList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;,
        Lcom/meizu/settings/applications/DefaultAppSettingsList$ViewHolder;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;

.field private mDateAvailableRunnable:Ljava/lang/Runnable;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/meizu/settings/applications/DefaultAppSettingsState$GetDefaultListListener;

.field private mState:Lcom/meizu/settings/applications/DefaultAppSettingsState;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/applications/DefaultAppSettingsList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 188
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/settings/applications/DefaultAppSettingsList;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 192
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance p2, Lcom/meizu/settings/applications/DefaultAppSettingsList$1;

    invoke-direct {p2, p0}, Lcom/meizu/settings/applications/DefaultAppSettingsList$1;-><init>(Lcom/meizu/settings/applications/DefaultAppSettingsList;)V

    iput-object p2, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList;->mListener:Lcom/meizu/settings/applications/DefaultAppSettingsState$GetDefaultListListener;

    .line 193
    invoke-static {p1}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/DefaultAppSettingsState;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList;->mState:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    .line 194
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/applications/DefaultAppSettingsList;)Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList;->mAdapter:Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/applications/DefaultAppSettingsList;)Ljava/lang/Runnable;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList;->mDateAvailableRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/applications/DefaultAppSettingsList;)Landroid/view/LayoutInflater;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/applications/DefaultAppSettingsList;)Landroid/widget/ListView;
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/applications/DefaultAppSettingsList;)Landroid/content/Context;
    .registers 1

    .line 37
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/applications/DefaultAppSettingsList;)Landroid/content/Context;
    .registers 1

    .line 37
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private reportDefautAppClickedData(I)V
    .registers 3

    .line 274
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object p1

    .line 275
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object p0

    const-string v0, "DefaultAppSettingsList"

    invoke-virtual {p0, p1, v0, p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doCreate(Landroid/view/View;)V
    .registers 5

    .line 198
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d012f

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x102000a

    .line 199
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList;->mListView:Landroid/widget/ListView;

    const p1, 0x1020004

    .line 200
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_21

    .line 202
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 204
    :cond_21
    new-instance p1, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;

    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList;->mState:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    invoke-direct {p1, p0, v0}, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;-><init>(Lcom/meizu/settings/applications/DefaultAppSettingsList;Lcom/meizu/settings/applications/DefaultAppSettingsState;)V

    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList;->mAdapter:Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;

    .line 205
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList;->mAdapter:Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 206
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 207
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/meizu/settings/utils/MzUtils;->getListViewDividerPaddingWithIcon(Landroid/content/Context;[IZ)Landroid/widget/ListView$DividerPadding;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerPadding(Landroid/widget/ListView$DividerPadding;)V

    .line 209
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList;->mListView:Landroid/widget/ListView;

    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->setListViewHoldPress(Landroid/widget/ListView;)V

    .line 211
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/meizu/settings/applications/DefaultAppSettingsList$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/applications/DefaultAppSettingsList$2;-><init>(Lcom/meizu/settings/applications/DefaultAppSettingsList;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    return-void
.end method

.method public doPause()V
    .registers 3

    .line 245
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList;->mState:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    iget-object v1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList;->mListener:Lcom/meizu/settings/applications/DefaultAppSettingsState$GetDefaultListListener;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->stop(Lcom/meizu/settings/applications/DefaultAppSettingsState$GetDefaultListListener;)V

    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList;->mDateAvailableRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public doResume(Ljava/lang/Runnable;)Z
    .registers 5

    .line 226
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList;->mState:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    iget-object v1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList;->mListener:Lcom/meizu/settings/applications/DefaultAppSettingsState$GetDefaultListListener;

    const v2, 0x7f16009a

    invoke-virtual {v0, v1, v2}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->startGetList(Lcom/meizu/settings/applications/DefaultAppSettingsState$GetDefaultListListener;I)V

    .line 240
    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList;->mDateAvailableRunnable:Ljava/lang/Runnable;

    const/4 p0, 0x0

    return p0
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

    .line 251
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsList;->mAdapter:Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;

    invoke-virtual {p1, p3}, Lcom/meizu/settings/applications/DefaultAppSettingsList$CategoryAdapter;->getItem(I)Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    move-result-object p1

    .line 252
    iget p2, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->type:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_27

    .line 253
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 p2, 0x7

    const-string p3, "currentListType"

    .line 254
    invoke-virtual {v2, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-class p0, Lcom/meizu/settings/applications/ManageApplications;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    iget-object v6, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->title:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_64

    :cond_27
    const/4 p3, 0x3

    if-ne p2, p3, :cond_3c

    .line 258
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-class p0, Lcom/android/settings/applications/managedomainurls/ManageDomainUrls;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    iget-object v6, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->title:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_64

    .line 261
    :cond_3c
    iget p2, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    .line 262
    iget-object p3, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->intents:Ljava/util/ArrayList;

    .line 263
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string p4, "key_category_id"

    .line 264
    invoke-virtual {v2, p4, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p4, "key_intent_list"

    .line 265
    invoke-virtual {v2, p4, p3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 266
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class p3, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->title:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 269
    invoke-direct {p0, p2}, Lcom/meizu/settings/applications/DefaultAppSettingsList;->reportDefautAppClickedData(I)V

    :goto_64
    return-void
.end method
