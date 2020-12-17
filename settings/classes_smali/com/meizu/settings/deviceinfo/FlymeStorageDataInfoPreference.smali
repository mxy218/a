.class public Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;
.super Landroid/preference/Preference;
.source "FlymeStorageDataInfoPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference$CategoryClickListener;
    }
.end annotation


# static fields
.field private static final PREF_KEY_ARRAYS:[Ljava/lang/String;

.field private static final STORAGE_ITEM_RES_IDS:[I


# instance fields
.field private mAvailableSize:J

.field private mCategoryCickListener:Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference$CategoryClickListener;

.field private mChart:Lcom/android/settings/deviceinfo/PercentageBarChart;

.field private final mEntries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private mInfos:[Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;

.field private mInit:Z

.field private mPref:Landroid/content/SharedPreferences;

.field private mPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mRes:Landroid/content/res/Resources;

.field private mTotalSize:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string v0, "app_size"

    const-string/jumbo v1, "video_size"

    const-string/jumbo v2, "picture_size"

    const-string v3, "audio_size"

    const-string/jumbo v4, "system_size"

    const-string/jumbo v5, "other_size"

    .line 49
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->PREF_KEY_ARRAYS:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 58
    fill-array-data v0, :array_20

    sput-object v0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->STORAGE_ITEM_RES_IDS:[I

    return-void

    nop

    :array_20
    .array-data 4
        0x7f0a0359
        0x7f0a0360
        0x7f0a035c
        0x7f0a035a
        0x7f0a035f
        0x7f0a035b
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mEntries:Ljava/util/List;

    const/4 p2, 0x1

    .line 74
    iput-boolean p2, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mInit:Z

    const p2, 0x7f0d0276

    .line 85
    invoke-virtual {p0, p2}, Landroid/preference/Preference;->setLayoutResource(I)V

    const/4 p2, 0x0

    .line 86
    invoke-virtual {p0, p2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mRes:Landroid/content/res/Resources;

    const-string v0, "data_size_info"

    .line 88
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mPref:Landroid/content/SharedPreferences;

    .line 89
    iget-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private updateSizeInfo(Landroid/view/View;)V
    .registers 14

    const v0, 0x7f0a042a

    .line 133
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120cad

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mTotalSize:J

    iget-wide v6, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mAvailableSize:J

    sub-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/meizu/settings/deviceinfo/StorageUtils;->getInternalTotalSpace(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a05cd

    .line 137
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 138
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f121182

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    move v1, v0

    .line 142
    :goto_6e
    sget-object v3, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->STORAGE_ITEM_RES_IDS:[I

    array-length v5, v3

    if-ge v1, v5, :cond_11d

    .line 143
    aget v3, v3, v1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_7d

    goto/16 :goto_119

    :cond_7d
    const v5, 0x7f0a018e

    .line 147
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0a06fb

    .line 148
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a06fa

    .line 149
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f0a04dc

    .line 150
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 151
    sget-object v9, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->STORAGE_ITEM_RES_IDS:[I

    aget v10, v9, v1

    const v11, 0x7f0a035f

    if-eq v10, v11, :cond_b6

    aget v9, v9, v1

    const v10, 0x7f0a035b

    if-ne v9, v10, :cond_b2

    goto :goto_b6

    .line 154
    :cond_b2
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_ba

    :cond_b6
    :goto_b6
    const/4 v3, 0x4

    .line 152
    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    :goto_ba
    iget-object v3, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mInfos:[Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;

    aget-object v3, v3, v1

    .line 157
    iget-object v8, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mRes:Landroid/content/res/Resources;

    iget v9, v3, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;->mTitle:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 158
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v6, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mRes:Landroid/content/res/Resources;

    iget v3, v3, Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;->mColor:I

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 161
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 163
    iget-object v3, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mPref:Landroid/content/SharedPreferences;

    sget-object v5, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->PREF_KEY_ARRAYS:[Ljava/lang/String;

    aget-object v5, v5, v1

    const-wide/16 v8, -0x1

    invoke-interface {v3, v5, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    const-wide/16 v8, 0x0

    cmp-long v3, v5, v8

    if-ltz v3, :cond_f7

    .line 164
    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_100

    .line 165
    :cond_f7
    iget-object v3, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f120519

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 166
    :goto_100
    iget-boolean v5, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mInit:Z

    if-eqz v5, :cond_10a

    iget-object v5, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f0600c5

    goto :goto_10f

    :cond_10a
    iget-object v5, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mRes:Landroid/content/res/Resources;

    const v6, 0x7f060038

    :goto_10f
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 167
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_119
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_6e

    .line 172
    :cond_11d
    iput-boolean v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mInit:Z

    return-void
.end method


# virtual methods
.method public addEntry(IFI)V
    .registers 5

    .line 93
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mEntries:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lcom/android/settings/deviceinfo/PercentageBarChart;->createEntry(IFI)Lcom/android/settings/deviceinfo/PercentageBarChart$Entry;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mEntries:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public clear()V
    .registers 1

    .line 183
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mEntries:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public commit()V
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mChart:Lcom/android/settings/deviceinfo/PercentageBarChart;

    if-eqz v0, :cond_7

    .line 177
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 179
    :cond_7
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public initMemoryInfos([Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;JJ)V
    .registers 7

    .line 102
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mInfos:[Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;

    if-eq p1, v0, :cond_7

    .line 103
    invoke-virtual {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->setCategoryInfo([Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;)V

    .line 105
    :cond_7
    iput-wide p2, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mTotalSize:J

    .line 106
    iput-wide p4, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mAvailableSize:J

    .line 107
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .registers 4

    .line 124
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0539

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/PercentageBarChart;

    iput-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mChart:Lcom/android/settings/deviceinfo/PercentageBarChart;

    .line 126
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mChart:Lcom/android/settings/deviceinfo/PercentageBarChart;

    iget-object v1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/PercentageBarChart;->setEntries(Ljava/util/Collection;)V

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 128
    invoke-direct {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->updateSizeInfo(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_10

    goto :goto_f

    .line 194
    :sswitch_8
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mCategoryCickListener:Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference$CategoryClickListener;

    if-eqz p0, :cond_f

    .line 195
    invoke-interface {p0, p1}, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference$CategoryClickListener;->onCategoryClick(Landroid/view/View;)V

    :cond_f
    :goto_f
    return-void

    :sswitch_data_10
    .sparse-switch
        0x7f0a0359 -> :sswitch_8
        0x7f0a035a -> :sswitch_8
        0x7f0a035c -> :sswitch_8
        0x7f0a0360 -> :sswitch_8
        0x7f0a05cd -> :sswitch_8
    .end sparse-switch
.end method

.method public setCategoryInfo([Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mInfos:[Lcom/meizu/settings/deviceinfo/FlymeStorageVolumePreferenceCategory$CategoryInfo;

    return-void
.end method

.method public setItemSize([J)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 114
    :goto_4
    array-length v1, p1

    if-ge v0, v1, :cond_15

    .line 115
    aget-wide v1, p1, v0

    .line 116
    sget-object v3, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->PREF_KEY_ARRAYS:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 117
    iget-object v4, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 119
    :cond_15
    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setOnCategoryClickListener(Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference$CategoryClickListener;)V
    .registers 2

    .line 204
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference;->mCategoryCickListener:Lcom/meizu/settings/deviceinfo/FlymeStorageDataInfoPreference$CategoryClickListener;

    return-void
.end method
