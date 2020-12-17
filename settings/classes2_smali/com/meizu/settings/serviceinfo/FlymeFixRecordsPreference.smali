.class public Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;
.super Landroid/preference/Preference;
.source "FlymeFixRecordsPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$FixRecordPoint;,
        Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$RecordsAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$RecordsAdapter;

.field private mClickedId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCorporationInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$InfoItem;",
            ">;"
        }
    .end annotation
.end field

.field public mCreated:Z

.field private mFixRecordListView:Landroid/widget/ListView;

.field private mFixRecordsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$FixRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mFlymeCorporationInfoView:Lcom/meizu/settings/serviceinfo/FlymeCorporationInfoView;

.field private mFragment:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;

.field private mServiceInfoTitleView:Landroid/view/View;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 47
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFixRecordsList:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mCorporationInfoList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mCreated:Z

    .line 48
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$FixRecord;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_20

    .line 53
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_20

    const/4 p1, 0x0

    .line 54
    :goto_c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_20

    .line 55
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFixRecordsList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/settings/serviceinfo/Util$FixRecord;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_c

    :cond_20
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;)Landroid/content/Context;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;)Ljava/util/ArrayList;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFixRecordsList:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public clearFocus()V
    .registers 1

    .line 103
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFlymeCorporationInfoView:Lcom/meizu/settings/serviceinfo/FlymeCorporationInfoView;

    if-eqz p0, :cond_7

    .line 104
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->clearFocus()V

    :cond_7
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 2

    .line 81
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mCorporationInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_d

    .line 82
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mCorporationInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->setCorporationInfo(Ljava/util/ArrayList;)V

    .line 85
    :cond_d
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFixRecordsList:Ljava/util/ArrayList;

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1d

    .line 86
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFixRecordsList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->setFixRecords(Ljava/util/ArrayList;)Z

    goto :goto_21

    :cond_1d
    const/4 p1, 0x0

    .line 88
    invoke-virtual {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->setServiceInfoTitleLayoutVisiable(Z)V

    :goto_21
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 62
    iget-boolean v0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mCreated:Z

    if-eqz v0, :cond_7

    .line 63
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mView:Landroid/view/View;

    return-object p0

    .line 65
    :cond_7
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00fd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mView:Landroid/view/View;

    .line 67
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mView:Landroid/view/View;

    const v0, 0x7f0a02c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFixRecordListView:Landroid/widget/ListView;

    .line 68
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFixRecordListView:Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFixRecordListView:Landroid/widget/ListView;

    invoke-static {p1}, Lcom/meizu/settings/utils/MzUtils;->setListViewHoldPress(Landroid/widget/ListView;)V

    .line 71
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFixRecordListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Lcom/meizu/settings/utils/MzUtils;->getListViewDividerPadding(Landroid/content/Context;[IZ)Landroid/widget/ListView$DividerPadding;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerPadding(Landroid/widget/ListView$DividerPadding;)V

    .line 73
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mView:Landroid/view/View;

    const v0, 0x7f0a01ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/serviceinfo/FlymeCorporationInfoView;

    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFlymeCorporationInfoView:Lcom/meizu/settings/serviceinfo/FlymeCorporationInfoView;

    .line 74
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mView:Landroid/view/View;

    const v0, 0x7f0a0651

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mServiceInfoTitleView:Landroid/view/View;

    const/4 p1, 0x1

    .line 75
    iput-boolean p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mCreated:Z

    .line 76
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mView:Landroid/view/View;

    return-object p0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 205
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFixRecordsList:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/serviceinfo/Util$FixRecord;

    .line 206
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_39

    .line 208
    invoke-virtual {p1}, Lcom/meizu/settings/serviceinfo/Util$FixRecord;->getFixNumber()Ljava/lang/String;

    move-result-object p2

    const-string p3, "fnumber"

    invoke-virtual {v3, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p1}, Lcom/meizu/settings/serviceinfo/Util$FixRecord;->getSN()Ljava/lang/String;

    move-result-object p2

    const-string p3, "fsn"

    invoke-virtual {v3, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1}, Lcom/meizu/settings/serviceinfo/Util$FixRecord;->getTime()Ljava/lang/String;

    move-result-object p2

    const-string p3, "foptime"

    invoke-virtual {v3, p3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p1}, Lcom/meizu/settings/serviceinfo/Util$FixRecord;->getCStatus()I

    move-result p2

    const-string p3, "cstatus"

    invoke-virtual {v3, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 212
    invoke-virtual {p1}, Lcom/meizu/settings/serviceinfo/Util$FixRecord;->getFixNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mClickedId:Ljava/lang/String;

    .line 214
    :cond_39
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFragment:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;

    .line 215
    invoke-virtual {p1}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 216
    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFragment:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;

    const-class p1, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f121351

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFragment:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method

.method public setCorporationInfo(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$InfoItem;",
            ">;)V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mCorporationInfoList:Ljava/util/ArrayList;

    .line 94
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFlymeCorporationInfoView:Lcom/meizu/settings/serviceinfo/FlymeCorporationInfoView;

    if-eqz v0, :cond_19

    if-eqz p1, :cond_19

    .line 95
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_19

    .line 96
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFlymeCorporationInfoView:Lcom/meizu/settings/serviceinfo/FlymeCorporationInfoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 97
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFlymeCorporationInfoView:Lcom/meizu/settings/serviceinfo/FlymeCorporationInfoView;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeCorporationInfoView;->setServiceInfo(Ljava/util/ArrayList;)V

    :cond_19
    return-void
.end method

.method public setFixRecords(Ljava/util/ArrayList;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/serviceinfo/Util$FixRecord;",
            ">;)Z"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFixRecordListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_68

    const/4 v0, 0x1

    const/16 v2, 0x8

    if-eqz p1, :cond_4f

    .line 167
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4f

    .line 168
    iget-object v3, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFixRecordListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_1d

    .line 169
    iget-object v2, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFixRecordListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 171
    :cond_1d
    invoke-virtual {p0, v0}, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->setServiceInfoTitleLayoutVisiable(Z)V

    .line 172
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFixRecordsList:Ljava/util/ArrayList;

    .line 173
    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mAdapter:Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$RecordsAdapter;

    if-nez v1, :cond_41

    .line 174
    new-instance v1, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$RecordsAdapter;

    iget-object v4, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    move-object v3, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$RecordsAdapter;-><init>(Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;Landroid/content/Context;IILjava/util/List;)V

    iput-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mAdapter:Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$RecordsAdapter;

    .line 175
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFixRecordListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mAdapter:Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$RecordsAdapter;

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFixRecordListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_49

    .line 178
    :cond_41
    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 179
    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mAdapter:Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$RecordsAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 182
    :goto_49
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFixRecordListView:Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    goto :goto_67

    .line 184
    :cond_4f
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFixRecordListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_5c

    .line 185
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFixRecordListView:Landroid/widget/ListView;

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 187
    :cond_5c
    invoke-virtual {p0, v1}, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->setServiceInfoTitleLayoutVisiable(Z)V

    .line 188
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mContext:Landroid/content/Context;

    const p1, 0x7f120f02

    invoke-static {p0, p1}, Lcom/meizu/settings/utils/MzUtils;->showSlideNotice(Landroid/content/Context;I)V

    :goto_67
    return v0

    :cond_68
    return v1
.end method

.method public setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .registers 6

    if-eqz p1, :cond_37

    .line 226
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    if-nez p0, :cond_9

    return-void

    :cond_9
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 234
    :goto_c
    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_22

    const/4 v3, 0x0

    .line 235
    invoke-interface {p0, v1, v3, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 236
    invoke-virtual {v3, v0, v0}, Landroid/view/View;->measure(II)V

    .line 237
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 240
    :cond_22
    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 243
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v1

    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    mul-int/2addr v1, p0

    add-int/2addr v2, v1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 245
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_37
    return-void
.end method

.method public setServiceInfoFragment(Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;)V
    .registers 2

    .line 221
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFragment:Lcom/meizu/settings/serviceinfo/FlymeServiceInfoFragment;

    return-void
.end method

.method public setServiceInfoTitleLayoutVisiable(Z)V
    .registers 2

    .line 109
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mServiceInfoTitleView:Landroid/view/View;

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    goto :goto_8

    :cond_6
    const/16 p1, 0x8

    :goto_8
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateRecordsCStatus()Z
    .registers 7

    .line 250
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFixRecordListView:Landroid/widget/ListView;

    const/4 v1, 0x0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFixRecordsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6f

    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mClickedId:Ljava/lang/String;

    if-eqz v0, :cond_6f

    .line 251
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_6f

    .line 252
    invoke-static {}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;->getInstance()Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;

    move-result-object v0

    .line 253
    iget-object v2, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mClickedId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/meizu/settings/serviceinfo/FlymeServiceInfoLocalSharepreference;->getLocalCStatusById(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRecordsCStatus, mClickedId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mClickedId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", cstaus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FlymeFixRecordsPreference"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v2, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFixRecordsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6d

    :goto_47
    if-ge v1, v2, :cond_6d

    .line 260
    iget-object v3, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mFixRecordsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/serviceinfo/Util$FixRecord;

    if-eqz v3, :cond_6a

    .line 261
    iget-object v4, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mClickedId:Ljava/lang/String;

    .line 262
    invoke-virtual {v3}, Lcom/meizu/settings/serviceinfo/Util$FixRecord;->getFixNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    if-lez v0, :cond_6a

    .line 264
    invoke-virtual {v3, v0}, Lcom/meizu/settings/serviceinfo/Util$FixRecord;->setCStatus(I)V

    .line 265
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference;->mAdapter:Lcom/meizu/settings/serviceinfo/FlymeFixRecordsPreference$RecordsAdapter;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_6d

    :cond_6a
    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :cond_6d
    :goto_6d
    const/4 p0, 0x1

    return p0

    :cond_6f
    return v1
.end method
