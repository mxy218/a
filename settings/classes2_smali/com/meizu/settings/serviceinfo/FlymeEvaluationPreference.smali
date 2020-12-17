.class public Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;
.super Landroid/preference/Preference;
.source "FlymeEvaluationPreference.java"


# instance fields
.field private mAttitudeTitle:Landroid/widget/TextView;

.field private mAttitudeView:Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

.field private mCStatus:I

.field private mContainer:Landroid/widget/LinearLayout;

.field public mCreated:Z

.field private mDetails:Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

.field private mEvaluationView:Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

.field private mFragment:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOverAllTitle:Landroid/widget/TextView;

.field private mSpeedTitle:Landroid/widget/TextView;

.field private mSpeedView:Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

.field private mTmpAttitude:I

.field private mTmpOverAll:I

.field private mTmpSpeed:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 37
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mCreated:Z

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mCStatus:I

    .line 32
    iput v0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mTmpOverAll:I

    .line 33
    iput v0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mTmpAttitude:I

    .line 34
    iput v0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mTmpSpeed:I

    .line 38
    iput-boolean p1, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mCreated:Z

    .line 39
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSelectable(Z)V

    const/4 p1, 0x1

    .line 40
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->filterDivider(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/meizu/settings/serviceinfo/Util$ServiceDetails;)V
    .registers 4

    .line 50
    invoke-direct {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;-><init>(Landroid/content/Context;)V

    .line 51
    iput p2, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mCStatus:I

    .line 52
    iput-object p3, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mDetails:Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    return-void
.end method

.method private updateLayout()V
    .registers 4

    .line 78
    iget v0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mCStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_52

    .line 79
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mOverAllTitle:Landroid/widget/TextView;

    const/high16 v2, 0x41600000  # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 80
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mAttitudeTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 81
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mSpeedTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 82
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mEvaluationView:Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

    .line 83
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 84
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mAttitudeView:Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

    .line 85
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 86
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mSpeedView:Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 87
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mEvaluationView:Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

    iget v1, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mCStatus:I

    invoke-virtual {v0, v1}, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->setCStatus(I)V

    .line 88
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mAttitudeView:Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

    iget v1, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mCStatus:I

    invoke-virtual {v0, v1}, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->setCStatus(I)V

    .line 89
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mSpeedView:Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

    iget p0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mCStatus:I

    invoke-virtual {v0, p0}, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->setCStatus(I)V

    :cond_52
    return-void
.end method


# virtual methods
.method public getCStatus()I
    .registers 1

    .line 181
    iget p0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mCStatus:I

    return p0
.end method

.method public getOverallEvaluation()I
    .registers 1

    .line 124
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mEvaluationView:Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

    if-eqz p0, :cond_9

    .line 125
    invoke-virtual {p0}, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->getState()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public getServiceEvaluation()I
    .registers 1

    .line 132
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mAttitudeView:Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

    if-eqz p0, :cond_9

    .line 133
    invoke-virtual {p0}, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->getState()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public getSpeedEvaluation()I
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mSpeedView:Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

    if-eqz p0, :cond_9

    .line 141
    invoke-virtual {p0}, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->getState()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public haveEvaluation()Z
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mEvaluationView:Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->getState()I

    move-result v0

    if-gtz v0, :cond_1e

    :cond_a
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mAttitudeView:Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

    if-eqz v0, :cond_14

    .line 172
    invoke-virtual {v0}, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->getState()I

    move-result v0

    if-gtz v0, :cond_1e

    :cond_14
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mSpeedView:Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

    if-eqz v0, :cond_25

    .line 173
    invoke-virtual {v0}, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->getState()I

    move-result v0

    if-lez v0, :cond_25

    :cond_1e
    iget p0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mCStatus:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public isReadyToCommit()Z
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mEvaluationView:Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->getState()I

    move-result v0

    if-lez v0, :cond_25

    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mAttitudeView:Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

    if-eqz v0, :cond_25

    .line 162
    invoke-virtual {v0}, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->getState()I

    move-result v0

    if-lez v0, :cond_25

    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mSpeedView:Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

    if-eqz v0, :cond_25

    .line 163
    invoke-virtual {v0}, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->getState()I

    move-result v0

    if-lez v0, :cond_25

    iget p0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mCStatus:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    const/4 p0, 0x0

    return p0
.end method

.method public notifyEvaluationChanged()V
    .registers 2

    .line 148
    invoke-virtual {p0}, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->getOverallEvaluation()I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mTmpOverAll:I

    .line 149
    invoke-virtual {p0}, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->getServiceEvaluation()I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mTmpAttitude:I

    .line 150
    invoke-virtual {p0}, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->getSpeedEvaluation()I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mTmpSpeed:I

    .line 151
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mFragment:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    if-eqz p0, :cond_19

    .line 152
    invoke-virtual {p0}, Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;->notifyPreferenceChanged()V

    :cond_19
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 2

    .line 95
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 96
    invoke-direct {p0}, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->updateLayout()V

    .line 97
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mDetails:Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->setDetailsInfo(Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;)V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    .line 57
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mInflater:Landroid/view/LayoutInflater;

    .line 59
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d00df

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mContainer:Landroid/widget/LinearLayout;

    .line 61
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0274

    .line 62
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mEvaluationView:Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

    .line 63
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00d4

    .line 64
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mAttitudeView:Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

    .line 65
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a06a5

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mSpeedView:Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

    .line 66
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0516

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mOverAllTitle:Landroid/widget/TextView;

    .line 67
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00d5

    .line 68
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mAttitudeTitle:Landroid/widget/TextView;

    .line 69
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a06a6

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mSpeedTitle:Landroid/widget/TextView;

    .line 70
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mEvaluationView:Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

    invoke-virtual {p1, p0}, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->setPreference(Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;)V

    .line 71
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mAttitudeView:Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

    invoke-virtual {p1, p0}, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->setPreference(Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;)V

    .line 72
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mSpeedView:Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

    invoke-virtual {p1, p0}, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->setPreference(Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;)V

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mCreated:Z

    .line 74
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method public setDetailsInfo(Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;)V
    .registers 5

    if-eqz p1, :cond_2b

    .line 102
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mDetails:Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    .line 103
    invoke-virtual {p1}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->getOverAll()I

    move-result v0

    .line 104
    invoke-virtual {p1}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->getService()I

    move-result v1

    .line 105
    invoke-virtual {p1}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->getSpeed()I

    move-result p1

    if-gtz v0, :cond_14

    .line 107
    iget v0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mTmpOverAll:I

    :cond_14
    if-gtz v1, :cond_18

    .line 111
    iget v1, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mTmpAttitude:I

    :cond_18
    if-gtz p1, :cond_1c

    .line 115
    iget p1, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mTmpSpeed:I

    .line 117
    :cond_1c
    iget-object v2, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mEvaluationView:Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

    invoke-virtual {v2, v0}, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->setState(I)V

    .line 118
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mAttitudeView:Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

    invoke-virtual {v0, v1}, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->setState(I)V

    .line 119
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mSpeedView:Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeCustomEvaluationView;->setState(I)V

    :cond_2b
    return-void
.end method

.method public setFragment(Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;)V
    .registers 2

    .line 157
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeEvaluationPreference;->mFragment:Lcom/meizu/settings/serviceinfo/FlymeServiceDetailsFragment;

    return-void
.end method
