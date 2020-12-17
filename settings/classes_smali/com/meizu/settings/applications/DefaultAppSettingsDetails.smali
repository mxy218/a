.class public Lcom/meizu/settings/applications/DefaultAppSettingsDetails;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "DefaultAppSettingsDetails.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;,
        Lcom/meizu/settings/applications/DefaultAppSettingsDetails$ViewHolder;
    }
.end annotation


# instance fields
.field private mCategoryData:Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

.field private mCategoryId:I

.field private mDetalisAdapter:Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/meizu/settings/applications/DefaultAppSettingsState$GetDefaultListListener;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRootView:Landroid/view/View;

.field private mState:Lcom/meizu/settings/applications/DefaultAppSettingsState;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    .line 44
    new-instance v0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$1;

    invoke-direct {v0, p0}, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$1;-><init>(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;)V

    iput-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mListener:Lcom/meizu/settings/applications/DefaultAppSettingsState$GetDefaultListListener;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;)Lcom/meizu/settings/applications/DefaultAppSettingsState;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mState:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;)I
    .registers 1

    .line 29
    iget p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mCategoryId:I

    return p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;)Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mCategoryData:Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

    return-object p0
.end method

.method static synthetic access$202(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;)Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mCategoryData:Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

    return-object p1
.end method

.method static synthetic access$300(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;)Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mDetalisAdapter:Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;

    return-object p0
.end method

.method static synthetic access$302(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;)Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mDetalisAdapter:Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;)Landroid/widget/ListView;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/applications/DefaultAppSettingsDetails;)Landroid/view/LayoutInflater;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 193
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 194
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_19

    .line 196
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->popBackStack()V

    const-string p0, "DefaultAppSettingsDetails"

    const-string/jumbo p1, "onCreate bundle is null, return"

    .line 197
    invoke-static {p0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->printLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 200
    :cond_19
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/applications/DefaultAppSettingsState;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mState:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    .line 201
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 202
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "key_category_id"

    .line 203
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mCategoryId:I

    const-string v0, "key_intent_list"

    .line 204
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mIntentList:Ljava/util/ArrayList;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const p3, 0x7f0d012f

    const/4 v0, 0x0

    .line 209
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mRootView:Landroid/view/View;

    .line 211
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mRootView:Landroid/view/View;

    const p2, 0x102000a

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mListView:Landroid/widget/ListView;

    .line 212
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 213
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p3}, Lcom/meizu/settings/utils/MzUtils;->getListViewDividerPadding(Landroid/content/Context;[I)Landroid/widget/ListView$DividerPadding;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setDividerPadding(Landroid/widget/ListView$DividerPadding;)V

    .line 214
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 237
    iget-object p1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mDetalisAdapter:Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;

    if-nez p1, :cond_5

    return-void

    .line 240
    :cond_5
    invoke-virtual {p1, p3}, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;->getItem(I)Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;

    move-result-object p1

    .line 241
    iget-object p2, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mCategoryData:Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;

    iget p3, p2, Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;->dateType:I

    const/4 p4, 0x1

    if-ne p3, p4, :cond_19

    .line 242
    iget-object p3, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mState:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    const p4, 0x7f16009b

    invoke-virtual {p3, p2, p1, p4}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->setDefault(Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;I)V

    goto :goto_23

    :cond_19
    if-nez p3, :cond_23

    .line 244
    iget-object p3, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mState:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    const p4, 0x7f16009a

    invoke-virtual {p3, p2, p1, p4}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->setDefault(Lcom/meizu/settings/applications/DefaultAppSettingsState$CategoryData;Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;I)V

    .line 246
    :cond_23
    :goto_23
    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mDetalisAdapter:Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;

    iget-object p1, p1, Lcom/meizu/settings/applications/DefaultAppSettingsState$AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/applications/DefaultAppSettingsDetails$DetalisAdapter;->refreshDefaultPackage(Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .registers 2

    .line 231
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    .line 232
    iget-object v0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mState:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mListener:Lcom/meizu/settings/applications/DefaultAppSettingsState$GetDefaultListListener;

    invoke-virtual {v0, p0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->stop(Lcom/meizu/settings/applications/DefaultAppSettingsState$GetDefaultListListener;)V

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 219
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 220
    new-instance v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;

    invoke-direct {v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;-><init>()V

    .line 221
    iget v1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mCategoryId:I

    iput v1, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->id:I

    .line 222
    iget-object v1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mIntentList:Ljava/util/ArrayList;

    if-nez v1, :cond_17

    .line 223
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mIntentList:Ljava/util/ArrayList;

    .line 225
    :cond_17
    iget-object v1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mIntentList:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;->intents:Ljava/util/ArrayList;

    .line 226
    iget-object v1, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mState:Lcom/meizu/settings/applications/DefaultAppSettingsState;

    iget-object p0, p0, Lcom/meizu/settings/applications/DefaultAppSettingsDetails;->mListener:Lcom/meizu/settings/applications/DefaultAppSettingsState$GetDefaultListListener;

    invoke-virtual {v1, p0, v0}, Lcom/meizu/settings/applications/DefaultAppSettingsState;->startGetCategoryData(Lcom/meizu/settings/applications/DefaultAppSettingsState$GetDefaultListListener;Lcom/meizu/settings/applications/DefaultAppSettingsState$DefaultAppCategory;)V

    return-void
.end method
