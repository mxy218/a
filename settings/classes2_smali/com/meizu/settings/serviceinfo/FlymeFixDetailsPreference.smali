.class public Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;
.super Landroid/preference/Preference;
.source "FlymeFixDetailsPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field public mCreated:Z

.field private mDetails:Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

.field private mDetailsLayout:Landroid/widget/LinearLayout;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 32
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->mCreated:Z

    .line 33
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->mContext:Landroid/content/Context;

    .line 34
    iput-boolean v0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->mCreated:Z

    .line 35
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSelectable(Z)V

    const/4 p1, 0x1

    .line 36
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->filterDivider(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p2, p0, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->mDetails:Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    return-void
.end method

.method private makeExpensesItemView(Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;
    .registers 8

    const/4 p3, 0x0

    .line 199
    :try_start_1
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d00e3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 201
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 202
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const v1, 0x7f0a0753

    if-nez p2, :cond_6f

    .line 203
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f12083e

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 205
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 206
    new-instance v2, Landroid/text/SpannableStringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 208
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const v3, -0x777778

    invoke-direct {p1, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    .line 209
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr v3, p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    const/16 p2, 0x12

    .line 208
    invoke-virtual {v2, p1, v3, p0, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 212
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_78

    .line 214
    :cond_6f
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_78
    const p0, 0x7f0a01d2

    .line 216
    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_86} :catch_87

    return-object v0

    :catch_87
    move-exception p0

    .line 219
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p3
.end method

.method private makeExpensesView(Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;)Landroid/view/View;
    .registers 13

    const/4 v0, 0x0

    if-eqz p1, :cond_87

    .line 144
    :try_start_3
    invoke-virtual {p1}, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {p1}, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;->getAmount()Ljava/lang/String;

    move-result-object v2

    .line 146
    invoke-virtual {p1}, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;->getAmountStr()Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-virtual {p1}, Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;->getData()Ljava/util/ArrayList;

    move-result-object p1

    .line 148
    iget-object v4, p0, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0d00e2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 150
    invoke-virtual {v4, v6}, Landroid/view/View;->setClickable(Z)V

    const v5, 0x7f0a0753

    .line 151
    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a027d

    .line 153
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    if-eqz p1, :cond_6a

    .line 155
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v6

    :goto_3d
    if-ge v8, v7, :cond_6a

    .line 158
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/meizu/settings/serviceinfo/Util$InfoItem;

    if-eqz v9, :cond_67

    if-nez v8, :cond_56

    .line 163
    invoke-virtual {v9}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->getData()Ljava/lang/String;

    move-result-object v9

    .line 162
    invoke-direct {p0, v10, v9, v5}, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->makeExpensesItemView(Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v9

    goto :goto_62

    .line 166
    :cond_56
    invoke-virtual {v9}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->getData()Ljava/lang/String;

    move-result-object v9

    .line 165
    invoke-direct {p0, v10, v9, v6}, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->makeExpensesItemView(Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v9

    :goto_62
    if-eqz v9, :cond_67

    .line 169
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_67
    add-int/lit8 v8, v8, 0x1

    goto :goto_3d

    :cond_6a
    if-nez v2, :cond_6e

    if-eqz v3, :cond_82

    .line 177
    :cond_6e
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-nez p1, :cond_79

    .line 178
    invoke-direct {p0, v3, v2, v5}, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->makeTotalExpensesItemView(Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_7d

    .line 181
    :cond_79
    invoke-direct {p0, v3, v2, v6}, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->makeTotalExpensesItemView(Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object p0

    :goto_7d
    if-eqz p0, :cond_82

    .line 185
    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_82} :catch_83

    :cond_82
    return-object v4

    :catch_83
    move-exception p0

    .line 192
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_87
    return-object v0
.end method

.method private makeItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .registers 6

    .line 133
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    const v1, 0x7f0d0114

    const/4 v2, 0x0

    .line 134
    invoke-virtual {p0, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 135
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    const v0, 0x7f0a0753

    .line 136
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a01d2

    .line 137
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method private makeTotalExpensesItemView(Ljava/lang/String;Ljava/lang/String;Z)Landroid/view/View;
    .registers 8

    const/4 v0, 0x0

    .line 227
    :try_start_1
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d00e3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    const v1, 0x7f0a01d2

    const v3, 0x7f0a0753

    if-eqz p3, :cond_28

    .line 230
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/16 p2, 0x8

    .line 232
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3a

    .line 234
    :cond_28
    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :goto_3a
    invoke-virtual {p0, v2}, Landroid/view/View;->setClickable(Z)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3d} :catch_3e

    return-object p0

    :catch_3e
    move-exception p0

    .line 240
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 2

    .line 59
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->mDetails:Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->setDetailsInfo(Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;)V

    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 6

    .line 46
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->mInflater:Landroid/view/LayoutInflater;

    .line 48
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d00fa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 50
    iget-object v1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d00fb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->mDetailsLayout:Landroid/widget/LinearLayout;

    .line 52
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->mDetailsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->mCreated:Z

    return-object v0
.end method

.method public setDetailsInfo(Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;)V
    .registers 11

    if-eqz p1, :cond_91

    .line 63
    iget-object v0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->mDetailsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_91

    .line 64
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 65
    iput-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->mDetails:Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;

    .line 66
    invoke-virtual {p1}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->getRepairInfoItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 72
    invoke-virtual {p1}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->getRepairDateItems()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_40

    .line 74
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v2

    move-object v6, v3

    :goto_1d
    if-ge v5, v4, :cond_40

    .line 76
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/meizu/settings/serviceinfo/Util$InfoItem;

    if-eqz v7, :cond_3d

    .line 78
    invoke-virtual {v7}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->getData()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v8, v7}, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->makeItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v7

    if-nez v6, :cond_41

    if-eqz v7, :cond_3c

    .line 82
    iget-object v6, p0, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->mDetailsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3c
    move-object v6, v7

    :cond_3d
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    :cond_40
    move-object v7, v3

    :cond_41
    if-eqz v0, :cond_72

    .line 97
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_72

    .line 99
    iget-object v4, p0, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0d02c8

    invoke-virtual {v4, v5, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    :goto_54
    if-ge v2, v1, :cond_72

    .line 103
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meizu/settings/serviceinfo/Util$InfoItem;

    if-eqz v4, :cond_6f

    .line 106
    invoke-virtual {v4}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/meizu/settings/serviceinfo/Util$InfoItem;->getData()Ljava/lang/String;

    move-result-object v4

    .line 105
    invoke-direct {p0, v5, v4}, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->makeItemView(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_6f

    .line 108
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 115
    :cond_72
    invoke-virtual {p1}, Lcom/meizu/settings/serviceinfo/Util$ServiceDetails;->getExpenses()Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;

    move-result-object p1

    if-eqz p1, :cond_83

    .line 117
    invoke-direct {p0, p1}, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->makeExpensesView(Lcom/meizu/settings/serviceinfo/Util$ExpensesItem;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_83

    if-eqz v3, :cond_83

    .line 119
    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_83
    if-eqz v3, :cond_8a

    .line 123
    iget-object p1, p0, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->mDetailsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_8a
    if-eqz v7, :cond_91

    .line 127
    iget-object p0, p0, Lcom/meizu/settings/serviceinfo/FlymeFixDetailsPreference;->mDetailsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_91
    return-void
.end method
