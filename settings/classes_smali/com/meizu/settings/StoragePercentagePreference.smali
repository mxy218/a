.class public Lcom/meizu/settings/StoragePercentagePreference;
.super Landroid/preference/Preference;
.source "StoragePercentagePreference.java"


# instance fields
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

.field private totalInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 46
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/meizu/settings/StoragePercentagePreference;->mChart:Lcom/android/settings/deviceinfo/PercentageBarChart;

    .line 43
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/StoragePercentagePreference;->mEntries:Ljava/util/List;

    const p1, 0x7f0d0294

    .line 47
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setLayoutResource(I)V

    const/4 p1, 0x0

    .line 48
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSelectable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 39
    iput-object p1, p0, Lcom/meizu/settings/StoragePercentagePreference;->mChart:Lcom/android/settings/deviceinfo/PercentageBarChart;

    .line 43
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/StoragePercentagePreference;->mEntries:Ljava/util/List;

    const p1, 0x7f0d0294

    .line 53
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setLayoutResource(I)V

    const/4 p1, 0x0

    .line 54
    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSelectable(Z)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 4

    .line 74
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v0, 0x7f0a0539

    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/PercentageBarChart;

    iput-object v0, p0, Lcom/meizu/settings/StoragePercentagePreference;->mChart:Lcom/android/settings/deviceinfo/PercentageBarChart;

    .line 76
    iget-object v0, p0, Lcom/meizu/settings/StoragePercentagePreference;->mChart:Lcom/android/settings/deviceinfo/PercentageBarChart;

    iget-object v1, p0, Lcom/meizu/settings/StoragePercentagePreference;->mEntries:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/PercentageBarChart;->setEntries(Ljava/util/Collection;)V

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSelectable(Z)V

    const v0, 0x7f0a042a

    .line 79
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 80
    iget-object p0, p0, Lcom/meizu/settings/StoragePercentagePreference;->totalInfo:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
